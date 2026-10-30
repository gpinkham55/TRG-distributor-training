// Prefix a site path with the base path (needed until the custom domain is live).
export function u(path = '') {
  const base = import.meta.env.BASE_URL.replace(/\/$/, '');
  return `${base}/${path.replace(/^\//, '')}`;
}
