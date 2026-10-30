import { defineConfig } from 'astro/config';
import { readFileSync, existsSync } from 'node:fs';
import { callouts } from './src/lib/callouts.mjs';

const cfg = JSON.parse(readFileSync('./site.config.json', 'utf8'));
// With public/CNAME the site runs at the custom domain root.
// Without it, GitHub Pages serves it under /TRG-distributor-training/.
const custom = existsSync('./public/CNAME');

export default defineConfig({
  site: custom ? `https://${cfg.domain}` : 'https://gpinkham55.github.io',
  base: custom ? '/' : '/TRG-distributor-training',
  trailingSlash: 'ignore',
  markdown: { rehypePlugins: [callouts] },
});
