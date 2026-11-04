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

-- New sign-ups get a trainee profile automatically.
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

-- Grades a submission on the server. answers = {"<question_id>": [choice indexes]}
-- The submission must answer exactly draw_count questions from the quiz's pool.
-- Passing marks the module complete.
create or replace function grade_attempt(p_quiz_id bigint, answers jsonb)
returns table (attempt_id bigint, score_pct int, passed boolean)
language plpgsql security definer set search_path = public as $$
#variable_conflict use_column
declare
  q quizzes; pool bigint; used int; total int; matched int; right_count int := 0;
  aid bigint; k record; pick int[]; key int[]; pct int;
begin
  if auth.uid() is null then raise exception 'Sign in first'; end if;
  select * into q from quizzes where id = p_quiz_id;
  if not found then raise exception 'Quiz not found'; end if;
  pool := coalesce(q.pool_quiz_id, q.id);
  select count(*) into used from quiz_attempts where user_id = auth.uid() and quiz_id = p_quiz_id;
  if used >= q.max_attempts then raise exception 'No attempts left'; end if;

  total := (select count(*) from jsonb_object_keys(answers));
  select count(*) into matched from questions qq
    where answers ? qq.id::text
      and (qq.quiz_id = pool
           or (q.kind = 'final' and qq.quiz_id in (select z.id from quizzes z where z.kind = 'module')));
  if total <> q.draw_count or matched <> q.draw_count then
    raise exception 'Answer all % questions', q.draw_count;
  end if;

  insert into quiz_attempts (user_id, quiz_id, score_pct, passed)
    values (auth.uid(), p_quiz_id, 0, false) returning id into aid;

  for k in
    select qk.question_id, qk.correct from question_keys qk
    join questions qq on qq.id = qk.question_id
    where answers ? qk.question_id::text
      and (qq.quiz_id = pool
           or (q.kind = 'final' and qq.quiz_id in (select z.id from quizzes z where z.kind = 'module')))
  loop
    pick := array(select (jsonb_array_elements_text(answers -> k.question_id::text))::int order by 1);
    key := array(select unnest(k.correct) order by 1);
    insert into attempt_answers values (aid, k.question_id, pick, pick = key);
    if pick = key then right_count := right_count + 1; end if;
  end loop;

  pct := round(100.0 * right_count / q.draw_count);
  update quiz_attempts set score_pct = pct, passed = pct >= q.pass_pct where id = aid;
  if pct >= q.pass_pct and q.module_id is not null then
    insert into module_progress (user_id, module_id) values (auth.uid(), q.module_id)
      on conflict do nothing;
  end if;
  return query select qa.id, qa.score_pct, qa.passed from quiz_attempts qa where qa.id = aid;
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
alter table skills enable row level security;
alter table skill_signoffs enable row level security;
alter table assignments enable row level security;

drop policy if exists "own profile or staff" on profiles;
create policy "own profile or staff" on profiles for select using (id = auth.uid() or is_staff());
drop policy if exists "edit own name" on profiles;
create policy "edit own name" on profiles for update using (id = auth.uid())
  with check (id = auth.uid() and role = (select role from profiles where id = auth.uid()));

drop policy if exists "read course" on modules;
create policy "read course" on modules for select using (true);
drop policy if exists "read quizzes" on quizzes;
create policy "read quizzes" on quizzes for select using (true);
drop policy if exists "read questions" on questions;
create policy "read questions" on questions for select using (auth.uid() is not null);
drop policy if exists "read skills" on skills;
create policy "read skills" on skills for select using (true);
-- question_keys: no policies on purpose.

drop policy if exists "own progress" on module_progress;
create policy "own progress" on module_progress for all
  using (user_id = auth.uid() or is_staff()) with check (user_id = auth.uid());
drop policy if exists "own bookmarks" on bookmarks;
create policy "own bookmarks" on bookmarks for all
  using (user_id = auth.uid()) with check (user_id = auth.uid());

-- Attempts are written only by grade_attempt.
drop policy if exists "read own attempts" on quiz_attempts;
create policy "read own attempts" on quiz_attempts for select using (user_id = auth.uid() or is_staff());
drop policy if exists "read own answers" on attempt_answers;
create policy "read own answers" on attempt_answers for select using (
  exists (select 1 from quiz_attempts a where a.id = attempt_id and (a.user_id = auth.uid() or is_staff())));

drop policy if exists "read signoffs" on skill_signoffs;
create policy "read signoffs" on skill_signoffs for select using (user_id = auth.uid() or is_staff());
drop policy if exists "staff sign off" on skill_signoffs;
create policy "staff sign off" on skill_signoffs for insert with check (is_staff() and signed_by = auth.uid());

drop policy if exists "read assignments" on assignments;
create policy "read assignments" on assignments for select
  using (trainee_id = auth.uid() or instructor_id = auth.uid() or is_staff());

-- ---------- Table access ----------
grant usage on schema public to anon, authenticated;
grant select on modules, quizzes, skills to anon, authenticated;
-- Questions: no access to explanation, which can give away the answer.
revoke select on questions from anon, authenticated;
grant select (id, quiz_id, kind, prompt, choices, code) on questions to authenticated;
grant select, update on profiles to authenticated;
grant select, insert, update, delete on module_progress, bookmarks to authenticated;
grant select on quiz_attempts, attempt_answers, assignments to authenticated;
grant select, insert on skill_signoffs to authenticated;
revoke all on question_keys from anon, authenticated;
revoke execute on function grade_attempt(bigint, jsonb) from public, anon;
grant execute on function grade_attempt(bigint, jsonb) to authenticated;

-- To make yourself admin after you register, run (with your email):
-- update profiles set role = 'admin' where id = (select id from auth.users where email = 'you@example.com');
