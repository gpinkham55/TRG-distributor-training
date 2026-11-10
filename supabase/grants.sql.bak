-- Table access for the website. Row-level security still limits each user to their own rows.
grant usage on schema public to anon, authenticated;
grant select on modules, quizzes, skills to anon, authenticated;
grant select on questions to authenticated;
grant select, update on profiles to authenticated;
grant select, insert, update, delete on module_progress, bookmarks to authenticated;
grant select on quiz_attempts, attempt_answers, assignments to authenticated;
grant select, insert on skill_signoffs to authenticated;
revoke all on question_keys from anon, authenticated;
revoke execute on function grade_attempt(bigint, jsonb) from public, anon;
grant execute on function grade_attempt(bigint, jsonb) to authenticated;
