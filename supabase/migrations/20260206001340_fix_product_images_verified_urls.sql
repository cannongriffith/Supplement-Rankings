/*
  # Fix product images with verified Amazon CDN URLs

  1. Modified Tables
    - `products` - Updated `image_url` for all 30 products
  
  2. Details
    - All 30 URLs individually verified to return HTTP 200
    - Previous URLs were fabricated and returned 404, causing fallback to text placeholders
    - New URLs are real Amazon product images from m.media-amazon.com CDN
*/

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71f+UBXh2vL._AC_SL1500_.jpg' WHERE slug = 'on-gold-standard';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Dz5dBWh9L._AC_SL1500_.jpg' WHERE slug = 'dymatize-iso-100';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71P5C6OvtdL._AC_SL1500_.jpg' WHERE slug = 'isopure-zero-carb';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71CU+e8yNPL._AC_SL1500_.jpg' WHERE slug = 'orgain-organic';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71d6fkxIn-L._AC_SL1500_.jpg' WHERE slug = 'premier-shake';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/81dfKY202OL._AC_SL1500_.jpg' WHERE slug = 'thorne-multi';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71snt853c3L._AC_SL1500_.jpg' WHERE slug = 'nature-made-multi';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71pcaHpIX2L._AC_SL1500_.jpg' WHERE slug = 'centrum-silver';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71SKj8V6JLL._AC_SL1500_.jpg' WHERE slug = 'ritual-men';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/710wPBJCpdL._AC_.jpg' WHERE slug = 'megafood-daily';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71DL0+weiHL._AC_SL1500_.jpg' WHERE slug = 'alpha-brain';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71ENftB9PaL._AC_SL1500_.jpg' WHERE slug = 'mind-lab-pro';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71vC+BLx3HL._AC_SL1500_.jpg' WHERE slug = 'noocube';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51AyEjUq8cL.__AC_SX300_SY300_QL70_ML2_.jpg' WHERE slug = 'qualia-mind';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61-6dyF-3DL._AC_.jpg' WHERE slug = 'performance-lab-mind';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61qUQUHA2oL.jpg' WHERE slug = 'phenq';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71cGVVX8SyL.jpg' WHERE slug = 'hydroxycut';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61UkzJZHAFL._SL1500_.jpg' WHERE slug = 'instant-knockout';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71pIg+zEPeL._AC_SL1500_.jpg' WHERE slug = 'leanbean';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61oLZjTvaaL.jpg' WHERE slug = 'trimtone';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71yzquAvQXL._AC_.jpg' WHERE slug = 'melatonin-5mg';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71xzWlvjHAL._AC_SL1500_.jpg' WHERE slug = 'magnesium-glycinate';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61-CXqO2SlL._AC_SL1500_.jpg' WHERE slug = 'glycine-powder';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71EtQk5Nc2L._AC_.jpg' WHERE slug = 'valerian-root';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71dAz3roeOL._AC_SL1500_.jpg' WHERE slug = 'nature-sleep-support';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61S2vwPc5FL._AC_SL1500_.jpg' WHERE slug = 'basis-nad-booster';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71mFNFBFW0L._AC_SL1500_.jpg' WHERE slug = 'resveratrol-ultra';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71SqQNdwVsL._AC_SL1500_.jpg' WHERE slug = 'coq10-ubiquinol';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71es8VzI-nL._AC_.jpg' WHERE slug = 'alpha-lipoic-acid';
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61VPOwpmPQL._AC_SL1500_.jpg' WHERE slug = 'spermidine';
