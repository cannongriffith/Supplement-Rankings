/*
  # Update Protein Powder Product Images

  1. Changes
    - Updates image URLs for protein powder products with real product photos
    - Sources: iHerb Cloudinary CDN (reliable, publicly accessible)
    
  2. Products Updated
    - Dymatize ISO 100
    - Garden of Life Sport Organic Plant-Based
    - Ghost Whey Protein
    - Isopure Zero Carb
    - Naked Whey
    - Transparent Labs 100% Grass-Fed Whey
    - Vega Sport Premium
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/dym/dym00764/y/10.jpg'
WHERE slug = 'dymatize-iso-100';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol01992/y/19.jpg'
WHERE slug = 'sport-organic-plant-based';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61kz6RpGBOL._AC_SL1500_.jpg'
WHERE slug = 'ghost-whey-protein';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nbi/nbi04118/y/10.jpg'
WHERE slug = 'isopure-zero-carb';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61LpBxgCCeL._AC_SL1500_.jpg'
WHERE slug = 'naked-whey';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Kv8vNYs1L._AC_SL1500_.jpg'
WHERE slug = '100-grass-fed-whey';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/seq/seq04029/y/11.jpg'
WHERE slug = 'vega-sport-premium';