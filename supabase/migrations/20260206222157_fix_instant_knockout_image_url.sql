/*
  # Fix Instant Knockout Product Image URL

  1. Changes
    - Updates Instant Knockout's image_url to a verified working Amazon CDN URL
    - The previous image ID (61KVCD0Qq3L) is no longer valid on Amazon's CDN

  2. Important Notes
    - New image URL sourced from the current Amazon product listing (ASIN: B0916798ND)
    - Uses standard Amazon CDN thumbnail format for consistency
*/

UPDATE products
SET image_url = 'https://m.media-amazon.com/images/I/61UkzJZHAFL._AC_SY300_SX300_.jpg'
WHERE name = 'Instant Knockout';