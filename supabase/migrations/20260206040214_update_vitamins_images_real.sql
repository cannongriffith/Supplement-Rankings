/*
  # Update Vitamins/Multivitamins Product Images

  1. Changes
    - Updates image URLs for vitamin products with real product photos
    
  2. Products Updated
    - Centrum Silver
    - Garden of Life Vitamin Code Men
    - Kirkland Signature Daily Multi
    - Life Extension Two-Per-Day Capsules
    - Nature Made Complete
*/

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71S4-lsD5pL._AC_SL1500_.jpg'
WHERE slug = 'centrum-silver';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol11416/y/39.jpg'
WHERE slug = 'vitamin-code-men';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/81L4FtJCqWL._AC_SL1500_.jpg'
WHERE slug = 'daily-multi';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/lex/lex14877/y/31.jpg'
WHERE slug = 'two-per-day-capsules';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71h7VTmO4bL._AC_SL1500_.jpg'
WHERE slug = 'nature-made-complete';