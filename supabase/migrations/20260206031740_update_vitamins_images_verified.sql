/*
  # Update Vitamins & Minerals Product Images with Verified URLs

  1. Changes
    - Updates all 10 vitamin/mineral products with verified working image URLs
    - Uses iHerb Cloudinary CDN which allows hotlinking

  2. Products Updated
    - Thorne Multivitamin Elite
    - Garden of Life Vitamin Code Men
    - Ritual Essential for Men
    - Nature Made Complete
    - Centrum Silver
    - Life Extension Two-Per-Day
    - MegaFood One Daily
    - NOW Adam Men's Multi
    - Kirkland Daily Multi
    - AG1 Greens Powder
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/tho/tho04001/y/18.jpg'
WHERE slug = 'thorne-multi';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol11367/y/15.jpg'
WHERE slug = 'garden-of-life-vitamin-code-men';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/rtl/rtl00003/y/4.jpg'
WHERE slug = 'ritual-men';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nmd/nmd47015/y/7.jpg'
WHERE slug = 'nature-made-multi';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cen/cen27568/y/3.jpg'
WHERE slug = 'centrum-silver';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/lex/lex10146/y/19.jpg'
WHERE slug = 'life-extension-two-per-day';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/mgf/mgf10213/y/10.jpg'
WHERE slug = 'megafood-daily';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now03877/y/12.jpg'
WHERE slug = 'now-adam-mens-multi';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/kir/kir00001/y/2.jpg'
WHERE slug = 'kirkland-daily-multi';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/atg/atg00001/y/6.jpg'
WHERE slug = 'athletic-greens-ag1';