/*
  # Fix Joint & Bone Health Category Images

  Updates all joint and bone health product images from Amazon URLs to working CDN URLs.

  1. Products Updated (5 products)
    - Glucosamine & Chondroitin (Thorne)
    - Hyaluronic Acid 100mg (NOW Foods)
    - Move Free Advanced (Schiff)
    - mykind Organics Plant Calcium (Garden of Life)
    - Triple Strength (Osteo Bi-Flex)

  2. Image Sources
    - iHerb CDN for most products
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/tho/tho04050/y/12.jpg'
WHERE slug = 'thorne-glucosamine-chondroitin';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now03155/y/13.jpg'
WHERE slug = 'now-hyaluronic-acid';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/scf/scf90063/y/6.jpg'
WHERE slug = 'move-free-advanced';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol11649/y/12.jpg'
WHERE slug = 'garden-of-life-calcium';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/osb/osb00109/y/5.jpg'
WHERE slug = 'osteo-bi-flex-triple-strength';
