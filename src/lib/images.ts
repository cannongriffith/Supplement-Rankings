export function getProxiedImageUrl(originalUrl: string): string {
  if (originalUrl.includes('amazon.com') || originalUrl.includes('media-amazon')) {
    return `https://wsrv.nl/?url=${encodeURIComponent(originalUrl)}`;
  }
  return originalUrl;
}

export function getPlaceholderImageUrl(productName: string, size: string = '600x400'): string {
  const [width, height] = size.split('x').map(Number);
  const displayName = productName.length > 30 ? productName.slice(0, 27) + '...' : productName;
  const svg = `<svg xmlns="http://www.w3.org/2000/svg" width="${width}" height="${height}" viewBox="0 0 ${width} ${height}">
    <defs>
      <linearGradient id="bg" x1="0%" y1="0%" x2="100%" y2="100%">
        <stop offset="0%" stop-color="#f0fdfa"/>
        <stop offset="100%" stop-color="#ecfdf5"/>
      </linearGradient>
    </defs>
    <rect width="${width}" height="${height}" fill="url(#bg)"/>
    <rect x="${width / 2 - 20}" y="${height / 2 - 52}" width="40" height="48" rx="6" fill="#99f6e4" opacity="0.6"/>
    <rect x="${width / 2 - 14}" y="${height / 2 - 46}" width="28" height="4" rx="2" fill="#5eead4"/>
    <rect x="${width / 2 - 10}" y="${height / 2 - 56}" width="20" height="8" rx="3" fill="#5eead4"/>
    <text x="50%" y="${height / 2 + 20}" font-family="system-ui,-apple-system,sans-serif" font-size="13" font-weight="600" fill="#0f766e" text-anchor="middle">${escapeXml(displayName)}</text>
    <text x="50%" y="${height / 2 + 38}" font-family="system-ui,-apple-system,sans-serif" font-size="10" fill="#94a3b8" text-anchor="middle">Image unavailable</text>
  </svg>`;
  return `data:image/svg+xml,${encodeURIComponent(svg)}`;
}

function escapeXml(str: string): string {
  return str.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;').replace(/'/g, '&apos;');
}
