/*
  # Fix All Product Images with Unsplash

  Since iHerb Cloudinary URLs are blocked for hotlinking, 
  this migration uses high-quality Unsplash images organized by category.

  ## Categories:
  - Protein Powders: Fitness/workout themed images
  - Pre-Workouts: Energy/gym themed images  
  - Creatine: Strength/muscle themed images
  - Nootropics: Brain/focus themed images
  - Fat Burners: Weight loss themed images
  - Vitamins: Health/wellness themed images
  - Sleep Aids: Rest/sleep themed images
  - Gut Health: Wellness themed images
  - Joint Health: Movement themed images
  - Longevity: Vitality themed images

  All URLs are from Unsplash and allow hotlinking.
*/

-- PROTEIN POWDERS - Fitness themed images
UPDATE products SET image_url = 'https://images.unsplash.com/photo-1593095948071-474c5cc2989d?w=400&h=400&fit=crop' 
WHERE name = '100% Grass-Fed Whey';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1579722820308-d74e571900a9?w=400&h=400&fit=crop' 
WHERE name = 'Ghost Whey Protein';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1622467827417-bbe6e2a4d8b4?w=400&h=400&fit=crop' 
WHERE name = 'Naked Whey';

-- PRE-WORKOUTS - Energy themed images
UPDATE products SET image_url = 'https://images.unsplash.com/photo-1534438327276-14e5300c3a48?w=400&h=400&fit=crop' 
WHERE name = 'Ghost Legend';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1571019614242-c5c5dee9f50b?w=400&h=400&fit=crop' 
WHERE name = 'Gorilla Mode';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1581009146145-b5ef050c149a?w=400&h=400&fit=crop' 
WHERE name = 'BULK Pre-Workout';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?w=400&h=400&fit=crop' 
WHERE name = 'Pre-Kaged Elite';

-- CREATINE - Strength themed images
UPDATE products SET image_url = 'https://images.unsplash.com/photo-1583454110551-21f2fa2afe61?w=400&h=400&fit=crop' 
WHERE name = 'Creatine HMB';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1581009137042-c552e485697a?w=400&h=400&fit=crop' 
WHERE name = 'Naked Creatine';

-- NOOTROPICS - Brain/focus themed images
UPDATE products SET image_url = 'https://images.unsplash.com/photo-1559757175-5700dde675bc?w=400&h=400&fit=crop' 
WHERE name = 'Mind Lab Pro';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1507413245164-6160d8298b31?w=400&h=400&fit=crop' 
WHERE name = 'Hunter Focus';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1614935151651-0bea6508db6b?w=400&h=400&fit=crop' 
WHERE name = 'Neuriva Plus';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1617791160505-6f00504e3519?w=400&h=400&fit=crop' 
WHERE name = 'NooCube';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1530026186672-2cd00ffc50fe?w=400&h=400&fit=crop' 
WHERE name = 'Qualia Mind';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?w=400&h=400&fit=crop' 
WHERE name = 'Prevagen';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1628771065518-0d82f1938462?w=400&h=400&fit=crop' 
WHERE name = 'Performance Lab Mind';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1576671081837-49000212a370?w=400&h=400&fit=crop' 
WHERE name = 'Genius Mushrooms';

-- FAT BURNERS - Weight loss themed images
UPDATE products SET image_url = 'https://images.unsplash.com/photo-1538805060514-97d9cc17730c?w=400&h=400&fit=crop' 
WHERE name = 'Animal Cuts';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1594381898411-846e7d193883?w=400&h=400&fit=crop' 
WHERE name = 'Burn Lab Pro';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1518611012118-696072aa579a?w=400&h=400&fit=crop' 
WHERE name = 'PhysiqueSeries Fat Burner';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1476480862126-209bfaa8edc8?w=400&h=400&fit=crop' 
WHERE name = 'Instant Knockout';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400&h=400&fit=crop' 
WHERE name = 'Leanbean';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1535914254981-b5012eebbd15?w=400&h=400&fit=crop' 
WHERE name = 'PhenQ';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1490645935967-10de6ba17061?w=400&h=400&fit=crop' 
WHERE name = 'Trimtone';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=400&h=400&fit=crop' 
WHERE name = 'SuperHD';

-- VITAMINS - Health themed images
UPDATE products SET image_url = 'https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?w=400&h=400&fit=crop' 
WHERE name = 'Centrum Silver';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1550572017-edd951aa8f72?w=400&h=400&fit=crop' 
WHERE name = 'Nature Made Complete';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1505576399279-565b52d4ac71?w=400&h=400&fit=crop' 
WHERE name = 'Daily Multi' AND brand = 'Kirkland Signature';

-- COLLAGEN/LONGEVITY - Vitality themed images
UPDATE products SET image_url = 'https://images.unsplash.com/photo-1616394584738-fc6e612e71b9?w=400&h=400&fit=crop' 
WHERE name = 'Collagen Peptides';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1571019613914-85f342c6a11e?w=400&h=400&fit=crop' 
WHERE name = 'Tru Niagen';

-- SLEEP AIDS - Rest themed images
UPDATE products SET image_url = 'https://images.unsplash.com/photo-1541781774459-bb2af2f05b55?w=400&h=400&fit=crop' 
WHERE name = 'Sleep Breakthrough';

-- GUT HEALTH - Wellness themed images
UPDATE products SET image_url = 'https://images.unsplash.com/photo-1498837167922-ddd27525d352?w=400&h=400&fit=crop' 
WHERE name = 'DS-01 Daily Synbiotic';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1540420773420-3366772f4999?w=400&h=400&fit=crop' 
WHERE name = 'Probiotic Supplement' AND brand = 'Align';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=400&h=400&fit=crop' 
WHERE name = 'Synbiotic+';

-- JOINT HEALTH - Movement themed images
UPDATE products SET image_url = 'https://images.unsplash.com/photo-1571019613576-2b22c76fd955?w=400&h=400&fit=crop' 
WHERE name = 'Move Free Advanced';
