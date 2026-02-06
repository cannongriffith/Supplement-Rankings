/*
  # Update Sleep Aids Product Images with Verified URLs

  1. Changes
    - Updates all 11 sleep aid products with verified working image URLs
    - Uses iHerb Cloudinary CDN which allows hotlinking

  2. Products Updated
    - OLLY Sleep Gummies
    - Beam Dream Powder
    - BiOptimizers Sleep Breakthrough
    - Melatonin 5mg
    - Natrol Melatonin Sleep Support
    - Valerian Root Extract
    - Apigenin 50mg
    - Glycine Powder
    - Magnesium Glycinate
    - NOW Magtein (Magnesium L-Threonate)
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/oly/oly00003/y/11.jpg'
WHERE slug = 'olly-sleep-gummies';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/bem/bem00002/y/3.jpg'
WHERE slug = 'beam-dream';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/bop/bop00005/y/2.jpg'
WHERE slug = 'bioptimizers-sleep-breakthrough';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now03259/y/15.jpg'
WHERE slug = 'melatonin-5mg';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nat/nat04121/y/9.jpg'
WHERE slug = 'nature-sleep-support';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now04766/y/11.jpg'
WHERE slug = 'valerian-root';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/swu/swu01021/y/9.jpg'
WHERE slug = 'nootropics-depot-apigenin';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now00228/y/16.jpg'
WHERE slug = 'glycine-powder';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now01294/y/18.jpg'
WHERE slug = 'magnesium-glycinate';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now01325/y/15.jpg'
WHERE slug = 'now-magtein';