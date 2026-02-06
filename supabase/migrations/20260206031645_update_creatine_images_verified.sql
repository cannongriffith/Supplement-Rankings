/*
  # Update Creatine Product Images with Verified URLs

  1. Changes
    - Updates all 5 creatine products with verified working image URLs
    - Uses iHerb Cloudinary CDN which allows hotlinking

  2. Products Updated
    - Thorne Creatine Monohydrate
    - Transparent Labs Creatine HMB
    - ON Micronized Creatine
    - Naked Creatine
    - CON-CRET Creatine HCl
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/tho/tho04508/y/15.jpg'
WHERE slug = 'thorne-creatine';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/trl/trl00616/y/4.jpg'
WHERE slug = 'transparent-labs-creatine-hmb';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/opn/opn02803/y/14.jpg'
WHERE slug = 'on-micronized-creatine';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nkn/nkn00301/y/6.jpg'
WHERE slug = 'naked-creatine';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/pmc/pmc00200/y/4.jpg'
WHERE slug = 'con-cret-creatine-hcl';