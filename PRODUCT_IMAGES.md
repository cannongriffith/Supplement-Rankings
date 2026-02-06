# Product Images Guide

## Current Status

The application currently uses Amazon product image URLs, which are blocked by Amazon's CORS policy. A temporary CORS proxy solution has been implemented to attempt loading these images, but this is **not a permanent solution**.

## The Problem

Amazon blocks direct hotlinking/embedding of their product images from external websites. When an image fails to load:
1. The app first attempts to load the original Amazon URL
2. If that fails, it tries loading through a CORS proxy service
3. If that also fails, it shows a grey placeholder with the product name

## Permanent Solution: Source Real Product Images

To properly fix this issue, you need to obtain actual product images and host them properly. Here are your options:

### Option 1: Use Supabase Storage (Recommended)

Your project already has a Supabase Storage bucket configured. Here's how to use it:

1. **Obtain Product Images**
   - Visit manufacturer/brand official websites
   - Download high-quality product images (minimum 600x600px)
   - Save images with clear naming: `{product-slug}.jpg` or `{product-slug}.png`

2. **Upload to Supabase Storage**
   - Go to your Supabase Dashboard
   - Navigate to Storage > product-images bucket
   - Upload your product images
   - Copy the public URL for each image

3. **Update Database**
   Create a migration to update image URLs:
   ```sql
   -- Example: Update a single product
   UPDATE products
   SET image_url = 'https://your-project.supabase.co/storage/v1/object/public/product-images/product-name.jpg'
   WHERE slug = 'product-slug';
   ```

### Option 2: Use Alternative Retailers

Some retailers allow image hotlinking. You can source images from:
- iHerb
- Vitamin Shoppe
- GNC
- Manufacturer official sites

**Important:** Always verify the retailer's terms of service allow hotlinking.

### Option 3: Product Image APIs

Consider using supplement product databases or APIs:
- Supplement Label Database APIs
- Nutritionix API
- Open Food Facts (for some supplements)

## Bulk Update Script

Here's a template for bulk updating product images:

```sql
-- Create a migration file: supabase/migrations/[timestamp]_update_product_images.sql

/*
  # Update Product Images

  1. Updates
    - Replace all product image URLs with properly hosted images
*/

-- Example batch update for Protein Powder category
UPDATE products
SET image_url = CASE slug
  WHEN 'optimum-nutrition-gold-standard' THEN 'YOUR_NEW_IMAGE_URL_1'
  WHEN 'transparent-labs-grass-fed-whey' THEN 'YOUR_NEW_IMAGE_URL_2'
  -- Add more products...
  ELSE image_url
END
WHERE category_id = (SELECT id FROM categories WHERE slug = 'protein-powder');

-- Repeat for other categories
```

## Testing Images

Before updating the database, verify each image URL:
1. Open the URL in a browser
2. Ensure the image loads correctly
3. Check that it's the correct product
4. Verify the URL is stable (won't change/expire)

## Technical Implementation

The codebase includes robust image loading with fallbacks:

- **`useProductImage` hook**: Handles image loading with CORS proxy fallback
- **`ProductImage` component**: Reusable component for product images
- **Automatic fallbacks**: Images automatically try multiple loading strategies

These components will work seamlessly once you provide proper image URLs.

## Priority Products

Focus on these high-visibility products first:
1. Top-ranked products in each category
2. Products featured on the home page
3. Products with active deals
4. Products in popular stacks

## Next Steps

1. Decide on your image hosting strategy
2. Source images for your 80 products
3. Upload images to chosen hosting solution
4. Create and apply database migration
5. Test thoroughly across all pages
6. Remove the CORS proxy code once real images are in place

## Questions?

The current implementation provides a working fallback system, but real product images will:
- Load faster
- Look more professional
- Be more reliable
- Comply with copyright/usage terms
