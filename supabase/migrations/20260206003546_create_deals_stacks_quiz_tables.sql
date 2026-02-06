/*
  # Create Deals, Stacks, and Quiz Tables

  1. New Tables
    - `deals` - Active promotions and discount information for products
      - `id` (uuid, primary key)
      - `product_id` (uuid, FK to products)
      - `discount_percentage` (integer) - Percent off
      - `coupon_code` (text, nullable) - Optional coupon code
      - `deal_title` (text) - Short title like "Spring Sale"
      - `deal_description` (text, nullable) - Details about the deal
      - `expires_at` (timestamptz) - When the deal expires
      - `is_active` (boolean, default true)
      - `created_at` (timestamptz)

    - `stacks` - Curated supplement combination recommendations
      - `id` (uuid, primary key)
      - `name` (text) - Stack name like "Focus Stack"
      - `slug` (text, unique) - URL-friendly name
      - `description` (text) - What the stack does
      - `goal` (text) - Primary goal
      - `image_url` (text, nullable)
      - `display_order` (integer, default 0)
      - `created_at` (timestamptz)

    - `stack_products` - Junction table linking stacks to products
      - `id` (uuid, primary key)
      - `stack_id` (uuid, FK to stacks)
      - `product_id` (uuid, FK to products)
      - `role_in_stack` (text) - Why this product is in the stack
      - `display_order` (integer, default 0)

    - `quiz_questions` - Questions for the supplement finder quiz
      - `id` (uuid, primary key)
      - `step_number` (integer) - Question order
      - `question_text` (text) - The question
      - `question_type` (text) - 'single' or 'multiple'
      - `options` (jsonb) - Array of answer options with labels and values

    - `quiz_product_mappings` - Maps quiz answers to product recommendations
      - `id` (uuid, primary key)
      - `product_id` (uuid, FK to products)
      - `goal_tags` (text[]) - Which goals this product matches
      - `budget_tag` (text) - budget tier: 'budget', 'mid', 'premium'
      - `experience_tag` (text) - 'beginner', 'intermediate', 'advanced'
      - `priority_score` (integer, default 0) - Higher = more likely to recommend

  2. Security
    - Enable RLS on all tables
    - Public read access for all tables (product catalog data)
    - No write access for anonymous/authenticated users (admin managed)
*/

-- Deals table
CREATE TABLE IF NOT EXISTS deals (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  product_id uuid NOT NULL REFERENCES products(id),
  discount_percentage integer NOT NULL DEFAULT 0,
  coupon_code text,
  deal_title text NOT NULL,
  deal_description text,
  expires_at timestamptz NOT NULL,
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE deals ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Deals are publicly readable"
  ON deals FOR SELECT
  TO anon, authenticated
  USING (is_active = true AND expires_at > now());

-- Stacks table
CREATE TABLE IF NOT EXISTS stacks (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  slug text NOT NULL UNIQUE,
  description text NOT NULL,
  goal text NOT NULL,
  image_url text,
  display_order integer DEFAULT 0,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE stacks ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Stacks are publicly readable"
  ON stacks FOR SELECT
  TO anon, authenticated
  USING (id IS NOT NULL);

-- Stack products junction
CREATE TABLE IF NOT EXISTS stack_products (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  stack_id uuid NOT NULL REFERENCES stacks(id),
  product_id uuid NOT NULL REFERENCES products(id),
  role_in_stack text NOT NULL,
  display_order integer DEFAULT 0
);

ALTER TABLE stack_products ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Stack products are publicly readable"
  ON stack_products FOR SELECT
  TO anon, authenticated
  USING (id IS NOT NULL);

-- Quiz questions
CREATE TABLE IF NOT EXISTS quiz_questions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  step_number integer NOT NULL,
  question_text text NOT NULL,
  question_type text NOT NULL DEFAULT 'single',
  options jsonb NOT NULL DEFAULT '[]'::jsonb
);

ALTER TABLE quiz_questions ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Quiz questions are publicly readable"
  ON quiz_questions FOR SELECT
  TO anon, authenticated
  USING (id IS NOT NULL);

-- Quiz product mappings
CREATE TABLE IF NOT EXISTS quiz_product_mappings (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  product_id uuid NOT NULL REFERENCES products(id),
  goal_tags text[] NOT NULL DEFAULT ARRAY[]::text[],
  budget_tag text NOT NULL DEFAULT 'mid',
  experience_tag text NOT NULL DEFAULT 'beginner',
  priority_score integer NOT NULL DEFAULT 0
);

ALTER TABLE quiz_product_mappings ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Quiz mappings are publicly readable"
  ON quiz_product_mappings FOR SELECT
  TO anon, authenticated
  USING (id IS NOT NULL);