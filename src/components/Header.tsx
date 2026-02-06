import { useState, useEffect } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { Menu, X, Search, ChevronDown, Pill, Tag, Sparkles, Layers } from 'lucide-react';
import { supabase, Category } from '../lib/supabase';

export function Header() {
  const [mobileOpen, setMobileOpen] = useState(false);
  const [catOpen, setCatOpen] = useState(false);
  const [searchOpen, setSearchOpen] = useState(false);
  const [categories, setCategories] = useState<Category[]>([]);
  const [searchQuery, setSearchQuery] = useState('');
  const navigate = useNavigate();

  useEffect(() => {
    supabase
      .from('categories')
      .select('*')
      .order('display_order')
      .then(({ data }) => {
        if (data) setCategories(data);
      });
  }, []);

  const handleSearch = (e: React.FormEvent) => {
    e.preventDefault();
    if (searchQuery.trim()) {
      navigate(`/search?q=${encodeURIComponent(searchQuery.trim())}`);
      setSearchQuery('');
      setSearchOpen(false);
      setMobileOpen(false);
    }
  };

  const closeMobile = () => setMobileOpen(false);

  return (
    <>
      <div className="bg-emerald-700 text-emerald-50 text-xs sm:text-sm py-1.5 px-4 text-center">
        Affiliate Disclosure: We earn commissions from qualifying purchases &mdash; links are affiliate.{' '}
        <Link to="/affiliate-disclosure" className="underline hover:text-white">
          Learn more
        </Link>
      </div>

      <header className="sticky top-0 z-50 bg-white border-b border-gray-200">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex items-center justify-between h-16">
            <Link to="/" className="flex items-center gap-2 shrink-0">
              <Pill className="text-teal-600" size={28} />
              <span className="text-xl font-bold text-gray-900 hidden sm:inline">
                Supplement<span className="text-teal-600">Rankings</span>
              </span>
              <span className="text-xl font-bold text-gray-900 sm:hidden">
                S<span className="text-teal-600">R</span>
              </span>
            </Link>

            <nav className="hidden lg:flex items-center gap-1">
              <Link
                to="/"
                className="px-3 py-2 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-100 hover:text-teal-600"
              >
                Home
              </Link>

              <div
                className="relative"
                onMouseEnter={() => setCatOpen(true)}
                onMouseLeave={() => setCatOpen(false)}
              >
                <button className="flex items-center gap-1 px-3 py-2 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-100 hover:text-teal-600">
                  Categories <ChevronDown size={14} />
                </button>
                {catOpen && (
                  <div className="absolute top-full left-0 w-56 bg-white rounded-lg shadow-xl border border-gray-100 py-2 mt-0">
                    {categories.map((c) => (
                      <Link
                        key={c.id}
                        to={`/category/${c.slug}`}
                        className="block px-4 py-2.5 text-sm text-gray-700 hover:bg-teal-50 hover:text-teal-700"
                      >
                        {c.name}
                      </Link>
                    ))}
                  </div>
                )}
              </div>

              <Link
                to="/deals"
                className="px-3 py-2 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-100 hover:text-teal-600 flex items-center gap-1"
              >
                <Tag size={14} className="text-rose-500" /> Deals
              </Link>
              <Link
                to="/stacks"
                className="px-3 py-2 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-100 hover:text-teal-600 flex items-center gap-1"
              >
                <Layers size={14} /> Stacks
              </Link>
              <Link
                to="/quiz"
                className="px-3 py-2 text-sm font-medium text-teal-600 bg-teal-50 rounded-md hover:bg-teal-100 flex items-center gap-1"
              >
                <Sparkles size={14} /> Find My Supplement
              </Link>
              <Link
                to="/blog"
                className="px-3 py-2 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-100 hover:text-teal-600"
              >
                Blog
              </Link>
              <Link
                to="/about"
                className="px-3 py-2 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-100 hover:text-teal-600"
              >
                About
              </Link>
            </nav>

            <div className="flex items-center gap-2">
              <button
                onClick={() => setSearchOpen(!searchOpen)}
                className="p-2 text-gray-600 hover:text-teal-600 hover:bg-gray-100 rounded-lg"
                aria-label="Search"
              >
                <Search size={20} />
              </button>
              <button
                onClick={() => setMobileOpen(!mobileOpen)}
                className="lg:hidden p-2 text-gray-600 hover:text-teal-600 hover:bg-gray-100 rounded-lg"
                aria-label="Menu"
              >
                {mobileOpen ? <X size={22} /> : <Menu size={22} />}
              </button>
            </div>
          </div>

          {searchOpen && (
            <form onSubmit={handleSearch} className="pb-4">
              <div className="flex gap-2">
                <input
                  type="text"
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  placeholder="Search supplements, brands, categories..."
                  className="flex-1 px-4 py-2.5 text-sm border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 focus:border-teal-500"
                  autoFocus
                />
                <button
                  type="submit"
                  className="px-5 py-2.5 text-sm font-medium bg-teal-600 text-white rounded-lg hover:bg-teal-700"
                >
                  Search
                </button>
              </div>
            </form>
          )}
        </div>

        {mobileOpen && (
          <div className="lg:hidden border-t border-gray-200 bg-white">
            <div className="px-4 py-3 space-y-1">
              <Link onClick={closeMobile} to="/" className="block px-3 py-2.5 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-100">Home</Link>
              <p className="px-3 pt-3 pb-1 text-xs font-semibold text-gray-400 uppercase tracking-wider">Categories</p>
              {categories.map((c) => (
                <Link
                  key={c.id}
                  onClick={closeMobile}
                  to={`/category/${c.slug}`}
                  className="block px-3 py-2 text-sm text-gray-700 rounded-md hover:bg-gray-100 pl-6"
                >
                  {c.name}
                </Link>
              ))}
              <Link onClick={closeMobile} to="/deals" className="flex items-center gap-2 px-3 py-2.5 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-100">
                <Tag size={14} className="text-rose-500" /> Deals
              </Link>
              <Link onClick={closeMobile} to="/stacks" className="flex items-center gap-2 px-3 py-2.5 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-100">
                <Layers size={14} /> Stacks
              </Link>
              <Link onClick={closeMobile} to="/quiz" className="flex items-center gap-2 px-3 py-2.5 text-sm font-medium text-teal-600 bg-teal-50 rounded-md">
                <Sparkles size={14} /> Find My Supplement
              </Link>
              <Link onClick={closeMobile} to="/blog" className="block px-3 py-2.5 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-100">Blog</Link>
              <Link onClick={closeMobile} to="/about" className="block px-3 py-2.5 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-100">About</Link>
            </div>
          </div>
        )}
      </header>
    </>
  );
}
