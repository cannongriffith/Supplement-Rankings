/*
  # Create Product Images Storage Bucket

  1. Storage Setup
    - Creates a public bucket called "product-images" for storing product photos
    - Enables public read access so images can be displayed on the website
    
  2. Security
    - Public SELECT (read) access for all users to view images
    - INSERT/UPDATE/DELETE restricted to authenticated users only
    
  3. Notes
    - This bucket will store all supplement product images
    - Public URLs will be used in the products table image_url field
*/

INSERT INTO storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
VALUES (
  'product-images',
  'product-images',
  true,
  5242880,
  ARRAY['image/jpeg', 'image/png', 'image/webp', 'image/gif']
)
ON CONFLICT (id) DO NOTHING;

CREATE POLICY "Public read access for product images"
ON storage.objects FOR SELECT
TO public
USING (bucket_id = 'product-images');

CREATE POLICY "Authenticated users can upload product images"
ON storage.objects FOR INSERT
TO authenticated
WITH CHECK (bucket_id = 'product-images');

CREATE POLICY "Authenticated users can update product images"
ON storage.objects FOR UPDATE
TO authenticated
USING (bucket_id = 'product-images')
WITH CHECK (bucket_id = 'product-images');

CREATE POLICY "Authenticated users can delete product images"
ON storage.objects FOR DELETE
TO authenticated
USING (bucket_id = 'product-images');