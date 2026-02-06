import { Star, BadgeCheck } from 'lucide-react';
import { Testimonial } from '../lib/supabase';

interface TestimonialCardProps {
  testimonial: Testimonial;
}

export function TestimonialCard({ testimonial }: TestimonialCardProps) {
  return (
    <div className="bg-white rounded-xl border border-gray-200 p-5 hover:shadow-md transition-shadow">
      <div className="flex items-center gap-1 mb-3">
        {Array.from({ length: 5 }).map((_, i) => (
          <Star
            key={i}
            size={14}
            className={i < testimonial.rating ? 'text-amber-400 fill-amber-400' : 'text-gray-200'}
          />
        ))}
      </div>
      <p className="text-gray-700 text-sm leading-relaxed mb-4 italic">
        "{testimonial.text}"
      </p>
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-2">
          <div className="w-8 h-8 rounded-full bg-teal-100 flex items-center justify-center text-teal-700 font-bold text-xs">
            {testimonial.name.split(' ').map(n => n[0]).join('')}
          </div>
          <div>
            <p className="text-sm font-medium text-gray-900">{testimonial.name}</p>
            <p className="text-xs text-gray-500">
              {new Date(testimonial.date).toLocaleDateString('en-US', { month: 'short', year: 'numeric' })}
            </p>
          </div>
        </div>
        {testimonial.verified && (
          <span className="inline-flex items-center gap-1 text-xs text-emerald-600 font-medium">
            <BadgeCheck size={14} /> Verified
          </span>
        )}
      </div>
    </div>
  );
}
