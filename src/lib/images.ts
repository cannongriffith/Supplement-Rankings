export function getProxiedImageUrl(originalUrl: string): string {
  if (originalUrl.includes('amazon.com') || originalUrl.includes('media-amazon')) {
    return `https://wsrv.nl/?url=${encodeURIComponent(originalUrl)}&default=1`;
  }
  return originalUrl;
}

export function getPlaceholderImageUrl(productName: string, size: string = '600x400'): string {
  return `https://placehold.co/${size}/e2e8f0/64748b?text=${encodeURIComponent(productName)}`;
}
