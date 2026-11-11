-- TRG Distributor Training: database setup
-- Run once in Supabase: SQL Editor > New query > paste this file > Run.
-- Safe to re-run: every statement checks before it creates.

-- ---------- Types ----------
do $$ begin
  create type user_role as enum ('trainee', 'instructor', 'admin');
exception when duplicate_object then null; end $$;
do $$ begin
  create type quiz_kind as enum ('module', 'test_out', 'final');
exception when duplicate_object then null; end $$;
do $$ begin
  create type question_kind as enum ('single', 'multi', 'true_false');
exception when duplicate_object then null; end $$;

-- ---------- People ----------
create table if not exists profiles (
  id uuid primary key references auth.users on delete cascade,
  full_name text not null default '',
  branch text not null default '',
  role user_role not null default 'trainee',
  created_at timestamptz not null default now()
);

-- New sign-ups get a trainee profile automatically. Signing up never grants
-- admin: with email confirmation off, anyone could register a listed address first.
create or replace function handle_new_user() returns trigger
language plpgsql security definer set search_path = public as $$
begin
  insert into profiles (id, full_name)
  values (new.id, coalesce(new.raw_user_meta_data->>'full_name', ''))
  on conflict (id) do nothing;
  return new;
end $$;
drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created after insert on auth.users
  for each row execute function handle_new_user();

-- Accounts whose email is listed here become admins when this file is run.
-- Add an email only after that person has registered and signed in.
-- No policy grants read access; add rows in the SQL Editor only.
create table if not exists admin_emails (
  email text primary key
);
alter table admin_emails enable row level security;

-- True when the signed-in user is an instructor or admin.
create or replace function is_staff() returns boolean
language sql stable security definer set search_path = public as $$
  select exists (select 1 from profiles where id = auth.uid() and role in ('instructor', 'admin'));
$$;

-- ---------- Course ----------
create table if not exists modules (
  id int primary key,               -- module number, 1 to 16
  slug text unique not null,
  week int not null,
  title text not null
);
insert into modules (id, slug, week, title) values
  (1, 'distributor-business', 1, 'The Distributor Business'),
  (2, 'p21-navigation-inquiry', 1, 'P21 Navigation and Inquiry'),
  (3, 'customer-records', 1, 'Customer Records'),
  (4, 'fluid-conveyance-fundamentals', 1, 'Fluid Conveyance Fundamentals'),
  (5, 'industrial-hose-fittings', 2, 'Industrial Hose and Fittings'),
  (6, 'order-entry-quoting', 2, 'Order Entry and Quoting'),
  (7, 'hydraulic', 2, 'Hydraulic Hose and Fittings'),
  (8, 'pneumatic', 2, 'Pneumatic Hose, Tubing, and Fittings'),
  (9, 'hose-assemblies-kits', 3, 'Hose Assemblies as Kits'),
  (10, 'sheet-rubber-gasket-materials', 3, 'Sheet Rubber and Gasket Materials'),
  (11, 'flanges-gaskets-installation', 3, 'Flanges, Gaskets, and Installation'),
  (12, 'custom-gasket-estimating', 3, 'Custom Gasket Fabrication and Estimating'),
  (13, 'purchasing-receiving', 4, 'Purchasing and Receiving'),
  (14, 'inventory-counts-replenishment', 4, 'Inventory Counts and Replenishment'),
  (15, 'rmas-returns', 4, 'RMAs and Returns'),
  (16, 'expansion-joints-belting-sealing', 4, 'Expansion Joints, Belting, and Fluid Sealing')
on conflict (id) do update set slug = excluded.slug, week = excluded.week, title = excluded.title;

create table if not exists module_progress (
  user_id uuid not null references auth.users on delete cascade,
  module_id int not null references modules,
  completed_at timestamptz not null default now(),
  primary key (user_id, module_id)
);

create table if not exists bookmarks (
  user_id uuid not null references auth.users on delete cascade,
  module_id int not null references modules,
  anchor text not null default '',
  created_at timestamptz not null default now(),
  primary key (user_id, module_id, anchor)
);

-- ---------- Quizzes ----------
create table if not exists quizzes (
  id bigint generated always as identity primary key,
  module_id int references modules,  -- null for the final exam
  kind quiz_kind not null,
  draw_count int not null default 10,
  pass_pct int not null,
  max_attempts int not null
);
-- A test-out draws its questions from the module quiz's pool.
alter table quizzes add column if not exists pool_quiz_id bigint references quizzes;
create unique index if not exists quizzes_module_kind on quizzes (module_id, kind);

