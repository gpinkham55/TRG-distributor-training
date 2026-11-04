// Markdown helpers for module pages:
// - Blockquotes that start with 💡, ⚠️, or 📌 become styled callouts.
// - "[IMAGE EXAMPLE: ...]" paragraphs become image placeholders. If a matching
//   picture is in public/img/modules/ (<module-slug>-<n>.jpg|jpeg|png|webp, where n
//   counts the placeholders in that module from 1), the picture shows instead.
// - Tables get a scroll wrapper for small screens.
import { existsSync } from 'node:fs';
import { basename } from 'node:path';

const KINDS = [['💡', 'tip'], ['⚠️', 'warn'], ['📌', 'note']];
const EXTS = ['jpg', 'jpeg', 'png', 'webp'];

const el = (tagName, properties, children = []) => ({ type: 'element', tagName, properties, children });
const txt = (value) => ({ type: 'text', value });

function textOf(node) {
  if (node.type === 'text') return node.value;
  return (node.children || []).map(textOf).join('');
}

export function callouts({ base = '' } = {}) {
  return (tree, file) => {
    const path = file.path || (file.history && file.history[0]) || '';
    const slug = path.includes('content/modules') ? basename(path).replace(/\.md$/, '') : '';
    let n = 0;

    function walk(node) {
      if (!node.children) return;
      node.children = node.children.map((c) => {
        if (c.type === 'element' && c.tagName === 'blockquote') {
          const t = textOf(c).trim();
          const k = KINDS.find(([e]) => t.startsWith(e));
          if (k) {
            c.tagName = 'aside';
            c.properties = { ...(c.properties || {}), className: ['callout', `callout-${k[1]}`] };
          }
        }
        if (c.type === 'element' && c.tagName === 'p') {
          const m = textOf(c).trim().match(/^\[IMAGE EXAMPLE:\s*(.+)\]$/s);
          if (m) {
            n += 1;
            const ext = slug && EXTS.find((e) => existsSync(`public/img/modules/${slug}-${n}.${e}`));
            if (ext) {
              return el('figure', { className: ['pic'] }, [
                el('img', { src: `${base}/img/modules/${slug}-${n}.${ext}`, alt: m[1], loading: 'lazy' }),
              ]);
            }
            return el('figure', { className: ['ph'] }, [
              el('figcaption', {}, [txt(`Image to come: ${m[1]}`)]),
            ]);
          }
        }
        if (c.type === 'element' && c.tagName === 'table') {
          walk(c);
          return el('div', { className: ['tw'] }, [c]);
        }
        walk(c);
        return c;
      });
    }
    walk(tree);
  };
}
