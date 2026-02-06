/*
  # Add Rankings for All New Products

  1. Rankings Added
    - Positions 6-10 for all 6 existing categories
    - Positions 1-5 for all 4 new categories (Pre-Workout, Creatine, Joint Health, Gut Health)
    - Each ranking includes a why_ranked explanation

  2. Notes
    - Rankings table already has RLS enabled
    - Rankings complement existing positions 1-5 in original categories
*/

-- Nootropics ranks 6-10
INSERT INTO rankings (category_id, product_id, rank_position, rank_year, why_ranked) VALUES
('c59aa68a-ca79-416a-bc07-470b339a07ac', '59a061c0-1258-4d54-abff-22e9df730dde', 6, 2026, 'Hunter Focus earns rank 6 for its premium all-in-one formula with clinical doses across 20 ingredients. Best for professionals willing to invest in comprehensive cognitive support.'),
('c59aa68a-ca79-416a-bc07-470b339a07ac', '3b4939d5-d740-4cd3-8566-1fc244893df6', 7, 2026, 'Real Mushrooms Lion''s Mane ranks 7 for its exceptional purity - fruiting body only with verified beta-glucan content. The best standalone mushroom nootropic available.'),
('c59aa68a-ca79-416a-bc07-470b339a07ac', '1c40d322-1d4c-4efb-a08c-5c5f1c0d56bc', 8, 2026, 'Genius Mushrooms at rank 8 offers outstanding value with a stimulant-free trio of Lion''s Mane, Reishi, and Cordyceps at an unbeatable price point.'),
('c59aa68a-ca79-416a-bc07-470b339a07ac', '4ad62b6a-7b10-4ae5-b15c-9caa5cdfa4db', 9, 2026, 'Neuriva Plus holds rank 9 for mainstream accessibility and Neurofactor clinical research, though its limited formula keeps it below more comprehensive options.'),
('c59aa68a-ca79-416a-bc07-470b339a07ac', 'd93eccc2-26c9-45cc-bb79-4f45f0ad96ba', 10, 2026, 'Prevagen rounds out the top 10 with strong brand recognition, though limited clinical evidence for apoaequorin keeps it in the final position.');

-- Protein Powder ranks 6-10
INSERT INTO rankings (category_id, product_id, rank_position, rank_year, why_ranked) VALUES
('25195943-0811-47f0-ba92-50d103c363d7', '7f4e651d-8922-4efd-9b3b-8fcc073ebd14', 6, 2026, 'Transparent Labs Whey ranks 6 for its grass-fed sourcing, zero artificial ingredients, and Informed Sport certification. The cleanest premium whey isolate available.'),
('25195943-0811-47f0-ba92-50d103c363d7', '9f042aa9-762d-4f65-883c-b50af8885184', 7, 2026, 'Ghost Whey at rank 7 delivers the best flavors in the industry (licensed Oreo, Chips Ahoy) with solid transparent labeling and decent protein content.'),
('25195943-0811-47f0-ba92-50d103c363d7', '7c69f2ff-0b53-4be0-9ec4-9d203210a680', 8, 2026, 'Naked Whey earns rank 8 for its radical minimalism - just one ingredient in the unflavored version. Perfect for purists who want zero additives.'),
('25195943-0811-47f0-ba92-50d103c363d7', 'e167e09d-1ef2-484f-9f9e-7621ac17a121', 9, 2026, 'Garden of Life Sport ranks 9 as the best organic plant-based option with 30g protein, NSF Certified for Sport, and added tart cherry for recovery.'),
('25195943-0811-47f0-ba92-50d103c363d7', 'd4ba1363-c13e-433b-8108-9b8c4ed3bdc5', 10, 2026, 'Vega Sport Premium takes position 10 with its 30g plant protein and added probiotics, though texture and taste trail behind the competition.');

