# TRG Distributor Training: context for Claude Code

Generic four-week training course for any TRG branch or distributor (industrial rubber, hose, and gasket). Separate from the MR&G training site. Owner: Greg. Repo is public.

## Stack
- Astro 4 static site, built and deployed to GitHub Pages by `.github/workflows/deploy.yml` on every push to `main`. Pages source must be set to "GitHub Actions".
- Supabase (free tier) for sign-in, progress, quizzes, and sign-offs. Settings live in `site.config.json` (URL and the public anon key only; never the service_role key).
- Custom domain trgtraining.com. Until `public/CNAME` exists the site builds for `gpinkham55.github.io/TRG-distributor-training/`. When the domain is live, add `public/CNAME` containing `trgtraining.com` and the build switches to the root path.
- `.github/workflows/keepalive.yml` pings Supabase every 3 days so the free project does not pause.

## Content
- One file per module in `src/content/modules/<slug>.md`. Frontmatter: number, title, week, minutes, signoff, status (draft or published), summary.
- The outline is `src/data/syllabus.ts`; module slugs there must match the content file names and the `modules` rows in `supabase/schema.sql`.
- Callouts: a blockquote starting with 💡, ⚠️, or 📌 becomes a styled box. A paragraph `[IMAGE EXAMPLE: ...]` becomes an image placeholder, or the picture `public/img/modules/<slug>-<n>.jpg|png|webp` when that file is in the repo (n counts placeholders in the module from 1). `public/img/modules/README.md` lists every slot; regenerate it when placeholders change. All handled in `src/lib/callouts.mjs`.
- Answer keys never go in this repo or the browser. Quiz answers live in the `question_keys` table, which has no read policy; `grade_attempt()` grades on the server.

## Content rules
- Professional textbook tone, plain English. No em dashes. Avoid: "because", "matters", "while" as a contrast, "exists/existing", times of day and days of the week, "naming/named".
- No real rates, costs, or margins. Pricing examples use placeholders only (material markup ×3.00, shop rate $150/hr).
- No employee names. No lot or heat traceability.
- Call the test system "the P21Play System" (heading form: "P21Play System").
- Safety: safety glasses when cutting or operating equipment; follow your branch's rules.
- Drafts: Greg reviews one module at a time through Week 1, then a week at a time.

## Database
- `supabase/schema.sql` is re-runnable. Run it in the Supabase SQL Editor after any change.
- Progress is tracked per module in `module_progress`.
- Roles: trainee (default on sign-up), instructor, admin. Promote with the SQL at the bottom of schema.sql.

## Build
- `npm install`, then `npm run dev` to preview or `npm run build` to check.
