/*
  # Update All Product Images with Placeholder URLs

  This migration updates all 80 product images to use reliable placeholder
  images with product names. This ensures images always load correctly.

  ## Categories Updated:
  1. Protein Powders (10 products)
  2. Pre-Workouts (5 products)
  3. Creatine (5 products)
  4. Nootropics (10 products)
  5. Fat Burners (10 products)
  6. Vitamins (10 products)
  7. Sleep Aids (10 products)
  8. Gut Health (5 products)
  9. Joint Health (5 products)
  10. Longevity (10 products)

  ## Image Format:
  Uses placehold.co for reliable, always-loading placeholders with product names.
*/

-- Protein Powders
UPDATE products SET image_url = 'https://placehold.co/400x400/1a1a2e/eee?text=ON+Gold+Standard' WHERE slug = 'optimum-nutrition-gold-standard';
UPDATE products SET image_url = 'https://placehold.co/400x400/1a1a2e/eee?text=Dymatize+ISO100' WHERE slug = 'dymatize-iso-100';
UPDATE products SET image_url = 'https://placehold.co/400x400/1a1a2e/eee?text=Ghost+Whey' WHERE slug = 'ghost-whey';
UPDATE products SET image_url = 'https://placehold.co/400x400/1a1a2e/eee?text=Isopure+Zero+Carb' WHERE slug = 'isopure-zero-carb';
UPDATE products SET image_url = 'https://placehold.co/400x400/1a1a2e/eee?text=Naked+Whey' WHERE slug = 'naked-whey';
UPDATE products SET image_url = 'https://placehold.co/400x400/1a1a2e/eee?text=Transparent+Labs+Whey' WHERE slug = 'transparent-labs-whey';
UPDATE products SET image_url = 'https://placehold.co/400x400/1a1a2e/eee?text=Orgain+Organic' WHERE slug = 'orgain-organic-protein';
UPDATE products SET image_url = 'https://placehold.co/400x400/1a1a2e/eee?text=Vega+Sport' WHERE slug = 'vega-sport-premium';
UPDATE products SET image_url = 'https://placehold.co/400x400/1a1a2e/eee?text=Garden+of+Life+Sport' WHERE slug = 'garden-of-life-sport';
UPDATE products SET image_url = 'https://placehold.co/400x400/1a1a2e/eee?text=Premier+Protein' WHERE slug = 'premier-protein';

-- Pre-Workouts
UPDATE products SET image_url = 'https://placehold.co/400x400/2d1b4e/eee?text=C4+Original' WHERE slug = 'c4-original';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d1b4e/eee?text=Gorilla+Mode' WHERE slug = 'gorilla-mode';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d1b4e/eee?text=Ghost+Legend' WHERE slug = 'ghost-legend';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d1b4e/eee?text=Transparent+Labs+Bulk' WHERE slug = 'transparent-labs-bulk';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d1b4e/eee?text=Pre-Kaged+Elite' WHERE slug = 'pre-kaged-elite';

-- Creatine
UPDATE products SET image_url = 'https://placehold.co/400x400/0d3b4c/eee?text=Thorne+Creatine' WHERE slug = 'thorne-creatine';
UPDATE products SET image_url = 'https://placehold.co/400x400/0d3b4c/eee?text=TL+Creatine+HMB' WHERE slug = 'transparent-labs-creatine-hmb';
UPDATE products SET image_url = 'https://placehold.co/400x400/0d3b4c/eee?text=ON+Creatine' WHERE slug = 'optimum-nutrition-creatine';
UPDATE products SET image_url = 'https://placehold.co/400x400/0d3b4c/eee?text=Naked+Creatine' WHERE slug = 'naked-creatine';
UPDATE products SET image_url = 'https://placehold.co/400x400/0d3b4c/eee?text=Con-Cret+Creatine' WHERE slug = 'con-cret-creatine';

