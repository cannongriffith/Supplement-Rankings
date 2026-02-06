/*
  # Fix All Remaining Placeholder Images

  1. Changes
    - Updates all 23 remaining products that still have placeholder images
    - Uses correct slugs from database
    
  2. Products Updated
    - Align Probiotic
    - BiOptimizers Sleep Breakthrough
    - Cellucor SuperHD
    - Garden of Life Sport
    - Garden of Life Vitamin Code Men
    - Ghost Whey
    - Kirkland Daily Multi
    - Life Extension Two-Per-Day
    - Nature Made Multi
    - Nordic Naturals Omega-3
    - NOW Hyaluronic Acid
    - NOW Magtein
    - Real Mushrooms Lion's Mane
    - Ritual Synbiotic Plus
    - Seed DS-01
    - Thorne Creatine
    - Thorne Glucosamine Chondroitin
    - Thorne Quercetin
    - Transparent Labs Whey
    - Transparent Labs Bulk
    - Transparent Labs Creatine HMB
    - Transparent Labs Fat Burner
    - Vital Proteins Collagen
*/

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71HQ3hGRs7L._AC_SL1500_.jpg'
WHERE slug = 'align-probiotic';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61sHYUGFPDL._AC_SL1500_.jpg'
WHERE slug = 'bioptimizers-sleep-breakthrough';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71XtOHOqz6L._AC_SL1500_.jpg'
WHERE slug = 'cellucor-superhd';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol01992/y/19.jpg'
WHERE slug = 'garden-of-life-sport';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol11416/y/39.jpg'
WHERE slug = 'garden-of-life-vitamin-code-men';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61kz6RpGBOL._AC_SL1500_.jpg'
WHERE slug = 'ghost-whey';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/81L4FtJCqWL._AC_SL1500_.jpg'
WHERE slug = 'kirkland-daily-multi';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/lex/lex14877/y/31.jpg'
WHERE slug = 'life-extension-two-per-day';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71h7VTmO4bL._AC_SL1500_.jpg'
WHERE slug = 'nature-made-multi';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nna/nna01757/y/49.jpg'
WHERE slug = 'nordic-naturals-omega-3';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now03150/y/27.jpg'
WHERE slug = 'now-hyaluronic-acid';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now00068/y/37.jpg'
WHERE slug = 'now-magtein';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/rmm/rmm00104/y/31.jpg'
WHERE slug = 'real-mushrooms-lions-mane';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51oqfCwbx7L._AC_SL1500_.jpg'
WHERE slug = 'ritual-synbiotic-plus';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51y6MWAKhBL._AC_SL1500_.jpg'
WHERE slug = 'seed-ds-01';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/thr/thr00223/y/23.jpg'
WHERE slug = 'thorne-creatine';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/thr/thr00332/y/23.jpg'
WHERE slug = 'thorne-glucosamine-chondroitin';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/thr/thr00565/y/23.jpg'
WHERE slug = 'thorne-quercetin';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Kv8vNYs1L._AC_SL1500_.jpg'
WHERE slug = 'transparent-labs-whey';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71q8RGvFpOL._AC_SL1500_.jpg'
WHERE slug = 'transparent-labs-bulk';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71M1XKAJ8TL._AC_SL1500_.jpg'
WHERE slug = 'transparent-labs-creatine-hmb';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61ckO+h6HxL._AC_SL1200_.jpg'
WHERE slug = 'transparent-labs-fat-burner';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61QBbpPiSTL._AC_SL1500_.jpg'
WHERE slug = 'vital-proteins-collagen';