create table if not exists questions (
  id bigint generated always as identity primary key,
  quiz_id bigint not null references quizzes on delete cascade,
  kind question_kind not null default 'single',
  prompt text not null,
  choices jsonb not null,            -- ["choice A", "choice B", ...]
  explanation text not null default ''
);
alter table questions add column if not exists code text;
create unique index if not exists questions_code on questions (code);

-- Answer keys. No policy grants read access, so the browser can never see them.
create table if not exists question_keys (
  question_id bigint primary key references questions on delete cascade,
  correct int[] not null             -- indexes into questions.choices
);

create table if not exists quiz_attempts (
  id bigint generated always as identity primary key,
  user_id uuid not null references auth.users on delete cascade,
  quiz_id bigint not null references quizzes,
  score_pct int not null,
  passed boolean not null,
  created_at timestamptz not null default now()
);

create table if not exists attempt_answers (
  attempt_id bigint not null references quiz_attempts on delete cascade,
  question_id bigint not null references questions,
  chosen int[] not null,
  correct boolean not null,
  primary key (attempt_id, question_id)
);

-- An attempt is open (submitted_at is null) from the draw until it is graded.
alter table quiz_attempts add column if not exists submitted_at timestamptz;

-- The questions drawn for each attempt. Written only by start_attempt.
create table if not exists attempt_questions (
  attempt_id bigint not null references quiz_attempts on delete cascade,
  question_id bigint not null references questions,
  position int not null default 0,
  primary key (attempt_id, question_id)
);

-- Attempts graded before draws were stored have no drawn questions: mark them graded.
update quiz_attempts a set submitted_at = a.created_at
where a.submitted_at is null
  and not exists (select 1 from attempt_questions aq where aq.attempt_id = a.id);

-- Draws the questions for an attempt on the server and returns them.
-- Module quiz: every scenario question (code ending -S1, -S2, ...) plus a random
-- draw from the pool. Final exam: the same number from every module pool.
-- An open attempt is returned again as drawn, so a reload never shows a new set.
-- A try is used when the attempt is graded.
create or replace function start_attempt(p_quiz_id bigint) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  q quizzes; pool bigint; aid bigint; used int; per int; n_mod int; n_drawn int;
  resumed boolean := false;
begin
  if auth.uid() is null then raise exception 'Sign in first'; end if;
  select * into q from quizzes where id = p_quiz_id;
  if not found then raise exception 'Quiz not found'; end if;
  -- The course has no test-out. Rows of that kind stay in the table unused.
  if q.kind = 'test_out' then raise exception 'Quiz not found'; end if;
  -- One draw at a time for each trainee and quiz.
  perform pg_advisory_xact_lock(hashtextextended(auth.uid()::text || ':' || p_quiz_id::text, 0));

  select qa.id into aid from quiz_attempts qa
    where qa.user_id = auth.uid() and qa.quiz_id = p_quiz_id and qa.submitted_at is null
    order by qa.id limit 1;
  if aid is not null then
    resumed := true;
  else
    if exists (select 1 from quiz_attempts qa
               where qa.user_id = auth.uid() and qa.quiz_id = p_quiz_id and qa.passed) then
      raise exception 'You already passed this quiz';
    end if;
    select count(*) into used from quiz_attempts qa
      where qa.user_id = auth.uid() and qa.quiz_id = p_quiz_id and qa.submitted_at is not null;
    if used >= q.max_attempts then raise exception 'No attempts left'; end if;
    if q.kind = 'final' and exists (
        select 1 from quizzes z where z.kind = 'module'
          and not exists (select 1 from quiz_attempts qa
                          where qa.quiz_id = z.id and qa.user_id = auth.uid() and qa.passed)) then
      raise exception 'Pass every module quiz before you take the final exam';
    end if;

    insert into quiz_attempts (user_id, quiz_id, score_pct, passed)
      values (auth.uid(), p_quiz_id, 0, false) returning id into aid;

    if q.kind = 'final' then
      select count(*) into n_mod from quizzes z where z.kind = 'module';
      per := q.draw_count / greatest(n_mod, 1);
      insert into attempt_questions (attempt_id, question_id)
        select aid, t.id from (
          select qq.id, row_number() over (partition by qq.quiz_id order by random()) as rn
          from questions qq
          join quizzes z on z.id = qq.quiz_id and z.kind = 'module'
          join question_keys qk on qk.question_id = qq.id) t
        where t.rn <= per;
      select count(*) into n_drawn from attempt_questions aq where aq.attempt_id = aid;
      insert into attempt_questions (attempt_id, question_id)
        select aid, t.id from (
          select qq.id from questions qq
          join quizzes z on z.id = qq.quiz_id and z.kind = 'module'
          join question_keys qk on qk.question_id = qq.id
          where not exists (select 1 from attempt_questions aq
                            where aq.attempt_id = aid and aq.question_id = qq.id)
          order by random()
          limit greatest(q.draw_count - n_drawn, 0)) t;
    else
      pool := coalesce(q.pool_quiz_id, q.id);
      insert into attempt_questions (attempt_id, question_id)
        select aid, t.id from (
          select qq.id from questions qq
          join question_keys qk on qk.question_id = qq.id
          where qq.quiz_id = pool
          order by (qq.code ~ '-S[0-9]+$') desc nulls last, random()
          limit q.draw_count) t;
    end if;

    select count(*) into n_drawn from attempt_questions aq where aq.attempt_id = aid;
    if n_drawn <> q.draw_count then raise exception 'This quiz is not ready yet'; end if;

    update attempt_questions aq set position = s.rn
      from (select x.question_id, row_number() over (order by random()) as rn
            from attempt_questions x where x.attempt_id = aid) s
      where aq.attempt_id = aid and aq.question_id = s.question_id;
  end if;

  return jsonb_build_object(
    'attempt_id', aid,
    'resumed', resumed,
    'questions', (
      select jsonb_agg(jsonb_build_object('id', qq.id, 'prompt', qq.prompt, 'choices', qq.choices)
                       order by aq.position)
      from attempt_questions aq join questions qq on qq.id = aq.question_id
      where aq.attempt_id = aid));
