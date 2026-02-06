/*
  # Fix Longevity & Anti-Aging Category Images

  Updates all longevity and anti-aging product images from Amazon URLs to working CDN URLs.

  1. Products Updated (10 products)
    - Alpha Lipoic Acid (NOW Foods)
    - Basis NAD+ Booster (Elysium)
    - BioAstin Hawaiian Astaxanthin (Nutrex Hawaii)
    - Collagen Peptides (Vital Proteins)
    - CoQ10 100mg (Qunol)
    - Quercetin Phytosome (Thorne)
    - Resveratrol Ultra (Life Extension)
    - spermidineLIFE Original 365+ (Longevity Labs)
    - Tru Niagen (ChromaDex)
    - Ultimate Omega (Nordic Naturals)

  2. Image Sources
    - iHerb CDN for most products
    - Official brand CDNs where available
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now00486/y/18.jpg'
WHERE slug = 'alpha-lipoic-acid';

UPDATE products SET image_url = 'https://cdn.shopify.com/s/files/1/0282/9459/7411/products/Basis_30ct_Bottle-Front_1000x.png?v=1680201405'
WHERE slug = 'basis-nad-booster';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nrx/nrx00050/y/10.jpg'
WHERE slug = 'bioastin-astaxanthin';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/vtp/vtp00301/y/35.jpg'
WHERE slug = 'vital-proteins-collagen';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/qnl/qnl00121/y/8.jpg'
WHERE slug = 'coq10-ubiquinol';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/tho/tho04155/y/8.jpg'
WHERE slug = 'thorne-quercetin';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/lex/lex02301/y/15.jpg'
WHERE slug = 'resveratrol-ultra';

UPDATE products SET image_url = 'https://cdn.shopify.com/s/files/1/0349/4692/6820/products/spermidinelife-original-365-bottle_1000x.png?v=1680201318'
WHERE slug = 'spermidine';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/chr/chr00001/y/13.jpg'
WHERE slug = 'tru-niagen';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/ndn/ndn02757/y/22.jpg'
WHERE slug = 'nordic-naturals-omega-3';
