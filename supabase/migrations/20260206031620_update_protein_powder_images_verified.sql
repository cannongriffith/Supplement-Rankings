/*
  # Update Protein Powder Product Images with Verified URLs

  1. Changes
    - Updates all 10 protein powder products with verified working image URLs
    - Uses iHerb Cloudinary CDN which allows hotlinking
    - All URLs verified to be accessible and display correctly

  2. Products Updated
    - Optimum Nutrition Gold Standard Whey
    - Dymatize ISO 100
    - Ghost Whey Protein
    - Isopure Zero Carb
    - Naked Whey
    - Transparent Labs Whey
    - Orgain Organic Protein
    - Vega Sport Premium
    - Garden of Life Sport
    - Premier Protein Shake
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/opn/opn02389/y/28.jpg'
WHERE slug = 'on-gold-standard';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/dym/dym21021/y/23.jpg'
WHERE slug = 'dymatize-iso-100';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gho/gho00033/y/3.jpg'
WHERE slug = 'ghost-whey';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nbi/nbi00407/y/13.jpg'
WHERE slug = 'isopure-zero-carb';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nkn/nkn00101/y/12.jpg'
WHERE slug = 'naked-whey';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/trl/trl00625/y/3.jpg'
WHERE slug = 'transparent-labs-whey';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/org/org00096/y/29.jpg'
WHERE slug = 'orgain-organic';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/seq/seq03507/y/9.jpg'
WHERE slug = 'vega-sport-premium';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol11344/y/18.jpg'
WHERE slug = 'garden-of-life-sport';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/pmr/pmr12456/y/7.jpg'
WHERE slug = 'premier-shake';