end $$;

-- Grades an open attempt on the server. answers = {"<question_id>": [choice indexes]}
-- The submission must answer exactly the questions start_attempt drew.
-- Passing a module quiz marks the module complete.
drop function if exists grade_attempt(bigint, jsonb);
create function grade_attempt(p_attempt_id bigint, answers jsonb)
returns table (attempt_id bigint, score_pct int, passed boolean)
language plpgsql security definer set search_path = public as $$
#variable_conflict use_column
declare
  att quiz_attempts; q quizzes; total int; drawn int; matched int; right_count int := 0;
  k record; pick int[]; key int[]; pct int;
begin
  if auth.uid() is null then raise exception 'Sign in first'; end if;
  select * into att from quiz_attempts qa
    where qa.id = p_attempt_id and qa.user_id = auth.uid() for update;
  if not found then raise exception 'Attempt not found'; end if;
  if att.submitted_at is not null then raise exception 'This attempt is already graded'; end if;
  select * into q from quizzes z where z.id = att.quiz_id;

  if jsonb_typeof(answers) <> 'object' then raise exception 'Answers are not readable'; end if;
  total := (select count(*) from jsonb_object_keys(answers));
  select count(*), count(*) filter (where answers ? aq.question_id::text)
    into drawn, matched
    from attempt_questions aq where aq.attempt_id = p_attempt_id;
  if drawn = 0 or total <> drawn or matched <> drawn then
    raise exception 'Answer all % questions', drawn;
  end if;

  for k in
    select aq.question_id, qk.correct from attempt_questions aq
    left join question_keys qk on qk.question_id = aq.question_id
    where aq.attempt_id = p_attempt_id
  loop
    pick := array(select (jsonb_array_elements_text(answers -> k.question_id::text))::int order by 1);
    key := array(select unnest(k.correct) order by 1);
    insert into attempt_answers values (p_attempt_id, k.question_id, pick, k.correct is not null and pick = key);
    if k.correct is not null and pick = key then right_count := right_count + 1; end if;
  end loop;

  pct := round(100.0 * right_count / drawn);
  update quiz_attempts qa set score_pct = pct, passed = pct >= q.pass_pct, submitted_at = now()
    where qa.id = p_attempt_id;
  if pct >= q.pass_pct and q.module_id is not null then
    insert into module_progress (user_id, module_id) values (auth.uid(), q.module_id)
      on conflict do nothing;
  end if;
  return query select qa.id, qa.score_pct, qa.passed from quiz_attempts qa where qa.id = p_attempt_id;
end $$;

-- The final exam draws from every module quiz pool (3 questions per module).
insert into quizzes (module_id, kind, draw_count, pass_pct, max_attempts)
select null, 'final', 48, 85, 2
where not exists (select 1 from quizzes where kind = 'final');

