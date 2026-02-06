/*
  # Add New Supplement Categories

  1. New Tables/Data
    - 4 new categories: Pre-Workout, Creatine & Performance, Joint & Bone Health, Gut Health & Probiotics
    - Each has name, slug, description, and display_order

  2. Security
    - Categories table already has RLS enabled with public read policy
*/

INSERT INTO categories (name, slug, description, display_order) VALUES
('Pre-Workout', 'pre-workout', 'Boost energy, endurance, and performance before training with clinically dosed pre-workout supplements.', 7),
('Creatine & Performance', 'creatine-performance', 'The most researched sports supplement in history. Creatine and performance enhancers for strength and power.', 8),
('Joint & Bone Health', 'joint-bone-health', 'Protect and rebuild joints, cartilage, and bones with targeted supplements for mobility and comfort.', 9),
('Gut Health & Probiotics', 'gut-health-probiotics', 'Support digestion, immunity, and overall wellness with probiotics, prebiotics, and gut-healing supplements.', 10);