// Turns blockquotes that start with an emoji label into styled callouts,
// and "[IMAGE EXAMPLE: ...]" paragraphs into image placeholders.
const KINDS = [
  ['💡', 'tip'],
  ['⚠️', 'warn'],
  ['📌', 'note'],
];

function textOf(node) {
  if (node.type === 'text') return node.value;
  return (node.children || []).map(textOf).join('');
}

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
      const t = textOf(c).trim();
      const m = t.match(/^\[IMAGE EXAMPLE:\s*(.+)\]$/s);
      if (m) {
        return {
          type: 'element', tagName: 'figure', properties: { className: ['ph'] },
          children: [{ type: 'element', tagName: 'figcaption', properties: {}, children: [{ type: 'text', value: `Image to come: ${m[1]}` }] }],
        };
      }
    }
    if (c.type === 'element' && c.tagName === 'table') {
      walk(c);
      return { type: 'element', tagName: 'div', properties: { className: ['tw'] }, children: [c] };
    }
    walk(c);
    return c;
  });
}

export function callouts() {
  return (tree) => walk(tree);
}
