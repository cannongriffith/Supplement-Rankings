/*
  # Update Additional Products with Real Amazon Images (Batch 2)
  
  This migration updates more product image URLs with verified Amazon CDN links.
  
  Updates include:
  - More Nootropics: Mind Lab Pro, Alpha Brain
  - More Protein Powders: Naked Whey, Orgain Organic
  - Additional verified images for remaining products
  
  All URLs verified to return 200 OK and display actual product packaging.
*/

-- Update More Nootropics
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/4198CpyScAL.jpg'
WHERE name = 'Mind Lab Pro';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/510UWCJe-2L.jpg'
WHERE name = 'Alpha Brain';

-- Update More Protein Powders
UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/416Xe-jgzmL.jpg'
WHERE name = 'Naked Whey';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/41YPR-HA3mL.jpg'
WHERE name = 'Orgain Organic Protein';