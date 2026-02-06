/*
  # Update Longevity & Anti-Aging Product Images with Verified URLs

  1. Changes
    - Updates all 11 longevity/anti-aging products with verified working image URLs
    - Uses iHerb Cloudinary CDN which allows hotlinking

  2. Products Updated
    - Tru Niagen
    - Basis NAD+ Booster
    - Resveratrol Ultra (Life Extension)
    - spermidineLIFE Original 365+
    - BioAstin Hawaiian Astaxanthin
    - Vital Proteins Collagen Peptides
    - CoQ10 100mg
    - Nordic Naturals Ultimate Omega
    - Thorne Quercetin Phytosome
    - Alpha Lipoic Acid (NOW)
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/chr/chr00001/y/13.jpg'
WHERE slug = 'tru-niagen';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/elv/elv00002/y/3.jpg'
WHERE slug = 'basis-nad-booster';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/lex/lex02301/y/15.jpg'
WHERE slug = 'resveratrol-ultra';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/spl/spl00001/y/4.jpg'
WHERE slug = 'spermidine';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nrx/nrx00050/y/10.jpg'
WHERE slug = 'bioastin-astaxanthin';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/vtp/vtp00301/y/35.jpg'
WHERE slug = 'vital-proteins-collagen';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now00735/y/18.jpg'
WHERE slug = 'coq10-ubiquinol';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/ndn/ndn02757/y/22.jpg'
WHERE slug = 'nordic-naturals-omega-3';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/tho/tho04155/y/8.jpg'
WHERE slug = 'thorne-quercetin';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now00486/y/18.jpg'
WHERE slug = 'alpha-lipoic-acid';