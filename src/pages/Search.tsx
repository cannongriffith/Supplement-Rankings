import { useEffect, useState } from 'react';
import { useSearchParams, Link } from 'react-router-dom';
import { supabase, Product } from '../lib/supabase';
import { ProductCard } from '../components/ProductCard';
import { SEO } from '../components/SEO';
import { SearchX } from 'lucide-react';

export function SearchPage() {
  const [params] = useSearchParams();
  const query = params.get('q') || '';
  const [results, setResults] = useState<Product[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function search() {
      if (!query.trim()) {
        setResults([]);
        setLoading(false);
        return;
      }
      setLoading(true);
      const { data } = await supabase
        .from('products')
        .select('*')
        .or(`name.ilike.%${query}%,brand.ilike.%${query}%,description.ilike.%${query}%`)
        .order('rating', { ascending: false })
        .limit(20);
      if (data) setResults(data);
      setLoading(false);
    }
    search();
  }, [query]);

  return (
    <>
      <SEO title={`Search: ${query} | SupplementRankings`} />

      <section className="bg-teal-50 py-10 border-b border-gray-100">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <h1 className="text-2xl sm:text-3xl font-bold text-gray-900 mb-1">Search Results</h1>
          <p className="text-gray-600">
            {query ? (
              <>
                Showing results for "<span className="font-semibold text-gray-900">{query}</span>"
              </>
            ) : (
              'Enter a search term to find supplements'
            )}
          </p>
        </div>
      </section>

      <section className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        {loading ? (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {[1, 2, 3].map((i) => (
              <div key={i} className="h-80 bg-gray-100 rounded-xl animate-pulse" />
            ))}
          </div>
        ) : results.length > 0 ? (
          <>
            <p className="text-sm text-gray-500 mb-6">
              {results.length} product{results.length !== 1 && 's'} found
            </p>
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
              {results.map((p) => (
                <ProductCard key={p.id} product={p} />
              ))}
            </div>
          </>
        ) : query ? (
          <div className="text-center py-16">
            <SearchX size={48} className="text-gray-300 mx-auto mb-4" />
            <p className="text-gray-600 mb-4">No products found matching "{query}"</p>
            <Link to="/" className="text-teal-600 hover:text-teal-700 font-medium">
              Browse all categories
            </Link>
          </div>
        ) : null}
      </section>
    </>
  );
}
