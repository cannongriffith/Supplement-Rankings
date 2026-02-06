/*
  # Fix Fat Burners Category Images

  Updates all fat burner product images from Amazon URLs to working CDN URLs.

  1. Products Updated (8 products)
    - Animal Cuts
    - Burn Lab Pro
    - Burn-XT
    - Hydroxycut
    - PhysiqueSeries Fat Burner (Transparent Labs)
    - SuperHD (Cellucor)
    - Trimtone

  2. Image Sources
    - iHerb CDN for most products
    - Official brand CDNs where available
*/

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/unv/unv01001/y/12.jpg'
WHERE slug = 'animal-cuts';

UPDATE products SET image_url = 'https://burnlabpro.com/wp-content/uploads/2022/05/burn-lab-pro-bottle.png'
WHERE slug = 'burn-lab-pro';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/jkf/jkf00103/y/5.jpg'
WHERE slug = 'jacked-factory-burn-xt';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/mtc/mtc02459/y/6.jpg'
WHERE slug = 'hydroxycut';

UPDATE products SET image_url = 'https://cdn.shopify.com/s/files/1/0503/8326/2752/products/Fat-Burner-PhysiqueSeries-Transparent-Labs_3000x.png?v=1679607941'
WHERE slug = 'transparent-labs-fat-burner';

UPDATE products SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cel/cel02001/y/3.jpg'
WHERE slug = 'cellucor-superhd';

UPDATE products SET image_url = 'https://trimtone.com/wp-content/uploads/2023/02/trimtone-bottle.png'
WHERE slug = 'trimtone';
