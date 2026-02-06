/*
  # Fix Gut Health & Probiotics Category Images

  Updates all gut health and probiotics product images from Amazon URLs to working CDN URLs.

  1. Products Updated (4 products)
    - Digestive Daily Probiotic (Culturelle)
    - Dr. Formulated Probiotics (Garden of Life)
    - Probiotic Supplement (Align)
    - Synbiotic+ (Ritual)

  2. Image Sources
    - iHerb CDN for most products
    - Official brand CDNs where available
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/clt/clt00301/y/7.jpg'
WHERE slug = 'culturelle-digestive-daily';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol11869/y/17.jpg'
WHERE slug = 'garden-of-life-probiotics';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/aln/aln00101/y/9.jpg'
WHERE slug = 'align-probiotic';

UPDATE products SET image_url = 'https://ritual.com/cdn/shop/files/Synbiotic_-Pouch-Front-Mint_1000x.png?v=1699477152'
WHERE slug = 'ritual-synbiotic-plus';
