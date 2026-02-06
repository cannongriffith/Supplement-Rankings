/*
  # Fix Nootropics Category Images

  Updates all nootropics product images from Amazon URLs to working CDN URLs.

  1. Products Updated (7 products)
    - Genius Mushrooms
    - Hunter Focus
    - Lion's Mane Mushroom (Real Mushrooms)
    - Neuriva Plus
    - NooCube
    - Performance Lab Mind
    - Prevagen

  2. Image Sources
    - iHerb CDN for most products
    - Official brand CDNs where available
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gnb/gnb00201/y/9.jpg'
WHERE slug = 'genius-mushrooms';

UPDATE products SET image_url = 'https://hunterfocus.com/wp-content/uploads/2022/09/hunter-focus-bottle-front.png'
WHERE slug = 'hunter-focus';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/rem/rem00201/y/19.jpg'
WHERE slug = 'real-mushrooms-lions-mane';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nrv/nrv10001/y/3.jpg'
WHERE slug = 'neuriva-plus';

UPDATE products SET image_url = 'https://noocube.com/wp-content/uploads/2023/01/noocube-bottle.png'
WHERE slug = 'noocube';

UPDATE products SET image_url = 'https://www.performancelab.com/cdn/shop/products/PL-Mind-90ct-Front_1000x.png?v=1680715025'
WHERE slug = 'performance-lab-mind';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/prv/prv00301/y/4.jpg'
WHERE slug = 'prevagen';
