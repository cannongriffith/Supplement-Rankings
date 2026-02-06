/*
  # Fix Sleep Aids Category Images

  Updates all sleep aids product images from Amazon URLs to working CDN URLs.

  1. Products Updated (11 products)
    - Apigenin 50mg (Nootropics Depot)
    - Dream Powder (Beam)
    - Glycine Powder (Nutricost)
    - Magnesium Glycinate (Pure Encapsulations)
    - Magnesium L-Threonate (NOW Foods)
    - Melatonin 5mg (NOW Foods)
    - Natrol Melatonin Sleep Support
    - OLLY Sleep Gummies
    - Sleep Breakthrough (BiOptimizers)
    - Valerian Root Extract

  2. Image Sources
    - iHerb CDN for most products
    - Official brand CDNs where available
*/

UPDATE products SET image_url = 'https://nootropicsdepot.com/images/products/secondary/apigenin-50mg-capsules-1.jpg'
WHERE slug = 'nootropics-depot-apigenin';

UPDATE products SET image_url = 'https://cdn.shopify.com/s/files/1/0265/9152/3652/products/DREAM_POWDER_CINNAMON_COCOA_2_1000x.png?v=1676061108'
WHERE slug = 'beam-dream';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nut/nut03254/y/7.jpg'
WHERE slug = 'glycine-powder';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/pur/pur00870/y/19.jpg'
WHERE slug = 'magnesium-glycinate';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now01325/y/15.jpg'
WHERE slug = 'now-magtein';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now03259/y/15.jpg'
WHERE slug = 'melatonin-5mg';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nat/nat04121/y/9.jpg'
WHERE slug = 'nature-sleep-support';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/oly/oly00003/y/11.jpg'
WHERE slug = 'olly-sleep-gummies';

UPDATE products SET image_url = 'https://bioptimizers.com/cdn/shop/products/Sleep_Breakthrough_Blue_Berry_Dreams-Front_1000x.png?v=1680201312'
WHERE slug = 'bioptimizers-sleep-breakthrough';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now04766/y/11.jpg'
WHERE slug = 'valerian-root';
