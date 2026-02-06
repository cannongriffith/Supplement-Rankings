import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { supabase, Stack, StackProduct, Product } from '../lib/supabase';
import { SEO } from '../components/SEO';
import { StarRating } from '../components/StarRating';
import { ProductImage } from '../components/ProductImage';
import { Layers, ExternalLink, ChevronRight, ArrowRight } from 'lucide-react';

type FullStack = Stack & {
  stack_products: (StackProduct & { product: Product })[];
};

export function StacksPage() {
  const [stacks, setStacks] = useState<FullStack[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      const { data } = await supabase
        .from('stacks')
        .select('*, stack_products(*, product:products(*))')
        .order('display_order');
      if (data) setStacks(data as FullStack[]);
      setLoading(false);
    }
    load();
  }, []);

  const getStackPrice = (stack: FullStack) => {
    const products = stack.stack_products?.map((sp) => sp.product).filter(Boolean) || [];
    const min = products.reduce((sum, p) => sum + Number(p.price_min), 0);
    const max = products.reduce((sum, p) => sum + Number(p.price_max), 0);
    return { min, max };
  };

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
        title="Supplement Stacks 2026 - Curated Combinations | SupplementRankings"
        description="Expert-curated supplement stacks for focus, sleep, muscle building, longevity, and daily wellness. Save by bundling top-rated products."
      />

      <section className="bg-gradient-to-br from-teal-50 via-white to-emerald-50 py-12 md:py-16 border-b border-gray-100">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-teal-100 text-teal-700 text-sm font-medium mb-4">
            <Layers size={14} /> Curated Combinations
          </div>
          <h1 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold text-gray-900 mb-4">
            Supplement Stacks
            <span className="block text-teal-600 text-2xl sm:text-3xl mt-1">Built for Your Goals</span>
          </h1>
          <p className="text-lg text-gray-600 max-w-2xl mx-auto">
            Why take one supplement when a strategic combination delivers exponentially better results?
            Our expert-curated stacks pair synergistic products for maximum impact.
          </p>
        </div>
      </section>

      <section className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 space-y-12">
        {stacks.map((stack, idx) => {
          const price = getStackPrice(stack);
          const products = stack.stack_products
            ?.sort((a, b) => a.display_order - b.display_order)
            .map((sp) => sp)
            .filter((sp) => sp.product) || [];

          return (
            <div
              key={stack.id}
              className={`rounded-2xl border border-gray-200 overflow-hidden ${
                idx === 0 ? 'shadow-lg' : ''
              }`}
            >
              <div className="bg-gradient-to-r from-gray-900 to-gray-800 p-6 md:p-8 text-white">
                <div className="flex flex-col md:flex-row md:items-center justify-between gap-4">
                  <div>
                    <span className="text-teal-400 text-xs font-bold uppercase tracking-wider">{stack.goal}</span>
                    <h2 className="text-2xl font-bold mt-1">{stack.name}</h2>
                    <p className="text-gray-400 text-sm mt-2 max-w-xl">{stack.description}</p>
                  </div>
                  <div className="text-right shrink-0">
                    <p className="text-gray-400 text-xs">Combined Price Range</p>
                    <p className="text-2xl font-bold text-white">${price.min}&ndash;${price.max}</p>
                    <p className="text-teal-400 text-xs font-medium">{products.length} products</p>
                  </div>
                </div>
              </div>

              <div className="bg-white divide-y divide-gray-100">
                {products.map((sp, i) => (
                  <div key={sp.id} className="p-5 flex items-start gap-4 hover:bg-gray-50 transition-colors">
                    <div className="w-10 h-10 rounded-full bg-teal-100 text-teal-700 flex items-center justify-center font-bold text-sm shrink-0">
                      {i + 1}
                    </div>
                    <ProductImage
                      imageUrl={sp.product.image_url}
                      productName={sp.product.name}
                      alt={sp.product.name}
                      className="w-16 h-16 rounded-lg object-contain p-1 bg-gray-50 border border-gray-100 shrink-0"
                      placeholderSize="128x128"
                    />
                    <div className="flex-1 min-w-0">
                      <p className="text-xs text-gray-500 font-medium uppercase">{sp.product.brand}</p>
                      <Link to={`/product/${sp.product.slug}`}>
                        <h3 className="font-bold text-gray-900 hover:text-teal-600 transition-colors">
                          {sp.product.name}
                        </h3>
                      </Link>
                      <p className="text-sm text-gray-500 mt-0.5">{sp.role_in_stack}</p>
                      <div className="flex items-center gap-3 mt-2">
                        <StarRating rating={sp.product.rating} size={11} />
                        <span className="text-sm font-semibold text-gray-900">
                          ${sp.product.price_min}&ndash;${sp.product.price_max}
                        </span>
                      </div>
                    </div>
                    <a
                      href={sp.product.affiliate_link}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="hidden sm:inline-flex items-center gap-1 px-3 py-2 bg-emerald-600 hover:bg-emerald-700 text-white text-xs font-semibold rounded-lg transition-colors shrink-0"
                    >
                      Check Price <ExternalLink size={12} />
                    </a>
                  </div>
                ))}
              </div>
            </div>
          );
        })}

        <div className="bg-teal-50 rounded-xl p-6 md:p-8 text-center">
          <h2 className="text-xl font-bold text-gray-900 mb-2">Not sure which stack is right for you?</h2>
          <p className="text-gray-600 mb-4">Take our 60-second quiz for a personalized recommendation.</p>
          <Link
            to="/quiz"
            className="inline-flex items-center gap-2 px-6 py-3 bg-teal-600 hover:bg-teal-700 text-white font-semibold rounded-lg transition-colors"
          >
            Take the Quiz <ArrowRight size={16} />
          </Link>
        </div>
      </section>
    </>
  );
}
