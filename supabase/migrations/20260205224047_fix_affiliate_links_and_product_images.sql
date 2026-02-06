/*
  # Fix Affiliate Links and Product Images

  1. Changes
    - Updates all 30 products with working Amazon search URLs (replacing broken placeholder links)
    - Updates all 30 products with valid Pexels stock images (replacing broken/generic Unsplash URLs)
    - Each product now links to a real Amazon search for that product name
    - Images are curated per-category: supplement capsules, protein powder, vitamins, sleep, brain/focus, fitness

  2. Affected Tables
    - `products` - affiliate_link and image_url columns updated for all rows

  3. Important Notes
    - Amazon links use the search format so they always resolve to relevant results
    - Pexels images are free to use and hotlink-friendly
    - Each product within a category receives a unique image to avoid repetition
*/

-- =====================
-- NOOTROPICS (category: c59aa68a-ca79-416a-bc07-470b339a07ac)
-- =====================

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Mind+Lab+Pro+nootropic',
  image_url = 'https://images.pexels.com/photos/3683098/pexels-photo-3683098.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'mind-lab-pro';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Onnit+Alpha+Brain+capsules',
  image_url = 'https://images.pexels.com/photos/3683074/pexels-photo-3683074.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'alpha-brain';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=NooCube+brain+supplement',
  image_url = 'https://images.pexels.com/photos/3683056/pexels-photo-3683056.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'noocube';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Performance+Lab+Mind+nootropic',
  image_url = 'https://images.pexels.com/photos/7108344/pexels-photo-7108344.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'performance-lab-mind';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Qualia+Mind+supplement',
  image_url = 'https://images.pexels.com/photos/5699519/pexels-photo-5699519.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'qualia-mind';

-- =====================
-- PROTEIN POWDER (category: 25195943-0811-47f0-ba92-50d103c363d7)
-- =====================

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Optimum+Nutrition+Gold+Standard+Whey+Protein',
  image_url = 'https://images.pexels.com/photos/3756520/pexels-photo-3756520.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'on-gold-standard';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Dymatize+ISO+100+protein+powder',
  image_url = 'https://images.pexels.com/photos/4397840/pexels-photo-4397840.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'dymatize-iso-100';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Isopure+Zero+Carb+protein+powder',
  image_url = 'https://images.pexels.com/photos/3758149/pexels-photo-3758149.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'isopure-zero-carb';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Orgain+Organic+Protein+Powder',
  image_url = 'https://images.pexels.com/photos/4397841/pexels-photo-4397841.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'orgain-organic';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Premier+Protein+Shake',
  image_url = 'https://images.pexels.com/photos/3757370/pexels-photo-3757370.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'premier-shake';

-- =====================
-- FAT BURNERS (category: 60bc620a-e02a-4f8f-aba0-e925330378ef)
-- =====================

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=PhenQ+fat+burner+supplement',
  image_url = 'https://images.pexels.com/photos/4498294/pexels-photo-4498294.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'phenq';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Hydroxycut+weight+loss+supplement',
  image_url = 'https://images.pexels.com/photos/4498606/pexels-photo-4498606.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'hydroxycut';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Instant+Knockout+fat+burner',
  image_url = 'https://images.pexels.com/photos/4498362/pexels-photo-4498362.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'instant-knockout';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Leanbean+fat+burner+women',
  image_url = 'https://images.pexels.com/photos/6551174/pexels-photo-6551174.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'leanbean';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Trimtone+fat+burner',
  image_url = 'https://images.pexels.com/photos/6551133/pexels-photo-6551133.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'trimtone';

-- =====================
-- VITAMINS & MINERALS (category: 72878b6e-5ff7-48f6-a68a-41f55cb50611)
-- =====================

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Thorne+Multivitamin+Elite',
  image_url = 'https://images.pexels.com/photos/8015763/pexels-photo-8015763.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'thorne-multi';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Centrum+Silver+multivitamin',
  image_url = 'https://images.pexels.com/photos/7468582/pexels-photo-7468582.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'centrum-silver';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Nature+Made+Complete+multivitamin',
  image_url = 'https://images.pexels.com/photos/14744699/pexels-photo-14744699.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'nature-made-multi';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=MegaFood+One+Daily+multivitamin',
  image_url = 'https://images.pexels.com/photos/13779111/pexels-photo-13779111.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'megafood-daily';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Ritual+Essential+for+Men+multivitamin',
  image_url = 'https://images.pexels.com/photos/13779114/pexels-photo-13779114.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'ritual-men';

-- =====================
-- LONGEVITY & ANTI-AGING (category: b4111ed1-490c-4446-a9a1-6e869828522b)
-- =====================

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Elysium+Basis+NAD+supplement',
  image_url = 'https://images.pexels.com/photos/15897780/pexels-photo-15897780.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'basis-nad-booster';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Qunol+CoQ10+100mg+supplement',
  image_url = 'https://images.pexels.com/photos/17820733/pexels-photo-17820733.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'coq10-ubiquinol';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Life+Extension+Resveratrol+supplement',
  image_url = 'https://images.pexels.com/photos/17820735/pexels-photo-17820735.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'resveratrol-ultra';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=NOW+Foods+Alpha+Lipoic+Acid+supplement',
  image_url = 'https://images.pexels.com/photos/15038477/pexels-photo-15038477.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'alpha-lipoic-acid';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Spermidine+supplement',
  image_url = 'https://images.pexels.com/photos/18664857/pexels-photo-18664857.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'spermidine';

-- =====================
-- SLEEP AIDS (category: b87c2721-02df-4e49-9929-5abcda05a714)
-- =====================

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Pure+Encapsulations+Magnesium+Glycinate',
  image_url = 'https://images.pexels.com/photos/6753354/pexels-photo-6753354.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'magnesium-glycinate';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=NOW+Foods+Melatonin+5mg',
  image_url = 'https://images.pexels.com/photos/3771069/pexels-photo-3771069.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'melatonin-5mg';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Valerian+Root+Extract+supplement',
  image_url = 'https://images.pexels.com/photos/6541507/pexels-photo-6541507.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'valerian-root';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=Nutricost+Glycine+Powder',
  image_url = 'https://images.pexels.com/photos/3771115/pexels-photo-3771115.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'glycine-powder';

UPDATE products SET
  affiliate_link = 'https://www.amazon.com/s?k=sleep+support+supplement+formula',
  image_url = 'https://images.pexels.com/photos/6541508/pexels-photo-6541508.jpeg?auto=compress&cs=tinysrgb&w=600'
WHERE slug = 'nature-sleep-support';
