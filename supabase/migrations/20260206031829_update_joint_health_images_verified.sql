/*
  # Update Joint & Bone Health Product Images with Verified URLs

  1. Changes
    - Updates all 5 joint/bone health products with verified working image URLs
    - Uses iHerb Cloudinary CDN which allows hotlinking

  2. Products Updated
    - Thorne Glucosamine & Chondroitin
    - Move Free Advanced
    - Osteo Bi-Flex Triple Strength
    - NOW Hyaluronic Acid
    - Garden of Life mykind Organics Plant Calcium
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/tho/tho04050/y/12.jpg'
WHERE slug = 'thorne-glucosamine-chondroitin';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/scf/scf90063/y/6.jpg'
WHERE slug = 'move-free-advanced';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/osb/osb00109/y/5.jpg'
WHERE slug = 'osteo-bi-flex-triple-strength';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now03155/y/13.jpg'
WHERE slug = 'now-hyaluronic-acid';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol11649/y/12.jpg'
WHERE slug = 'garden-of-life-calcium';