# TRG Distributor Training

A four-week course for people new to industrial rubber, hose, and gasket distribution. Built with Astro and Supabase; hosted on GitHub Pages.

## Edit a module
Open the file in `src/content/modules/`, click the pencil, edit, and commit. The site rebuilds in about two minutes.

## One-time setup
1. **GitHub Pages:** Settings > Pages > Source: GitHub Actions.
2. **Supabase:** SQL Editor > New query > paste `supabase/schema.sql` > Run. Then put the anon public key in `site.config.json`.
3. **Domain:** after buying trgtraining.com, point DNS at GitHub Pages, add `public/CNAME` with `trgtraining.com`, and set the custom domain in Settings > Pages.
