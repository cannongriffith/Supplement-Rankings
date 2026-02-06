import { useEffect, useState } from 'react';
import { useParams, Link } from 'react-router-dom';
import { supabase, BlogPost as BlogPostType, Category } from '../lib/supabase';
import { SEO } from '../components/SEO';
import { ChevronRight, CalendarDays, ArrowLeft, ArrowRight } from 'lucide-react';

export function BlogPostPage() {
  const { slug } = useParams<{ slug: string }>();
  const [post, setPost] = useState<(BlogPostType & { category?: Category }) | null>(null);
  const [relatedPosts, setRelatedPosts] = useState<BlogPostType[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      if (!slug) return;
      setLoading(true);

      const { data } = await supabase
        .from('blog_posts')
        .select('*, category:categories(*)')
        .eq('slug', slug)
        .eq('published', true)
        .maybeSingle();

      if (data) {
        setPost(data as BlogPostType & { category?: Category });

        const { data: related } = await supabase
          .from('blog_posts')
          .select('*')
          .eq('published', true)
          .neq('id', data.id)
          .order('published_at', { ascending: false })
          .limit(3);

        if (related) setRelatedPosts(related);
      }

      setLoading(false);
    }
    load();
  }, [slug]);

  if (loading) {
    return (
      <div className="min-h-[60vh] flex items-center justify-center">
        <div className="w-8 h-8 border-4 border-teal-600 border-t-transparent rounded-full animate-spin" />
      </div>
    );
  }

  if (!post) {
    return (
      <div className="min-h-[60vh] flex flex-col items-center justify-center gap-4">
        <p className="text-xl font-semibold text-gray-900">Post not found</p>
        <Link to="/blog" className="text-teal-600 hover:text-teal-700 font-medium">
          Back to Blog
        </Link>
      </div>
    );
  }

  const formattedDate = new Date(post.published_at).toLocaleDateString('en-US', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  });

  const paragraphs = post.content
    .split(/\n\n+/)
    .map((p) => p.trim())
    .filter(Boolean);

  return (
    <>
      <SEO
        title={`${post.title} | SupplementRankings Blog`}
        description={post.excerpt || post.title}
      />

      <article>
        <section className="bg-gradient-to-b from-teal-50 to-white py-12 border-b border-gray-100">
          <div className="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8">
            <nav className="flex items-center gap-1.5 text-sm text-gray-500 mb-6">
              <Link to="/" className="hover:text-teal-600">Home</Link>
              <ChevronRight size={14} />
              <Link to="/blog" className="hover:text-teal-600">Blog</Link>
              {post.category && (
                <>
                  <ChevronRight size={14} />
                  <Link to={`/category/${post.category.slug}`} className="hover:text-teal-600">
                    {post.category.name}
                  </Link>
                </>
              )}
            </nav>

            {post.category && (
              <Link
                to={`/category/${post.category.slug}`}
                className="text-xs font-semibold text-teal-600 uppercase tracking-wider mb-3 inline-block hover:text-teal-700"
              >
                {post.category.name}
              </Link>
            )}

            <h1 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold text-gray-900 mb-4 leading-tight">
              {post.title}
            </h1>

            <div className="flex items-center gap-3 text-sm text-gray-500">
              <CalendarDays size={16} />
              <time dateTime={post.published_at}>{formattedDate}</time>
            </div>
          </div>
        </section>

        {post.featured_image && (
          <div className="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8 -mt-1">
            <img
              src={post.featured_image}
              alt={post.title}
              className="w-full h-64 sm:h-80 object-cover rounded-xl mt-8"
            />
          </div>
        )}

        <div className="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8 py-10">
          <div className="prose-custom">
            {paragraphs.map((p, i) => {
              if (p.startsWith('## ')) {
                return (
                  <h2 key={i} className="text-2xl font-bold text-gray-900 mt-10 mb-4">
                    {p.replace('## ', '')}
                  </h2>
                );
              }
              if (p.startsWith('### ')) {
                return (
                  <h3 key={i} className="text-xl font-bold text-gray-900 mt-8 mb-3">
                    {p.replace('### ', '')}
                  </h3>
                );
              }
              if (p.includes('\n- ') || p.startsWith('- ')) {
                const items = p.split('\n').filter((line) => line.startsWith('- '));
                return (
                  <ul key={i} className="space-y-2 my-4">
                    {items.map((item, j) => (
                      <li key={j} className="flex gap-2 text-gray-700 leading-relaxed">
                        <span className="text-teal-600 font-bold shrink-0 mt-0.5">&bull;</span>
                        {item.replace('- ', '')}
                      </li>
                    ))}
                  </ul>
                );
              }
              return (
                <p key={i} className="text-gray-700 text-lg leading-relaxed mb-6">
                  {p}
                </p>
              );
            })}
          </div>

          <div className="mt-12 pt-8 border-t border-gray-200">
            <Link
              to="/blog"
              className="inline-flex items-center gap-2 text-teal-600 hover:text-teal-700 font-medium transition-colors"
            >
              <ArrowLeft size={16} /> Back to all articles
            </Link>
          </div>
        </div>

        {relatedPosts.length > 0 && (
          <section className="bg-gray-50 border-t border-gray-200 py-12">
            <div className="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8">
              <h2 className="text-2xl font-bold text-gray-900 mb-6">You Might Also Like</h2>
              <div className="space-y-4">
                {relatedPosts.map((rp) => (
                  <Link
                    key={rp.id}
                    to={`/blog/${rp.slug}`}
                    className="group flex items-center justify-between bg-white rounded-xl border border-gray-200 hover:border-teal-300 hover:shadow-md transition-all p-5"
                  >
                    <div className="min-w-0 flex-1">
                      <h3 className="font-bold text-gray-900 group-hover:text-teal-600 transition-colors mb-1">
                        {rp.title}
                      </h3>
                      <p className="text-sm text-gray-500 line-clamp-1">{rp.excerpt}</p>
                    </div>
                    <ArrowRight size={18} className="text-gray-400 group-hover:text-teal-600 shrink-0 ml-4 transition-colors" />
                  </Link>
                ))}
              </div>
            </div>
          </section>
        )}
      </article>
    </>
  );
}
