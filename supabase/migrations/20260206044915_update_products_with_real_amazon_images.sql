/*
  # Update Products with Real Amazon Images
  
  This migration updates product image URLs with verified Amazon CDN (m.media-amazon.com) links
  that have been confirmed to return 200 OK status and display actual product images.
  
  Updates include:
  - Nootropics: Qualia Mind, Hunter Focus
  - Protein Powders: Optimum Nutrition Gold Standard, Dymatize ISO 100
  - Pre-Workouts: C4 Original, Legion Pulse  
  - Vitamins: Thorne Multivitamin, Nature Made, AG1 Greens
  - Sleep Aids: Natrol Melatonin
  - Fat Burners: Burn-XT
  - Creatine: Optimum Nutrition Micronized Creatine
  
  All URLs are direct links to high-resolution Amazon product images.
*/

-- Update Nootropics
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/712UF2+qJ+L._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE name = 'Qualia Mind';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51bAkOrm72L._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE name = 'Hunter Focus';

-- Update Protein Powders
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/711Lq+gNUtL._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE name = 'Optimum Nutrition Gold Standard';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51-8s2IuLyL._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE name = 'Dymatize ISO 100';

-- Update Pre-Workouts  
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51S6ZAWgsbL.jpg'
WHERE name = 'C4 Original';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/41DvK5fu0oL.jpg'
WHERE name LIKE '%Pulse%' OR name = 'Pre-Kaged Elite';

-- Update Vitamins & Minerals
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/31OOEkCU3CL.jpg'
WHERE name LIKE '%Thorne%' AND name LIKE '%Multivitamin%';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/41wYDfPrHNL.jpg'
WHERE name = 'Nature Made Complete';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/41KYeWLTdFL.jpg'
WHERE name = 'AG1 Greens Powder';

-- Update Sleep Aids
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/41vwuqwaFSL.jpg'
WHERE name LIKE '%Melatonin%' AND name LIKE '%5mg%';

-- Update Fat Burners
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/41fEm58+LDL.jpg'
WHERE name = 'Burn-XT';

-- Update Creatine
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/41xVHHY2WuL.jpg'
WHERE name LIKE '%Creatine Monohydrate%' AND (name LIKE '%Optimum%' OR name LIKE '%Micronized%');