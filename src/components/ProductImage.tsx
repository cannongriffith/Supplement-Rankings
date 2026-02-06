import { useProductImage } from '../hooks/useProductImage';

interface ProductImageProps {
  imageUrl: string;
  productName: string;
  alt: string;
  className?: string;
  placeholderSize?: string;
}

/**
 * Product image component with automatic CORS proxy fallback and placeholder
 */
export function ProductImage({
  imageUrl,
  productName,
  alt,
  className = '',
  placeholderSize = '600x400'
}: ProductImageProps) {
  const { imageSrc, handleError } = useProductImage(imageUrl, productName, placeholderSize);

  return (
    <img
      src={imageSrc}
      alt={alt}
      className={className}
      onError={handleError}
    />
  );
}
