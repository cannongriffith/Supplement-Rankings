import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { supabase, BlogPost, Category } from '../lib/supabase';
import { SEO } from '../components/SEO';
import { CalendarDays, ArrowRight } from 'lucide-react';

export function Blog() {
  const [posts, setPosts] = useState<(BlogPost & { category?: Category })[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      const { data } = await supabase
        .from('blog_posts')
        .select('*, category:categories(*)')
        .eq('published', true)
        .order('published_at', { ascending: false });
      if (data) setPosts(data as (BlogPost & { category?: Category })[]);
      setLoading(false);
    }
    load();
  }, []);

  return (
    <>
      <SEO
        title="Supplement Blog & Guides | SupplementRankings"
        description="Expert articles on supplements, buying guides, and health insights from SupplementRankings."
      />

      <section className="bg-gradient-to-b from-teal-50 to-white py-12 border-b border-gray-100">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
          <h1 className="text-3xl sm:text-4xl font-extrabold text-gray-900 mb-3">Blog & Guides</h1>
          <p className="text-lg text-gray-600">
            Expert articles, buying guides, and research insights to help you make informed supplement decisions.
          </p>
        </div>
      </section>

      <section className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        {loading ? (
          <div className="space-y-6">
            {[1, 2, 3].map((i) => (
              <div key={i} className="h-32 bg-gray-100 rounded-xl animate-pulse" />
            ))}
          </div>
        ) : posts.length === 0 ? (
          <p className="text-gray-500 text-center py-12">No posts yet. Check back soon!</p>
        ) : (
          <div className="space-y-6">
            {posts.map((post) => (
              <Link key={post.id} to={`/blog/${post.slug}`} className="block">
                <article className="group bg-white rounded-xl border border-gray-200 hover:border-teal-300 hover:shadow-md transition-all p-6">
                  <div className="flex flex-col sm:flex-row sm:items-start gap-4">
                    <div className="flex-1 min-w-0">
                      {post.category && (
                        <span className="text-xs font-semibold text-teal-600 uppercase tracking-wider mb-2 inline-block">
                          {post.category.name}
                        </span>
                      )}
                      <h2 className="text-xl font-bold text-gray-900 group-hover:text-teal-600 transition-colors mb-2">
                        {post.title}
                      </h2>
                      <p className="text-gray-600 text-sm leading-relaxed mb-3">{post.excerpt}</p>
                      <div className="flex items-center gap-4 text-xs text-gray-400">
                        <span className="flex items-center gap-1">
                          <CalendarDays size={12} />
                          {new Date(post.published_at).toLocaleDateString('en-US', {
                            year: 'numeric',
                            month: 'long',
                            day: 'numeric',
                          })}
                        </span>
                      </div>
                    </div>
                    <span className="inline-flex items-center gap-1 text-teal-600 text-sm font-medium shrink-0 group-hover:gap-2 transition-all">
                      Read <ArrowRight size={14} />
                    </span>
                  </div>
                </article>
              </Link>
            ))}
          </div>
        )}
      </section>
    </>
  );
}
