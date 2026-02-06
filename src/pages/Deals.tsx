import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { supabase, Deal } from '../lib/supabase';
import { SEO } from '../components/SEO';
import { StarRating } from '../components/StarRating';
import { CountdownTimer } from '../components/CountdownTimer';
import { ProductImage } from '../components/ProductImage';
import { Tag, ExternalLink, Copy, Check, Flame } from 'lucide-react';

export function DealsPage() {
  const [deals, setDeals] = useState<Deal[]>([]);
  const [loading, setLoading] = useState(true);
  const [copiedCode, setCopiedCode] = useState<string | null>(null);

  useEffect(() => {
    async function load() {
      const { data } = await supabase
        .from('deals')
        .select('*, product:products(*)')
        .eq('is_active', true)
        .gt('expires_at', new Date().toISOString())
        .order('discount_percentage', { ascending: false });
      if (data) setDeals(data);
      setLoading(false);
    }
    load();
  }, []);

  const copyCode = (code: string) => {
    navigator.clipboard.writeText(code);
    setCopiedCode(code);
    setTimeout(() => setCopiedCode(null), 2000);
  };

  const hotDeal = deals.length > 0 ? deals[0] : null;

  if (loading) {
    return (
      <div className="min-h-[60vh] flex items-center justify-center">
        <div className="w-8 h-8 border-4 border-teal-600 border-t-transparent rounded-full animate-spin" />
      </div>
    );
  }

  return (
    <>
      <SEO
        title="Supplement Deals & Coupons 2026 | SupplementRankings"
        description="Exclusive discounts and coupon codes on top-ranked supplements. Save on protein, nootropics, vitamins, and more."
      />

      <section className="bg-gradient-to-br from-rose-50 via-white to-orange-50 py-12 md:py-16 border-b border-gray-100">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center max-w-2xl mx-auto mb-10">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-rose-100 text-rose-700 text-sm font-medium mb-4">
              <Flame size={14} /> {deals.length} Active Deals
            </div>
            <h1 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold text-gray-900 mb-4">
              Today's Best
              <span className="block text-rose-600">Supplement Deals</span>
            </h1>
            <p className="text-lg text-gray-600">
              Exclusive discounts on our top-ranked supplements. These deals are time-limited -- grab them before they expire.
            </p>
          </div>

          {hotDeal && hotDeal.product && (
            <div className="bg-gradient-to-r from-gray-900 to-gray-800 rounded-2xl p-6 md:p-8 text-white max-w-4xl mx-auto">
              <div className="flex items-center gap-2 mb-4">
                <Flame size={18} className="text-orange-400" />
                <span className="text-orange-400 font-bold text-sm uppercase tracking-wide">Hottest Deal</span>
              </div>
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6 items-center">
                <div>
                  <p className="text-gray-400 text-sm mb-1">{hotDeal.product.brand}</p>
                  <h2 className="text-2xl font-bold mb-2">{hotDeal.product.name}</h2>
                  <p className="text-gray-300 text-sm mb-4">{hotDeal.deal_description}</p>
                  <div className="flex items-center gap-3 mb-4">
                    <span className="text-3xl font-extrabold text-rose-400">{hotDeal.discount_percentage}% OFF</span>
                    <span className="text-gray-400 line-through text-lg">
                      ${hotDeal.product.price_min}-${hotDeal.product.price_max}
                    </span>
                  </div>
                  {hotDeal.coupon_code && (
                    <button
                      onClick={() => copyCode(hotDeal.coupon_code!)}
                      className="inline-flex items-center gap-2 px-4 py-2 bg-white/10 border border-white/20 rounded-lg hover:bg-white/20 transition-colors text-sm font-medium mb-4"
                    >
                      Code: <span className="font-mono font-bold">{hotDeal.coupon_code}</span>
                      {copiedCode === hotDeal.coupon_code ? <Check size={14} className="text-emerald-400" /> : <Copy size={14} />}
                    </button>
                  )}
                  <div className="flex gap-3">
                    <a
                      href={hotDeal.product.affiliate_link}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="inline-flex items-center gap-2 px-5 py-2.5 bg-rose-500 hover:bg-rose-600 text-white font-semibold rounded-lg transition-colors text-sm"
                    >
                      Claim Deal <ExternalLink size={14} />
                    </a>
                    <Link
                      to={`/product/${hotDeal.product.slug}`}
                      className="inline-flex items-center gap-2 px-5 py-2.5 border border-white/30 hover:bg-white/10 rounded-lg transition-colors text-sm"
                    >
                      Read Review
                    </Link>
                  </div>
                </div>
                <div className="flex justify-center">
                  <CountdownTimer expiresAt={hotDeal.expires_at} label="Deal expires in" />
                </div>
              </div>
            </div>
          )}
        </div>
      </section>

      <section className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        <h2 className="text-2xl font-bold text-gray-900 mb-8">All Active Deals</h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          {deals.map((deal) =>
            deal.product ? (
              <div
                key={deal.id}
                className="bg-white rounded-xl border border-gray-200 hover:border-rose-300 hover:shadow-lg transition-all duration-300 overflow-hidden"
              >
                <div className="flex items-stretch">
                  <div className="w-32 sm:w-40 shrink-0 bg-gray-50 flex items-center justify-center p-4">
                    <ProductImage
                      imageUrl={deal.product.image_url}
                      productName={deal.product.name}
                      alt={deal.product.name}
                      className="w-full h-28 object-contain"
                      placeholderSize="300x200"
                    />
                  </div>
                  <div className="flex-1 p-4 flex flex-col">
                    <div className="flex items-start justify-between gap-2 mb-1">
                      <div>
                        <p className="text-xs text-gray-500 font-medium uppercase">{deal.product.brand}</p>
                        <Link to={`/product/${deal.product.slug}`}>
                          <h3 className="font-bold text-gray-900 hover:text-teal-600 transition-colors text-sm">
                            {deal.product.name}
                          </h3>
                        </Link>
                      </div>
                      <span className="shrink-0 bg-rose-500 text-white text-xs font-bold px-2 py-1 rounded-full">
                        {deal.discount_percentage}% OFF
                      </span>
                    </div>

                    <StarRating rating={deal.product.rating} size={11} />
                    <p className="text-xs text-gray-500 mt-1.5">{deal.deal_title}</p>

                    <div className="mt-auto pt-3 flex items-center justify-between gap-2">
                      {deal.coupon_code ? (
                        <button
                          onClick={() => copyCode(deal.coupon_code!)}
                          className="inline-flex items-center gap-1.5 px-2.5 py-1.5 bg-gray-100 border border-gray-200 rounded text-xs font-medium hover:bg-gray-200 transition-colors"
                        >
                          <Tag size={10} />
                          <span className="font-mono font-bold">{deal.coupon_code}</span>
                          {copiedCode === deal.coupon_code ? <Check size={10} className="text-emerald-600" /> : <Copy size={10} />}
                        </button>
                      ) : (
                        <span className="text-xs text-gray-400">No code needed</span>
                      )}
                      <a
                        href={deal.product.affiliate_link}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="inline-flex items-center gap-1 px-3 py-1.5 bg-emerald-600 hover:bg-emerald-700 text-white text-xs font-semibold rounded-lg transition-colors"
                      >
                        Get Deal <ExternalLink size={12} />
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            ) : null
          )}
        </div>

        {deals.length === 0 && (
          <div className="text-center py-16">
            <Tag size={48} className="mx-auto text-gray-300 mb-4" />
            <p className="text-xl font-semibold text-gray-900 mb-2">No active deals right now</p>
            <p className="text-gray-500 mb-6">Check back soon or subscribe to get notified when new deals drop.</p>
            <Link to="/" className="text-teal-600 hover:text-teal-700 font-medium">
              Browse All Products
            </Link>
          </div>
        )}
      </section>
    </>
  );
}