-- Nootropics
UPDATE products SET image_url = 'https://placehold.co/400x400/1e3a5f/eee?text=Alpha+Brain' WHERE slug = 'alpha-brain';
UPDATE products SET image_url = 'https://placehold.co/400x400/1e3a5f/eee?text=Mind+Lab+Pro' WHERE slug = 'mind-lab-pro';
UPDATE products SET image_url = 'https://placehold.co/400x400/1e3a5f/eee?text=Qualia+Mind' WHERE slug = 'qualia-mind';
UPDATE products SET image_url = 'https://placehold.co/400x400/1e3a5f/eee?text=NooCube' WHERE slug = 'noocube';
UPDATE products SET image_url = 'https://placehold.co/400x400/1e3a5f/eee?text=Hunter+Focus' WHERE slug = 'hunter-focus';
UPDATE products SET image_url = 'https://placehold.co/400x400/1e3a5f/eee?text=Performance+Lab+Mind' WHERE slug = 'performance-lab-mind';
UPDATE products SET image_url = 'https://placehold.co/400x400/1e3a5f/eee?text=Neuriva+Plus' WHERE slug = 'neuriva-plus';
UPDATE products SET image_url = 'https://placehold.co/400x400/1e3a5f/eee?text=Prevagen' WHERE slug = 'prevagen';
UPDATE products SET image_url = 'https://placehold.co/400x400/1e3a5f/eee?text=Genius+Mushrooms' WHERE slug = 'genius-mushrooms';
UPDATE products SET image_url = 'https://placehold.co/400x400/1e3a5f/eee?text=Lions+Mane' WHERE slug = 'real-mushrooms-lions-mane';

-- Fat Burners
UPDATE products SET image_url = 'https://placehold.co/400x400/4a1c1c/eee?text=PhenQ' WHERE slug = 'phenq';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a1c1c/eee?text=Instant+Knockout' WHERE slug = 'instant-knockout';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a1c1c/eee?text=Leanbean' WHERE slug = 'leanbean';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a1c1c/eee?text=Trimtone' WHERE slug = 'trimtone';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a1c1c/eee?text=Hydroxycut' WHERE slug = 'hydroxycut-hardcore';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a1c1c/eee?text=Burn+Lab+Pro' WHERE slug = 'burn-lab-pro';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a1c1c/eee?text=Burn-XT' WHERE slug = 'burn-xt';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a1c1c/eee?text=Animal+Cuts' WHERE slug = 'animal-cuts';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a1c1c/eee?text=Cellucor+SuperHD' WHERE slug = 'cellucor-superhd';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a1c1c/eee?text=TL+Fat+Burner' WHERE slug = 'transparent-labs-fat-burner';

-- Vitamins
UPDATE products SET image_url = 'https://placehold.co/400x400/2d4a1c/eee?text=Thorne+Basic+Nutrients' WHERE slug = 'thorne-basic-nutrients';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d4a1c/eee?text=Garden+of+Life+Men' WHERE slug = 'garden-of-life-vitamin-code-men';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d4a1c/eee?text=Ritual+Essential' WHERE slug = 'ritual-essential-men';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d4a1c/eee?text=Nature+Made+Multi' WHERE slug = 'nature-made-multi';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d4a1c/eee?text=Centrum+Silver' WHERE slug = 'centrum-silver';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d4a1c/eee?text=Life+Extension' WHERE slug = 'life-extension-two-per-day';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d4a1c/eee?text=MegaFood+Mens' WHERE slug = 'megafood-mens-one-daily';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d4a1c/eee?text=NOW+Adam' WHERE slug = 'now-adam';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d4a1c/eee?text=Kirkland+Daily' WHERE slug = 'kirkland-daily-multi';
UPDATE products SET image_url = 'https://placehold.co/400x400/2d4a1c/eee?text=AG1' WHERE slug = 'ag1-athletic-greens';

