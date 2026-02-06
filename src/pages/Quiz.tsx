import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { supabase, QuizQuestion, QuizProductMapping, Product } from '../lib/supabase';
import { SEO } from '../components/SEO';
import { StarRating } from '../components/StarRating';
import { ProductImage } from '../components/ProductImage';
import { ArrowRight, ArrowLeft, Sparkles, ExternalLink, RotateCcw } from 'lucide-react';

export function QuizPage() {
  const [questions, setQuestions] = useState<QuizQuestion[]>([]);
  const [mappings, setMappings] = useState<QuizProductMapping[]>([]);
  const [currentStep, setCurrentStep] = useState(0);
  const [answers, setAnswers] = useState<Record<number, string>>({});
  const [results, setResults] = useState<(QuizProductMapping & { product: Product })[]>([]);
  const [showResults, setShowResults] = useState(false);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      const [qRes, mRes] = await Promise.all([
        supabase.from('quiz_questions').select('*').order('step_number'),
        supabase.from('quiz_product_mappings').select('*, product:products(*)'),
      ]);
      if (qRes.data) setQuestions(qRes.data);
      if (mRes.data) setMappings(mRes.data as (QuizProductMapping & { product: Product })[]);
      setLoading(false);
    }
    load();
  }, []);

  const selectAnswer = (step: number, value: string) => {
    setAnswers({ ...answers, [step]: value });
  };

  const calculateResults = () => {
    const goalAnswer = answers[1];
    const budgetAnswer = answers[2];
    const experienceAnswer = answers[3];

    const scored = mappings
      .filter((m) => m.product)
      .map((m) => {
        let score = m.priority_score;
        if (goalAnswer && m.goal_tags.includes(goalAnswer)) score += 50;
        if (budgetAnswer && m.budget_tag === budgetAnswer) score += 20;
        if (experienceAnswer && m.experience_tag === experienceAnswer) score += 15;
        return { ...m, calculatedScore: score };
      })
      .sort((a, b) => b.calculatedScore - a.calculatedScore)
      .slice(0, 3);

    setResults(scored as (QuizProductMapping & { product: Product })[]);
    setShowResults(true);
  };

  const restart = () => {
    setCurrentStep(0);
    setAnswers({});
    setResults([]);
    setShowResults(false);
  };

  if (loading) {
    return (
      <div className="min-h-[60vh] flex items-center justify-center">
        <div className="w-8 h-8 border-4 border-teal-600 border-t-transparent rounded-full animate-spin" />
      </div>
    );
  }

  if (showResults) {
    return (
      <>
        <SEO title="Your Personalized Recommendations | SupplementRankings" />
        <section className="bg-gradient-to-br from-teal-50 via-white to-emerald-50 py-12 md:py-16">
          <div className="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8">
            <div className="text-center mb-10">
              <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-teal-100 text-teal-700 text-sm font-medium mb-4">
                <Sparkles size={14} /> Personalized For You
              </div>
              <h1 className="text-3xl sm:text-4xl font-extrabold text-gray-900 mb-3">
                Your Top Recommendations
              </h1>
              <p className="text-gray-600">
                Based on your goals, budget, and preferences, here are our expert picks for you.
              </p>
            </div>

            <div className="space-y-6">
              {results.map((r, i) => (
                <div
                  key={r.id}
                  className={`bg-white rounded-xl border-2 ${
                    i === 0 ? 'border-teal-300 shadow-lg' : 'border-gray-200'
                  } p-6 transition-all hover:shadow-md`}
                >
                  {i === 0 && (
                    <span className="inline-flex items-center gap-1 px-2.5 py-1 bg-teal-100 text-teal-700 text-xs font-bold rounded-full mb-3">
                      <Sparkles size={12} /> Best Match
                    </span>
                  )}
                  <div className="flex gap-4 items-start">
                    <ProductImage
                      imageUrl={r.product.image_url}
                      productName={r.product.name}
                      alt={r.product.name}
                      className="w-20 h-20 rounded-lg object-contain p-1 bg-gray-50 border border-gray-100 shrink-0"
                      placeholderSize="160x160"
                    />
                    <div className="flex-1 min-w-0">
                      <p className="text-xs text-gray-500 font-medium uppercase">{r.product.brand}</p>
                      <h3 className="font-bold text-gray-900 text-lg">{r.product.name}</h3>
                      <StarRating rating={r.product.rating} size={14} />
                      <p className="text-sm text-gray-600 mt-2">{r.product.description}</p>
                      <div className="flex items-center gap-3 mt-4">
                        <span className="text-lg font-bold text-gray-900">
                          ${r.product.price_min}&ndash;${r.product.price_max}
                        </span>
                        <a
                          href={r.product.affiliate_link}
                          target="_blank"
                          rel="noopener noreferrer"
                          className="inline-flex items-center gap-1.5 px-4 py-2 bg-emerald-600 hover:bg-emerald-700 text-white text-sm font-semibold rounded-lg transition-colors"
                        >
                          Check Price <ExternalLink size={14} />
                        </a>
                        <Link
                          to={`/product/${r.product.slug}`}
                          className="text-teal-600 hover:text-teal-700 text-sm font-medium"
                        >
                          Full Review
                        </Link>
                      </div>
                    </div>
                  </div>
                </div>
              ))}
            </div>

            <div className="text-center mt-8">
              <button
                onClick={restart}
                className="inline-flex items-center gap-2 text-teal-600 hover:text-teal-700 font-medium text-sm"
              >
                <RotateCcw size={14} /> Retake Quiz
              </button>
            </div>
          </div>
        </section>
      </>
    );
  }

  const question = questions[currentStep];
  if (!question) return null;

  const progress = ((currentStep + 1) / questions.length) * 100;
  const canProceed = answers[question.step_number] !== undefined;
  const isLast = currentStep === questions.length - 1;

  return (
    <>
      <SEO
        title="Find Your Perfect Supplement | Quiz | SupplementRankings"
        description="Take our quick 60-second quiz to find the best supplements for your goals, budget, and lifestyle."
      />

      <section className="min-h-[80vh] bg-gradient-to-br from-teal-50 via-white to-emerald-50 py-12 md:py-16">
        <div className="max-w-2xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-8">
            <h1 className="text-2xl sm:text-3xl font-extrabold text-gray-900 mb-2">
              Find Your Perfect Supplement
            </h1>
            <p className="text-gray-500 text-sm">Question {currentStep + 1} of {questions.length}</p>
          </div>

          <div className="w-full bg-gray-200 rounded-full h-2 mb-10">
            <div
              className="bg-teal-600 h-2 rounded-full transition-all duration-500"
              style={{ width: `${progress}%` }}
            />
          </div>

          <div className="bg-white rounded-2xl border border-gray-200 shadow-sm p-6 md:p-8">
            <h2 className="text-xl sm:text-2xl font-bold text-gray-900 mb-6">
              {question.question_text}
            </h2>

            <div className="space-y-3">
              {question.options.map((opt) => {
                const selected = answers[question.step_number] === opt.value;
                return (
                  <button
                    key={opt.value}
                    onClick={() => selectAnswer(question.step_number, opt.value)}
                    className={`w-full text-left p-4 rounded-xl border-2 transition-all duration-200 ${
                      selected
                        ? 'border-teal-500 bg-teal-50 text-teal-900'
                        : 'border-gray-200 hover:border-gray-300 hover:bg-gray-50 text-gray-700'
                    }`}
                  >
                    <span className="font-medium">{opt.label}</span>
                  </button>
                );
              })}
            </div>

            <div className="flex items-center justify-between mt-8">
              <button
                onClick={() => setCurrentStep(Math.max(0, currentStep - 1))}
                disabled={currentStep === 0}
                className="inline-flex items-center gap-1 text-sm font-medium text-gray-500 hover:text-gray-700 disabled:opacity-30 disabled:cursor-not-allowed"
              >
                <ArrowLeft size={16} /> Back
              </button>

              <button
                onClick={() => {
                  if (isLast) {
                    calculateResults();
                  } else {
                    setCurrentStep(currentStep + 1);
                  }
                }}
                disabled={!canProceed}
                className="inline-flex items-center gap-2 px-6 py-3 bg-teal-600 hover:bg-teal-700 text-white font-semibold rounded-lg transition-colors disabled:opacity-40 disabled:cursor-not-allowed"
              >
                {isLast ? 'See My Results' : 'Next'}
                <ArrowRight size={16} />
              </button>
            </div>
          </div>
        </div>
      </section>
    </>
  );
}