-- ---------- Manager sign-offs ----------
create table if not exists skills (
  id bigint generated always as identity primary key,
  module_id int not null references modules,
  title text not null
);

create table if not exists skill_signoffs (
  user_id uuid not null references auth.users on delete cascade,
  skill_id bigint not null references skills,
  signed_by uuid not null references auth.users,
  signed_at timestamptz not null default now(),
  note text not null default '',
  primary key (user_id, skill_id)
);

create table if not exists assignments (
  trainee_id uuid not null references auth.users on delete cascade,
  instructor_id uuid not null references auth.users on delete cascade,
  start_date date,
  primary key (trainee_id, instructor_id)
);

-- ---------- Time on each module ----------
-- The module page adds the seconds a signed-in trainee spends on it.
create table if not exists module_time (
  user_id uuid not null references auth.users on delete cascade,
  module_id int not null references modules,
  seconds int not null default 0,
  first_seen timestamptz not null default now(),
  last_seen timestamptz not null default now(),
  primary key (user_id, module_id)
);

create or replace function log_module_time(p_module_id int, p_seconds int)
returns void language plpgsql security definer set search_path = public as $$
begin
  if auth.uid() is null then return; end if;
  if p_seconds is null or p_seconds < 1 then return; end if;
  -- Credit no more seconds than have passed since the last save.
  insert into module_time (user_id, module_id, seconds)
    values (auth.uid(), p_module_id, least(p_seconds, 120))
  on conflict (user_id, module_id) do update
    set seconds = module_time.seconds + greatest(least(p_seconds, 120,
          floor(extract(epoch from now() - module_time.last_seen))::int), 0),
        last_seen = now();
end $$;

-- ---------- Time on each quiz attempt ----------
alter table quiz_attempts add column if not exists seconds int;

-- The quiz page saves the active seconds once, right after grading. The value
-- is capped at the time between the draw and the grading.
create or replace function log_attempt_time(p_attempt_id bigint, p_seconds int)
returns void language sql security definer set search_path = public as $$
  update quiz_attempts set seconds = least(greatest(coalesce(p_seconds, 0), 0), 14400,
           ceil(extract(epoch from submitted_at - created_at))::int)
  where id = p_attempt_id and user_id = auth.uid() and seconds is null and submitted_at is not null;
$$;

-- ---------- Admin report ----------
create or replace function is_admin() returns boolean
language sql stable security definer set search_path = public as $$
  select exists (select 1 from profiles where id = auth.uid() and role = 'admin');
$$;

-- Every user with email, for the admin page. Admins only.
create or replace function admin_users()
returns table (id uuid, email text, full_name text, branch text, role user_role,
               created_at timestamptz, last_sign_in_at timestamptz)
language plpgsql stable security definer set search_path = public as $$
begin
  if not is_admin() then raise exception 'Admins only'; end if;
  return query
    select p.id, u.email::text, p.full_name, p.branch, p.role, p.created_at, u.last_sign_in_at
    from profiles p join auth.users u on u.id = p.id
    order by u.email;
end $$;

-- Questions, the trainee's answers, and the correct answers for one attempt. Admins only.
create or replace function admin_attempt_answers(p_attempt_id bigint)
returns table (question_id bigint, code text, prompt text, choices jsonb, chosen int[],
               correct_choices int[], is_correct boolean, explanation text)
language plpgsql stable security definer set search_path = public as $$
begin
  if not is_admin() then raise exception 'Admins only'; end if;
  return query
    select q.id, q.code, q.prompt, q.choices, aa.chosen, k.correct, aa.correct, q.explanation
    from attempt_answers aa
    join questions q on q.id = aa.question_id
    left join question_keys k on k.question_id = aa.question_id
    where aa.attempt_id = p_attempt_id
    order by aa.correct, q.id;
end $$;

-- ---------- Row-level security ----------
alter table profiles enable row level security;
alter table modules enable row level security;
alter table module_progress enable row level security;
alter table bookmarks enable row level security;
alter table quizzes enable row level security;
alter table questions enable row level security;
alter table question_keys enable row level security;
alter table quiz_attempts enable row level security;
alter table attempt_answers enable row level security;
alter table attempt_questions enable row level security;
alter table skills enable row level security;
alter table skill_signoffs enable row level security;
alter table assignments enable row level security;
alter table module_time enable row level security;

drop policy if exists "own profile or staff" on profiles;
create policy "own profile or staff" on profiles for select using (id = auth.uid() or is_staff());
-- A trainee may change only full_name (see the column grant under Table access).
drop policy if exists "edit own name" on profiles;
create policy "edit own name" on profiles for update using (id = auth.uid())
  with check (id = auth.uid() and role = (select role from profiles where id = auth.uid()));

