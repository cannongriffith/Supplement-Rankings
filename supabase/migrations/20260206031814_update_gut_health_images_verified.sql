/*
  # Update Gut Health & Probiotics Product Images with Verified URLs

  1. Changes
    - Updates all 5 gut health/probiotic products with verified working image URLs
    - Uses iHerb Cloudinary CDN which allows hotlinking

  2. Products Updated
    - Seed DS-01 Daily Synbiotic
    - Ritual Synbiotic+
    - Garden of Life Dr. Formulated Probiotics
    - Align Probiotic
    - Culturelle Digestive Daily
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/sed/sed00001/y/3.jpg'
WHERE slug = 'seed-ds-01';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/rtl/rtl00005/y/3.jpg'
WHERE slug = 'ritual-synbiotic-plus';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol11869/y/17.jpg'
WHERE slug = 'garden-of-life-probiotics';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/aln/aln00101/y/9.jpg'
WHERE slug = 'align-probiotic';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/clt/clt00301/y/7.jpg'
WHERE slug = 'culturelle-digestive-daily';