-- Fat Burners ranks 6-10
INSERT INTO rankings (category_id, product_id, rank_position, rank_year, why_ranked) VALUES
('60bc620a-e02a-4f8f-aba0-e925330378ef', '55d1e743-58c7-4ba8-865e-14e84265dc0e', 6, 2026, 'Transparent Labs Fat Burner ranks 6 for its fully transparent dosing and science-backed formula including Forslean and 5-HTP for mood support during dieting.'),
('60bc620a-e02a-4f8f-aba0-e925330378ef', '15cce14b-8336-4f2c-ab47-8c39cf3a44df', 7, 2026, 'Burn Lab Pro at rank 7 is the best stimulant-free fat burner, uniquely combining Forslean with HMB to burn fat while preserving lean muscle mass.'),
('60bc620a-e02a-4f8f-aba0-e925330378ef', '5de66d78-385b-4f9f-bb34-f704b925598b', 8, 2026, 'Burn-XT ranks 8 as the Amazon best-seller for good reason: simple, effective formula at an unbeatable budget price point.'),
('60bc620a-e02a-4f8f-aba0-e925330378ef', '64bef976-d2b9-48e8-9ff4-470ce3beae7a', 9, 2026, 'Animal Cuts at rank 9 delivers the most comprehensive fat loss approach with 8 targeted complexes, ideal for contest-prep bodybuilders.'),
('60bc620a-e02a-4f8f-aba0-e925330378ef', 'fc9596d9-d60a-4faa-9f47-ec8ae95f645b', 10, 2026, 'Cellucor SuperHD rounds out the top 10 with its dual fat-burning and focus-enhancing formula at an accessible price point.');

-- Vitamins ranks 6-10
INSERT INTO rankings (category_id, product_id, rank_position, rank_year, why_ranked) VALUES
('72878b6e-5ff7-48f6-a68a-41f55cb50611', 'ae7aefc1-5778-499b-9a6f-7755aea76093', 6, 2026, 'Garden of Life Vitamin Code ranks 6 for its RAW whole-food sourced vitamins with live probiotics and enzymes. The best option for whole-food nutrition enthusiasts.'),
('72878b6e-5ff7-48f6-a68a-41f55cb50611', 'a467e036-af34-4c55-96dc-b735c9f11807', 7, 2026, 'Life Extension Two-Per-Day at rank 7 offers significantly higher potencies with bioactive vitamin forms at a surprisingly affordable price per nutrient.'),
('72878b6e-5ff7-48f6-a68a-41f55cb50611', '487bce0c-8a38-4bdd-bf82-1afd1417e04a', 8, 2026, 'AG1 by Athletic Greens ranks 8 as the premium all-in-one greens powder with 75 ingredients, though its high price limits accessibility.'),
('72878b6e-5ff7-48f6-a68a-41f55cb50611', '73bc77cb-c0a6-47b3-9d2c-417219d2f921', 9, 2026, 'NOW Adam ranks 9 for excellent value with comprehensive coverage including prostate-supporting saw palmetto and heart-healthy CoQ10.'),
('72878b6e-5ff7-48f6-a68a-41f55cb50611', 'b1b1f7f8-f2e5-47df-a7ec-907a68a862c0', 10, 2026, 'Kirkland Daily Multi holds rank 10 for unbeatable value with USP verification at just pennies per day from Costco.');

-- Sleep Aids ranks 6-10
INSERT INTO rankings (category_id, product_id, rank_position, rank_year, why_ranked) VALUES
('b87c2721-02df-4e49-9929-5abcda05a714', '3fea9260-3813-4791-bdc2-f2856ec92134', 6, 2026, 'Magnesium L-Threonate (Magtein) ranks 6 as the only magnesium form clinically shown to cross the blood-brain barrier. Excellent for brain-focused sleep and cognitive support.'),
('b87c2721-02df-4e49-9929-5abcda05a714', 'b0daa6c9-990f-4b52-989e-3ec5a6771fe1', 7, 2026, 'Beam Dream at rank 7 has earned a cult following for its delicious hot cocoa sleep ritual combining nano hemp, reishi, and magnesium.'),
('b87c2721-02df-4e49-9929-5abcda05a714', '64bc0b79-d161-452e-87a9-2a104f27928d', 8, 2026, 'Sleep Breakthrough ranks 8 for its comprehensive multi-pathway formula in an enjoyable drink format, though premium pricing limits its ranking.'),
('b87c2721-02df-4e49-9929-5abcda05a714', '704bfe5e-737a-41b6-8430-c0f62d7603b4', 9, 2026, 'Apigenin at rank 9 earns its spot as a clean single-ingredient option popularized by neuroscience research. Great for stacking.'),
('b87c2721-02df-4e49-9929-5abcda05a714', '213921ad-ac46-4bdd-b54e-2bb2d694016d', 10, 2026, 'OLLY Sleep Gummies round out the top 10 with unmatched taste and convenience in a gentle gummy format, perfect for casual users.');

