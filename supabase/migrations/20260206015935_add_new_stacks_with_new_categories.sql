/*
  # Add New Stacks Using New Category Products

  1. New Stacks
    - Athletic Performance Stack (Pre-Workout + Creatine + Protein)
    - Gut & Immunity Stack (Probiotics + Multivitamin + Longevity)
    - Joint & Mobility Stack (Joint Health + Longevity + Wellness)

  2. Stack Products
    - Each stack contains 3-4 synergistic products with defined roles
    - display_order determines product ordering within each stack
*/

INSERT INTO stacks (name, slug, description, goal, image_url, display_order) VALUES
(
  'Athletic Performance Stack',
  'athletic-performance',
  'Maximize workout intensity, strength gains, and recovery with this complete performance system. Pre-workout for energy, creatine for power output, and premium protein for muscle repair.',
  'Strength & Performance',
  'https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?auto=compress&cs=tinysrgb&w=800',
  6
),
(
  'Gut & Immunity Stack',
  'gut-immunity',
  'Build a bulletproof gut microbiome and support your immune system from the inside out. Clinically studied probiotics paired with nutritional insurance for comprehensive digestive wellness.',
  'Digestive Health',
  'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=800',
  7
),
(
  'Joint & Mobility Stack',
  'joint-mobility',
  'Protect and restore joint cartilage, reduce inflammation, and maintain flexibility as you age. A multi-pathway approach covering structural support, lubrication, and anti-inflammatory defense.',
  'Joint Support',
  'https://images.pexels.com/photos/3076509/pexels-photo-3076509.jpeg?auto=compress&cs=tinysrgb&w=800',
  8
);

-- Athletic Performance Stack products
INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '143d1ea5-4404-4447-9735-4026b5eff9b4', 'Pre-workout energy, pump, and endurance boost', 1
FROM stacks s WHERE s.slug = 'athletic-performance';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '33d85b2c-c87c-41d0-bce4-a81c2fafa205', 'Creatine for strength, power output, and lean mass', 2
FROM stacks s WHERE s.slug = 'athletic-performance';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '7f4e651d-8922-4efd-9b3b-8fcc073ebd14', 'Post-workout protein for muscle recovery and growth', 3
FROM stacks s WHERE s.slug = 'athletic-performance';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '22908cf3-9618-496f-97c0-2722936b4ed8', 'Magnesium for muscle relaxation and recovery sleep', 4
FROM stacks s WHERE s.slug = 'athletic-performance';

-- Gut & Immunity Stack products
INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '9288d2f9-7f91-4b7d-8454-3ded49213d8b', 'Clinically studied probiotic and prebiotic synbiotic', 1
FROM stacks s WHERE s.slug = 'gut-immunity';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '06175d55-1103-4f67-af84-d86a15c5a100', 'Synbiotic for microbiome diversity and regularity', 2
FROM stacks s WHERE s.slug = 'gut-immunity';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, 'e2a3d0e7-8e66-4332-a70c-713b2379304b', 'Premium multivitamin for immune system support', 3
FROM stacks s WHERE s.slug = 'gut-immunity';

-- Joint & Mobility Stack products
INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '99474c08-68b7-4bab-afaf-919d84fc9ab2', 'Glucosamine and chondroitin for cartilage repair', 1
FROM stacks s WHERE s.slug = 'joint-mobility';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '985c86c9-2d4a-4019-869c-3996c8057abe', 'Hyaluronic acid for joint lubrication and skin health', 2
FROM stacks s WHERE s.slug = 'joint-mobility';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, '164ab9b8-833b-41e2-841b-8b908c50cfba', 'Collagen peptides for connective tissue and flexibility', 3
FROM stacks s WHERE s.slug = 'joint-mobility';

INSERT INTO stack_products (stack_id, product_id, role_in_stack, display_order)
SELECT s.id, 'e3206745-eb8f-4103-9e4c-3e87f04f8602', 'Quercetin for anti-inflammatory and antioxidant support', 4
FROM stacks s WHERE s.slug = 'joint-mobility';