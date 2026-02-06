/*
  # Fix Protein Powder Category Images

  Updates all protein powder product images from Amazon URLs to iHerb CDN URLs
  which allow external embedding.

  1. Products Updated (10 products)
    - Optimum Nutrition Gold Standard
    - Transparent Labs 100% Grass-Fed Whey
    - Naked Whey
    - Garden of Life Sport Organic
    - Ghost Whey Protein
    - Orgain Organic Protein
    - Premier Protein Shake
    - Dymatize ISO 100
    - Isopure Zero Carb
    - Vega Sport Premium

  2. Image Sources
    - iHerb CDN (cloudinary) for most products
    - Official brand CDNs where available
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/opn/opn02389/y/28.jpg'
WHERE slug = 'on-gold-standard';

UPDATE products SET image_url = 'https://cdn.shopify.com/s/files/1/0503/8326/2752/products/100-Grass-Fed-Whey-Protein-Isolate-Transparent-Labs_3000x.png?v=1679608089'
WHERE slug = 'transparent-labs-whey';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nkn/nkn00101/y/12.jpg'
WHERE slug = 'naked-whey';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol11344/y/18.jpg'
WHERE slug = 'garden-of-life-sport';

UPDATE products SET image_url = 'https://www.ghostlifestyle.com/cdn/shop/products/GHOST-WHEY-CEREAL-MILK-Front_900x.png?v=1677693161'
WHERE slug = 'ghost-whey';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/org/org00096/y/29.jpg'
WHERE slug = 'orgain-organic';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/pmr/pmr12456/y/7.jpg'
WHERE slug = 'premier-shake';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/dym/dym21021/y/23.jpg'
WHERE slug = 'dymatize-iso-100';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nbi/nbi00407/y/13.jpg'
WHERE slug = 'isopure-zero-carb';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/seq/seq03507/y/9.jpg'
WHERE slug = 'vega-sport-premium';
