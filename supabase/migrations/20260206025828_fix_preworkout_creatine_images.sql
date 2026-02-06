/*
  # Fix Pre-Workout and Creatine Category Images

  Updates all pre-workout and creatine product images from Amazon URLs to working CDN URLs.

  1. Pre-Workout Products Updated (3 products)
    - Ghost Legend
    - Gorilla Mode
    - Pre-Kaged Elite

  2. Creatine Products Updated (3 products)
    - Micronized Creatine Powder (Optimum Nutrition)
    - Naked Creatine
    - Patented Creatine HCl (CON-CRET)

  3. Image Sources
    - iHerb CDN for most products
    - Official brand CDNs where available
*/

UPDATE products SET image_url = 'https://www.ghostlifestyle.com/cdn/shop/products/GHOST-LEGEND-SOUR-WATERMELON-Front_2000x.png?v=1677693209'
WHERE slug = 'ghost-legend';

UPDATE products SET image_url = 'https://gorillamind.com/cdn/shop/products/GM-Mojo-Mojito-Single-Front_900x.png?v=1674055825'
WHERE slug = 'gorilla-mode';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/kgd/kgd00801/y/11.jpg'
WHERE slug = 'pre-kaged-elite';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/opn/opn02803/y/14.jpg'
WHERE slug = 'on-micronized-creatine';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nkn/nkn00301/y/6.jpg'
WHERE slug = 'naked-creatine';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/pmc/pmc00200/y/4.jpg'
WHERE slug = 'con-cret-creatine-hcl';
