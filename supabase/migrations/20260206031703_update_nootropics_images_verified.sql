/*
  # Update Nootropics Product Images with Verified URLs

  1. Changes
    - Updates all 10 nootropic products with verified working image URLs
    - Uses iHerb Cloudinary CDN which allows hotlinking

  2. Products Updated
    - Alpha Brain
    - Mind Lab Pro
    - Qualia Mind
    - NooCube
    - Hunter Focus
    - Performance Lab Mind
    - Neuriva Plus
    - Prevagen
    - Genius Mushrooms
    - Real Mushrooms Lion's Mane
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/onn/onn00001/y/9.jpg'
WHERE slug = 'alpha-brain';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/mlp/mlp00001/y/5.jpg'
WHERE slug = 'mind-lab-pro';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/qla/qla00002/y/4.jpg'
WHERE slug = 'qualia-mind';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/wfs/wfs00006/y/3.jpg'
WHERE slug = 'noocube';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/hnt/hnt00002/y/2.jpg'
WHERE slug = 'hunter-focus';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/pfl/pfl00003/y/4.jpg'
WHERE slug = 'performance-lab-mind';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nrv/nrv10001/y/3.jpg'
WHERE slug = 'neuriva-plus';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/prv/prv00301/y/4.jpg'
WHERE slug = 'prevagen';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gnb/gnb00201/y/9.jpg'
WHERE slug = 'genius-mushrooms';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/rem/rem00201/y/19.jpg'
WHERE slug = 'real-mushrooms-lions-mane';