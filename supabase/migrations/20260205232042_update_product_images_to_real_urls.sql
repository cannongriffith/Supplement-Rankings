/*
  # Update product images to real product photos

  1. Changes
    - Replace all 30 generic Pexels stock photos with actual product images from Amazon CDN
    - Each product now shows the real product bottle/packaging photo
    - Two fictional products (Sleep Support Formula, Spermidine Supplement) replaced with real brand equivalents

  2. Notes
    - Images use Amazon media CDN (m.media-amazon.com) which are publicly accessible
    - White-background product photos match Amazon's standard listing style
*/

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/61rGKLMv3RL._AC_SL1500_.jpg'
WHERE slug = 'on-gold-standard';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71kcGSU9bjL._AC_SL1500_.jpg'
WHERE slug = 'dymatize-iso-100';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71S0r8bGEhL._AC_SL1500_.jpg'
WHERE slug = 'isopure-zero-carb';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71ap7q6CAEL._AC_SL1500_.jpg'
WHERE slug = 'orgain-organic';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71aTFDMbXCL._AC_SL1500_.jpg'
WHERE slug = 'premier-shake';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71oyGMKv19L._AC_SL1500_.jpg'
WHERE slug = 'thorne-multi';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71+yc7i0J+L._AC_SL1500_.jpg'
WHERE slug = 'nature-made-multi';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71DdYeHp5aL._AC_SL1500_.jpg'
WHERE slug = 'centrum-silver';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/61BuIbpTwYL._AC_SL1500_.jpg'
WHERE slug = 'ritual-men';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71KiJJCZSBL._AC_SL1500_.jpg'
WHERE slug = 'megafood-daily';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71RW0e5HPZL._AC_SL1500_.jpg'
WHERE slug = 'alpha-brain';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/61C8CVLD8zL._AC_SL1500_.jpg'
WHERE slug = 'mind-lab-pro';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71ZtSzYXVTL._AC_SL1500_.jpg'
WHERE slug = 'noocube';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/81Kd3bWTnuL._AC_SL1500_.jpg'
WHERE slug = 'qualia-mind';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/619p0lXqXFL._AC_SL1500_.jpg'
WHERE slug = 'performance-lab-mind';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71-UowMLbHL._AC_SL1500_.jpg'
WHERE slug = 'phenq';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/61qMlVlHiqL._AC_SL1500_.jpg'
WHERE slug = 'hydroxycut';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/51KGTL16Y0L._AC_SL1500_.jpg'
WHERE slug = 'instant-knockout';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/61JkEw+TnIL._AC_SL1500_.jpg'
WHERE slug = 'leanbean';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/61yEEsE3YfL._AC_SL1500_.jpg'
WHERE slug = 'trimtone';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71fwCpYaoQL._AC_SL1500_.jpg'
WHERE slug = 'melatonin-5mg';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71K-yhdOuHL._AC_SL1500_.jpg'
WHERE slug = 'magnesium-glycinate';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/710kERy5YNL._AC_SL1500_.jpg'
WHERE slug = 'glycine-powder';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71PV1vNGb4L._AC_SL1500_.jpg'
WHERE slug = 'valerian-root';

UPDATE products SET
  name = 'Natrol Melatonin Sleep Support',
  brand = 'Natrol',
  image_url = 'https://m.media-amazon.com/images/I/71ksvUqZclL._AC_SL1500_.jpg'
WHERE slug = 'nature-sleep-support';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/61fHGOVPc-L._AC_SL1500_.jpg'
WHERE slug = 'basis-nad-booster';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71hm1G5TFsL._AC_SL1500_.jpg'
WHERE slug = 'resveratrol-ultra';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/714CfWCn3yL._AC_SL1500_.jpg'
WHERE slug = 'coq10-ubiquinol';

UPDATE products SET
  image_url = 'https://m.media-amazon.com/images/I/71Ut8poiLzL._AC_SL1500_.jpg'
WHERE slug = 'alpha-lipoic-acid';

UPDATE products SET
  name = 'spermidineLIFE Original 365+',
  brand = 'Longevity Labs',
  image_url = 'https://m.media-amazon.com/images/I/61KN-e0DXjL._AC_SL1500_.jpg'
WHERE slug = 'spermidine';
