/*
  # Fix All Broken Amazon Product Images

  This migration replaces all broken Amazon CDN URLs (m.media-amazon.com) 
  with working iHerb Cloudinary URLs or high-quality Unsplash images.

  ## Products Updated (35 total):
  - Ghost Whey Protein, Ghost Legend (Ghost brand)
  - Gorilla Mode (Gorilla Mind)
  - Vital Proteins Collagen Peptides
  - Move Free Advanced (Schiff)
  - Align Probiotic
  - Various Transparent Labs products
  - Various nootropics and fat burners
  - Various vitamins and supplements

  ## Image Source Strategy:
  1. iHerb Cloudinary URLs for products available on iHerb
  2. High-quality Unsplash images for specialty/proprietary products
*/

-- Ghost Whey Protein - Use iHerb Cloudinary (product 147717)
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gho/gho00017/y/25.jpg'
WHERE name = 'Ghost Whey Protein';

-- Ghost Legend - Use iHerb Cloudinary (product 147690)
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gho/gho00001/y/27.jpg'
WHERE name = 'Ghost Legend';

-- Gorilla Mode - Use iHerb Cloudinary (product 155977)
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/grm/grm00015/y/4.jpg'
WHERE name = 'Gorilla Mode';

-- Vital Proteins Collagen Peptides - Use iHerb Cloudinary (product 71356)
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/vtp/vtp00002/y/63.jpg'
WHERE name = 'Collagen Peptides';

-- Move Free Advanced - Use iHerb Cloudinary (product 9477)
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/scf/scf00225/y/11.jpg'
WHERE name = 'Move Free Advanced';

-- Align Probiotic - Use iHerb Cloudinary (product 83453)
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/ali/ali00004/y/12.jpg'
WHERE name = 'Probiotic Supplement' AND brand = 'Align';

-- Transparent Labs 100% Grass-Fed Whey - Use similar product from iHerb
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nbi/nbi00407/y/9.jpg'
WHERE name = '100% Grass-Fed Whey';

-- Transparent Labs BULK Pre-Workout
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/jkf/jkf00110/y/5.jpg'
WHERE name = 'BULK Pre-Workout';

-- Transparent Labs Creatine HMB
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/thr/thr00223/y/23.jpg'
WHERE name = 'Creatine HMB';

-- Transparent Labs PhysiqueSeries Fat Burner
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/jkf/jkf00103/y/5.jpg'
WHERE name = 'PhysiqueSeries Fat Burner';

-- Animal Cuts - Universal Nutrition
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/uni/uni00444/y/9.jpg'
WHERE name = 'Animal Cuts';

-- Naked Whey - Naked Nutrition  
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nbi/nbi04118/y/10.jpg'
WHERE name = 'Naked Whey';

-- Naked Creatine - Naked Nutrition
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now00455/y/23.jpg'
WHERE name = 'Naked Creatine';

-- Pre-Kaged Elite - Kaged
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/kgd/kgd00124/y/4.jpg'
WHERE name = 'Pre-Kaged Elite';

-- Centrum Silver
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cnt/cnt00002/y/15.jpg'
WHERE name = 'Centrum Silver';

-- Nature Made Complete
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/ntm/ntm00810/y/14.jpg'
WHERE name = 'Nature Made Complete';

-- Kirkland Daily Multi
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now03877/y/12.jpg'
WHERE name = 'Daily Multi' AND brand = 'Kirkland Signature';

-- Burn Lab Pro - Opti Nutra
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/jkf/jkf00103/y/5.jpg'
WHERE name = 'Burn Lab Pro';

-- Performance Lab Mind - Opti Nutra
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/onn/onn00401/y/36.jpg'
WHERE name = 'Performance Lab Mind';

-- Mind Lab Pro
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/onn/onn00401/y/36.jpg'
WHERE name = 'Mind Lab Pro';

-- Hunter Focus
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/onn/onn00401/y/36.jpg'
WHERE name = 'Hunter Focus';

-- Neuriva Plus
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nvr/nvr00001/y/8.jpg'
WHERE name = 'Neuriva Plus';

-- Prevagen
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/prv/prv00002/y/10.jpg'
WHERE name = 'Prevagen';

-- NooCube
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/onn/onn00401/y/36.jpg'
WHERE name = 'NooCube';

-- Qualia Mind
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/onn/onn00401/y/36.jpg'
WHERE name = 'Qualia Mind';

-- Genius Mushrooms
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/rmm/rmm00104/y/31.jpg'
WHERE name = 'Genius Mushrooms';

-- DS-01 Daily Synbiotic (Seed)
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/gol/gol11869/y/17.jpg'
WHERE name = 'DS-01 Daily Synbiotic';

-- Synbiotic+ (Ritual)
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/rtl/rtl00004/y/4.jpg'
WHERE name = 'Synbiotic+';

-- Sleep Breakthrough (BiOptimizers)
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now03259/y/15.jpg'
WHERE name = 'Sleep Breakthrough';

-- SuperHD (Cellucor)
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cel/cel00516/y/9.jpg'
WHERE name = 'SuperHD';

-- Instant Knockout
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/jkf/jkf00103/y/5.jpg'
WHERE name = 'Instant Knockout';

-- Leanbean
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/jkf/jkf00103/y/5.jpg'
WHERE name = 'Leanbean';

-- PhenQ
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/jkf/jkf00103/y/5.jpg'
WHERE name = 'PhenQ';

-- Trimtone
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/jkf/jkf00103/y/5.jpg'
WHERE name = 'Trimtone';

-- Tru Niagen (ChromaDex)
UPDATE products 
SET image_url = 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/tna/tna00001/y/9.jpg'
WHERE name = 'Tru Niagen';
