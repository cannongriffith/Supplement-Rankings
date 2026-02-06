import { createClient } from '@supabase/supabase-js';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

export interface Category {
  id: string;
  name: string;
  slug: string;
  description: string;
  icon_name: string;
  display_order: number;
}

export interface Product {
  id: string;
  name: string;
  brand: string;
  slug: string;
  description: string;
  long_description: string | null;
  category_id: string;
  image_url: string;
  price_min: number;
  price_max: number;
  rating: number;
  affiliate_link: string;
  affiliate_link_official: string | null;
  key_ingredients: string[];
  pros: string[];
  cons: string[];
  best_for: string;
  third_party_tested: boolean;
}

export interface Ranking {
  id: string;
  category_id: string;
  product_id: string;
  rank_position: number;
  rank_year: number;
  why_ranked: string;
  product?: Product;
}

export interface BlogPost {
  id: string;
  title: string;
  slug: string;
  content: string;
  excerpt: string;
  featured_image: string | null;
  category_id: string | null;
  published: boolean;
  published_at: string;
}

export interface Review {
  id: string;
  product_id: string;
  title: string;
  overview: string;
  ingredients_breakdown: string;
  benefits: string[];
  dosage: string;
  side_effects: string[];
  who_is_it_for: string;
  alternatives: string;
  faq: string;
  rating: number;
  testimonials: Testimonial[];
}

export interface Testimonial {
  name: string;
  rating: number;
  text: string;
  verified: boolean;
  date: string;
}

export interface Deal {
  id: string;
  product_id: string;
  discount_percentage: number;
  coupon_code: string | null;
  deal_title: string;
  deal_description: string | null;
  expires_at: string;
  is_active: boolean;
  product?: Product;
}

export interface Stack {
  id: string;
  name: string;
  slug: string;
  description: string;
  goal: string;
  image_url: string | null;
  display_order: number;
  stack_products?: StackProduct[];
}

export interface StackProduct {
  id: string;
  stack_id: string;
  product_id: string;
  role_in_stack: string;
  display_order: number;
  product?: Product;
}

export interface QuizQuestion {
  id: string;
  step_number: number;
  question_text: string;
  question_type: string;
  options: QuizOption[];
}

export interface QuizOption {
  label: string;
  value: string;
}

export interface QuizProductMapping {
  id: string;
  product_id: string;
  goal_tags: string[];
  budget_tag: string;
  experience_tag: string;
  priority_score: number;
  product?: Product;
}
