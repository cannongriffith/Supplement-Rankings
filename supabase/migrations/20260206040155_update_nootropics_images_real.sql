/*
  # Update Nootropics Product Images

  1. Changes
    - Updates image URLs for nootropics/cognitive products with real product photos
    
  2. Products Updated
    - Mind Lab Pro
    - Qualia Mind
    - Alpha Brain
    - Performance Lab Mind
    - Prevagen
    - Lion's Mane Mushroom
    - Neuriva Plus
    - Hunter Focus
    - Genius Mushrooms
    - NooCube
*/

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51kcEAvbAoL._AC_SL1200_.jpg'
WHERE slug = 'mind-lab-pro';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61v7lGxjVcL._AC_SL1500_.jpg'
WHERE slug = 'qualia-mind';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/onn/onn00401/y/36.jpg'
WHERE slug = 'alpha-brain';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61VhPcEsQJL._AC_SL1500_.jpg'
WHERE slug = 'performance-lab-mind';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61QKPzKXIhL._AC_SL1500_.jpg'
WHERE slug = 'prevagen';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/rmm/rmm00104/y/31.jpg'
WHERE slug = 'lions-mane-mushroom';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61+8AK-JmZL._AC_SL1500_.jpg'
WHERE slug = 'neuriva-plus';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71cMVXXpV8L._AC_SL1500_.jpg'
WHERE slug = 'hunter-focus';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Y2z1e87qL._AC_SL1500_.jpg'
WHERE slug = 'genius-mushrooms';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61Zr5aQ6xfL._AC_SL1500_.jpg'
WHERE slug = 'noocube';