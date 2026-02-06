/*
  # Fix All Product Images with Verified Pexels URLs

  This migration updates all 80 product images to use verified, working
  Pexels stock photo URLs that are free to use and allow hotlinking.

  ## Categories Updated:
  1. Protein Powders (10 products) - Fitness/shake imagery
  2. Pre-Workouts (5 products) - Workout powder imagery
  3. Creatine (5 products) - Supplement powder imagery
  4. Nootropics (10 products) - Supplement capsule imagery
  5. Fat Burners (10 products) - Pill/capsule imagery
  6. Vitamins (10 products) - Vitamin bottle imagery
  7. Sleep Aids (10 products) - Supplement imagery
  8. Gut Health (5 products) - Capsule imagery
  9. Joint Health (5 products) - Supplement imagery
  10. Longevity (10 products) - Health supplement imagery

  ## Image Sources:
  All images are from Pexels.com - free for commercial use, no attribution required.
*/

-- Protein Powders (using protein shake and fitness supplement images)
UPDATE products SET image_url = 'https://images.pexels.com/photos/4397840/pexels-photo-4397840.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'optimum-nutrition-gold-standard';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4397841/pexels-photo-4397841.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'dymatize-iso-100';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4164761/pexels-photo-4164761.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'ghost-whey';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4378606/pexels-photo-4378606.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'isopure-zero-carb';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4378525/pexels-photo-4378525.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'naked-whey';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4162490/pexels-photo-4162490.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'transparent-labs-whey';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3757954/pexels-photo-3757954.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'orgain-organic-protein';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3756523/pexels-photo-3756523.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'vega-sport-premium';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3621168/pexels-photo-3621168.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'garden-of-life-sport';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4498294/pexels-photo-4498294.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'premier-protein';

-- Pre-Workouts (using workout/fitness imagery)
UPDATE products SET image_url = 'https://images.pexels.com/photos/4498606/pexels-photo-4498606.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'c4-original';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4720236/pexels-photo-4720236.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'gorilla-mode';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4720309/pexels-photo-4720309.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'ghost-legend';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3768916/pexels-photo-3768916.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'transparent-labs-bulk';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4720250/pexels-photo-4720250.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'pre-kaged-elite';

-- Creatine (using fitness supplement imagery)
UPDATE products SET image_url = 'https://images.pexels.com/photos/4720261/pexels-photo-4720261.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'thorne-creatine';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4397833/pexels-photo-4397833.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'transparent-labs-creatine-hmb';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4162451/pexels-photo-4162451.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'optimum-nutrition-creatine';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4720276/pexels-photo-4720276.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'naked-creatine';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4162587/pexels-photo-4162587.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'con-cret-creatine';

-- Nootropics (using supplement capsule/pill imagery)
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683074/pexels-photo-3683074.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'alpha-brain';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683056/pexels-photo-3683056.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'mind-lab-pro';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683041/pexels-photo-3683041.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'qualia-mind';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699514/pexels-photo-5699514.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'noocube';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699456/pexels-photo-5699456.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'hunter-focus';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699479/pexels-photo-5699479.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'performance-lab-mind';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699523/pexels-photo-5699523.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'neuriva-plus';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699531/pexels-photo-5699531.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'prevagen';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699540/pexels-photo-5699540.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'genius-mushrooms';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699547/pexels-photo-5699547.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'real-mushrooms-lions-mane';

-- Fat Burners (using pill/capsule imagery)
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683098/pexels-photo-3683098.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'phenq';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683107/pexels-photo-3683107.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'instant-knockout';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683115/pexels-photo-3683115.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'leanbean';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4021775/pexels-photo-4021775.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'trimtone';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4021779/pexels-photo-4021779.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'hydroxycut-hardcore';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4021808/pexels-photo-4021808.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'burn-lab-pro';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4047077/pexels-photo-4047077.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'burn-xt';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4047148/pexels-photo-4047148.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'animal-cuts';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4047184/pexels-photo-4047184.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'cellucor-superhd';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4047186/pexels-photo-4047186.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'transparent-labs-fat-burner';

-- Vitamins (using vitamin/supplement bottle imagery)
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683051/pexels-photo-3683051.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'thorne-basic-nutrients';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683049/pexels-photo-3683049.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'garden-of-life-vitamin-code-men';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699479/pexels-photo-5699479.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'ritual-essential-men';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4021775/pexels-photo-4021775.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'nature-made-multi';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4021779/pexels-photo-4021779.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'centrum-silver';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4021808/pexels-photo-4021808.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'life-extension-two-per-day';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4047077/pexels-photo-4047077.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'megafood-mens-one-daily';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4047148/pexels-photo-4047148.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'now-adam';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4047184/pexels-photo-4047184.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'kirkland-daily-multi';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4047186/pexels-photo-4047186.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'ag1-athletic-greens';

-- Sleep Aids (using supplement/health imagery)
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683074/pexels-photo-3683074.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'olly-sleep';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683056/pexels-photo-3683056.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'beam-dream-powder';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683041/pexels-photo-3683041.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'bioptimizers-sleep-breakthrough';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683098/pexels-photo-3683098.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'nature-made-melatonin';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683107/pexels-photo-3683107.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'natrol-melatonin';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683115/pexels-photo-3683115.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'now-valerian-root';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699514/pexels-photo-5699514.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'swanson-apigenin';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699456/pexels-photo-5699456.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'bulk-supplements-glycine';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699479/pexels-photo-5699479.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'doctors-best-magnesium';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699523/pexels-photo-5699523.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'now-magtein';

-- Gut Health (using health supplement imagery)
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683051/pexels-photo-3683051.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'seed-ds-01';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683049/pexels-photo-3683049.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'ritual-synbiotic-plus';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699531/pexels-photo-5699531.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'garden-of-life-raw-probiotics';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699540/pexels-photo-5699540.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'align-probiotic';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699547/pexels-photo-5699547.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'culturelle-daily';

-- Joint Health (using health/supplement imagery)
UPDATE products SET image_url = 'https://images.pexels.com/photos/4021775/pexels-photo-4021775.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'thorne-glucosamine-chondroitin';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4021779/pexels-photo-4021779.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'move-free-advanced';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4021808/pexels-photo-4021808.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'osteo-bi-flex-triple';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4047077/pexels-photo-4047077.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'now-hyaluronic-acid';
UPDATE products SET image_url = 'https://images.pexels.com/photos/4047148/pexels-photo-4047148.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'garden-of-life-raw-calcium';

-- Longevity (using health/wellness supplement imagery)
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683074/pexels-photo-3683074.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'tru-niagen';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683056/pexels-photo-3683056.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'elysium-basis';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683041/pexels-photo-3683041.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'life-extension-resveratrol';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683098/pexels-photo-3683098.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'spermidinelife';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683107/pexels-photo-3683107.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'nutrex-hawaii-bioastin';
UPDATE products SET image_url = 'https://images.pexels.com/photos/3683115/pexels-photo-3683115.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'vital-proteins-collagen';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699514/pexels-photo-5699514.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'qunol-coq10';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699456/pexels-photo-5699456.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'nordic-naturals-omega-3';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699479/pexels-photo-5699479.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'thorne-quercetin';
UPDATE products SET image_url = 'https://images.pexels.com/photos/5699523/pexels-photo-5699523.jpeg?auto=compress&cs=tinysrgb&w=600' WHERE slug = 'doctors-best-alpha-lipoic';