-- Longevity ranks 6-10
INSERT INTO rankings (category_id, product_id, rank_position, rank_year, why_ranked) VALUES
('b4111ed1-490c-4446-a9a1-6e869828522b', '47ba37e2-f7af-4efd-bb7f-373002d5eddb', 6, 2026, 'Tru Niagen ranks 6 with the most published clinical trials of any NR supplement. FDA GRAS status and clinically proven 51% NAD+ increase earn it a strong position.'),
('b4111ed1-490c-4446-a9a1-6e869828522b', '164ab9b8-833b-41e2-841b-8b908c50cfba', 7, 2026, 'Vital Proteins Collagen at rank 7 is the best-selling collagen supplement for good reason: 20g per serving from grass-fed sources with noticeable skin and nail benefits.'),
('b4111ed1-490c-4446-a9a1-6e869828522b', 'b2bbd809-e121-4abd-b8d7-3ddc88d8193b', 8, 2026, 'Nordic Naturals Ultimate Omega earns rank 8 as the gold standard fish oil with IFOS 5-star certification and superior triglyceride form absorption.'),
('b4111ed1-490c-4446-a9a1-6e869828522b', '5c2e873a-acc1-4460-b649-a921b74389bf', 9, 2026, 'BioAstin Astaxanthin at rank 9 is one of nature most powerful antioxidants - 6000x stronger than vitamin C - with strong evidence for skin and inflammation.'),
('b4111ed1-490c-4446-a9a1-6e869828522b', 'e3206745-eb8f-4103-9e4c-3e87f04f8602', 10, 2026, 'Thorne Quercetin Phytosome rounds out the top 10 with 20x better absorption and exciting senolytic properties for clearing damaged cells.');

-- Pre-Workout ranks 1-5
INSERT INTO rankings (category_id, product_id, rank_position, rank_year, why_ranked) VALUES
('7b1574dc-da98-4206-92bc-5d1a5cc6c7ce', '143d1ea5-4404-4447-9735-4026b5eff9b4', 1, 2026, 'Transparent Labs BULK is our #1 pre-workout for its unmatched combination of clinical dosing, clean ingredients, and no artificial sweeteners. The gold standard.'),
('7b1574dc-da98-4206-92bc-5d1a5cc6c7ce', '6d828abd-13d9-40b4-a924-051451e41ce9', 2, 2026, 'Pre-Kaged Elite at #2 delivers the most mega-dosed formula with 10g citrulline and patented premium ingredients. For serious athletes only.'),
('7b1574dc-da98-4206-92bc-5d1a5cc6c7ce', '8735ed29-3129-4412-b755-ed4317cc89e0', 3, 2026, 'Gorilla Mode takes #3 with one of the most aggressively stacked formulas on the market. 9g citrulline plus full creatine dose in one scoop.'),
('7b1574dc-da98-4206-92bc-5d1a5cc6c7ce', '53157105-6f34-4eeb-bc4f-1eeb5947152a', 4, 2026, 'Ghost Legend at #4 brings incredible flavors with genuinely effective dosing. The lifestyle pre-workout that actually delivers on performance.'),
('7b1574dc-da98-4206-92bc-5d1a5cc6c7ce', '842d0c5e-6568-4967-a91b-6ae2761c4f43', 5, 2026, 'C4 Original rounds out the top 5 as the most accessible and affordable pre-workout. Perfect for beginners and widely available.');

