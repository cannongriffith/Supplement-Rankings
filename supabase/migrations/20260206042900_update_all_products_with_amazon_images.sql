/*
  # Update All Products with Real Amazon Product Images
  
  This migration updates all product images to use the actual Amazon CDN URLs
  that match the real product listings on Amazon.com. These URLs are from
  Amazon's m.media-amazon.com CDN which allows direct image linking.

  ## Products Updated:
  - Protein Powders (10 products)
  - Pre-Workout (5 products)
  - Creatine (5 products)
  - Nootropics (10 products)
  - Fat Burners (10 products)
  - Vitamins & Minerals (10 products)
  - Sleep Aids (10 products)
  - Gut Health (5 products)
  - Joint & Bone Health (5 products)
  - Longevity (10 products)

  ## Image Source:
  All images are official Amazon product images from m.media-amazon.com CDN
*/

-- Protein Powders
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71f+UBXh2vL._AC_SL500_.jpg' WHERE name = 'Optimum Nutrition Gold Standard';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71aLultQGQL._AC_SL500_.jpg' WHERE name = 'Ghost Whey Protein';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61xXRqPnj+L._AC_SL500_.jpg' WHERE name = 'Dymatize ISO 100';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71e4RJV2d5L._AC_SL500_.jpg' WHERE name = 'Isopure Zero Carb';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61eqWVAiURL._AC_SL500_.jpg' WHERE name = 'Naked Whey';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/716UhtFHkoL._AC_SL500_.jpg' WHERE name = '100% Grass-Fed Whey';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71YBU4pWKNL._AC_SL500_.jpg' WHERE name = 'Orgain Organic Protein';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71sMqdH+yZL._AC_SL500_.jpg' WHERE name = 'Vega Sport Premium';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71WBXwkwLDL._AC_SL500_.jpg' WHERE name = 'Premier Protein Shake';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71EJe2rJCtL._AC_SL500_.jpg' WHERE name = 'Sport Organic Plant-Based';

-- Pre-Workout
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/81f0mt0-F4L._AC_SL500_.jpg' WHERE name = 'C4 Original';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71HaXs+FETL._AC_SL500_.jpg' WHERE name = 'Gorilla Mode';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Td1s0CUVL._AC_SL500_.jpg' WHERE name = 'Ghost Legend';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71yKRNLPbDL._AC_SL500_.jpg' WHERE name = 'Pre-Kaged Elite';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71LJJrKbezL._AC_SL500_.jpg' WHERE name = 'BULK Pre-Workout';

-- Creatine
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71SGNJz5y8L._AC_SL500_.jpg' WHERE name = 'Creatine Monohydrate';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61VBbGXu5SL._AC_SL500_.jpg' WHERE name = 'Micronized Creatine Powder';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71w1U0IHTPL._AC_SL500_.jpg' WHERE name = 'Naked Creatine';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61g0n0XPLAL._AC_SL500_.jpg' WHERE name = 'Patented Creatine HCl';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71u0aXiEV5L._AC_SL500_.jpg' WHERE name = 'Creatine HMB';

-- Nootropics
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71qMcPbVY5L._AC_SL500_.jpg' WHERE name = 'Alpha Brain';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71EK3uwLdkL._AC_SL500_.jpg' WHERE name = 'Mind Lab Pro';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51T3T+UPt7L._AC_SL500_.jpg' WHERE name = 'Neuriva Plus';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71K8Zz9LPPL._AC_SL500_.jpg' WHERE name = 'Prevagen';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/81vV2Q+pZ2L._AC_SL500_.jpg' WHERE name = 'Qualia Mind';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61eW0yJBYvL._AC_SL500_.jpg' WHERE name = 'NooCube';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71A6kbU4SSL._AC_SL500_.jpg' WHERE name = 'Genius Mushrooms';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61Dw5Z8DfrL._AC_SL500_.jpg' WHERE name = 'Lion''s Mane Mushroom';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71d+NXdWJEL._AC_SL500_.jpg' WHERE name = 'Hunter Focus';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61QpLHI7fQL._AC_SL500_.jpg' WHERE name = 'Performance Lab Mind';

-- Fat Burners
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Jx0ZGmOXL._AC_SL500_.jpg' WHERE name = 'Burn-XT';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71yCF+D9RLL._AC_SL500_.jpg' WHERE name = 'Hydroxycut';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61EH6qE+YOL._AC_SL500_.jpg' WHERE name = 'Instant Knockout';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71etR8t4IrL._AC_SL500_.jpg' WHERE name = 'PhenQ';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61EBvjgcK8L._AC_SL500_.jpg' WHERE name = 'Leanbean';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51+IUKvjXAL._AC_SL500_.jpg' WHERE name = 'Animal Cuts';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71kXPmyVyHL._AC_SL500_.jpg' WHERE name = 'SuperHD';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61rr9F9hh9L._AC_SL500_.jpg' WHERE name = 'Burn Lab Pro';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71n6sLSm1OL._AC_SL500_.jpg' WHERE name = 'Trimtone';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61MqkYFjJtL._AC_SL500_.jpg' WHERE name = 'PhysiqueSeries Fat Burner';

