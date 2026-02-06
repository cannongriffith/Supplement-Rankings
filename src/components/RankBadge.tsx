interface RankBadgeProps {
  rank: number;
  size?: 'sm' | 'md' | 'lg';
}

export function RankBadge({ rank, size = 'md' }: RankBadgeProps) {
  const bgColor =
    rank === 1
      ? 'bg-gradient-to-br from-amber-400 to-amber-600'
      : rank === 2
        ? 'bg-gradient-to-br from-slate-300 to-slate-500'
        : rank === 3
          ? 'bg-gradient-to-br from-orange-400 to-orange-600'
          : 'bg-teal-600';

  const sizeClasses = {
    sm: 'w-7 h-7 text-xs',
    md: 'w-9 h-9 text-sm',
    lg: 'w-12 h-12 text-lg',
  };

  return (
    <div
      className={`${bgColor} ${sizeClasses[size]} rounded-full flex items-center justify-center text-white font-bold shadow-md`}
    >
      #{rank}
    </div>
  );
}
