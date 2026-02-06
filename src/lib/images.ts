/**
 * Image utilities for handling product images with fallbacks
 */

/**
 * Attempts to load an image URL through a CORS proxy if the original fails
 * This is a temporary solution for Amazon images that block hotlinking
 */
export function getImageUrl(originalUrl: string): string {
  // If it's an Amazon URL, try using a CORS proxy
  if (originalUrl.includes('amazon.com') || originalUrl.includes('media-amazon')) {
    // Try the original first, fallback will handle it in the component
    return originalUrl;
  }

  return originalUrl;
}

/**
 * Gets a CORS-proxied version of the image URL
 * Use this as a fallback when the original image fails to load
 */
export function getCorsProxiedImageUrl(originalUrl: string): string {
  // Use a CORS proxy service to load Amazon images
  // This is a temporary workaround - real product images should be uploaded to Supabase Storage
  const corsProxy = 'https://corsproxy.io/?';
  return corsProxy + encodeURIComponent(originalUrl);
}

/**
 * Generates a placeholder image URL with product name
 */
export function getPlaceholderImageUrl(productName: string, size: string = '600x400'): string {
  return `https://placehold.co/${size}/e2e8f0/64748b?text=${encodeURIComponent(productName)}`;
}
