import { useState, useEffect } from 'react';
import { getCorsProxiedImageUrl, getPlaceholderImageUrl } from '../lib/images';

/**
 * Hook for handling product image loading with CORS proxy fallback
 */
export function useProductImage(imageUrl: string, productName: string, placeholderSize: string = '600x400') {
  const [imageSrc, setImageSrc] = useState(imageUrl);
  const [hasError, setHasError] = useState(false);

  // Reset when imageUrl changes
  useEffect(() => {
    setImageSrc(imageUrl);
    setHasError(false);
  }, [imageUrl]);

  const handleError = (e: React.SyntheticEvent<HTMLImageElement, Event>) => {
    const target = e.currentTarget;
    target.onerror = null;

    // If we haven't tried the CORS proxy yet and it's an Amazon URL, try that first
    if (!hasError && imageSrc.includes('amazon')) {
      setHasError(true);
      setImageSrc(getCorsProxiedImageUrl(imageUrl));
    } else {
      // Fall back to placeholder
      target.src = getPlaceholderImageUrl(productName, placeholderSize);
    }
  };

  return { imageSrc, handleError };
}
