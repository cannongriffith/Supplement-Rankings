import { useState, useEffect } from 'react';
import { Tag, Clock } from 'lucide-react';

interface DealBadgeProps {
  discountPercentage: number;
  expiresAt: string;
  compact?: boolean;
}

function getTimeLeft(expiresAt: string) {
  const diff = new Date(expiresAt).getTime() - Date.now();
  if (diff <= 0) return null;
  const days = Math.floor(diff / (1000 * 60 * 60 * 24));
  const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
  const seconds = Math.floor((diff % (1000 * 60)) / 1000);
  return { days, hours, minutes, seconds };
}

export function DealBadge({ discountPercentage, expiresAt, compact = false }: DealBadgeProps) {
  const [timeLeft, setTimeLeft] = useState(getTimeLeft(expiresAt));

  useEffect(() => {
    const interval = setInterval(() => {
      setTimeLeft(getTimeLeft(expiresAt));
    }, 1000);
    return () => clearInterval(interval);
  }, [expiresAt]);

  if (!timeLeft) return null;

  if (compact) {
    return (
      <div className="inline-flex items-center gap-1 px-2 py-0.5 bg-rose-500 text-white text-xs font-bold rounded-full animate-pulse">
        <Tag size={10} />
        {discountPercentage}% OFF
      </div>
    );
  }

  return (
    <div className="bg-gradient-to-r from-rose-500 to-orange-500 text-white rounded-lg p-3">
      <div className="flex items-center justify-between gap-3">
        <div className="flex items-center gap-2">
          <Tag size={16} className="shrink-0" />
          <span className="font-bold text-sm">{discountPercentage}% OFF</span>
        </div>
        <div className="flex items-center gap-1.5 text-xs font-medium">
          <Clock size={12} />
          {timeLeft.days > 0 && <span>{timeLeft.days}d</span>}
          <span>{String(timeLeft.hours).padStart(2, '0')}h</span>
          <span>{String(timeLeft.minutes).padStart(2, '0')}m</span>
          <span>{String(timeLeft.seconds).padStart(2, '0')}s</span>
        </div>
      </div>
    </div>
  );
}
