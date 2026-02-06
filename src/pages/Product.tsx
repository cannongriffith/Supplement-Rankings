import { useEffect, useState } from 'react';
import { useParams, Link } from 'react-router-dom';
import { supabase, Product as Prod, Category, Review, Deal, StackProduct } from '../lib/supabase';
import { StarRating } from '../components/StarRating';
import { SEO } from '../components/SEO';
import { TestimonialCard } from '../components/TestimonialCard';
import { DealBadge } from '../components/DealBadge';
import { CountdownTimer } from '../components/CountdownTimer';
import { StickyProductCTA } from '../components/StickyProductCTA';
import { ProductImage } from '../components/ProductImage';
import { useProductImage } from '../hooks/useProductImage';
import {
  ChevronRight, Award, ExternalLink, CheckCircle,
  Beaker, Shield, Users, AlertTriangle, Pill, HelpCircle, Copy, Check
} from 'lucide-react';

export function ProductPage() {
  const { slug } = useParams<{ slug: string }>();
  const [product, setProduct] = useState<Prod | null>(null);
  const [category, setCategory] = useState<Category | null>(null);
  const [related, setRelated] = useState<Prod[]>([]);
  const [review, setReview] = useState<Review | null>(null);
  const [deal, setDeal] = useState<Deal | null>(null);
  const [boughtTogether, setBoughtTogether] = useState<(StackProduct & { product: Prod })[]>([]);
  const [loading, setLoading] = useState(true);
  const [copiedCode, setCopiedCode] = useState(false);
  const { imageSrc: mainImageSrc, handleError: handleMainImageError } = useProductImage(
    product?.image_url || '',
    product?.name || '',
    '800x600'
  );

  useEffect(() => {
    async function load() {
      if (!slug) return;
      setLoading(true);
      const prodRes = await supabase.from('products').select('*').eq('slug', slug).maybeSingle();
      if (!prodRes.data) {
        setProduct(null);
        setLoading(false);
        return;
      }
      setProduct(prodRes.data);

      const [catRes, relRes, revRes, dealRes, stackRes] = await Promise.all([
        supabase.from('categories').select('*').eq('id', prodRes.data.category_id).maybeSingle(),
        supabase
          .from('products')
          .select('*')
          .eq('category_id', prodRes.data.category_id)
          .neq('id', prodRes.data.id)
          .order('rating', { ascending: false })
          .limit(3),
        supabase.from('reviews').select('*').eq('product_id', prodRes.data.id).maybeSingle(),
        supabase
          .from('deals')
          .select('*')
          .eq('product_id', prodRes.data.id)
          .eq('is_active', true)
          .gt('expires_at', new Date().toISOString())
          .maybeSingle(),
        supabase
          .from('stack_products')
          .select('*, product:products(*)')
          .neq('product_id', prodRes.data.id)
          .limit(10),
      ]);
      if (catRes.data) setCategory(catRes.data);
      if (relRes.data) setRelated(relRes.data);
      if (revRes.data) setReview(revRes.data);
      if (dealRes.data) setDeal(dealRes.data);

      if (stackRes.data) {
        const myStacks = await supabase
          .from('stack_products')
          .select('stack_id')
          .eq('product_id', prodRes.data.id);

        if (myStacks.data && myStacks.data.length > 0) {
          const stackIds = myStacks.data.map((s) => s.stack_id);
          const companions = (stackRes.data as (StackProduct & { product: Prod })[])
            .filter((sp) => stackIds.includes(sp.stack_id) && sp.product)
            .slice(0, 3);
          setBoughtTogether(companions);
        }
      }

      setLoading(false);
    }
    load();
  }, [slug]);

  const copyCode = (code: string) => {
    navigator.clipboard.writeText(code);
    setCopiedCode(true);
    setTimeout(() => setCopiedCode(false), 2000);
  };

  if (loading) {
    return (
      <div className="min-h-[60vh] flex items-center justify-center">
        <div className="w-8 h-8 border-4 border-teal-600 border-t-transparent rounded-full animate-spin" />
      </div>
    );
  }

  if (!product) {
    return (
      <div className="min-h-[60vh] flex flex-col items-center justify-center gap-4">
        <p className="text-xl font-semibold text-gray-900">Product not found</p>
        <Link to="/" className="text-teal-600 hover:text-teal-700 font-medium">Back to Home</Link>
      </div>
    );
  }

  return (
    <>
      <SEO
        title={`${product.name} Review 2026 | SupplementRankings`}
        description={`${product.name} by ${product.brand} review. ${product.description}`}
      />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <nav className="flex items-center gap-1.5 text-sm text-gray-500 mb-8">
          <Link to="/" className="hover:text-teal-600">Home</Link>
          <ChevronRight size={14} />
          {category && (
            <>
              <Link to={`/category/${category.slug}`} className="hover:text-teal-600">{category.name}</Link>
              <ChevronRight size={14} />
            </>
          )}
          <span className="text-gray-900 font-medium truncate">{product.name}</span>
        </nav>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
          <div className="lg:col-span-2 space-y-8">
            <div className="relative">
              <img
                src={mainImageSrc}
                alt={product.name}
                className="w-full h-64 sm:h-80 lg:h-96 object-contain p-6 rounded-xl bg-white border border-gray-200"
                onError={handleMainImageError}
                referrerPolicy="no-referrer"
              />
              {deal && (
                <div className="absolute top-4 right-4">
                  <DealBadge compact discountPercentage={deal.discount_percentage} expiresAt={deal.expires_at} />
                </div>
              )}
            </div>

            <div>
              <p className="text-sm font-medium text-gray-500 uppercase tracking-wide mb-1">{product.brand}</p>
              <h1 className="text-3xl sm:text-4xl font-extrabold text-gray-900 mb-3">{product.name}</h1>
              <div className="flex flex-wrap items-center gap-4 mb-4">
                <StarRating rating={product.rating} size={18} />
                {review && (
                  <span className="inline-flex items-center gap-1 text-teal-700 bg-teal-50 px-2 py-1 rounded text-sm font-bold">
                    Expert Score: {review.rating}/10
                  </span>
                )}
                {product.third_party_tested && (
                  <span className="inline-flex items-center gap-1 text-emerald-700 bg-emerald-50 px-2 py-1 rounded text-sm font-medium">
                    <Award size={14} /> Third-Party Tested
                  </span>
                )}
              </div>
              <p className="text-gray-600 text-lg leading-relaxed">{product.description}</p>
            </div>

            {review && (
              <div className="space-y-8">
                <div className="bg-gray-50 rounded-xl p-6 border border-gray-100">
                  <div className="flex items-center gap-2 mb-3">
                    <Beaker size={18} className="text-teal-600" />
                    <h2 className="text-xl font-bold text-gray-900">Expert Review</h2>
                  </div>
                  <p className="text-gray-700 leading-relaxed">{review.overview}</p>
                </div>

                {review.ingredients_breakdown && (
                  <div>
                    <div className="flex items-center gap-2 mb-3">
                      <Pill size={18} className="text-teal-600" />
                      <h2 className="text-xl font-bold text-gray-900">Ingredients Analysis</h2>
                    </div>
                    <p className="text-gray-700 leading-relaxed">{review.ingredients_breakdown}</p>
                  </div>
                )}

                {review.benefits.length > 0 && (
                  <div>
                    <div className="flex items-center gap-2 mb-3">
                      <CheckCircle size={18} className="text-emerald-600" />
                      <h2 className="text-xl font-bold text-gray-900">Key Benefits</h2>
                    </div>
                    <ul className="grid grid-cols-1 sm:grid-cols-2 gap-2">
                      {review.benefits.map((b, i) => (
                        <li key={i} className="flex items-start gap-2 text-sm text-gray-700">
                          <CheckCircle size={14} className="text-emerald-500 shrink-0 mt-0.5" />
                          {b}
                        </li>
                      ))}
                    </ul>
                  </div>
                )}
              </div>
            )}

            <div className="grid grid-cols-1 sm:grid-cols-2 gap-6">
              <div className="bg-emerald-50 rounded-xl p-5">
                <h3 className="font-bold text-emerald-800 mb-3">Pros</h3>
                <ul className="space-y-2">
                  {product.pros.map((p, i) => (
                    <li key={i} className="flex gap-2 text-sm text-emerald-900">
                      <span className="text-emerald-600 font-bold shrink-0">+</span> {p}
                    </li>
                  ))}
                </ul>
              </div>
              <div className="bg-amber-50 rounded-xl p-5">
                <h3 className="font-bold text-amber-800 mb-3">Cons</h3>
                <ul className="space-y-2">
                  {product.cons.map((c, i) => (
                    <li key={i} className="flex gap-2 text-sm text-amber-900">
                      <span className="text-amber-600 font-bold shrink-0">&ndash;</span> {c}
                    </li>
                  ))}
                </ul>
              </div>
            </div>

            {review && (
              <>
                {review.dosage && (
                  <div className="bg-blue-50 rounded-xl p-5 border border-blue-100">
                    <div className="flex items-center gap-2 mb-2">
                      <Shield size={16} className="text-blue-600" />
                      <h3 className="font-bold text-blue-900">Dosage & Usage</h3>
                    </div>
                    <p className="text-blue-800 text-sm leading-relaxed">{review.dosage}</p>
                  </div>
                )}

                {review.side_effects.length > 0 && (
                  <div>
                    <div className="flex items-center gap-2 mb-3">
                      <AlertTriangle size={18} className="text-amber-500" />
                      <h2 className="text-xl font-bold text-gray-900">Potential Side Effects</h2>
                    </div>
                    <ul className="space-y-2">
                      {review.side_effects.map((se, i) => (
                        <li key={i} className="flex items-start gap-2 text-sm text-gray-700">
                          <AlertTriangle size={13} className="text-amber-400 shrink-0 mt-0.5" />
                          {se}
                        </li>
                      ))}
                    </ul>
                  </div>
                )}

                {review.who_is_it_for && (
                  <div className="bg-teal-50 border border-teal-200 rounded-xl p-5">
                    <div className="flex items-center gap-2 mb-2">
                      <Users size={16} className="text-teal-600" />
                      <h3 className="font-bold text-teal-800">Who Is This For?</h3>
                    </div>
                    <p className="text-teal-900 text-sm">{review.who_is_it_for}</p>
                  </div>
                )}

                {review.faq && (
                  <div>
                    <div className="flex items-center gap-2 mb-3">
                      <HelpCircle size={18} className="text-teal-600" />
                      <h2 className="text-xl font-bold text-gray-900">FAQ</h2>
                    </div>
                    <div className="space-y-3">
                      {review.faq.split(' Q: ').map((qa, i) => {
                        const clean = qa.startsWith('Q: ') ? qa.slice(3) : qa;
                        const parts = clean.split(' A: ');
                        if (parts.length < 2) return null;
                        return (
                          <div key={i} className="bg-gray-50 rounded-lg p-4">
                            <p className="font-semibold text-gray-900 text-sm mb-1">{parts[0]}</p>
                            <p className="text-gray-600 text-sm">{parts[1]}</p>
                          </div>
                        );
                      })}
                    </div>
                  </div>
                )}

                {review.testimonials && review.testimonials.length > 0 && (
                  <div>
                    <h2 className="text-xl font-bold text-gray-900 mb-4">What Users Are Saying</h2>
                    <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                      {review.testimonials.map((t, i) => (
                        <TestimonialCard key={i} testimonial={t} />
                      ))}
                    </div>
                  </div>
                )}
              </>
            )}

            {product.key_ingredients.length > 0 && (
              <div>
                <h2 className="text-2xl font-bold text-gray-900 mb-4">Key Ingredients</h2>
                <div className="grid grid-cols-2 sm:grid-cols-3 gap-3">
                  {product.key_ingredients.map((ing, i) => (
                    <div key={i} className="flex items-center gap-2 bg-gray-50 rounded-lg px-3 py-2.5 text-sm text-gray-800">
                      <CheckCircle size={16} className="text-teal-600 shrink-0" /> {ing}
                    </div>
                  ))}
                </div>
              </div>
            )}

            {boughtTogether.length > 0 && (
              <div>
                <h2 className="text-2xl font-bold text-gray-900 mb-4">Frequently Bought Together</h2>
                <div className="bg-gray-50 rounded-xl p-5 border border-gray-200">
                  <div className="space-y-4">
                    {boughtTogether.map((sp) => (
                      <div key={sp.id} className="flex items-center gap-4">
                        <ProductImage
                          imageUrl={sp.product.image_url}
                          productName={sp.product.name}
                          alt={sp.product.name}
                          className="w-14 h-14 rounded-lg object-contain p-1 bg-white border border-gray-100 shrink-0"
                          placeholderSize="112x112"
                        />
                        <div className="flex-1 min-w-0">
                          <Link to={`/product/${sp.product.slug}`}>
                            <p className="font-medium text-gray-900 hover:text-teal-600 text-sm">{sp.product.name}</p>
                          </Link>
                          <p className="text-xs text-gray-500">{sp.role_in_stack}</p>
                        </div>
                        <div className="text-right shrink-0">
                          <p className="text-sm font-semibold text-gray-900">${sp.product.price_min}&ndash;${sp.product.price_max}</p>
                          <a
                            href={sp.product.affiliate_link}
                            target="_blank"
                            rel="noopener noreferrer"
                            className="text-teal-600 hover:text-teal-700 text-xs font-medium"
                          >
                            Check Price
                          </a>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>
              </div>
            )}

            {related.length > 0 && (
              <div>
                <h2 className="text-2xl font-bold text-gray-900 mb-4">You Might Also Like</h2>
                <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
                  {related.map((r) => (
                    <Link
                      key={r.id}
                      to={`/product/${r.slug}`}
                      className="group flex items-center gap-3 bg-gray-50 rounded-lg p-3 hover:bg-teal-50 transition-colors"
                    >
                      <ProductImage
                        imageUrl={r.image_url}
                        productName={r.name}
                        alt={r.name}
                        className="w-14 h-14 rounded-lg object-contain p-1 shrink-0 bg-white border border-gray-100"
                        placeholderSize="112x112"
                      />
                      <div className="min-w-0">
                        <p className="font-medium text-gray-900 text-sm group-hover:text-teal-600 truncate">{r.name}</p>
                        <p className="text-xs text-gray-500">{r.brand}</p>
                        <StarRating rating={r.rating} size={10} />
                      </div>
                    </Link>
                  ))}
                </div>
              </div>
            )}
          </div>

          <div className="lg:col-span-1">
            <div className="sticky top-24 space-y-4">
              <div className="bg-white rounded-xl border border-gray-200 p-6 space-y-6">
                {deal && (
                  <div className="space-y-3">
                    <DealBadge discountPercentage={deal.discount_percentage} expiresAt={deal.expires_at} />
                    {deal.coupon_code && (
                      <button
                        onClick={() => copyCode(deal.coupon_code!)}
                        className="w-full flex items-center justify-center gap-2 px-4 py-2.5 bg-rose-50 border-2 border-dashed border-rose-300 rounded-lg text-sm font-medium text-rose-700 hover:bg-rose-100 transition-colors"
                      >
                        Use code: <span className="font-mono font-bold">{deal.coupon_code}</span>
                        {copiedCode ? <Check size={14} className="text-emerald-600" /> : <Copy size={14} />}
                      </button>
                    )}
                    <CountdownTimer expiresAt={deal.expires_at} />
                  </div>
                )}

                <div>
                  <p className="text-sm text-gray-500 mb-1">Price Range</p>
                  <p className="text-3xl font-bold text-gray-900">${product.price_min}&ndash;${product.price_max}</p>
                </div>

                <a
                  href={product.affiliate_link}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="flex items-center justify-center gap-2 w-full py-3 bg-emerald-600 hover:bg-emerald-700 text-white font-semibold rounded-lg transition-colors"
                >
                  Check Price on Amazon <ExternalLink size={16} />
                </a>

                {product.affiliate_link_official && (
                  <a
                    href={product.affiliate_link_official}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="flex items-center justify-center gap-2 w-full py-3 border-2 border-teal-600 text-teal-600 hover:bg-teal-50 font-semibold rounded-lg transition-colors"
                  >
                    Official Site (Best Deal)
                  </a>
                )}

                <div className="border-t border-gray-100 pt-4 space-y-3 text-sm">
                  <div>
                    <p className="text-gray-500 mb-1">Rating</p>
                    <StarRating rating={product.rating} size={16} />
                  </div>
                  {review && (
                    <div>
                      <p className="text-gray-500 mb-1">Expert Score</p>
                      <div className="flex items-center gap-2">
                        <div className="w-full bg-gray-200 rounded-full h-2">
                          <div
                            className="bg-teal-600 h-2 rounded-full"
                            style={{ width: `${(review.rating / 10) * 100}%` }}
                          />
                        </div>
                        <span className="font-bold text-gray-900 text-sm">{review.rating}/10</span>
                      </div>
                    </div>
                  )}
                  <div>
                    <p className="text-gray-500 mb-1">Best For</p>
                    <p className="font-medium text-gray-900">{product.best_for}</p>
                  </div>
                  {product.third_party_tested && (
                    <div className="flex items-center gap-2 text-emerald-700 font-medium">
                      <Award size={16} /> Third-Party Tested
                    </div>
                  )}
                </div>

                <p className="text-xs text-gray-400 text-center border-t border-gray-100 pt-4">
                  Affiliate Disclosure: We earn commissions from qualifying purchases through these links.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <StickyProductCTA product={product} />
    </>
  );
}