drop policy if exists "read course" on modules;
create policy "read course" on modules for select using (true);
drop policy if exists "read quizzes" on quizzes;
create policy "read quizzes" on quizzes for select using (true);
-- questions and attempt_questions: no policies on purpose. The browser gets
-- questions only from start_attempt, which returns the drawn set.
drop policy if exists "read questions" on questions;
drop policy if exists "read skills" on skills;
create policy "read skills" on skills for select using (true);
-- question_keys: no policies on purpose.

-- Progress is written only by grade_attempt.
drop policy if exists "own progress" on module_progress;
drop policy if exists "read progress" on module_progress;
create policy "read progress" on module_progress for select
  using (user_id = auth.uid() or is_staff());
drop policy if exists "own bookmarks" on bookmarks;
create policy "own bookmarks" on bookmarks for all
  using (user_id = auth.uid()) with check (user_id = auth.uid());

-- Attempts are written only by start_attempt and grade_attempt.
drop policy if exists "read own attempts" on quiz_attempts;
create policy "read own attempts" on quiz_attempts for select using (user_id = auth.uid() or is_staff());
drop policy if exists "read own answers" on attempt_answers;
create policy "read own answers" on attempt_answers for select using (
  exists (select 1 from quiz_attempts a where a.id = attempt_id and (a.user_id = auth.uid() or is_staff())));

drop policy if exists "read signoffs" on skill_signoffs;
create policy "read signoffs" on skill_signoffs for select using (user_id = auth.uid() or is_staff());
drop policy if exists "staff sign off" on skill_signoffs;
create policy "staff sign off" on skill_signoffs for insert with check (is_staff() and signed_by = auth.uid());

-- Time is written only by log_module_time.
drop policy if exists "read own time" on module_time;
create policy "read own time" on module_time for select using (user_id = auth.uid() or is_staff());

drop policy if exists "read assignments" on assignments;
create policy "read assignments" on assignments for select
  using (trainee_id = auth.uid() or instructor_id = auth.uid() or is_staff());

-- ---------- Table access ----------
-- Start from nothing on this site's tables, then grant what the pages use.
grant usage on schema public to anon, authenticated;
revoke all on profiles, admin_emails, modules, module_progress, bookmarks, quizzes,
  questions, question_keys, quiz_attempts, attempt_questions, attempt_answers,
  skills, skill_signoffs, assignments, module_time from anon, authenticated;
grant select on modules, quizzes, skills to anon, authenticated;
grant select on profiles, module_progress, quiz_attempts, attempt_answers,
  assignments, module_time to authenticated;
grant update (full_name) on profiles to authenticated;
grant select, insert, update, delete on bookmarks to authenticated;
grant select, insert on skill_signoffs to authenticated;
-- questions, question_keys, attempt_questions, admin_emails: no access.

revoke execute on function start_attempt(bigint) from public, anon;
grant execute on function start_attempt(bigint) to authenticated;
revoke execute on function grade_attempt(bigint, jsonb) from public, anon;
grant execute on function grade_attempt(bigint, jsonb) to authenticated;
revoke execute on function log_attempt_time(bigint, int) from public, anon;
grant execute on function log_attempt_time(bigint, int) to authenticated;
revoke execute on function log_module_time(int, int) from public, anon;
grant execute on function log_module_time(int, int) to authenticated;
revoke execute on function admin_attempt_answers(bigint) from public, anon;
grant execute on function admin_attempt_answers(bigint) to authenticated;
revoke execute on function admin_users() from public, anon;
grant execute on function admin_users() to authenticated;
-- The sign-up trigger is never called through the API; role checks are for signed-in users.
revoke execute on function handle_new_user() from public, anon, authenticated;
revoke execute on function is_admin() from public, anon;
grant execute on function is_admin() to authenticated;
revoke execute on function is_staff() from public, anon;
grant execute on function is_staff() to authenticated;

-- Promote anyone already registered whose email is on the admin list.
update profiles set role = 'admin'
where role <> 'admin'
  and id in (select u.id from auth.users u join admin_emails a on lower(a.email) = lower(u.email));

-- To make someone an admin: have them register and sign in first. Then add their
-- email to admin_emails in the SQL Editor:
--   insert into admin_emails (email) values ('you@example.com') on conflict do nothing;
-- and run this file again (or the update just above). Signing up never grants admin.
