/*
  # Update Pre-Workout Product Images

  1. Changes
    - Updates image URLs for pre-workout products with real product photos
    
  2. Products Updated
    - Ghost Legend
    - Gorilla Mode
    - Pre-Kaged Elite
    - Transparent Labs BULK Pre-Workout
*/

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71t8TrPAZNL._AC_SL1500_.jpg'
WHERE slug = 'ghost-legend';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71YHlHKWkFL._AC_SL1500_.jpg'
WHERE slug = 'gorilla-mode';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71-RYvSVb0L._AC_SL1500_.jpg'
WHERE slug = 'pre-kaged-elite';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71q8RGvFpOL._AC_SL1500_.jpg'
WHERE slug = 'bulk-pre-workout';