-- Creatine ranks 1-5
INSERT INTO rankings (category_id, product_id, rank_position, rank_year, why_ranked) VALUES
('5258a865-7c17-417a-b895-4b8ea76d178d', '6367ca4e-d290-4943-9e59-230e15e1365b', 1, 2026, 'Thorne Creatine is our #1 pick for its NSF Certified for Sport status, trusted by professional athletes, with micronized creatine monohydrate from the most respected brand.'),
('5258a865-7c17-417a-b895-4b8ea76d178d', '33d85b2c-c87c-41d0-bce4-a81c2fafa205', 2, 2026, 'Transparent Labs Creatine HMB at #2 uniquely combines creatine with HMB and BioPerine for synergistic muscle performance and preservation.'),
('5258a865-7c17-417a-b895-4b8ea76d178d', '12a1646a-5c53-46d4-8ef6-edd33fa29713', 3, 2026, 'ON Micronized Creatine at #3 uses Creapure German-made creatine at an unbeatable price. The best-selling creatine in the world for good reason.'),
('5258a865-7c17-417a-b895-4b8ea76d178d', 'ab08a42a-03ba-4d31-b37f-39ed47ecc6a0', 4, 2026, 'Naked Creatine holds #4 for its zero-additive purity, German sourcing, and vegan-friendly formula. The purist choice.'),
('5258a865-7c17-417a-b895-4b8ea76d178d', 'a632da78-0bff-45cc-a877-4dc9499e60c9', 5, 2026, 'CON-CRET at #5 offers a unique HCl form for those who experience bloating from monohydrate, requiring just 750mg per serving.');

-- Joint & Bone Health ranks 1-5
INSERT INTO rankings (category_id, product_id, rank_position, rank_year, why_ranked) VALUES
('02a22e67-4d99-4637-8270-69455889c8a7', '99474c08-68b7-4bab-afaf-919d84fc9ab2', 1, 2026, 'Thorne Glucosamine & Chondroitin is our #1 joint supplement for its non-shellfish sourcing, optimal 2:1 ratio, and NSF Certified for Sport practitioner-grade quality.'),
('02a22e67-4d99-4637-8270-69455889c8a7', '2a30dbf1-338e-48f3-ba10-b913dd239bf9', 2, 2026, 'Move Free Advanced at #2 delivers the most comprehensive 4-ingredient joint formula at an accessible price point with wide retail availability.'),
('02a22e67-4d99-4637-8270-69455889c8a7', 'fefdc465-7f9e-4eb2-a22a-65570422cf8f', 3, 2026, 'Osteo Bi-Flex Triple Strength earns #3 with its patented 5-Loxin boswellia extract clinically shown to improve comfort in just 7 days.'),
('02a22e67-4d99-4637-8270-69455889c8a7', '985c86c9-2d4a-4019-869c-3996c8057abe', 4, 2026, 'NOW Hyaluronic Acid at #4 offers affordable joint lubrication and skin hydration support with added synergistic ingredients.'),
('02a22e67-4d99-4637-8270-69455889c8a7', '80cb1515-0549-49f9-8404-c786e9ece4c4', 5, 2026, 'Garden of Life Plant Calcium rounds out the top 5 as the best plant-sourced calcium with D3 and K2 for optimal bone health.');

-- Gut Health ranks 1-5
INSERT INTO rankings (category_id, product_id, rank_position, rank_year, why_ranked) VALUES
('840cca75-0ebc-44a2-819f-212cd78a1464', '9288d2f9-7f91-4b7d-8454-3ded49213d8b', 1, 2026, 'Seed DS-01 is our #1 probiotic for its 24 clinically studied strains, patented acid-resistant delivery technology, and the most science-forward approach to gut health.'),
('840cca75-0ebc-44a2-819f-212cd78a1464', '8fbce684-2bf7-44be-948f-e8c86817b916', 2, 2026, 'Garden of Life Dr. Formulated at #2 delivers 50 billion CFU from 16 strains in a shelf-stable formula created with a gastroenterologist.'),
('840cca75-0ebc-44a2-819f-212cd78a1464', '554d8268-1675-41f8-9d51-782df3b44f21', 3, 2026, 'Culturelle at #3 contains the single most researched probiotic strain on earth (LGG) with over 1,000 scientific studies backing its efficacy.'),
('840cca75-0ebc-44a2-819f-212cd78a1464', '06175d55-1103-4f67-af84-d86a15c5a100', 4, 2026, 'Ritual Synbiotic+ at #4 combines the two most-studied probiotic strains with a prebiotic in their signature clean, transparent approach.'),
('840cca75-0ebc-44a2-819f-212cd78a1464', '5b734433-7b44-433e-be29-e96bc0db350b', 5, 2026, 'Align Probiotic holds #5 as the #1 gastroenterologist-recommended brand with a unique Bifidobacterium strain clinically proven for IBS symptom relief.');