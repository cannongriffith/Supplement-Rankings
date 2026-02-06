/*
  # Fix Vitamins & Minerals Category Images

  Updates all vitamins and minerals product images from Amazon URLs to working CDN URLs.

  1. Products Updated (10 products)
    - Adam Superior Men's Multi (NOW Foods)
    - Centrum Silver
    - Daily Multi (Kirkland Signature)
    - MegaFood One Daily
    - Nature Made Complete
    - Ritual Essential for Men
    - Thorne Multivitamin Elite
    - Two-Per-Day Capsules (Life Extension)
    - Vitamin Code Men (Garden of Life)

  2. Image Sources
    - iHerb CDN for most products
    - Official brand CDNs where available
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now03877/y/12.jpg'
WHERE slug = 'now-adam-mens-multi';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cen/cen27568/y/3.jpg'
WHERE slug = 'centrum-silver';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/kir/kir00001/y/2.jpg'
WHERE slug = 'kirkland-daily-multi';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/mgf/mgf10213/y/10.jpg'
WHERE slug = 'megafood-daily';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nmd/nmd47015/y/7.jpg'
WHERE slug = 'nature-made-multi';

UPDATE products SET image_url = 'https://ritual.com/cdn/shop/files/Essential-for-Men-Multivitamin-18_-Bottle-Front_1000x.png?v=1698263141'
WHERE slug = 'ritual-men';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/tho/tho04001/y/18.jpg'
WHERE slug = 'thorne-multi';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/lex/lex10146/y/19.jpg'
WHERE slug = 'life-extension-two-per-day';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol11367/y/15.jpg'
WHERE slug = 'garden-of-life-vitamin-code-men';
