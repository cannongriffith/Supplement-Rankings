/*
  # Update Joint Health and Longevity Product Images

  1. Changes
    - Updates image URLs for joint health and longevity products with real product photos
    
  2. Products Updated
    Joint Health:
    - NOW Foods Hyaluronic Acid 100mg
    - Thorne Glucosamine & Chondroitin
    - Move Free Advanced
    
    Longevity:
    - ChromaDex Tru Niagen
    - Nordic Naturals Ultimate Omega
    - Thorne Quercetin Phytosome
    - Vital Proteins Collagen Peptides
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now03150/y/27.jpg'
WHERE slug = 'hyaluronic-acid-100mg';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/thr/thr00332/y/23.jpg'
WHERE slug = 'glucosamine-chondroitin';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71UQkKkDZRL._AC_SL1500_.jpg'
WHERE slug = 'move-free-advanced';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51QkPQOqKcL._AC_SL1200_.jpg'
WHERE slug = 'tru-niagen';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nna/nna01757/y/49.jpg'
WHERE slug = 'ultimate-omega';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/thr/thr00565/y/23.jpg'
WHERE slug = 'quercetin-phytosome';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61QBbpPiSTL._AC_SL1500_.jpg'
WHERE slug = 'collagen-peptides';