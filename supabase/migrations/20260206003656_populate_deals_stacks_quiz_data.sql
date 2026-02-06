/*
  # Populate Deals, Stacks, and Quiz Data

  1. Data Added
    - 8 active deals across various products with discount codes and expiration dates
    - 5 curated supplement stacks (Focus, Sleep & Recovery, Lean Muscle, Longevity, Daily Essentials)
    - Stack-product associations with role descriptions
    - 5 quiz questions covering goals, budget, experience, dietary preferences, and priorities
    - Quiz-product mappings for all 30 products with goal tags, budget tiers, and experience levels

  2. Important Notes
    - Deal expiration dates set 2-4 weeks in the future from Feb 2026
    - Stacks designed around common supplement combination goals
    - Quiz mappings enable personalized product recommendations
*/

-- Active Deals (expires 2-4 weeks from now)
INSERT INTO deals (product_id, discount_percentage, coupon_code, deal_title, deal_description, expires_at) VALUES
('be36b7ba-c9d0-4777-81cd-98a27f740dde', 15, 'FOCUS15', 'Winter Brain Boost', 'Save 15% on our #1 ranked nootropic', now() + interval '21 days'),
('5de6c889-900a-4f64-a9be-c7b1b05265e7', 20, 'PROTEIN20', 'New Year Gains Sale', 'Best-selling protein at the lowest price this year', now() + interval '14 days'),
('0c7d3edc-04fb-48aa-8c3a-ca69bb03f768', 10, NULL, 'Knockout Deal', 'Limited time 10% off the top-ranked fat burner', now() + interval '10 days'),
('e2a3d0e7-8e66-4332-a70c-713b2379304b', 25, 'THORNE25', 'Thorne Flash Sale', 'Rare 25% off practitioner-grade vitamins', now() + interval '7 days'),
('0f014d12-748c-4cce-965d-dbd608dced00', 15, 'SLEEP15', 'Better Sleep Sale', 'Save on the #1 sleep supplement', now() + interval '18 days'),
('f3b169b1-e4ff-48c9-ac28-9d476e9ee781', 20, 'LONGEVITY20', 'Age Well Sale', 'Premium NAD+ booster at a rare discount', now() + interval '12 days'),
('dfb43597-4739-4dfe-8548-db6ff7ad7317', 15, 'ISO15', 'Dymatize Days', 'Save on the purest whey isolate', now() + interval '16 days'),
('981342b9-0323-4f24-9f03-a96f1a79271c', 30, 'PHENQ30', 'Biggest PhenQ Discount Ever', '30% off the multi-action fat burner - our biggest sale', now() + interval '5 days');

-- Curated Stacks
INSERT INTO stacks (name, slug, description, goal, image_url, display_order) VALUES
('Ultimate Focus Stack', 'ultimate-focus', 'Maximize mental clarity, memory, and productivity with this research-backed nootropic combination. Each supplement targets a different aspect of cognitive performance for synergistic results.', 'Focus & Productivity', 'https://images.pexels.com/photos/3184357/pexels-photo-3184357.jpeg?auto=compress&cs=tinysrgb&w=800', 1),
('Sleep & Recovery Stack', 'sleep-recovery', 'Optimize your sleep quality and wake up refreshed. This combination addresses multiple pathways for falling asleep, staying asleep, and maximizing recovery overnight.', 'Better Sleep', 'https://images.pexels.com/photos/3771069/pexels-photo-3771069.jpeg?auto=compress&cs=tinysrgb&w=800', 2),
('Lean Muscle Stack', 'lean-muscle', 'Build lean muscle and support fat loss with this proven combination of high-quality protein, metabolism support, and recovery nutrients.', 'Build Muscle & Burn Fat', 'https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg?auto=compress&cs=tinysrgb&w=800', 3),
('Longevity Essentials Stack', 'longevity-essentials', 'Support healthy aging at the cellular level. This stack targets the key longevity pathways: NAD+ production, mitochondrial function, autophagy, and antioxidant defense.', 'Healthy Aging', 'https://images.pexels.com/photos/3822864/pexels-photo-3822864.jpeg?auto=compress&cs=tinysrgb&w=800', 4),
('Daily Wellness Stack', 'daily-wellness', 'Cover all your nutritional bases with this comprehensive daily stack. Premium multivitamin paired with targeted support for energy, immunity, and overall vitality.', 'Overall Health', 'https://images.pexels.com/photos/3683074/pexels-photo-3683074.jpeg?auto=compress&cs=tinysrgb&w=800', 5);

