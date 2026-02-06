/*
  # Add Deals for New Category Products

  1. New Deals
    - 8 new deals across new and existing categories
    - Mix of coupon codes and automatic discounts
    - Expiry dates range from 10-30 days out

  2. Notes
    - Deals for Pre-Workout, Creatine, Joint Health, Gut Health categories
    - Also adds deals for select new products in existing categories
*/

INSERT INTO deals (product_id, discount_percentage, coupon_code, deal_title, deal_description, expires_at, is_active) VALUES
('143d1ea5-4404-4447-9735-4026b5eff9b4', 15, 'BULK15', 'Pre-Workout Launch Deal', 'Save 15% on the top-ranked pre-workout of 2026', now() + interval '25 days', true),
('12a1646a-5c53-46d4-8ef6-edd33fa29713', 25, 'CREATINE25', 'Creatine Mega Sale', 'Best-selling creatine at 25% off while supplies last', now() + interval '14 days', true),
('9288d2f9-7f91-4b7d-8454-3ded49213d8b', 10, NULL, 'Seed Synbiotic Deal', 'Limited time 10% off the premium daily synbiotic', now() + interval '20 days', true),
('99474c08-68b7-4bab-afaf-919d84fc9ab2', 20, 'JOINTS20', 'Joint Health Special', 'Save 20% on our top joint support supplement', now() + interval '18 days', true),
('7f4e651d-8922-4efd-9b3b-8fcc073ebd14', 12, 'WHEY12', 'Clean Protein Deal', 'Save on 100% grass-fed whey protein', now() + interval '21 days', true),
('64bc0b79-d161-452e-87a9-2a104f27928d', 15, 'SLEEP15', 'Better Sleep Sale', 'Upgrade your sleep routine for less', now() + interval '16 days', true),
('e2a3d0e7-8e66-4332-a70c-713b2379304b', 10, NULL, 'Thorne Multi Deal', 'Premium multivitamin at a special price', now() + interval '30 days', true),
('8735ed29-3129-4412-b755-ed4317cc89e0', 20, 'GORILLA20', 'Gorilla Mode Flash Sale', 'Biggest discount of the year on Gorilla Mode', now() + interval '10 days', true);