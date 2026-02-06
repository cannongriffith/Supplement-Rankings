/*
  # Update Creatine Product Images

  1. Changes
    - Updates image URLs for creatine products with real product photos
    
  2. Products Updated
    - Naked Creatine
    - Thorne Creatine Monohydrate
    - Transparent Labs Creatine HMB
*/

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61Iy4LiogGL._AC_SL1500_.jpg'
WHERE slug = 'naked-creatine';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/thr/thr00223/y/23.jpg'
WHERE slug = 'creatine-monohydrate';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71M1XKAJ8TL._AC_SL1500_.jpg'
WHERE slug = 'creatine-hmb';