-- Stack Products (linking stacks to products with roles)
-- Focus Stack
INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, 'be36b7ba-c9d0-4777-81cd-98a27f740dde', 'Core nootropic for comprehensive cognitive enhancement', 1
FROM stacks s WHERE s.slug = 'ultimate-focus';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '2b60eee7-5f4e-43fa-9585-c9cbcc5fcc34', 'Stacking base with premium citicoline and phosphatidylserine', 2
FROM stacks s WHERE s.slug = 'ultimate-focus';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, 'b313d198-637f-4400-b7e4-055051fb9ed0', 'Mitochondrial energy support for sustained mental performance', 3
FROM stacks s WHERE s.slug = 'ultimate-focus';

-- Sleep & Recovery Stack
INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '0f014d12-748c-4cce-965d-dbd608dced00', 'Comprehensive sleep formula targeting multiple pathways', 1
FROM stacks s WHERE s.slug = 'sleep-recovery';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '22908cf3-9618-496f-97c0-2722936b4ed8', 'Muscle relaxation and glycine for deeper sleep', 2
FROM stacks s WHERE s.slug = 'sleep-recovery';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '4a8df242-391c-4838-a8a9-eed871762f9c', 'Amino acid support for sleep quality and next-day freshness', 3
FROM stacks s WHERE s.slug = 'sleep-recovery';

-- Lean Muscle Stack
INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '5de6c889-900a-4f64-a9be-c7b1b05265e7', 'Gold standard protein for muscle building and recovery', 1
FROM stacks s WHERE s.slug = 'lean-muscle';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '0c7d3edc-04fb-48aa-8c3a-ca69bb03f768', 'Thermogenic support for fat loss during body recomposition', 2
FROM stacks s WHERE s.slug = 'lean-muscle';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, 'e2a3d0e7-8e66-4332-a70c-713b2379304b', 'Complete micronutrient support for training demands', 3
FROM stacks s WHERE s.slug = 'lean-muscle';

-- Longevity Essentials Stack
INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, 'f3b169b1-e4ff-48c9-ac28-9d476e9ee781', 'NAD+ boosting for cellular energy and DNA repair', 1
FROM stacks s WHERE s.slug = 'longevity-essentials';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, 'b313d198-637f-4400-b7e4-055051fb9ed0', 'Mitochondrial CoQ10 support for heart and energy', 2
FROM stacks s WHERE s.slug = 'longevity-essentials';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '5a44fec0-d75e-4b9f-8894-ca5c789aa759', 'Polyphenol antioxidant protection and sirtuin activation', 3
FROM stacks s WHERE s.slug = 'longevity-essentials';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '46fa526d-3b33-45ec-8bb9-2afecb165274', 'Autophagy activation for cellular renewal', 4
FROM stacks s WHERE s.slug = 'longevity-essentials';

-- Daily Wellness Stack
INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, 'e2a3d0e7-8e66-4332-a70c-713b2379304b', 'Practitioner-grade daily multivitamin foundation', 1
FROM stacks s WHERE s.slug = 'daily-wellness';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '5de6c889-900a-4f64-a9be-c7b1b05265e7', 'Quality protein for daily nutrition and muscle maintenance', 2
FROM stacks s WHERE s.slug = 'daily-wellness';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '22908cf3-9618-496f-97c0-2722936b4ed8', 'Essential magnesium for hundreds of enzymatic reactions', 3
FROM stacks s WHERE s.slug = 'daily-wellness';

-- Quiz Questions
INSERT INTO quiz_questions (step_number, question_text, question_type, options) VALUES
(1, 'What is your primary health goal?', 'single', '[
  {"label": "Sharper Focus & Mental Clarity", "value": "focus"},
  {"label": "Build Muscle & Get Stronger", "value": "muscle"},
  {"label": "Lose Weight & Burn Fat", "value": "fat_loss"},
  {"label": "Better Sleep & Recovery", "value": "sleep"},
  {"label": "Overall Health & Wellness", "value": "wellness"},
  {"label": "Anti-Aging & Longevity", "value": "longevity"}
]'::jsonb),
(2, 'What is your monthly supplement budget?', 'single', '[
  {"label": "Under $25/month", "value": "budget"},
  {"label": "$25-60/month", "value": "mid"},
  {"label": "$60+/month (I invest in premium)", "value": "premium"}
]'::jsonb),
(3, 'How experienced are you with supplements?', 'single', '[
  {"label": "Brand new - never taken supplements", "value": "beginner"},
  {"label": "Some experience - taken a few products", "value": "intermediate"},
  {"label": "Very experienced - I know what I want", "value": "advanced"}
]'::jsonb),
(4, 'Any dietary preferences?', 'single', '[
  {"label": "No restrictions", "value": "none"},
  {"label": "Vegan / Plant-based", "value": "vegan"},
  {"label": "Keto / Low-carb", "value": "keto"},
  {"label": "Organic / Clean label preferred", "value": "organic"}
]'::jsonb),
(5, 'What matters most to you in a supplement?', 'single', '[
  {"label": "Best value for money", "value": "value"},
  {"label": "Highest quality ingredients", "value": "quality"},
  {"label": "Strongest / most effective formula", "value": "potency"},
  {"label": "Fewest side effects / gentlest", "value": "gentle"},
  {"label": "Third-party tested / verified", "value": "tested"}
]'::jsonb);

