/*
  # Update Fat Burner Product Images

  1. Changes
    - Updates image URLs for fat burner products with real product photos
    
  2. Products Updated
    - Cellucor SuperHD
    - Instant Knockout
    - Leanbean
    - Burn Lab Pro
    - Transparent Labs PhysiqueSeries Fat Burner
    - Trimtone
    - Animal Cuts
    - PhenQ
*/

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71XtOHOqz6L._AC_SL1500_.jpg'
WHERE slug = 'superhd';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61s9F0mFPLL._AC_SL1500_.jpg'
WHERE slug = 'instant-knockout';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61QqKdQOLUL._AC_SL1500_.jpg'
WHERE slug = 'leanbean';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61pVvlf3KBL._AC_SL1500_.jpg'
WHERE slug = 'burn-lab-pro';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61ckO+h6HxL._AC_SL1200_.jpg'
WHERE slug = 'physiqueseries-fat-burner';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51bxBEKNGKL._AC_SL1200_.jpg'
WHERE slug = 'trimtone';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71RjRoFI6nL._AC_SL1500_.jpg'
WHERE slug = 'animal-cuts';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51pBRaO3QUL._AC_SL1000_.jpg'
WHERE slug = 'phenq';