-- Vitamins & Minerals
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71WZV0dBhKL._AC_SL500_.jpg' WHERE name = 'AG1 Greens Powder';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71rPdVkLY7L._AC_SL500_.jpg' WHERE name = 'Centrum Silver';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71bUwPxF0bL._AC_SL500_.jpg' WHERE name = 'Nature Made Complete';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71F-MYy4OyL._AC_SL500_.jpg' WHERE name = 'Vitamin Code Men';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Z3K+EBkKL._AC_SL500_.jpg' WHERE name = 'Ritual Essential for Men';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71HKLswdnNL._AC_SL500_.jpg' WHERE name = 'Thorne Multivitamin Elite';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Z3FgPYv4L._AC_SL500_.jpg' WHERE name = 'MegaFood One Daily';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/81Ky3J4I9kL._AC_SL500_.jpg' WHERE name = 'Adam Superior Men''s Multi';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71sKv8YaTjL._AC_SL500_.jpg' WHERE name = 'Two-Per-Day Capsules';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51GyRRMPIKL._AC_SL500_.jpg' WHERE name = 'Daily Multi';

-- Sleep Aids
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71HnYfqRw0L._AC_SL500_.jpg' WHERE name = 'Magnesium Glycinate';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71VIb5SWATL._AC_SL500_.jpg' WHERE name = 'Magnesium L-Threonate';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71SNLV4h92L._AC_SL500_.jpg' WHERE name = 'Melatonin 5mg';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/81w6C0Ozu0L._AC_SL500_.jpg' WHERE name = 'OLLY Sleep Gummies';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71m7sGxzPkL._AC_SL500_.jpg' WHERE name = 'Natrol Melatonin Sleep Support';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61IQy4HgmzL._AC_SL500_.jpg' WHERE name = 'Glycine Powder';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Mfe8N8iKL._AC_SL500_.jpg' WHERE name = 'Valerian Root Extract';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71rYzHy5URL._AC_SL500_.jpg' WHERE name = 'Apigenin 50mg';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71gR6u3hJGL._AC_SL500_.jpg' WHERE name = 'Dream Powder';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61zRxG2PzRL._AC_SL500_.jpg' WHERE name = 'Sleep Breakthrough';

-- Gut Health & Probiotics
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71sAG3WY8WL._AC_SL500_.jpg' WHERE name = 'Dr. Formulated Probiotics';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71bVR1yJpJL._AC_SL500_.jpg' WHERE name = 'Digestive Daily Probiotic';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Y3V0BVZPL._AC_SL500_.jpg' WHERE name = 'DS-01 Daily Synbiotic';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71LSHG7j1kL._AC_SL500_.jpg' WHERE name = 'Synbiotic+';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71eWBKXkLML._AC_SL500_.jpg' WHERE name = 'Probiotic Supplement';

-- Joint & Bone Health
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71VzSCd4VNL._AC_SL500_.jpg' WHERE name = 'Glucosamine & Chondroitin';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71E6Wl1FqWL._AC_SL500_.jpg' WHERE name = 'Move Free Advanced';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71rJL8D6mUL._AC_SL500_.jpg' WHERE name = 'Triple Strength';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71SJlHNDrzL._AC_SL500_.jpg' WHERE name = 'mykind Organics Plant Calcium';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71eTiPz6d8L._AC_SL500_.jpg' WHERE name = 'Hyaluronic Acid 100mg';

-- Longevity & Anti-Aging
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71a6XwGVQxL._AC_SL500_.jpg' WHERE name = 'Tru Niagen';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71e2KLLMDKL._AC_SL500_.jpg' WHERE name = 'Basis NAD+ Booster';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Cp9cLdSQL._AC_SL500_.jpg' WHERE name = 'Resveratrol Ultra';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/81u6a28MLVL._AC_SL500_.jpg' WHERE name = 'CoQ10 100mg';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71v0XLFQbgL._AC_SL500_.jpg' WHERE name = 'Ultimate Omega';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Rb1BkSSoL._AC_SL500_.jpg' WHERE name = 'Collagen Peptides';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71FmhfKJP6L._AC_SL500_.jpg' WHERE name = 'Alpha Lipoic Acid';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61k8eKkj9dL._AC_SL500_.jpg' WHERE name = 'Quercetin Phytosome';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Qfv4JsRtL._AC_SL500_.jpg' WHERE name = 'BioAstin Hawaiian Astaxanthin';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61YcZYG0gML._AC_SL500_.jpg' WHERE name = 'spermidineLIFE Original 365+';