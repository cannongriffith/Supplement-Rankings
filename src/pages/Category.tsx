import { useEffect, useState } from 'react';
import { useParams, Link } from 'react-router-dom';
import { supabase, Category as Cat, Ranking, Product } from '../lib/supabase';
import { ProductCard } from '../components/ProductCard';
import { StarRating } from '../components/StarRating';
import { SEO } from '../components/SEO';
import { ArrowRight, ChevronRight, Award } from 'lucide-react';

type RankedProduct = Ranking & { product: Product };

export function CategoryPage() {
  const { slug } = useParams<{ slug: string }>();
  const [category, setCategory] = useState<Cat | null>(null);
  const [rankings, setRankings] = useState<RankedProduct[]>([]);
  const [sortBy, setSortBy] = useState<'rank' | 'rating' | 'price'>('rank');
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      if (!slug) return;
      setLoading(true);
      const catRes = await supabase.from('categories').select('*').eq('slug', slug).maybeSingle();
      if (!catRes.data) {
        setCategory(null);
        setLoading(false);
        return;
      }
      setCategory(catRes.data);
      const rankRes = await supabase
        .from('rankings')
        .select('*, product:products(*)')
        .eq('category_id', catRes.data.id)
        .order('rank_position');
      if (rankRes.data) setRankings(rankRes.data as RankedProduct[]);
      setLoading(false);
    }
    load();
  }, [slug]);

  const sorted = [...rankings].sort((a, b) => {
    if (!a.product || !b.product) return 0;
    if (sortBy === 'rating') return b.product.rating - a.product.rating;
    if (sortBy === 'price') return a.product.price_min - b.product.price_min;
    return a.rank_position - b.rank_position;
  });

  if (loading) {
    return (
      <div className="min-h-[60vh] flex items-center justify-center">
        <div className="w-8 h-8 border-4 border-teal-600 border-t-transparent rounded-full animate-spin" />
      </div>
    );
  }

  if (!category) {
    return (
      <div className="min-h-[60vh] flex flex-col items-center justify-center gap-4">
        <p className="text-xl font-semibold text-gray-900">Category not found</p>
        <Link to="/" className="text-teal-600 hover:text-teal-700 font-medium">Back to Home</Link>
      </div>
    );
  }

  const topThree = sorted.filter((r) => r.rank_position <= 3 && r.product);

  return (
    <>
      <SEO
        title={`Best ${category.name} 2026 - Top Ranked | SupplementRankings`}
        description={`Expert-ranked best ${category.name.toLowerCase()} supplements for 2026. Compare ratings, prices, and ingredients.`}
      />

      {/* Header */}
      <section className="bg-gradient-to-b from-teal-50 to-white py-12 md:py-16 border-b border-gray-100">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <nav className="flex items-center gap-1.5 text-sm text-gray-500 mb-6">
            <Link to="/" className="hover:text-teal-600">Home</Link>
            <ChevronRight size={14} />
            <span className="text-gray-900 font-medium">{category.name}</span>
          </nav>
          <h1 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold text-gray-900 mb-4">
            Best {category.name} 2026
            <span className="block text-teal-600 text-2xl sm:text-3xl mt-1">Top {rankings.length} Ranked</span>
          </h1>
          <p className="text-lg text-gray-600 max-w-2xl mb-8">{category.description}</p>

          <div className="bg-white rounded-lg border border-gray-200 p-5">
            <p className="font-semibold text-gray-900 mb-3 text-sm">How We Rank</p>
            <div className="grid grid-cols-1 sm:grid-cols-3 md:grid-cols-5 gap-3 text-sm text-gray-600">
              {['Ingredient Quality', 'Clinical Evidence', '3rd-Party Testing', 'User Reviews', 'Value for Money'].map(
                (c) => (
                  <div key={c} className="flex items-center gap-2">
                    <div className="w-1.5 h-1.5 rounded-full bg-teal-500 shrink-0" />
                    {c}
                  </div>
                )
              )}
            </div>
          </div>
        </div>
      </section>

      {/* Rankings */}
      <section className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4 mb-8">
          <h2 className="text-2xl font-bold text-gray-900">Full Rankings</h2>
          <select
            value={sortBy}
            onChange={(e) => setSortBy(e.target.value as 'rank' | 'rating' | 'price')}
            className="px-3 py-2 text-sm border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500"
          >
            <option value="rank">Sort by Rank</option>
            <option value="rating">Sort by Rating</option>
            <option value="price">Sort by Price (Low-High)</option>
          </select>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 mb-16">
          {sorted.map((r) =>
            r.product ? (
              <ProductCard key={r.id} product={r.product} rank={r.rank_position} />
            ) : null
          )}
        </div>

        {/* Comparison Table */}
        <div className="overflow-x-auto mb-16">
          <h2 className="text-2xl font-bold text-gray-900 mb-6">Quick Comparison</h2>
          <table className="min-w-full text-sm">
            <thead>
              <tr className="bg-gray-50 text-left">
                <th className="px-4 py-3 font-semibold text-gray-900">#</th>
                <th className="px-4 py-3 font-semibold text-gray-900">Product</th>
                <th className="px-4 py-3 font-semibold text-gray-900">Key Ingredients</th>
                <th className="px-4 py-3 font-semibold text-gray-900">Price</th>
                <th className="px-4 py-3 font-semibold text-gray-900">Rating</th>
                <th className="px-4 py-3 font-semibold text-gray-900">Tested?</th>
                <th className="px-4 py-3 font-semibold text-gray-900"></th>
              </tr>
            </thead>
            <tbody>
              {sorted.map((r) =>
                r.product ? (
                  <tr key={r.id} className="border-b border-gray-100 hover:bg-gray-50 transition-colors">
                    <td className="px-4 py-3 font-bold text-teal-600">#{r.rank_position}</td>
                    <td className="px-4 py-3">
                      <Link to={`/product/${r.product.slug}`} className="font-medium text-gray-900 hover:text-teal-600">
                        {r.product.name}
                      </Link>
                      <p className="text-xs text-gray-500">{r.product.brand}</p>
                    </td>
                    <td className="px-4 py-3 text-gray-600 max-w-[200px]">
                      {r.product.key_ingredients.slice(0, 3).join(', ')}
                    </td>
                    <td className="px-4 py-3 text-gray-900 font-medium whitespace-nowrap">
                      ${r.product.price_min}-${r.product.price_max}
                    </td>
                    <td className="px-4 py-3">
                      <StarRating rating={r.product.rating} size={12} />
                    </td>
                    <td className="px-4 py-3">
                      {r.product.third_party_tested ? (
                        <Award size={16} className="text-emerald-600" />
                      ) : (
                        <span className="text-gray-400">-</span>
                      )}
                    </td>
                    <td className="px-4 py-3">
                      <a
                        href={r.product.affiliate_link}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="text-teal-600 hover:text-teal-700 font-medium text-xs whitespace-nowrap"
                      >
                        Check Price
                      </a>
                    </td>
                  </tr>
                ) : null
              )}
            </tbody>
          </table>
        </div>

        {/* Why We Ranked */}
        {topThree.length > 0 && (
          <section className="mb-16">
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Why We Ranked These</h2>
            <div className="space-y-6">
              {topThree.map((r) => (
                <div key={r.id} className="bg-gray-50 rounded-xl p-6 border border-gray-100">
                  <div className="flex gap-4 items-start">
                    <div className={`w-10 h-10 rounded-full flex items-center justify-center text-white font-bold shrink-0 ${
                      r.rank_position === 1 ? 'bg-amber-500' : r.rank_position === 2 ? 'bg-slate-400' : 'bg-orange-500'
                    }`}>
                      #{r.rank_position}
                    </div>
                    <div className="flex-1 min-w-0">
                      <h3 className="text-lg font-bold text-gray-900 mb-1">{r.product.name}</h3>
                      <p className="text-gray-600 mb-4 text-sm">
                        {r.why_ranked || `Top rated in this category based on ingredients, testing, and user reviews.`}
                      </p>
                      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 mb-4 text-sm">
                        <div>
                          <p className="font-semibold text-gray-900 mb-1">Strengths</p>
                          <ul className="space-y-1">
                            {r.product.pros.slice(0, 3).map((p, i) => (
                              <li key={i} className="flex gap-2 text-gray-700">
                                <span className="text-emerald-600 shrink-0">+</span>{p}
                              </li>
                            ))}
                          </ul>
                        </div>
                        <div>
                          <p className="font-semibold text-gray-900 mb-1">Considerations</p>
                          <ul className="space-y-1">
                            {r.product.cons.slice(0, 2).map((c, i) => (
                              <li key={i} className="flex gap-2 text-gray-700">
                                <span className="text-amber-600 shrink-0">&ndash;</span>{c}
                              </li>
                            ))}
                          </ul>
                        </div>
                      </div>
                      <a
                        href={r.product.affiliate_link}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="inline-flex items-center gap-1 text-teal-600 hover:text-teal-700 font-medium text-sm"
                      >
                        Check Current Price <ArrowRight size={14} />
                      </a>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          </section>
        )}

        {/* Related Categories */}
        <section className="bg-teal-50 rounded-xl p-6 md:p-8">
          <h2 className="text-xl font-bold text-gray-900 mb-4">Explore Other Categories</h2>
          <div className="grid grid-cols-2 sm:grid-cols-3 gap-3">
            {[
              { slug: 'nootropics', label: 'Nootropics', icon: '\u{1F9E0}' },
              { slug: 'protein-powder', label: 'Protein', icon: '\u26A1' },
              { slug: 'fat-burners', label: 'Fat Burners', icon: '\u{1F525}' },
              { slug: 'vitamins-minerals', label: 'Vitamins', icon: '\u2764\uFE0F' },
              { slug: 'sleep-aids', label: 'Sleep Aids', icon: '\u{1F319}' },
              { slug: 'longevity-anti-aging', label: 'Longevity', icon: '\u2600\uFE0F' },
            ]
              .filter((c) => c.slug !== slug)
              .map((c) => (
                <Link
                  key={c.slug}
                  to={`/category/${c.slug}`}
                  className="flex items-center gap-2 p-3 bg-white rounded-lg hover:bg-teal-100 transition-colors text-sm font-medium text-gray-800"
                >
                  {c.icon} {c.label}
                </Link>
              ))}
          </div>
        </section>
      </section>
    </>
  );
}
