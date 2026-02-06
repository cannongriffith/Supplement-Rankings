import { useEffect } from 'react';

interface SEOProps {
  title?: string;
  description?: string;
}

export function SEO({
  title = 'SupplementRankings.com - Best Supplements 2026',
  description = 'Expert-ranked supplement reviews for 2026. Find the best nootropics, protein powders, vitamins, fat burners, and more.',
}: SEOProps) {
  useEffect(() => {
    document.title = title;
    const meta = document.querySelector('meta[name="description"]');
    if (meta) {
      meta.setAttribute('content', description);
    }
  }, [title, description]);

  return null;
}
