import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { ArrowRight, CheckCircle, TrendingUp, Users, Shield, Mail, Sparkles, Tag, Layers } from 'lucide-react';
import { supabase, Category, Product, Deal, Stack } from '../lib/supabase';
import { ProductCard } from '../components/ProductCard';
import { SEO } from '../components/SEO';

const CATEGORY_ICONS: Record<string, string> = {
  nootropics: '\u{1F9E0}',
  'protein-powder': '\u26A1',
  'fat-burners': '\u{1F525}',
  'vitamins-minerals': '\u2764\uFE0F',
  'sleep-aids': '\u{1F319}',
  'longevity-anti-aging': '\u2600\uFE0F',
};

export function Home() {
  const [categories, setCategories] = useState<Category[]>([]);
  const [topProducts, setTopProducts] = useState<Product[]>([]);
  const [deals, setDeals] = useState<(Deal & { product: Product })[]>([]);
  const [stacks, setStacks] = useState<Stack[]>([]);
  const [email, setEmail] = useState('');
  const [subStatus, setSubStatus] = useState<'idle' | 'ok' | 'err'>('idle');
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      const [catRes, rankRes, dealRes, stackRes] = await Promise.all([
        supabase.from('categories').select('*').order('display_order'),
        supabase
          .from('rankings')
          .select('*, product:products(*)')
          .eq('rank_position', 1)
          .limit(6),
        supabase
          .from('deals')
          .select('*, product:products(*)')
          .eq('is_active', true)
          .gt('expires_at', new Date().toISOString())
          .order('discount_percentage', { ascending: false })
          .limit(4),
        supabase.from('stacks').select('*').order('display_order').limit(3),
      ]);
      if (catRes.data) setCategories(catRes.data);
      if (rankRes.data) {
        setTopProducts(
          rankRes.data
            .map((r: { product: Product }) => r.product)
            .filter(Boolean)
        );
      }
      if (dealRes.data) setDeals(dealRes.data as (Deal & { product: Product })[]);
      if (stackRes.data) setStacks(stackRes.data);
      setLoading(false);
    }
    load();
  }, []);

  const handleSubscribe = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!email.trim()) return;
    const { error } = await supabase
      .from('email_subscribers')
      .insert({ email: email.trim() });
    setSubStatus(error ? 'err' : 'ok');
    if (!error) setEmail('');
  };

  return (
    <>
      <SEO />

      <section className="relative bg-gradient-to-br from-teal-50 via-white to-emerald-50 overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(circle_at_30%_20%,rgba(20,184,166,0.08),transparent_50%)]" />
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16 md:py-24 relative">
          <div className="max-w-3xl mx-auto text-center">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-teal-100 text-teal-700 text-sm font-medium mb-6">
              <TrendingUp size={14} /> Updated February 2026
            </div>
            <h1 className="text-4xl sm:text-5xl lg:text-6xl font-extrabold text-gray-900 tracking-tight mb-6">
              2026's Best Supplements
              <span className="block text-teal-600 mt-2">Expert-Ranked & Reviewed</span>
            </h1>
            <p className="text-lg sm:text-xl text-gray-600 mb-10 max-w-2xl mx-auto leading-relaxed">
              Unbiased rankings, science-backed picks, and deals on top nootropics, proteins, vitamins & more.
            </p>
            <div className="flex flex-col sm:flex-row gap-4 justify-center">
              <Link
                to="/quiz"
                className="inline-flex items-center justify-center gap-2 px-6 py-3.5 bg-teal-600 text-white font-semibold rounded-lg hover:bg-teal-700 transition-colors"
              >
                <Sparkles size={18} /> Find My Supplement
              </Link>
              <a
                href="#categories"
                className="inline-flex items-center justify-center gap-2 px-6 py-3.5 border-2 border-teal-600 text-teal-600 font-semibold rounded-lg hover:bg-teal-50 transition-colors"
              >
                Explore Rankings <ArrowRight size={18} />
              </a>
            </div>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-3 gap-6 mt-16 max-w-3xl mx-auto">
            {[
              { icon: CheckCircle, label: '100+ Products Reviewed', sub: 'Across all major categories' },
              { icon: Shield, label: 'Third-Party Verified', sub: 'We verify testing standards' },
              { icon: Users, label: 'Real User Feedback', sub: 'Verified user ratings' },
            ].map(({ icon: Icon, label, sub }) => (
              <div
                key={label}
                className="flex flex-col items-center text-center p-4 bg-white/70 backdrop-blur rounded-xl border border-gray-100"
              >
                <Icon size={28} className="text-teal-600 mb-2" />
                <p className="font-semibold text-gray-900 text-sm">{label}</p>
                <p className="text-gray-500 text-xs mt-0.5">{sub}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {deals.length > 0 && (
        <section className="py-12 bg-gradient-to-r from-rose-50 to-orange-50 border-b border-rose-100">
          <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div className="flex items-center justify-between mb-6">
              <div className="flex items-center gap-2">
                <Tag size={20} className="text-rose-500" />
                <h2 className="text-2xl font-bold text-gray-900">Hot Deals</h2>
              </div>
              <Link to="/deals" className="text-rose-600 hover:text-rose-700 text-sm font-medium flex items-center gap-1">
                View All Deals <ArrowRight size={14} />
              </Link>
            </div>
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
              {deals.map((d) =>
                d.product ? (
                  <Link
                    key={d.id}
                    to={`/product/${d.product.slug}`}
                    className="bg-white rounded-xl border border-gray-200 p-4 hover:shadow-md hover:border-rose-300 transition-all group"
                  >
                    <div className="flex items-center gap-3 mb-2">
                      <img
                        src={d.product.image_url}
                        alt={d.product.name}
                        className="w-12 h-12 rounded-lg object-contain p-0.5 bg-gray-50 shrink-0"
                        onError={(e) => {
                          const target = e.currentTarget;
                          target.onerror = null;
                          target.src = `https://placehold.co/96x96/e2e8f0/64748b?text=${encodeURIComponent(d.product!.name)}`;
                        }}
                      />
                      <div className="min-w-0">
                        <p className="font-bold text-gray-900 text-sm truncate group-hover:text-teal-600">{d.product.name}</p>
                        <p className="text-xs text-gray-500">{d.product.brand}</p>
                      </div>
                    </div>
                    <div className="flex items-center justify-between">
                      <span className="inline-flex items-center gap-1 px-2 py-0.5 bg-rose-500 text-white text-xs font-bold rounded-full">
                        <Tag size={10} /> {d.discount_percentage}% OFF
                      </span>
                      {d.coupon_code && (
                        <span className="text-xs text-rose-600 font-mono font-bold">{d.coupon_code}</span>
                      )}
                    </div>
                  </Link>
                ) : null
              )}
            </div>
          </div>
        </section>
      )}

      <section id="categories" className="py-16 md:py-24">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl sm:text-4xl font-bold text-gray-900 mb-3">Browse by Category</h2>
            <p className="text-gray-600 max-w-xl mx-auto">
              Explore top-ranked supplements across six major categories, each evaluated with our rigorous methodology.
            </p>
          </div>
          <div className="grid grid-cols-2 md:grid-cols-3 gap-4 md:gap-6">
            {categories.map((cat) => (
              <Link
                key={cat.id}
                to={`/category/${cat.slug}`}
                className="group relative p-5 md:p-6 rounded-xl border-2 border-gray-200 hover:border-teal-500 bg-white hover:bg-teal-50/50 transition-all duration-200"
              >
                <span className="text-3xl md:text-4xl block mb-3">{CATEGORY_ICONS[cat.slug] || '\u{1F48A}'}</span>
                <h3 className="font-bold text-gray-900 group-hover:text-teal-700 mb-1">{cat.name}</h3>
                <p className="text-gray-500 text-sm leading-snug line-clamp-2 hidden sm:block">{cat.description}</p>
                <span className="inline-flex items-center gap-1 text-teal-600 text-sm font-medium mt-3 group-hover:gap-2 transition-all">
                  See Rankings <ArrowRight size={14} />
                </span>
              </Link>
            ))}
          </div>
        </div>
      </section>

      <section className="py-16 md:py-24 bg-gray-50">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl sm:text-4xl font-bold text-gray-900 mb-3">#1 Ranked Products</h2>
            <p className="text-gray-600 max-w-xl mx-auto">
              The top pick from each category &mdash; independently ranked and reviewed.
            </p>
          </div>
          {loading ? (
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
              {[1, 2, 3].map((i) => (
                <div key={i} className="bg-white rounded-xl border border-gray-200 h-96 animate-pulse" />
              ))}
            </div>
          ) : (
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
              {topProducts.map((p) => (
                <ProductCard key={p.id} product={p} rank={1} />
              ))}
            </div>
          )}
        </div>
      </section>

      <section className="py-16 md:py-20 bg-gradient-to-br from-teal-50 via-white to-emerald-50">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <Sparkles size={32} className="mx-auto text-teal-600 mb-4" />
          <h2 className="text-3xl sm:text-4xl font-bold text-gray-900 mb-3">Not Sure What to Take?</h2>
          <p className="text-lg text-gray-600 mb-8 max-w-xl mx-auto">
            Answer 5 quick questions and get personalized supplement recommendations based on your goals, budget, and experience level.
          </p>
          <Link
            to="/quiz"
            className="inline-flex items-center gap-2 px-8 py-4 bg-teal-600 text-white font-semibold rounded-xl hover:bg-teal-700 transition-colors text-lg"
          >
            Take the 60-Second Quiz <ArrowRight size={20} />
          </Link>
        </div>
      </section>

      {stacks.length > 0 && (
        <section className="py-16 md:py-24">
          <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div className="flex items-center justify-between mb-8">
              <div>
                <div className="flex items-center gap-2 mb-1">
                  <Layers size={20} className="text-teal-600" />
                  <h2 className="text-2xl sm:text-3xl font-bold text-gray-900">Supplement Stacks</h2>
                </div>
                <p className="text-gray-600">Curated product combinations for maximum results.</p>
              </div>
              <Link to="/stacks" className="text-teal-600 hover:text-teal-700 text-sm font-medium flex items-center gap-1 shrink-0">
                View All Stacks <ArrowRight size={14} />
              </Link>
            </div>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
              {stacks.map((stack) => (
                <Link
                  key={stack.id}
                  to="/stacks"
                  className="group bg-gradient-to-br from-gray-900 to-gray-800 rounded-xl p-6 text-white hover:shadow-xl transition-shadow"
                >
                  <span className="text-teal-400 text-xs font-bold uppercase tracking-wider">{stack.goal}</span>
                  <h3 className="text-xl font-bold mt-1 mb-2">{stack.name}</h3>
                  <p className="text-gray-400 text-sm leading-relaxed line-clamp-2">{stack.description}</p>
                  <span className="inline-flex items-center gap-1 text-teal-400 text-sm font-medium mt-4 group-hover:gap-2 transition-all">
                    View Stack <ArrowRight size={14} />
                  </span>
                </Link>
              ))}
            </div>
          </div>
        </section>
      )}

      <section className="py-16 md:py-24 bg-gradient-to-br from-teal-600 to-emerald-700 text-white">
        <div className="max-w-2xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <Mail size={36} className="mx-auto mb-4 opacity-80" />
          <h2 className="text-3xl sm:text-4xl font-bold mb-3">Free Monthly Supplement Deals & Updates</h2>
          <p className="text-teal-100 text-lg mb-8">
            Expert rankings, exclusive deals, and new research &mdash; straight to your inbox.
          </p>
          <form onSubmit={handleSubscribe} className="flex flex-col sm:flex-row gap-3 max-w-md mx-auto">
            <input
              type="email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              placeholder="Enter your email..."
              className="flex-1 px-4 py-3 rounded-lg text-gray-900 text-sm focus:outline-none focus:ring-2 focus:ring-white"
              required
            />
            <button
              type="submit"
              className="px-6 py-3 bg-gray-900 text-white font-semibold rounded-lg hover:bg-gray-800 transition-colors text-sm"
            >
              Subscribe
            </button>
          </form>
          {subStatus === 'ok' && (
            <p className="text-teal-200 text-sm mt-3">Thanks for subscribing!</p>
          )}
          {subStatus === 'err' && (
            <p className="text-amber-200 text-sm mt-3">Something went wrong. Try again.</p>
          )}
          <p className="text-teal-200/70 text-xs mt-4">We respect your privacy. Unsubscribe any time.</p>
        </div>
      </section>
    </>
  );
}