-- Quiz Product Mappings
INSERT INTO quiz_product_mappings (product_id, goal_tags, budget_tag, experience_tag, priority_score) VALUES
-- Nootropics
('be36b7ba-c9d0-4777-81cd-98a27f740dde', ARRAY['focus', 'wellness'], 'mid', 'beginner', 95),
('8e5da6a1-b567-4d3c-9b5c-096119d585f0', ARRAY['focus'], 'premium', 'advanced', 90),
('2be1a8c1-6548-42c7-8d50-b5fa7d43e222', ARRAY['focus', 'wellness'], 'budget', 'beginner', 85),
('d071e261-36a8-45ff-9f7d-db033c85ff2d', ARRAY['focus'], 'mid', 'intermediate', 80),
('2b60eee7-5f4e-43fa-9585-c9cbcc5fcc34', ARRAY['focus'], 'mid', 'advanced', 75),
-- Protein
('5de6c889-900a-4f64-a9be-c7b1b05265e7', ARRAY['muscle', 'wellness'], 'budget', 'beginner', 95),
('dfb43597-4739-4dfe-8548-db6ff7ad7317', ARRAY['muscle'], 'mid', 'intermediate', 90),
('ab2b8ed6-4953-454b-bd99-70487c4d80ba', ARRAY['muscle', 'fat_loss'], 'mid', 'intermediate', 85),
('d831997f-daa4-45b3-832c-1b77077fe9de', ARRAY['muscle', 'wellness'], 'budget', 'beginner', 80),
('e49fff20-edfa-4d8d-9995-10f3240908eb', ARRAY['muscle', 'wellness'], 'budget', 'beginner', 75),
-- Fat Burners
('0c7d3edc-04fb-48aa-8c3a-ca69bb03f768', ARRAY['fat_loss', 'muscle'], 'mid', 'intermediate', 95),
('981342b9-0323-4f24-9f03-a96f1a79271c', ARRAY['fat_loss'], 'premium', 'intermediate', 90),
('85df5078-8a77-404f-9091-efd519332e42', ARRAY['fat_loss'], 'mid', 'beginner', 85),
('4af9835c-981e-4f30-baa0-ef172ca16cef', ARRAY['fat_loss'], 'budget', 'beginner', 80),
('9dbec031-d7ef-4997-bae2-5c616f96d852', ARRAY['fat_loss'], 'budget', 'beginner', 70),
-- Vitamins
('e2a3d0e7-8e66-4332-a70c-713b2379304b', ARRAY['wellness', 'longevity'], 'mid', 'intermediate', 95),
('5d12b912-0518-49c0-aac1-0f534c33da5b', ARRAY['wellness'], 'mid', 'beginner', 90),
('ac1efa79-e2ac-4bf7-ab9a-6846fffbab49', ARRAY['wellness'], 'mid', 'beginner', 85),
('d405b2c5-619b-4248-a1c8-65e5dae70da0', ARRAY['wellness'], 'budget', 'beginner', 80),
('6c7a886b-a552-4445-8982-e13aa062d578', ARRAY['wellness'], 'budget', 'beginner', 75),
-- Sleep
('0f014d12-748c-4cce-965d-dbd608dced00', ARRAY['sleep', 'wellness'], 'budget', 'beginner', 95),
('22908cf3-9618-496f-97c0-2722936b4ed8', ARRAY['sleep', 'wellness'], 'budget', 'intermediate', 90),
('ccaf631a-f818-4d42-a77b-26163edda6a2', ARRAY['sleep'], 'budget', 'beginner', 85),
('4a8df242-391c-4838-a8a9-eed871762f9c', ARRAY['sleep'], 'budget', 'advanced', 80),
('f00cc9a6-1be7-467e-9de4-afd5622814a6', ARRAY['sleep'], 'budget', 'beginner', 70),
-- Longevity
('f3b169b1-e4ff-48c9-ac28-9d476e9ee781', ARRAY['longevity'], 'mid', 'advanced', 95),
('b313d198-637f-4400-b7e4-055051fb9ed0', ARRAY['longevity', 'wellness'], 'budget', 'beginner', 90),
('5a44fec0-d75e-4b9f-8894-ca5c789aa759', ARRAY['longevity'], 'mid', 'intermediate', 85),
('46fa526d-3b33-45ec-8bb9-2afecb165274', ARRAY['longevity'], 'mid', 'advanced', 80),
('05054100-f5e6-4637-9cd5-1f4e68a2fb8b', ARRAY['longevity', 'wellness'], 'budget', 'beginner', 75);