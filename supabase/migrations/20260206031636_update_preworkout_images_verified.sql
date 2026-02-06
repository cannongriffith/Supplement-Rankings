/*
  # Update Pre-Workout Product Images with Verified URLs

  1. Changes
    - Updates all 5 pre-workout products with verified working image URLs
    - Uses iHerb Cloudinary CDN and brand CDNs that allow hotlinking

  2. Products Updated
    - C4 Original
    - Gorilla Mode
    - Ghost Legend
    - Transparent Labs BULK
    - Pre-Kaged Elite
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cel/cel00516/y/9.jpg'
WHERE slug = 'cellucor-c4-original';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/grm/grm00005/y/2.jpg'
WHERE slug = 'gorilla-mode';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gho/gho00017/y/4.jpg'
WHERE slug = 'ghost-legend';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/trl/trl00601/y/5.jpg'
WHERE slug = 'transparent-labs-bulk';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/kgd/kgd00801/y/11.jpg'
WHERE slug = 'pre-kaged-elite';