import { Link } from 'react-router-dom';
import { SEO } from '../components/SEO';
import { CheckCircle, FlaskConical, Award, Users, BarChart3 } from 'lucide-react';

const STEPS = [
  { icon: FlaskConical, title: 'Research & Selection', desc: 'We research hundreds of products across each category, starting with market leaders and emerging brands.' },
  { icon: BarChart3, title: 'Ingredient Analysis', desc: 'Every ingredient is evaluated for clinical evidence, proper dosing, and bioavailability.' },
  { icon: Award, title: 'Third-Party Verification', desc: 'We verify testing certifications, COAs, and manufacturing quality standards.' },
  { icon: Users, title: 'User Feedback', desc: 'We integrate verified user reviews and real-world feedback into our assessments.' },
  { icon: CheckCircle, title: 'Value Assessment', desc: 'Price-to-benefit ratio analysis ensures our recommendations fit every budget.' },
];

export function About() {
  return (
    <>
      <SEO title="About Us | SupplementRankings" description="Learn about our mission, methodology, and the team behind SupplementRankings." />

      <section className="bg-gradient-to-b from-teal-50 to-white py-12 border-b border-gray-100">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
          <h1 className="text-3xl sm:text-4xl font-extrabold text-gray-900 mb-3">About SupplementRankings</h1>
          <p className="text-lg text-gray-600">
            Independent supplement reviews backed by research, third-party testing, and real user feedback.
          </p>
        </div>
      </section>

      <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-12 space-y-16">
        <section>
          <h2 className="text-2xl font-bold text-gray-900 mb-4">Our Mission</h2>
          <p className="text-gray-700 leading-relaxed">
            SupplementRankings exists to cut through the noise in the supplement industry. We provide unbiased,
            evidence-based rankings so health-conscious individuals can make informed decisions without wading
            through marketing hype. Every product is evaluated using the same rigorous criteria, regardless of
            brand partnerships or affiliate relationships.
          </p>
        </section>

        <section>
          <h2 className="text-2xl font-bold text-gray-900 mb-6">Our Process</h2>
          <div className="space-y-6">
            {STEPS.map(({ icon: Icon, title, desc }, i) => (
              <div key={title} className="flex gap-4">
                <div className="flex items-center justify-center w-10 h-10 rounded-full bg-teal-100 text-teal-600 shrink-0">
                  <Icon size={20} />
                </div>
                <div>
                  <h3 className="font-semibold text-gray-900">
                    <span className="text-teal-600 mr-2">{i + 1}.</span>{title}
                  </h3>
                  <p className="text-gray-600 text-sm mt-1">{desc}</p>
                </div>
              </div>
            ))}
          </div>
        </section>

        <section>
          <h2 className="text-2xl font-bold text-gray-900 mb-4">What Makes Us Different</h2>
          <ul className="space-y-3">
            {[
              'Independent reviews never influenced by supplement manufacturers',
              'Transparent methodology clearly explained on every ranking page',
              'Evidence-based approach grounded in peer-reviewed scientific research',
              'Regular updates reflecting latest product developments and research',
              'Clear affiliate disclosure on every page in compliance with FTC guidelines',
            ].map((item) => (
              <li key={item} className="flex gap-3 text-gray-700">
                <CheckCircle size={18} className="text-emerald-600 shrink-0 mt-0.5" />
                <span>{item}</span>
              </li>
            ))}
          </ul>
        </section>

        <section className="bg-emerald-50 rounded-xl p-6 md:p-8 border border-emerald-200">
          <h2 className="text-2xl font-bold text-gray-900 mb-3">Affiliate Disclosure</h2>
          <p className="text-gray-700 mb-3">
            SupplementRankings.com participates in affiliate programs with Amazon and supplement brands. When you
            purchase through our links, we may earn a commission at no extra cost to you. These relationships
            never influence our rankings &mdash; product quality always comes first.
          </p>
          <Link to="/affiliate-disclosure" className="text-teal-600 hover:text-teal-700 font-medium text-sm">
            Read our full disclosure &rarr;
          </Link>
        </section>

        <section>
          <h2 className="text-2xl font-bold text-gray-900 mb-3">Get in Touch</h2>
          <p className="text-gray-700 mb-4">
            Questions about our reviews, methodology, or want to suggest a product? We'd love to hear from you.
          </p>
          <Link
            to="/contact"
            className="inline-flex px-5 py-2.5 bg-teal-600 text-white font-semibold rounded-lg hover:bg-teal-700 transition-colors text-sm"
          >
            Contact Us
          </Link>
        </section>
      </div>
    </>
  );
}
