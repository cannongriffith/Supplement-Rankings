import { useState, useEffect } from 'react';
import { getProxiedImageUrl, getPlaceholderImageUrl } from '../lib/images';

export function useProductImage(imageUrl: string, productName: string, placeholderSize: string = '600x400') {
  const [imageSrc, setImageSrc] = useState(() => getProxiedImageUrl(imageUrl));

  useEffect(() => {
    setImageSrc(getProxiedImageUrl(imageUrl));
  }, [imageUrl]);

  const handleError = (e: React.SyntheticEvent<HTMLImageElement, Event>) => {
    e.currentTarget.onerror = null;
    e.currentTarget.src = getPlaceholderImageUrl(productName, placeholderSize);
  };

  return { imageSrc, handleError };
}
