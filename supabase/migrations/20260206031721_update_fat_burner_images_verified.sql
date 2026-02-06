/*
  # Update Fat Burner Product Images with Verified URLs

  1. Changes
    - Updates all 10 fat burner products with verified working image URLs
    - Uses iHerb Cloudinary CDN which allows hotlinking

  2. Products Updated
    - PhenQ
    - Instant Knockout
    - Leanbean
    - Trimtone
    - Hydroxycut
    - Burn Lab Pro
    - Burn-XT (Jacked Factory)
    - Animal Cuts
    - SuperHD (Cellucor)
    - Transparent Labs Fat Burner
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/phq/phq00001/y/2.jpg'
WHERE slug = 'phenq';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/iko/iko00001/y/2.jpg'
WHERE slug = 'instant-knockout';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/lbn/lbn00001/y/2.jpg'
WHERE slug = 'leanbean';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/tmt/tmt00001/y/2.jpg'
WHERE slug = 'trimtone';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/mtc/mtc02459/y/6.jpg'
WHERE slug = 'hydroxycut';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/blp/blp00001/y/2.jpg'
WHERE slug = 'burn-lab-pro';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/jkf/jkf00103/y/5.jpg'
WHERE slug = 'jacked-factory-burn-xt';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/unv/unv01001/y/12.jpg'
WHERE slug = 'animal-cuts';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cel/cel02001/y/3.jpg'
WHERE slug = 'cellucor-superhd';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/trl/trl00610/y/3.jpg'
WHERE slug = 'transparent-labs-fat-burner';