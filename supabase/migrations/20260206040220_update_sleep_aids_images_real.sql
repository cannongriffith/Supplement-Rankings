/*
  # Update Sleep Aids Product Images

  1. Changes
    - Updates image URLs for sleep aid products with real product photos
    
  2. Products Updated
    - BiOptimizers Sleep Breakthrough
    - NOW Foods Magnesium L-Threonate
*/

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61sHYUGFPDL._AC_SL1500_.jpg'
WHERE slug = 'sleep-breakthrough';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now00068/y/37.jpg'
WHERE slug = 'magnesium-l-threonate';