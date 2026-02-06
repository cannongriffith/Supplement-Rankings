import { SEO } from '../components/SEO';

const SECTIONS = [
  {
    title: '1. Introduction',
    content:
      'SupplementRankings.com ("we", "us", "our") respects your privacy. This Privacy Policy explains how we collect, use, and protect your information when you visit our website.',
  },
  {
    title: '2. Information We Collect',
    content:
      'We may collect your email address when you subscribe to our newsletter, usage data through analytics tools, and cookies to enhance your browsing experience. We do not collect personal health information.',
  },
  {
    title: '3. How We Use Your Information',
    content:
      'We use collected information to send newsletter updates, improve our website, analyze traffic patterns, respond to inquiries, and comply with legal obligations.',
  },
  {
    title: '4. Information Sharing',
    content:
      'We do not sell your personal information. We may share data with service providers (hosting, analytics), affiliate partners (for commission tracking, without personal identification), and when required by law.',
  },
  {
    title: '5. Third-Party Links',
    content:
      'Our website contains affiliate links to external sites. We are not responsible for their privacy practices and encourage you to review their policies.',
  },
  {
    title: '6. Data Security',
    content:
      'We implement reasonable security measures to protect your information. However, no method of internet transmission is 100% secure.',
  },
  {
    title: '7. Your Rights',
    content:
      'You have the right to access, correct, or delete your personal information, opt out of marketing communications, and unsubscribe from our newsletter at any time.',
  },
  {
    title: '8. Children\'s Privacy',
    content:
      'Our website is not directed to children under 13. We do not knowingly collect information from children.',
  },
  {
    title: '9. Changes to This Policy',
    content:
      'We may update this Privacy Policy periodically. Significant changes will be communicated via email or website notice.',
  },
  {
    title: '10. Contact Us',
    content:
      'Questions about this Privacy Policy? Contact us at privacy@supplementrankings.com.',
  },
];

export function Privacy() {
  return (
    <>
      <SEO title="Privacy Policy | SupplementRankings" description="Privacy policy for SupplementRankings.com." />

      <section className="bg-gradient-to-b from-teal-50 to-white py-12 border-b border-gray-100">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
          <h1 className="text-3xl sm:text-4xl font-extrabold text-gray-900 mb-3">Privacy Policy</h1>
          <p className="text-gray-500">Last Updated: February 2026</p>
        </div>
      </section>

      <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-12 space-y-8">
        {SECTIONS.map(({ title, content }) => (
          <section key={title}>
            <h2 className="text-xl font-bold text-gray-900 mb-2">{title}</h2>
            <p className="text-gray-700 text-sm leading-relaxed">{content}</p>
          </section>
        ))}
      </div>
    </>
  );
}
