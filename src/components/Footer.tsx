import { Link } from 'react-router-dom';
import { Pill } from 'lucide-react';

export function Footer() {
  return (
    <footer className="bg-gray-900 text-gray-400">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        <div className="grid grid-cols-2 md:grid-cols-4 gap-8 mb-10">
          <div className="col-span-2 md:col-span-1">
            <Link to="/" className="flex items-center gap-2 mb-4">
              <Pill className="text-teal-400" size={24} />
              <span className="text-lg font-bold text-white">
                Supplement<span className="text-teal-400">Rankings</span>
              </span>
            </Link>
            <p className="text-sm leading-relaxed">
              Independent supplement reviews backed by research and third-party testing. Updated February 2026.
            </p>
          </div>

          <div>
            <h4 className="text-white font-semibold mb-4 text-sm uppercase tracking-wider">Categories</h4>
            <ul className="space-y-2.5 text-sm">
              <li><Link to="/category/nootropics" className="hover:text-teal-400">Nootropics</Link></li>
              <li><Link to="/category/protein-powder" className="hover:text-teal-400">Protein Powder</Link></li>
              <li><Link to="/category/fat-burners" className="hover:text-teal-400">Fat Burners</Link></li>
              <li><Link to="/category/vitamins-minerals" className="hover:text-teal-400">Vitamins</Link></li>
              <li><Link to="/category/sleep-aids" className="hover:text-teal-400">Sleep Aids</Link></li>
              <li><Link to="/category/longevity-anti-aging" className="hover:text-teal-400">Longevity</Link></li>
              <li><Link to="/category/pre-workout" className="hover:text-teal-400">Pre-Workout</Link></li>
              <li><Link to="/category/creatine-performance" className="hover:text-teal-400">Creatine</Link></li>
              <li><Link to="/category/joint-bone-health" className="hover:text-teal-400">Joint Health</Link></li>
              <li><Link to="/category/gut-health-probiotics" className="hover:text-teal-400">Gut Health</Link></li>
            </ul>
          </div>

          <div>
            <h4 className="text-white font-semibold mb-4 text-sm uppercase tracking-wider">Resources</h4>
            <ul className="space-y-2.5 text-sm">
              <li><Link to="/deals" className="hover:text-teal-400">Deals & Coupons</Link></li>
              <li><Link to="/stacks" className="hover:text-teal-400">Supplement Stacks</Link></li>
              <li><Link to="/quiz" className="hover:text-teal-400">Find My Supplement</Link></li>
              <li><Link to="/blog" className="hover:text-teal-400">Blog</Link></li>
              <li><Link to="/about" className="hover:text-teal-400">About Us</Link></li>
              <li><Link to="/contact" className="hover:text-teal-400">Contact</Link></li>
            </ul>
          </div>

          <div>
            <h4 className="text-white font-semibold mb-4 text-sm uppercase tracking-wider">Legal</h4>
            <ul className="space-y-2.5 text-sm">
              <li><Link to="/affiliate-disclosure" className="hover:text-teal-400">Affiliate Disclosure</Link></li>
              <li><Link to="/privacy" className="hover:text-teal-400">Privacy Policy</Link></li>
            </ul>
          </div>
        </div>

        <div className="border-t border-gray-800 pt-8 text-center text-sm">
          <p>&copy; 2026 SupplementRankings.com. All rights reserved.</p>
        </div>
      </div>
    </footer>
  );
}