-- Sleep Aids
UPDATE products SET image_url = 'https://placehold.co/400x400/1c2d4a/eee?text=Olly+Sleep' WHERE slug = 'olly-sleep';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c2d4a/eee?text=Beam+Dream' WHERE slug = 'beam-dream-powder';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c2d4a/eee?text=Sleep+Breakthrough' WHERE slug = 'bioptimizers-sleep-breakthrough';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c2d4a/eee?text=Nature+Made+Melatonin' WHERE slug = 'nature-made-melatonin';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c2d4a/eee?text=Natrol+Melatonin' WHERE slug = 'natrol-melatonin';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c2d4a/eee?text=NOW+Valerian' WHERE slug = 'now-valerian-root';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c2d4a/eee?text=Swanson+Apigenin' WHERE slug = 'swanson-apigenin';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c2d4a/eee?text=Glycine' WHERE slug = 'bulk-supplements-glycine';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c2d4a/eee?text=Doctors+Best+Magnesium' WHERE slug = 'doctors-best-magnesium';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c2d4a/eee?text=NOW+Magtein' WHERE slug = 'now-magtein';

-- Gut Health
UPDATE products SET image_url = 'https://placehold.co/400x400/3d2d1c/eee?text=Seed+DS-01' WHERE slug = 'seed-ds-01';
UPDATE products SET image_url = 'https://placehold.co/400x400/3d2d1c/eee?text=Ritual+Synbiotic' WHERE slug = 'ritual-synbiotic-plus';
UPDATE products SET image_url = 'https://placehold.co/400x400/3d2d1c/eee?text=Raw+Probiotics' WHERE slug = 'garden-of-life-raw-probiotics';
UPDATE products SET image_url = 'https://placehold.co/400x400/3d2d1c/eee?text=Align+Probiotic' WHERE slug = 'align-probiotic';
UPDATE products SET image_url = 'https://placehold.co/400x400/3d2d1c/eee?text=Culturelle+Daily' WHERE slug = 'culturelle-daily';

-- Joint Health
UPDATE products SET image_url = 'https://placehold.co/400x400/4a3d1c/eee?text=Thorne+Glucosamine' WHERE slug = 'thorne-glucosamine-chondroitin';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a3d1c/eee?text=Move+Free' WHERE slug = 'move-free-advanced';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a3d1c/eee?text=Osteo+Bi-Flex' WHERE slug = 'osteo-bi-flex-triple';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a3d1c/eee?text=NOW+Hyaluronic' WHERE slug = 'now-hyaluronic-acid';
UPDATE products SET image_url = 'https://placehold.co/400x400/4a3d1c/eee?text=Raw+Calcium' WHERE slug = 'garden-of-life-raw-calcium';

-- Longevity
UPDATE products SET image_url = 'https://placehold.co/400x400/1c4a3d/eee?text=Tru+Niagen' WHERE slug = 'tru-niagen';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c4a3d/eee?text=Elysium+Basis' WHERE slug = 'elysium-basis';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c4a3d/eee?text=Resveratrol' WHERE slug = 'life-extension-resveratrol';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c4a3d/eee?text=Spermidine' WHERE slug = 'spermidinelife';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c4a3d/eee?text=Astaxanthin' WHERE slug = 'nutrex-hawaii-bioastin';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c4a3d/eee?text=Vital+Proteins' WHERE slug = 'vital-proteins-collagen';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c4a3d/eee?text=Qunol+CoQ10' WHERE slug = 'qunol-coq10';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c4a3d/eee?text=Nordic+Omega-3' WHERE slug = 'nordic-naturals-omega-3';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c4a3d/eee?text=Thorne+Quercetin' WHERE slug = 'thorne-quercetin';
UPDATE products SET image_url = 'https://placehold.co/400x400/1c4a3d/eee?text=Alpha+Lipoic+Acid' WHERE slug = 'doctors-best-alpha-lipoic';