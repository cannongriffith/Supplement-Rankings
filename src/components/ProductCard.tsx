import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { Award, ExternalLink, Tag } from 'lucide-react';
import { Product, Deal, supabase } from '../lib/supabase';
import { StarRating } from './StarRating';
import { RankBadge } from './RankBadge';
import { useProductImage } from '../hooks/useProductImage';

interface ProductCardProps {
  product: Product;
  rank?: number;
}

export function ProductCard({ product, rank }: ProductCardProps) {
  const [deal, setDeal] = useState<Deal | null>(null);
  const { imageSrc, handleError } = useProductImage(product.image_url, product.name, '600x400');

  useEffect(() => {
    supabase
      .from('deals')
      .select('*')
      .eq('product_id', product.id)
      .eq('is_active', true)
      .gt('expires_at', new Date().toISOString())
      .maybeSingle()
      .then(({ data }) => {
        if (data) setDeal(data);
      });
  }, [product.id]);

  return (
    <div className="group bg-white rounded-xl border border-gray-200 hover:border-teal-300 hover:shadow-lg transition-all duration-300 overflow-hidden flex flex-col">
      <div className="relative overflow-hidden">
        <img
          src={imageSrc}
          alt={product.name}
          className="w-full h-48 object-contain p-4 group-hover:scale-105 transition-transform duration-500 bg-white"
          onError={handleError}
        />
        {rank != null && (
          <div className="absolute top-3 left-3">
            <RankBadge rank={rank} />
          </div>
        )}
        {rank === 1 && (
          <div className="absolute top-3 right-3 bg-amber-500 text-white text-xs font-bold px-2 py-1 rounded-full shadow">
            Our #1 Pick
          </div>
        )}
        {deal && rank !== 1 && (
          <div className="absolute top-3 right-3 inline-flex items-center gap-1 px-2 py-0.5 bg-rose-500 text-white text-xs font-bold rounded-full animate-pulse">
            <Tag size={10} />
            {deal.discount_percentage}% OFF
          </div>
        )}
        {product.third_party_tested && (
          <div className="absolute bottom-3 left-3 bg-white/90 backdrop-blur-sm text-emerald-700 text-xs font-medium px-2 py-1 rounded flex items-center gap-1">
            <Award size={12} /> 3rd-Party Tested
          </div>
        )}
      </div>

      <div className="p-4 flex flex-col flex-1">
        <p className="text-xs font-medium text-gray-500 uppercase tracking-wide mb-1">{product.brand}</p>
        <Link to={`/product/${product.slug}`}>
          <h3 className="font-bold text-gray-900 group-hover:text-teal-600 transition-colors mb-2 leading-snug">
            {product.name}
          </h3>
        </Link>

        <StarRating rating={product.rating} />

        {product.best_for && (
          <p className="text-xs text-teal-700 bg-teal-50 rounded px-2 py-1 mt-3 inline-block">
            Best for: {product.best_for}
          </p>
        )}

        <div className="mt-auto pt-4">
          <div className="flex items-end justify-between mb-3">
            <span className="text-lg font-bold text-gray-900">
              ${product.price_min}&ndash;${product.price_max}
            </span>
            {deal && deal.coupon_code && (
              <span className="text-xs text-rose-600 font-medium bg-rose-50 px-1.5 py-0.5 rounded">
                Code: {deal.coupon_code}
              </span>
            )}
          </div>
          <a
            href={product.affiliate_link}
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center justify-center gap-2 w-full py-2.5 bg-emerald-600 hover:bg-emerald-700 text-white text-sm font-semibold rounded-lg transition-colors"
          >
            Check Price <ExternalLink size={14} />
          </a>
        </div>
      </div>
    </div>
  );
}
