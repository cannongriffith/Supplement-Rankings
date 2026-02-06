import { useState, useEffect } from 'react';
import { ExternalLink } from 'lucide-react';
import { Product } from '../lib/supabase';
import { StarRating } from './StarRating';
import { ProductImage } from './ProductImage';

interface StickyProductCTAProps {
  product: Product;
}

export function StickyProductCTA({ product }: StickyProductCTAProps) {
  const [visible, setVisible] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      setVisible(window.scrollY > 500);
    };
    window.addEventListener('scroll', handleScroll, { passive: true });
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  return (
    <div
      className={`fixed bottom-0 left-0 right-0 z-40 bg-white border-t border-gray-200 shadow-[0_-4px_20px_rgba(0,0,0,0.08)] transition-transform duration-300 ${
        visible ? 'translate-y-0' : 'translate-y-full'
      }`}
    >
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-3">
        <div className="flex items-center justify-between gap-4">
          <div className="flex items-center gap-3 min-w-0">
            <ProductImage
              imageUrl={product.image_url}
              productName={product.name}
              alt={product.name}
              className="w-10 h-10 rounded-lg object-contain p-0.5 bg-gray-50 border border-gray-100 shrink-0 hidden sm:block"
              placeholderSize="80x80"
            />
            <div className="min-w-0">
              <p className="font-bold text-gray-900 text-sm truncate">{product.name}</p>
              <div className="flex items-center gap-2">
                <StarRating rating={product.rating} size={10} />
                <span className="text-sm font-semibold text-gray-900">
                  ${product.price_min}&ndash;${product.price_max}
                </span>
              </div>
            </div>
          </div>
          <a
            href={product.affiliate_link}
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center gap-2 px-5 py-2.5 bg-emerald-600 hover:bg-emerald-700 text-white text-sm font-semibold rounded-lg transition-colors shrink-0"
          >
            Check Price <ExternalLink size={14} />
          </a>
        </div>
      </div>
    </div>
  );
}
