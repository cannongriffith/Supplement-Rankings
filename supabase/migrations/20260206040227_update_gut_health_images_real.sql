/*
  # Update Gut Health Product Images

  1. Changes
    - Updates image URLs for gut health/probiotic products with real product photos
    
  2. Products Updated
    - Align Probiotic Supplement
    - Ritual Synbiotic+
    - Seed DS-01 Daily Synbiotic
*/

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71HQ3hGRs7L._AC_SL1500_.jpg'
WHERE slug = 'probiotic-supplement';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51oqfCwbx7L._AC_SL1500_.jpg'
WHERE slug = 'synbiotic-plus';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51y6MWAKhBL._AC_SL1500_.jpg'
WHERE slug = 'ds-01-daily-synbiotic';