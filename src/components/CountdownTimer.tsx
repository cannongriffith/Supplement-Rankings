import { useState, useEffect } from 'react';

interface CountdownTimerProps {
  expiresAt: string;
  label?: string;
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

export function CountdownTimer({ expiresAt, label = 'Deal ends in' }: CountdownTimerProps) {
  const [timeLeft, setTimeLeft] = useState(getTimeLeft(expiresAt));

  useEffect(() => {
    const interval = setInterval(() => {
      setTimeLeft(getTimeLeft(expiresAt));
    }, 1000);
    return () => clearInterval(interval);
  }, [expiresAt]);

  if (!timeLeft) return null;

  const blocks = [
    { value: timeLeft.days, label: 'Days' },
    { value: timeLeft.hours, label: 'Hrs' },
    { value: timeLeft.minutes, label: 'Min' },
    { value: timeLeft.seconds, label: 'Sec' },
  ];

  return (
    <div className="text-center">
      <p className="text-xs font-medium text-gray-500 uppercase tracking-wide mb-2">{label}</p>
      <div className="flex items-center justify-center gap-2">
        {blocks.map((block, i) => (
          <div key={block.label} className="flex items-center gap-2">
            <div className="bg-gray-900 text-white rounded-lg w-12 h-12 flex flex-col items-center justify-center">
              <span className="text-lg font-bold leading-none">{String(block.value).padStart(2, '0')}</span>
              <span className="text-[10px] text-gray-400 uppercase">{block.label}</span>
            </div>
            {i < blocks.length - 1 && <span className="text-gray-400 font-bold">:</span>}
          </div>
        ))}
      </div>
    </div>
  );
}
