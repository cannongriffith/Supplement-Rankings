import { SEO } from '../components/SEO';
import { AlertTriangle, CheckCircle, Info } from 'lucide-react';

export function AffiliateDisclosure() {
  return (
    <>
      <SEO title="Affiliate Disclosure | SupplementRankings" description="FTC compliant affiliate disclosure for SupplementRankings.com." />

      <section className="bg-gradient-to-b from-teal-50 to-white py-12 border-b border-gray-100">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
          <h1 className="text-3xl sm:text-4xl font-extrabold text-gray-900 mb-3">Affiliate Disclosure</h1>
          <p className="text-lg text-gray-600">FTC Compliant Disclosure</p>
        </div>
      </section>

      <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-12 space-y-10">
        <div className="flex gap-4 bg-amber-50 border border-amber-200 rounded-xl p-5">
          <AlertTriangle size={24} className="text-amber-600 shrink-0 mt-0.5" />
          <div>
            <h2 className="font-bold text-gray-900 mb-1">Important Notice</h2>
            <p className="text-gray-700 text-sm">
              This website contains affiliate links. If you click on a product link and make a purchase, we may
              receive a commission at no additional cost to you. This does not affect our editorial independence or
              the integrity of our reviews.
            </p>
          </div>
        </div>

        <section>
          <h2 className="text-2xl font-bold text-gray-900 mb-3">What Are Affiliate Links?</h2>
          <p className="text-gray-700 mb-4">When you use an affiliate link from our site:</p>
          <ul className="space-y-2 text-gray-700 text-sm">
            <li className="flex gap-2"><CheckCircle size={16} className="text-emerald-600 shrink-0 mt-0.5" /> You pay the same price as buying directly from the retailer</li>
            <li className="flex gap-2"><CheckCircle size={16} className="text-emerald-600 shrink-0 mt-0.5" /> The retailer pays us a small commission for the referral</li>
            <li className="flex gap-2"><CheckCircle size={16} className="text-emerald-600 shrink-0 mt-0.5" /> There is never any additional cost to you</li>
          </ul>
        </section>

        <section>
          <h2 className="text-2xl font-bold text-gray-900 mb-3">Our Partners</h2>
          <ul className="space-y-2 text-gray-700 text-sm">
            <li><strong>Amazon Associates:</strong> Product links and pricing</li>
            <li><strong>Brand Direct:</strong> Official website links and exclusive discount codes</li>
            <li><strong>Retail Partners:</strong> Other supplement retailers and platforms</li>
          </ul>
        </section>

        <section>
          <h2 className="text-2xl font-bold text-gray-900 mb-3">How This Supports Our Mission</h2>
          <p className="text-gray-700 mb-3 text-sm">Affiliate commissions help us:</p>
          <ul className="space-y-2 text-gray-700 text-sm">
            {[
              'Conduct rigorous supplement research and testing',
              'Maintain and update our product database regularly',
              'Publish comprehensive, detailed reviews',
              'Keep our website free and accessible to everyone',
              'Stay independent from manufacturer influence',
            ].map((item) => (
              <li key={item} className="flex gap-2">
                <CheckCircle size={16} className="text-teal-600 shrink-0 mt-0.5" /> {item}
              </li>
            ))}
          </ul>
        </section>

        <section>
          <h2 className="text-2xl font-bold text-gray-900 mb-3">Editorial Independence</h2>
          <p className="text-gray-700 text-sm">
            We maintain strict editorial independence. Rankings are based solely on ingredient quality, clinical evidence,
            third-party testing, user reviews, and value. We would rank a product the same way whether or not we earn
            an affiliate commission from its sale. Product quality and your satisfaction are our top priorities.
          </p>
        </section>

        <div className="flex gap-4 bg-blue-50 border border-blue-200 rounded-xl p-5">
          <Info size={24} className="text-blue-600 shrink-0 mt-0.5" />
          <div>
            <h2 className="font-bold text-gray-900 mb-1">FTC Compliance</h2>
            <p className="text-gray-700 text-sm">
              SupplementRankings.com complies with the Federal Trade Commission's standards on endorsements
              and testimonials. We clearly disclose all affiliate relationships on this page, the affiliate
              disclosure banner at the top of every page, and individual product review pages.
            </p>
          </div>
        </div>
      </div>
    </>
  );
}
