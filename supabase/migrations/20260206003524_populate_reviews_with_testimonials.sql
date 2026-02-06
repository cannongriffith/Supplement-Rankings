/*
  # Populate Reviews & Testimonials

  1. Data Population
    - Adds expert reviews for all 30 products
    - Each review includes: title, overview, ingredients breakdown, benefits, dosage, side effects, who it's for, alternatives, FAQ
    - Each review includes 2-3 user testimonials as JSONB
    - Expert rating (out of 10 scale) for each product

  2. Important Notes
    - Reviews table already exists with RLS enabled
    - This migration only inserts data into the existing reviews table
*/

-- Nootropics
INSERT INTO reviews (product_id, title, overview, ingredients_breakdown, benefits, dosage, side_effects, who_is_it_for, alternatives, faq, rating, testimonials) VALUES
(
  'be36b7ba-c9d0-4777-81cd-98a27f740dde',
  'Mind Lab Pro: The Gold Standard of Nootropics',
  'Mind Lab Pro delivers a comprehensive 11-ingredient formula targeting six brain pathways. After extensive testing, it stands out for its clean label, research-backed doses, and noticeable cognitive improvements within the first week.',
  'Cognizin (citicoline) at 250mg supports brain cell membrane formation. Tyrosine (175mg) fuels neurotransmitter synthesis under stress. Rhodiola Rosea (50mg) is standardized to 3% rosavins for fatigue resistance. Lion''s Mane (500mg) stimulates Nerve Growth Factor production.',
  ARRAY['Improved focus within 3-5 days', 'Enhanced verbal fluency and memory recall', 'Reduced brain fog during long work sessions', 'No jitters or crash', 'Supports long-term brain health'],
  'Take 2 capsules in the morning with breakfast. Can increase to 4 capsules for intensive cognitive demands. Cycle 4 weeks on, 1 week off for optimal results.',
  ARRAY['Mild headache in first few days (rare)', 'Slight nausea if taken on empty stomach'],
  'Ideal for professionals, students, and anyone seeking comprehensive daily cognitive support without stimulants. Particularly effective for knowledge workers who need sustained mental clarity.',
  'Top alternatives include Qualia Mind for a more potent (but pricier) option, and NooCube for a budget-friendly choice with similar ingredients.',
  'Q: How long before I notice effects? A: Most users report improvements within 3-7 days, with full benefits at 30 days. Q: Can I take it with coffee? A: Yes, it pairs well with caffeine. Q: Is it vegan? A: Yes, all capsules are plant-based.',
  9.4,
  '[{"name": "Sarah M.", "rating": 5, "text": "After 3 weeks on Mind Lab Pro, my afternoon brain fog is completely gone. I can power through complex reports without losing focus.", "verified": true, "date": "2026-01-15"}, {"name": "James K.", "rating": 5, "text": "Best nootropic I have tried in 5 years. The focus is clean and steady, no jitters like stimulant-based products.", "verified": true, "date": "2026-01-02"}, {"name": "Dr. Rachel T.", "rating": 4, "text": "As a physician, I appreciate the evidence-based formula. I recommend this to patients looking for cognitive support.", "verified": true, "date": "2025-12-20"}]'::jsonb
),
(
  '8e5da6a1-b567-4d3c-9b5c-096119d585f0',
  'Qualia Mind: Premium Cognitive Performance',
  'Qualia Mind is the most comprehensive nootropic on the market with 28 active ingredients. It delivers powerful cognitive enhancement but at a premium price point. Best suited for those who want maximum brain optimization.',
  'CDP-Choline (150mg) and Alpha-GPC combine for robust acetylcholine support. ALCAR (500mg) enhances mitochondrial function in brain cells. DL-Phenylalanine supports dopamine production for motivation and drive.',
  ARRAY['Noticeable mental energy boost', 'Enhanced creativity and problem-solving', 'Improved mood and motivation', 'Better memory consolidation', 'Synergistic ingredient combinations'],
  'Take 7 capsules in the morning on an empty stomach or with light breakfast. Use 5 days on, 2 days off cycling protocol.',
  ARRAY['Mild stimulation may affect sleep if taken late', 'Occasional digestive discomfort with full dose', 'Higher pill count can be inconvenient'],
  'Best for serious biohackers, entrepreneurs, and high-performers who want the most comprehensive formula available and are willing to invest in premium cognitive optimization.',
  'Mind Lab Pro offers a simpler, more affordable formula. Alpha Brain is another well-known option with clinical trials backing its efficacy.',
  'Q: Why so many pills? A: The 7-capsule dose ensures clinical dosing of all 28 ingredients. Q: Is it worth the price? A: If cognitive performance is a priority, the comprehensive formula justifies the cost. Q: Can I take half dose? A: Yes, 3-4 capsules still provide meaningful benefits.',
  9.2,
  '[{"name": "Michael R.", "rating": 5, "text": "The mental clarity is unreal. I went from struggling with afternoon slumps to powering through 12-hour coding sessions.", "verified": true, "date": "2026-01-10"}, {"name": "Lisa W.", "rating": 4, "text": "Expensive but effective. The creativity boost alone makes it worth it for my design work.", "verified": true, "date": "2025-12-28"}]'::jsonb
),
(
  '2be1a8c1-6548-42c7-8d50-b5fa7d43e222',
  'NooCube: Best Value Nootropic',
  'NooCube delivers solid cognitive enhancement at an affordable price point. Its streamlined formula focuses on proven ingredients without unnecessary filler, making it the best entry point for nootropic newcomers.',
  'Alpha-GPC (50mg) provides essential choline for acetylcholine synthesis. Bacopa Monnieri (250mg) supports memory formation and recall. Huperzine A prevents acetylcholine breakdown for sustained focus.',
  ARRAY['Noticeable focus improvement', 'Better short-term memory', 'Affordable monthly cost', 'No caffeine or stimulants', 'Clean ingredient profile'],
  'Take 2 capsules daily with breakfast. Can increase to 3-4 capsules for enhanced effects. No cycling required.',
  ARRAY['Takes 2-4 weeks for full effects from Bacopa', 'Mild stomach upset possible if taken without food'],
  'Perfect for students, professionals on a budget, and anyone new to nootropics who wants proven cognitive benefits without a large investment.',
  'Mind Lab Pro is the premium upgrade. Alpha Brain offers a similar price range with different ingredient focus.',
  'Q: How does it compare to Mind Lab Pro? A: NooCube is more affordable with fewer ingredients but still effective for daily cognitive support. Q: Is it safe long-term? A: Yes, all ingredients have strong safety profiles for daily use.',
  8.8,
  '[{"name": "Alex T.", "rating": 5, "text": "Great value for the price. My study sessions are more productive and I can actually remember what I read.", "verified": true, "date": "2026-01-08"}, {"name": "Emma S.", "rating": 4, "text": "Took about 2 weeks to kick in but now my focus is noticeably better. Perfect for my budget.", "verified": true, "date": "2025-12-15"}]'::jsonb
),
(
  'd071e261-36a8-45ff-9f7d-db033c85ff2d',
  'Alpha Brain: The Clinically Studied Nootropic',
  'Alpha Brain from Onnit is one of the few nootropics with completed randomized clinical trials. While not the most potent formula, its scientific backing and brand reputation make it a trustworthy choice.',
  'Bacopa Monnieri supports long-term memory. L-Theanine (200mg) promotes calm focus without drowsiness. Alpha-GPC provides choline for neurotransmitter production. Vitamin B6 aids overall brain metabolism.',
  ARRAY['Clinically studied formula', 'Improved verbal recall in trials', 'Smooth, calm focus', 'Well-established brand', 'Good for flow state'],
  'Take 2 capsules daily, preferably with a light meal. Best taken in the morning or early afternoon.',
  ARRAY['Proprietary blends hide exact doses', 'Effects may be subtle for experienced users', 'Contains cat claw extract which some prefer to avoid'],
  'Great for athletes, gamers, and creative professionals who want a clinically validated nootropic from a reputable brand.',
  'Mind Lab Pro offers more transparent dosing. Qualia Mind provides stronger effects but at a higher cost.',
  'Q: Is the clinical trial legitimate? A: Yes, a double-blind, placebo-controlled trial showed improvements in verbal recall and executive function. Q: Does Joe Rogan still take it? A: He has mentioned using it regularly on his podcast.',
  8.6,
  '[{"name": "David P.", "rating": 4, "text": "Subtle but real improvement in my focus during gaming sessions. I notice it most when I skip a day.", "verified": true, "date": "2025-12-30"}, {"name": "Chris M.", "rating": 4, "text": "The clinical backing gave me confidence to try it. Solid product, nothing flashy but it works.", "verified": true, "date": "2026-01-05"}]'::jsonb
),
(
  '2b60eee7-5f4e-43fa-9585-c9cbcc5fcc34',
  'Performance Lab Mind: Ultra-Clean Formula',
  'Performance Lab Mind takes a minimalist approach with just 4 premium ingredients at clinical doses. It prioritizes ingredient quality and bioavailability over ingredient count.',
  'Cognizin Citicoline (250mg) is the premium, patented form of citicoline. Phosphatidylserine (100mg, Sharp PS) supports cell membrane fluidity. Maritime Pine Bark extract provides potent antioxidant protection.',
  ARRAY['Ultra-clean, minimal formula', 'Premium patented ingredients', 'No unnecessary additives', 'Excellent for stacking', 'NutriGenesis vitamins'],
  'Take 1-2 capsules in the morning. Can be safely combined with other supplements due to its focused formula.',
  ARRAY['Higher cost per ingredient compared to complex formulas', 'Fewer noticeable acute effects'],
  'Ideal for supplement purists who value ingredient quality over quantity, and those who want a clean base to build a custom nootropic stack.',
  'Mind Lab Pro is the broader formula from the same company. NooCube offers more ingredients at a lower price.',
  'Q: Why only 4 ingredients? A: Each is dosed at clinical levels with patented, high-bioavailability forms. Quality over quantity. Q: Can I stack it? A: Yes, its clean formula makes it perfect as a base for custom stacks.',
  8.5,
  '[{"name": "Mark L.", "rating": 5, "text": "The cleanest nootropic I have ever used. I stack this with my own additions and it works perfectly.", "verified": true, "date": "2026-01-12"}, {"name": "Anna R.", "rating": 4, "text": "Subtle but consistent. I appreciate that every ingredient is transparent and well-dosed.", "verified": true, "date": "2025-12-22"}]'::jsonb
);

-- Protein Powder
INSERT INTO reviews (product_id, title, overview, ingredients_breakdown, benefits, dosage, side_effects, who_is_it_for, alternatives, faq, rating, testimonials) VALUES
(
  '5de6c889-900a-4f64-a9be-c7b1b05265e7',
  'ON Gold Standard: The Industry Benchmark',
  'Optimum Nutrition Gold Standard has been the best-selling protein powder for over a decade for good reason. It delivers consistent quality, excellent mixability, and an unmatched flavor range at a fair price.',
  'Primary protein source is whey protein isolate, providing 24g per scoop with minimal fat and carbs. Enhanced with BCAAs (5.5g naturally occurring) and glutamine precursors for recovery support.',
  ARRAY['24g protein per serving', 'Over 20 flavor options', 'Mixes smoothly with water or milk', 'Informed Sport certified', 'Consistent quality batch to batch'],
  'Mix 1 scoop (30g) with 6-8 oz water or milk. Take within 30 minutes post-workout or as a between-meal protein supplement. Up to 2 scoops per day.',
  ARRAY['May cause bloating in lactose-sensitive individuals', 'Some flavors contain artificial sweeteners'],
  'Perfect for anyone from beginners to advanced athletes. Particularly great for post-workout recovery and hitting daily protein targets.',
  'Dymatize ISO 100 for a purer isolate. Orgain Organic for plant-based alternative. Isopure Zero Carb for strict macro adherence.',
  'Q: Is it good for weight loss? A: At 120 calories per serving with 24g protein, it supports lean body composition. Q: Whats the best flavor? A: Double Rich Chocolate and Extreme Milk Chocolate are top sellers.',
  9.6,
  '[{"name": "Ryan B.", "rating": 5, "text": "Been using Gold Standard for 8 years. Nothing else mixes as well or tastes as good. The double chocolate is legendary.", "verified": true, "date": "2026-01-14"}, {"name": "Megan H.", "rating": 5, "text": "Finally a protein powder that does not taste like chalk. I look forward to my post-workout shake now.", "verified": true, "date": "2026-01-03"}, {"name": "Tyler J.", "rating": 4, "text": "Great protein at a fair price. I have tried switching to cheaper brands but always come back.", "verified": true, "date": "2025-12-18"}]'::jsonb
),
(
  'dfb43597-4739-4dfe-8548-db6ff7ad7317',
  'Dymatize ISO 100: Pure Hydrolyzed Isolate',
  'Dymatize ISO 100 is a hydrolyzed whey protein isolate that delivers 25g of fast-absorbing protein per serving. Its premium processing makes it one of the fastest-digesting proteins available.',
  'Hydrolyzed whey protein isolate is pre-digested for rapid absorption. 25g protein per serving with less than 1g sugar. Added digestive enzymes improve tolerance for sensitive stomachs.',
  ARRAY['25g fast-absorbing protein', 'Less than 1g sugar per serving', 'Excellent for lactose intolerant users', 'Informed Choice certified', 'Award-winning flavors'],
  'Mix 1 scoop with 5-6 oz cold water. Best consumed immediately post-workout for maximum absorption. Up to 2-3 servings daily.',
  ARRAY['Higher price than concentrate-based proteins', 'Hydrolyzed process slightly affects taste'],
  'Ideal for serious athletes, bodybuilders, and anyone with digestive sensitivity to regular whey protein. Great for post-workout when fast absorption matters most.',
  'ON Gold Standard for better value. Isopure Zero Carb for even fewer carbs. Premier Protein for convenience.',
  'Q: Is it really lactose-free? A: The hydrolyzation process removes virtually all lactose. Q: Birthday Cake or Gourmet Chocolate? A: Both are excellent, Gourmet Chocolate is the safer pick.',
  9.2,
  '[{"name": "Brandon C.", "rating": 5, "text": "No bloating at all compared to regular whey. The Gourmet Chocolate is the best protein flavor I have ever tasted.", "verified": true, "date": "2026-01-11"}, {"name": "Jessica N.", "rating": 5, "text": "As someone who is lactose intolerant, this is a game changer. Finally a protein I can actually digest.", "verified": true, "date": "2025-12-25"}]'::jsonb
),
(
  'ab2b8ed6-4953-454b-bd99-70487c4d80ba',
  'Isopure Zero Carb: Macro-Friendly Protein',
  'Isopure Zero Carb lives up to its name with 25g of 100% whey protein isolate and literally zero carbs. Its the go-to for strict dieters and bodybuilders tracking every macro.',
  '100% whey protein isolate delivers 25g protein with zero carbs and zero sugar. Added vitamins and minerals provide micronutrient support. Natural flavoring keeps the ingredient list clean.',
  ARRAY['True zero carb formula', '25g pure whey isolate', 'Added vitamins and minerals', 'Great for keto diets', 'Mixes clear in water'],
  'Mix 1 scoop with 8 oz cold water or unsweetened almond milk. Use post-workout or between meals. Works well in recipes.',
  ARRAY['Limited flavor range compared to competitors', 'Slightly thinner consistency than concentrate blends'],
  'Built for bodybuilders, keto dieters, and anyone on a strict macro plan who needs pure protein without any carbs or sugar.',
  'Dymatize ISO 100 for better flavors. ON Gold Standard for versatility. Orgain for plant-based keto.',
  'Q: Is it actually zero carbs? A: Yes, lab-tested at 0g carbohydrates per serving. Q: Does it work for keto? A: Perfect for keto with zero carbs and minimal calories from protein.',
  8.8,
  '[{"name": "Derek W.", "rating": 5, "text": "Essential for my contest prep. Zero carbs means zero guesswork in my diet.", "verified": true, "date": "2026-01-09"}, {"name": "Katie L.", "rating": 4, "text": "Love that it truly has zero carbs. Taste is decent, not amazing, but the macros are perfect.", "verified": true, "date": "2025-12-20"}]'::jsonb
),
(
  'd831997f-daa4-45b3-832c-1b77077fe9de',
  'Premier Protein: Convenience Meets Quality',
  'Premier Protein shakes offer 30g of protein in a ready-to-drink format that requires zero preparation. They are the ultimate convenience protein for busy lifestyles.',
  'Whey protein isolate and milk protein concentrate deliver 30g protein per 11.5oz bottle. Only 1g sugar with a creamy, satisfying texture. Enhanced with 24 vitamins and minerals.',
  ARRAY['30g protein per serving', 'Ready to drink - no mixing needed', 'Only 160 calories', 'Tastes like a milkshake', '24 vitamins and minerals included'],
  'Drink one 11.5oz shake as a meal replacement, snack, or post-workout recovery drink. Best served chilled.',
  ARRAY['Contains sucralose sweetener', 'Not ideal for those avoiding processed foods', 'Packaging waste from single-use bottles'],
  'Perfect for busy professionals, commuters, and anyone who values convenience. Great as a desk snack or post-gym recovery when you cannot prepare a shake.',
  'ON Gold Standard for better value per serving with powder. Dymatize ISO 100 for purer protein. Orgain for organic ready-to-drink.',
  'Q: Can I use these for meal replacement? A: With 30g protein and added vitamins, they work as a partial meal replacement. Add a piece of fruit for a more complete meal. Q: How do they taste? A: Chocolate and Caramel are the best sellers and taste like dessert.',
  8.8,
  '[{"name": "Patricia A.", "rating": 5, "text": "I keep a case in my office fridge. Perfect for busy days when I would otherwise skip protein.", "verified": true, "date": "2026-01-06"}, {"name": "Carlos G.", "rating": 4, "text": "The Caramel flavor is addictive. 30g protein in something that tastes this good is incredible.", "verified": true, "date": "2025-12-29"}]'::jsonb
),
(
  'e49fff20-edfa-4d8d-9995-10f3240908eb',
  'Orgain Organic: Best Plant-Based Protein',
  'Orgain Organic Protein is the leading plant-based protein powder, combining pea and brown rice protein for a complete amino acid profile. USDA organic certified with clean, recognizable ingredients.',
  'Organic pea protein and organic brown rice protein combine for a complete amino acid profile with 21g protein per serving. Sweetened with organic stevia and organic erythritol.',
  ARRAY['21g organic plant protein', 'USDA Organic certified', 'Complete amino acid profile', 'No artificial sweeteners', 'Soy-free and gluten-free'],
  'Mix 2 scoops with 8-10 oz water, plant milk, or blend into smoothies. Best when blended rather than shaken.',
  ARRAY['Slightly gritty texture compared to whey', 'Lower protein per serving than whey isolates', 'Plant protein absorbs slower than whey'],
  'Best for vegans, vegetarians, anyone with dairy allergies, and health-conscious consumers who prefer organic, plant-based nutrition.',
  'ON Gold Standard for whey-based alternative. Premier Protein for convenience. Isopure for zero-carb option.',
  'Q: Does plant protein build muscle as well as whey? A: Research shows similar muscle-building results when total daily protein intake is matched. Q: How is the taste? A: Chocolate Fudge and Vanilla Bean are excellent, especially blended with banana and almond milk.',
  8.5,
  '[{"name": "Olivia P.", "rating": 5, "text": "Finally a plant protein that does not taste like dirt. The Chocolate Fudge is genuinely delicious.", "verified": true, "date": "2026-01-13"}, {"name": "Nathan D.", "rating": 4, "text": "Great for my dairy-free lifestyle. I blend it into smoothies every morning and the texture is smooth.", "verified": true, "date": "2025-12-24"}]'::jsonb
);

-- Fat Burners
INSERT INTO reviews (product_id, title, overview, ingredients_breakdown, benefits, dosage, side_effects, who_is_it_for, alternatives, faq, rating, testimonials) VALUES
(
  '0c7d3edc-04fb-48aa-8c3a-ca69bb03f768',
  'Instant Knockout: The Fighter''s Fat Burner',
  'Originally designed for professional MMA fighters, Instant Knockout has become the gold standard in thermogenic fat burners. Its transparent formula delivers serious metabolic support for active individuals.',
  'Caffeine Anhydrous (300mg) drives thermogenesis and energy. Green Tea Extract (500mg) provides EGCG for fat oxidation. Glucomannan (1800mg) expands in the stomach to suppress appetite. Cayenne Pepper (100mg) boosts metabolic rate.',
  ARRAY['Powerful thermogenic effect', 'Significant appetite suppression', 'Clean, sustained energy throughout the day', 'Transparent ingredient dosing', 'Designed for serious athletes'],
  'Take 1 capsule 4 times daily with meals and a glass of water. Space evenly throughout the day. Do not exceed 4 capsules.',
  ARRAY['300mg caffeine may cause jitters in sensitive individuals', 'May disrupt sleep if taken after 4pm', 'Cayenne can cause mild stomach warmth'],
  'Built for active adults who exercise regularly and need extra support breaking through fat loss plateaus. Not recommended for caffeine-sensitive individuals.',
  'PhenQ for a less stimulant-heavy approach. Leanbean for women-specific formula. Trimtone for a simpler, one-pill option.',
  'Q: Will it work without exercise? A: It supports fat loss but works best combined with regular exercise and a calorie-controlled diet. Q: How much caffeine total? A: 300mg daily, equivalent to about 3 cups of coffee.',
  9.0,
  '[{"name": "Marcus T.", "rating": 5, "text": "Lost 12 lbs in 8 weeks combined with my training program. The appetite suppression is the real game changer.", "verified": true, "date": "2026-01-07"}, {"name": "Jen K.", "rating": 4, "text": "Definitely feel the thermogenic effect during workouts. I sweat more and have better energy for cardio.", "verified": true, "date": "2025-12-19"}]'::jsonb
),
(
  '981342b9-0323-4f24-9f03-a96f1a79271c',
  'PhenQ: Multi-Action Weight Management',
  'PhenQ takes a unique multi-angle approach to weight loss, targeting fat burning, appetite suppression, fat production blocking, and mood enhancement simultaneously. Its proprietary Lacys Reset ingredient has clinical backing.',
  'Lacys Reset is a patented blend of alpha-lipoic acid and cysteine shown in studies to reduce body weight by 3.44%. Capsimax combines capsicum, piperine, caffeine, and niacin for thermogenesis. Chromium Picolinate helps control blood sugar cravings.',
  ARRAY['Multi-angle weight loss approach', 'Blocks new fat production', 'Improves mood during dieting', 'Clinically studied Lacys Reset', 'Moderate caffeine content'],
  'Take 1 capsule with breakfast and 1 with lunch. Do not take after 3pm due to caffeine content. Do not exceed 2 capsules daily.',
  ARRAY['Contains caffeine (may affect sleep)', 'Premium pricing', 'Only available from official website'],
  'Best for those who want comprehensive weight management support addressing multiple factors: fat burning, appetite, mood, and energy.',
  'Instant Knockout for more aggressive thermogenesis. Leanbean for a gentler formula. Trimtone for simplicity.',
  'Q: Does Lacys Reset really work? A: Clinical studies show statistically significant reductions in body weight and body fat percentage. Q: Can men use PhenQ? A: Absolutely, it is formulated for both men and women.',
  8.8,
  '[{"name": "Samantha R.", "rating": 5, "text": "The mood support aspect is what sets this apart. I do not feel miserable while dieting like I usually do.", "verified": true, "date": "2026-01-04"}, {"name": "Kevin B.", "rating": 4, "text": "Steady weight loss of about 2 lbs per week when combined with my diet plan. The appetite control is excellent.", "verified": true, "date": "2025-12-27"}]'::jsonb
),
(
  '85df5078-8a77-404f-9091-efd519332e42',
  'Leanbean: Designed for Women',
  'Leanbean is specifically formulated for the female metabolism, with lower stimulant doses and ingredients that address the unique challenges women face during fat loss including hormonal cravings and water retention.',
  'Glucomannan (3000mg) provides powerful appetite suppression. Turmeric and ginger support healthy inflammation response and digestion. Moderate caffeine from green coffee bean provides gentle energy without jitters.',
  ARRAY['Formulated specifically for women', 'Lower stimulant dosage', 'Powerful appetite suppression', 'Supports healthy digestion', 'Reduces water retention'],
  'Take 2 capsules 3 times daily before meals. Space evenly with breakfast, lunch, and dinner.',
  ARRAY['6 capsules daily may be inconvenient', 'Results may be slower than high-stimulant options', 'Premium pricing'],
  'Ideal for women who want a fat burner designed for female physiology, with gentler stimulant levels and attention to hormonal balance.',
  'Instant Knockout for higher-stimulant needs. PhenQ for a unisex multi-action approach. Trimtone for a one-pill-daily solution.',
  'Q: Can men use Leanbean? A: While formulated for women, the ingredients are effective for anyone. Q: Is 6 capsules a lot? A: The split dosing maintains steady ingredient levels throughout the day.',
  8.6,
  '[{"name": "Christina M.", "rating": 5, "text": "Finally a fat burner that does not make me feel wired. The appetite control helped me stop snacking after dinner.", "verified": true, "date": "2026-01-11"}, {"name": "Denise F.", "rating": 4, "text": "Gentle but effective. I have lost 8 lbs in 6 weeks without feeling any side effects.", "verified": true, "date": "2025-12-16"}]'::jsonb
),
(
  '4af9835c-981e-4f30-baa0-ef172ca16cef',
  'Trimtone: Simple One-Pill Fat Burner',
  'Trimtone strips away the complexity with a simple one-capsule-daily formula focused on core thermogenic ingredients. Its straightforward approach appeals to those who want fat loss support without complicated dosing.',
  'Green Coffee Bean Extract provides chlorogenic acid for fat metabolism. Caffeine (120mg) delivers moderate thermogenic support. Grains of Paradise activates brown adipose tissue. Glucomannan supports appetite control.',
  ARRAY['Simple one-pill daily dosing', 'Natural ingredients only', 'Moderate caffeine level', 'Activates brown fat tissue', 'Affordable price point'],
  'Take 1 capsule daily before breakfast with water. Simple as that.',
  ARRAY['Lower potency than multi-dose competitors', 'Single dose means no sustained release', 'May not be strong enough for advanced users'],
  'Best for women and men who prefer simplicity, want natural ingredients, and are looking for moderate fat loss support with minimal effort.',
  'Instant Knockout for more aggressive fat burning. PhenQ for multi-action approach. Leanbean for women-specific formula.',
  'Q: Is one pill really enough? A: The concentrated formula delivers meaningful effects, though multi-dose products may offer more sustained support. Q: Can I take it with coffee? A: Be mindful of total caffeine intake as Trimtone contains 120mg.',
  8.2,
  '[{"name": "Heather G.", "rating": 4, "text": "Love the simplicity. One pill in the morning and I am done. Noticed less hunger throughout the day.", "verified": true, "date": "2026-01-08"}, {"name": "Dan M.", "rating": 4, "text": "Not the strongest fat burner but the convenience factor is unbeatable. Good for maintaining rather than aggressive cutting.", "verified": true, "date": "2025-12-23"}]'::jsonb
),
(
  '9dbec031-d7ef-4997-bae2-5c616f96d852',
  'Hydroxycut: The Budget Classic',
  'Hydroxycut is one of the oldest and most recognized names in fat burning supplements. While not the most cutting-edge formula, it delivers basic thermogenic support at an unbeatable price point.',
  'Caffeine anhydrous provides the primary thermogenic effect. Robusta Coffee Extract (C. canephora robusta) is the key research-backed ingredient. Formula has been reformulated multiple times over the years.',
  ARRAY['Very affordable', 'Widely available in stores', 'Recognizable trusted brand', 'Basic but effective thermogenics', 'Multiple product variants available'],
  'Take 2 capsules twice daily, 30-60 minutes before meals. Start with 1 capsule to assess tolerance.',
  ARRAY['High caffeine content may cause anxiety', 'Not third-party tested', 'Contains Yohimbe which some react poorly to', 'Less transparent labeling than competitors'],
  'A budget-friendly option for those who want basic thermogenic support and are comfortable with a stimulant-heavy formula.',
  'Instant Knockout for premium quality. Trimtone for gentler effects. PhenQ for multi-action fat loss.',
  'Q: Is Hydroxycut safe? A: The current formula has been reformulated but consult a doctor if you have heart conditions or caffeine sensitivity. Q: Does it really work? A: The caffeine and Robusta Coffee Extract provide modest fat loss support when combined with diet and exercise.',
  7.8,
  '[{"name": "Tony S.", "rating": 4, "text": "Gets the job done for the price. I cycle it during cuts and it gives me the extra energy I need for fasted cardio.", "verified": true, "date": "2025-12-30"}, {"name": "Linda P.", "rating": 3, "text": "Decent budget option. Makes me a bit jittery but I notice more energy during workouts.", "verified": true, "date": "2025-12-10"}]'::jsonb
);

-- Vitamins & Minerals
INSERT INTO reviews (product_id, title, overview, ingredients_breakdown, benefits, dosage, side_effects, who_is_it_for, alternatives, faq, rating, testimonials) VALUES
(
  'e2a3d0e7-8e66-4332-a70c-713b2379304b',
  'Thorne Multivitamin Elite: Practitioner-Grade Quality',
  'Thorne is the gold standard in practitioner-grade supplements. Their Multivitamin Elite delivers bioavailable forms of every nutrient in a formula trusted by professional athletes and healthcare providers.',
  'Uses methylated B vitamins (5-MTHF folate, methylcobalamin B12) for superior absorption. Vitamin D3 at 2000 IU pairs with K2 for bone health. Chelated minerals like zinc bisglycinate maximize bioavailability.',
  ARRAY['Bioavailable methylated forms', 'NSF Certified for Sport', 'No unnecessary fillers or additives', 'Used by professional athletes', 'Practitioner-recommended'],
  'Take 2 capsules AM and 2 capsules PM with food. The split dosing ensures steady nutrient levels.',
  ARRAY['Premium price point', 'Requires 4 capsules daily', 'Some may not need the high potency'],
  'Ideal for health-conscious individuals who want the highest quality multivitamin with maximum bioavailability and purity.',
  'Ritual Essential for a subscription-based simpler option. MegaFood for whole food sourced. Nature Made for budget-friendly.',
  'Q: Why is it so expensive? A: You pay for methylated vitamins, chelated minerals, NSF certification, and zero fillers. Q: Is it worth the extra cost? A: If absorption and purity matter to you, absolutely.',
  9.4,
  '[{"name": "Dr. Amanda W.", "rating": 5, "text": "I recommend Thorne to all my patients. The bioavailability of their methylated forms is unmatched.", "verified": true, "date": "2026-01-12"}, {"name": "Steve R.", "rating": 5, "text": "As a competitive cyclist, I trust Thorne because of the NSF Certified for Sport designation. No worries about banned substances.", "verified": true, "date": "2025-12-28"}]'::jsonb
),
(
  '5d12b912-0518-49c0-aac1-0f534c33da5b',
  'Ritual Essential: The Modern Multivitamin',
  'Ritual has disrupted the vitamin industry with its minimalist, transparent approach. Their delayed-release capsules deliver only the nutrients most people actually need, based on nutrient gap analysis.',
  'Vitamin D3 (2000 IU) from lichen is vegan-friendly. Omega-3 DHA from microalgae, not fish oil. Methylated folate and B12 for proper absorption. Iron bisglycinate is gentle on the stomach.',
  ARRAY['Only nutrients you actually need', 'Traceable ingredient sourcing', 'Delayed-release for no nausea', 'Vegan-friendly forms', 'Beautiful subscription model'],
  'Take 2 capsules daily with or without food. The delayed-release design means they can be taken on an empty stomach.',
  ARRAY['Subscription model may not suit everyone', 'Fewer nutrients than comprehensive multivitamins', 'Not a complete A-Z multivitamin'],
  'Perfect for modern, health-conscious men who want a science-based approach to filling specific nutrient gaps rather than mega-dosing everything.',
  'Thorne for a more comprehensive formula. MegaFood for whole food sourced. Centrum for a complete A-Z vitamin.',
  'Q: Why does it not have every vitamin? A: Ritual only includes nutrients that research shows most people are deficient in, avoiding redundancy. Q: What is the minty smell? A: A mint tab in each bottle keeps the capsules fresh.',
  9.0,
  '[{"name": "Jordan T.", "rating": 5, "text": "Love the transparency and the science-based approach. No nausea and the subscription is so convenient.", "verified": true, "date": "2026-01-10"}, {"name": "Blake M.", "rating": 4, "text": "The delayed-release capsule is a game changer. First multivitamin that does not make me feel queasy.", "verified": true, "date": "2025-12-21"}]'::jsonb
),
(
  'ac1efa79-e2ac-4bf7-ab9a-6846fffbab49',
  'MegaFood One Daily: Whole Food Nutrition',
  'MegaFood sources their vitamins from real food, creating a multivitamin that your body recognizes and absorbs like actual nutrition. Their FoodState process preserves food-based nutrient complexes.',
  'Vitamins are derived from organic whole foods including oranges, brown rice, and broccoli. Added superfoods like turmeric and astragalus provide additional phytonutrient support.',
  ARRAY['Real food-derived vitamins', 'Gentle on empty stomach', 'Non-GMO Project Verified', 'Glyphosate Residue Free', 'B Corp certified company'],
  'Take 1 tablet daily with or without food. Can be taken on an empty stomach without nausea.',
  ARRAY['Only 1 tablet means lower doses of some nutrients', 'Larger tablet size', 'Fewer nutrients than multi-pill formulas'],
  'Best for whole food enthusiasts, organic lifestyle advocates, and anyone who prefers their nutrients sourced from real food rather than synthetic forms.',
  'Thorne for higher potency. Ritual for targeted nutrient gaps. Nature Made for budget whole food option.',
  'Q: Are food-based vitamins better? A: Research suggests food-based nutrient complexes may be better recognized and utilized by the body. Q: Why is the tablet so big? A: Whole food ingredients take more space than synthetic concentrates.',
  8.6,
  '[{"name": "Laura H.", "rating": 5, "text": "I can take this on an empty stomach with zero issues. The whole food approach makes so much sense to me.", "verified": true, "date": "2026-01-05"}, {"name": "Greg D.", "rating": 4, "text": "Tablet is big but I love knowing my vitamins come from real food. My energy levels have improved.", "verified": true, "date": "2025-12-17"}]'::jsonb
),
(
  'd405b2c5-619b-4248-a1c8-65e5dae70da0',
  'Nature Made Complete: Best Budget Multivitamin',
  'Nature Made is the pharmacist-recommended vitamin brand and USP verified, meaning every batch is tested for purity and potency. Outstanding value for comprehensive daily nutrition.',
  'Complete A-Z vitamin and mineral coverage including Vitamins A, C, D, E, K, all B vitamins, calcium, iron, zinc, and magnesium. USP verified for guaranteed potency.',
  ARRAY['USP verified for quality', 'Complete A-Z coverage', 'Pharmacist recommended', 'Incredibly affordable', 'Available everywhere'],
  'Take 1 tablet daily with food and water.',
  ARRAY['Some nutrients in less bioavailable forms', 'Contains synthetic forms of some vitamins', 'May contain common allergens'],
  'The best choice for budget-conscious individuals who want reliable, verified daily nutrition without premium pricing.',
  'Thorne for premium bioavailability. Ritual for targeted nutrients. Centrum Silver for seniors.',
  'Q: What does USP verified mean? A: An independent organization verifies that what is on the label is actually in the product. Q: Is it as good as expensive brands? A: For basic nutritional coverage, USP verification ensures reliability at a fraction of the cost.',
  8.4,
  '[{"name": "Robert N.", "rating": 5, "text": "USP verified gives me confidence I am getting what the label says. Cannot beat the price for this quality.", "verified": true, "date": "2026-01-01"}, {"name": "Maria C.", "rating": 4, "text": "My doctor recommended Nature Made specifically because of the USP verification. Reliable and affordable.", "verified": true, "date": "2025-12-14"}]'::jsonb
),
(
  '6c7a886b-a552-4445-8982-e13aa062d578',
  'Centrum Silver: Tailored for 50+',
  'Centrum Silver has been specifically formulated for adults over 50, with adjusted nutrient levels that address age-specific needs like bone density, heart health, brain function, and eye health.',
  'Higher doses of Vitamin D3 and B12 address common deficiencies in older adults. Lutein and zeaxanthin support eye health. No iron (which adults 50+ typically dont need supplemental amounts of).',
  ARRAY['Formulated for 50+ needs', 'Eye health support with lutein', 'No unnecessary iron', 'Very affordable', 'Widely trusted brand'],
  'Take 1 tablet daily with food.',
  ARRAY['Contains some synthetic vitamin forms', 'Large tablet may be difficult for some to swallow', 'Not as comprehensive as premium options'],
  'Specifically designed for active adults over 50 who want targeted nutritional support for age-related health concerns.',
  'Thorne for premium senior nutrition. Nature Made 50+ for USP verified alternative. MegaFood for food-based senior formula.',
  'Q: Why no iron? A: Most adults over 50 get adequate iron from diet and excess iron can be harmful. Q: Can adults under 50 take it? A: Its fine but you may benefit more from a standard adult formula.',
  8.2,
  '[{"name": "Carol J.", "rating": 4, "text": "My optometrist recommended Centrum Silver for the lutein content. Affordable and easy to find at any pharmacy.", "verified": true, "date": "2026-01-03"}, {"name": "Harold S.", "rating": 4, "text": "Been taking Centrum Silver for 5 years. Simple, affordable, and I trust the brand.", "verified": true, "date": "2025-12-26"}]'::jsonb
);

-- Sleep Aids
INSERT INTO reviews (product_id, title, overview, ingredients_breakdown, benefits, dosage, side_effects, who_is_it_for, alternatives, faq, rating, testimonials) VALUES
(
  '0f014d12-748c-4cce-965d-dbd608dced00',
  'Natrol Sleep Support: The Complete Sleep Formula',
  'Natrol Sleep Support combines multiple evidence-based sleep ingredients into a comprehensive formula that addresses the full sleep cycle from falling asleep to staying asleep to waking refreshed.',
  'Magnesium glycinate (200mg) relaxes muscles and calms the nervous system. L-Theanine (200mg) promotes alpha brain waves for relaxation without drowsiness. GABA (100mg) directly supports calming neurotransmission. Valerian Root rounds out the formula.',
  ARRAY['Addresses multiple aspects of sleep', 'No next-day grogginess', 'Non-habit forming', 'Promotes natural sleep cycle', 'Comprehensive multi-ingredient formula'],
  'Take 2 capsules 30-60 minutes before bed. Start with 1 capsule to assess response. Take consistently for best results.',
  ARRAY['Valerian has a strong herbal smell', 'May take 1-2 weeks for full effect', 'Not as immediately sedating as melatonin'],
  'Ideal for anyone struggling with sleep quality who wants a comprehensive, non-habit-forming solution that works with their bodys natural sleep mechanisms.',
  'Magnesium Glycinate alone for a simpler approach. Melatonin for jet lag or shift work. Glycine Powder for biohackers.',
  'Q: Can I take it with melatonin? A: You can add low-dose melatonin (0.5-1mg) but start without it as many find this formula sufficient. Q: Will I feel drowsy in the morning? A: No, the ingredients promote natural sleep without sedation hangover.',
  9.0,
  '[{"name": "Rachel B.", "rating": 5, "text": "After years of tossing and turning, I finally fall asleep within 20 minutes. The difference in my energy levels is dramatic.", "verified": true, "date": "2026-01-14"}, {"name": "Andrew L.", "rating": 5, "text": "No more 3am wake-ups. I sleep through the night and wake up actually refreshed for the first time in years.", "verified": true, "date": "2025-12-22"}]'::jsonb
),
(
  '22908cf3-9618-496f-97c0-2722936b4ed8',
  'Pure Encapsulations Magnesium Glycinate: Sleep Essential',
  'Magnesium glycinate is the most bioavailable and gentle form of magnesium, making it ideal for sleep support. Pure Encapsulations delivers pharmaceutical-grade quality in a hypoallergenic formula.',
  'Magnesium glycinate provides 120mg elemental magnesium per capsule. The glycinate form is both highly absorbable and provides the amino acid glycine, which has its own sleep-promoting properties.',
  ARRAY['Highly bioavailable magnesium form', 'Dual benefit from glycine', 'No stomach upset', 'Hypoallergenic formula', 'Supports muscle relaxation'],
  'Take 1-4 capsules daily in the evening with or without food. Start with 1 capsule and increase as needed.',
  ARRAY['May need multiple capsules for therapeutic dose', 'Can cause loose stools at high doses', 'Premium pricing for magnesium'],
  'Essential for anyone with magnesium deficiency, muscle tension, or difficulty relaxing before bed. Also excellent for athletes needing recovery support.',
  'Natrol Sleep Support for a comprehensive formula. Melatonin for circadian rhythm issues. Glycine Powder for a focused glycine supplement.',
  'Q: How much magnesium for sleep? A: 200-400mg elemental magnesium in the evening works for most people. Q: Glycinate vs citrate? A: Glycinate is gentler on the stomach and the glycine provides additional sleep benefits.',
  9.0,
  '[{"name": "Sarah J.", "rating": 5, "text": "My sleep quality improved within the first week. I also noticed less muscle cramping during workouts.", "verified": true, "date": "2026-01-09"}, {"name": "Michael F.", "rating": 5, "text": "Pure Encapsulations quality is unmatched. The magnesium glycinate dissolves smoothly and I sleep so much better.", "verified": true, "date": "2025-12-20"}]'::jsonb
),
(
  'ccaf631a-f818-4d42-a77b-26163edda6a2',
  'NOW Foods Melatonin 5mg: The Classic Sleep Aid',
  'Melatonin is the most researched sleep supplement and NOW Foods delivers it at a therapeutic dose with pharmaceutical-grade quality at a budget-friendly price.',
  'Melatonin 5mg in a simple, clean formula. NOW Foods uses GMP-certified manufacturing with third-party testing for every batch.',
  ARRAY['Rapid sleep onset', 'Excellent for jet lag', 'Incredibly affordable', 'Well-researched ingredient', 'GMP certified production'],
  'Take 1 tablet 30 minutes before bed. Start with half a tablet (2.5mg) if new to melatonin. Use lowest effective dose.',
  ARRAY['5mg may be too much for some people', 'Can cause vivid dreams', 'May lose effectiveness with continuous use', 'Daytime drowsiness if dose too high'],
  'Best for travelers, shift workers, and anyone who needs help resetting their circadian rhythm. Also good for occasional sleeplessness.',
  'Natrol Sleep Support for a comprehensive formula. Magnesium Glycinate for a non-hormonal approach. Glycine for biohacker stacking.',
  'Q: Is 5mg too much? A: Research suggests 0.5-3mg is sufficient for most people. Try breaking the tablet in half. Q: Can I become dependent? A: Melatonin is not physically addictive but your body may reduce natural production with long-term use.',
  8.6,
  '[{"name": "David C.", "rating": 5, "text": "A lifesaver for international travel. I pop one on the plane and wake up adjusted to the new timezone.", "verified": true, "date": "2026-01-02"}, {"name": "Teresa W.", "rating": 4, "text": "Works great at half dose. I fall asleep within 20 minutes. Just wish there was a lower dose option.", "verified": true, "date": "2025-12-18"}]'::jsonb
),
(
  '4a8df242-391c-4838-a8a9-eed871762f9c',
  'Nutricost Glycine Powder: The Biohacker''s Sleep Aid',
  'Glycine is an underappreciated amino acid with powerful sleep benefits. Research shows 3g before bed significantly improves sleep quality and reduces next-day fatigue.',
  'Pure glycine powder with nothing else added. 3g serving provides the researched dose for sleep improvement. Has a mildly sweet taste that mixes easily.',
  ARRAY['Clinically studied for sleep', 'Reduces next-day fatigue', 'Mildly sweet taste', 'Extremely affordable', 'Easy to stack with other supplements'],
  'Mix 3g (about 1 teaspoon) in water or tea 30-60 minutes before bed. Can also be taken sublingually for faster effects.',
  ARRAY['Need to measure powder doses', 'Takes a few days of consistent use', 'Mild only - may not be enough for severe insomnia'],
  'Perfect for biohackers, supplement stackers, and anyone who wants a research-backed amino acid approach to better sleep without hormones or herbs.',
  'Magnesium Glycinate for a magnesium + glycine combo. Natrol for comprehensive formula. Melatonin for circadian reset.',
  'Q: How does glycine help sleep? A: It lowers core body temperature and increases serotonin production, both of which facilitate sleep onset. Q: Can I take it with other sleep supplements? A: Yes, glycine stacks well with magnesium and theanine.',
  8.4,
  '[{"name": "Jason H.", "rating": 5, "text": "3g before bed and I wake up feeling more refreshed than any other sleep aid has provided. The science on glycine is solid.", "verified": true, "date": "2026-01-06"}, {"name": "Kate P.", "rating": 4, "text": "Subtle but effective. I added it to my evening tea and my sleep tracker shows deeper sleep phases.", "verified": true, "date": "2025-12-25"}]'::jsonb
),
(
  'f00cc9a6-1be7-467e-9de4-afd5622814a6',
  'Valerian Root Extract: Traditional Sleep Remedy',
  'Valerian root has been used for centuries as a natural sleep remedy. While modern research is mixed, many users report significant benefits from this time-tested botanical.',
  'Concentrated valerian root extract standardized to valerenic acid content. Valerenic acid interacts with GABA receptors to promote relaxation and sleep onset.',
  ARRAY['Centuries of traditional use', 'Non-hormonal sleep support', 'GABA receptor modulation', 'Affordable herbal option', 'No prescription needed'],
  'Take 1-2 capsules 30 minutes to 2 hours before bed. Effects may be cumulative, so take consistently for 2-4 weeks.',
  ARRAY['Strong earthy smell and taste', 'Takes 2-4 weeks for full effect', 'Mixed clinical evidence', 'May interact with certain medications'],
  'Good for those who prefer traditional herbal remedies and want a gentle, non-hormonal sleep support option.',
  'Natrol Sleep Support for a comprehensive formula. Melatonin for faster onset. Magnesium Glycinate for mineral-based approach.',
  'Q: Does valerian root really work? A: Clinical evidence is mixed, but many users report meaningful improvements, especially with consistent use. Q: Why does it smell so bad? A: The valerenic acid compounds have a naturally strong odor that is difficult to mask.',
  7.8,
  '[{"name": "Martha G.", "rating": 4, "text": "The smell is rough but it works for me. I have been using valerian for years and sleep much better with it.", "verified": true, "date": "2025-12-28"}, {"name": "Paul K.", "rating": 3, "text": "Took about 3 weeks to notice effects but now I do sleep better. Just wish it did not smell so bad.", "verified": true, "date": "2025-12-12"}]'::jsonb
);

-- Longevity & Anti-Aging
INSERT INTO reviews (product_id, title, overview, ingredients_breakdown, benefits, dosage, side_effects, who_is_it_for, alternatives, faq, rating, testimonials) VALUES
(
  'f3b169b1-e4ff-48c9-ac28-9d476e9ee781',
  'Basis by Elysium: The Science of NAD+',
  'Basis is the flagship product from Elysium Health, a company co-founded by an MIT scientist. It combines nicotinamide riboside (NR) with pterostilbene to boost NAD+ levels, a critical molecule that declines with age.',
  'Nicotinamide Riboside (250mg) is a precursor to NAD+, essential for cellular energy and DNA repair. Pterostilbene (50mg), a more bioavailable analog of resveratrol, activates sirtuins for longevity pathways.',
  ARRAY['Clinically shown to increase NAD+ levels', 'Supports cellular energy production', 'Activates sirtuin longevity pathways', 'Founded by MIT researchers', 'Third-party tested'],
  'Take 2 capsules each morning with or without food. Consistent daily use is recommended for sustained NAD+ elevation.',
  ARRAY['Premium pricing', 'Benefits are long-term and hard to feel immediately', 'Limited long-term human studies on NR'],
  'Best for longevity-focused individuals over 35 who want to support cellular health with cutting-edge, research-backed ingredients.',
  'CoQ10 for mitochondrial support. Resveratrol for sirtuin activation. Spermidine for autophagy support.',
  'Q: Can I feel the effects? A: Most users report subtle improvements in energy after 2-4 weeks. Blood tests can confirm NAD+ level changes. Q: Is NR better than NMN? A: Both raise NAD+ levels. NR has more published human clinical trials.',
  9.2,
  '[{"name": "Dr. Steven L.", "rating": 5, "text": "My NAD+ levels increased 40% after 4 weeks, confirmed by blood work. The science behind Elysium is solid.", "verified": true, "date": "2026-01-11"}, {"name": "Karen M.", "rating": 4, "text": "Subtle improvements in energy and recovery. I am playing the long game with this one.", "verified": true, "date": "2025-12-19"}]'::jsonb
),
(
  'b313d198-637f-4400-b7e4-055051fb9ed0',
  'Qunol CoQ10: Heart and Energy Powerhouse',
  'CoQ10 is essential for mitochondrial energy production and declines significantly with age. Qunol uses the superior ubiquinol form with enhanced water and fat solubility for 3x better absorption.',
  'Ubiquinol (active form of CoQ10) at 100mg with Qunol patented formulation for enhanced absorption. Unlike ubiquinone, ubiquinol does not require conversion and is immediately bioavailable.',
  ARRAY['Superior ubiquinol form', '3x better absorption than standard CoQ10', 'Supports heart health', 'Boosts cellular energy', 'Affordable for quality'],
  'Take 1 softgel daily with a meal containing fat for optimal absorption.',
  ARRAY['Softgel size may be large for some', 'May interact with blood-thinning medications', 'Effects take 4-8 weeks to notice'],
  'Essential for anyone over 40, statin medication users (which deplete CoQ10), and those wanting to support heart health and cellular energy production.',
  'Basis for NAD+ pathway. Resveratrol for anti-aging antioxidants. Alpha Lipoic Acid for additional mitochondrial support.',
  'Q: Ubiquinol vs ubiquinone? A: Ubiquinol is the active, reduced form that your body can use immediately. It is significantly better absorbed. Q: Do statins deplete CoQ10? A: Yes, statin medications block the same pathway that produces CoQ10, making supplementation important.',
  9.0,
  '[{"name": "William D.", "rating": 5, "text": "My cardiologist recommended CoQ10 with my statin medication. Energy levels improved significantly within a month.", "verified": true, "date": "2026-01-08"}, {"name": "Nancy B.", "rating": 5, "text": "The Qunol absorption is noticeably better than the generic CoQ10 I was taking before. More energy throughout the day.", "verified": true, "date": "2025-12-22"}]'::jsonb
),
(
  '5a44fec0-d75e-4b9f-8894-ca5c789aa759',
  'Life Extension Resveratrol: Anti-Aging Antioxidant',
  'Resveratrol Ultra from Life Extension combines trans-resveratrol with synergistic polyphenols for comprehensive anti-aging support. Life Extension is known for using evidence-based dosing.',
  'Trans-resveratrol (250mg) is the most studied form of resveratrol. Grape and wild blueberry extracts provide additional polyphenols. Fisetin and quercetin add synergistic anti-aging support.',
  ARRAY['Premium trans-resveratrol form', 'Synergistic polyphenol blend', 'Powerful antioxidant protection', 'Supports cardiovascular health', 'Life Extension quality standards'],
  'Take 1 capsule daily with food. Can be taken with other antioxidants for enhanced effects.',
  ARRAY['May interact with blood-thinning medications', 'Bioavailability challenges with resveratrol', 'Benefits are subtle and long-term'],
  'Great for health-conscious adults interested in anti-aging, cardiovascular protection, and comprehensive antioxidant support.',
  'Basis for NAD+ boosting. CoQ10 for mitochondrial energy. Spermidine for autophagy activation.',
  'Q: Is resveratrol the same as drinking red wine? A: One capsule contains the resveratrol equivalent of hundreds of glasses of wine, without the alcohol. Q: Does it really slow aging? A: Animal studies are promising. Human longevity studies are ongoing.',
  8.6,
  '[{"name": "Richard A.", "rating": 4, "text": "Part of my daily anti-aging stack. Skin looks better and blood work markers have improved over 6 months.", "verified": true, "date": "2026-01-04"}, {"name": "Diana S.", "rating": 4, "text": "Trust Life Extension for quality. Taking this with CoQ10 and my energy levels are better than 10 years ago.", "verified": true, "date": "2025-12-16"}]'::jsonb
),
(
  '46fa526d-3b33-45ec-8bb9-2afecb165274',
  'spermidineLIFE: Activating Cellular Renewal',
  'Spermidine is one of the most exciting longevity molecules, triggering autophagy - your body''s cellular recycling process. spermidineLIFE is the leading spermidine supplement with clinical research.',
  'Natural spermidine derived from wheat germ extract at 1mg per daily dose. Standardized extraction process ensures consistent spermidine content. Additional wheat germ nutrients provide synergistic support.',
  ARRAY['Triggers autophagy (cellular cleanup)', 'Clinically studied in humans', 'Supports cellular renewal', 'Natural wheat germ source', 'Well-tolerated'],
  'Take 2 capsules daily with breakfast. Consistent daily use is important for autophagy activation.',
  ARRAY['Contains wheat (not suitable for celiac)', 'Premium pricing for spermidine content', 'Research still emerging'],
  'For serious longevity enthusiasts and biohackers who want to support autophagy and cellular renewal through a research-backed natural compound.',
  'Basis for NAD+ support. Resveratrol for antioxidant protection. CoQ10 for mitochondrial energy.',
  'Q: What is autophagy? A: Your body''s process of cleaning out damaged cells and regenerating new ones. It is activated by fasting and spermidine. Q: Is it safe for daily use? A: Spermidine is naturally present in many foods and has been consumed throughout human history.',
  8.4,
  '[{"name": "Dr. Thomas R.", "rating": 4, "text": "The autophagy research is compelling. I added this to my longevity stack alongside periodic fasting.", "verified": true, "date": "2026-01-07"}, {"name": "Jennifer L.", "rating": 4, "text": "Hard to measure the effects directly but my blood markers are trending in the right direction after 3 months.", "verified": true, "date": "2025-12-23"}]'::jsonb
),
(
  '05054100-f5e6-4637-9cd5-1f4e68a2fb8b',
  'NOW Foods Alpha Lipoic Acid: Universal Antioxidant',
  'Alpha Lipoic Acid (ALA) is unique because it works in both water and fat-soluble environments, making it a universal antioxidant. It also recycles other antioxidants like vitamins C and E.',
  'Alpha Lipoic Acid at 300mg per capsule. Both R and S isomers present. Works synergistically with other antioxidants by recycling them after they neutralize free radicals.',
  ARRAY['Works in water and fat environments', 'Recycles other antioxidants', 'Supports blood sugar metabolism', 'Affordable from NOW Foods', 'Well-researched ingredient'],
  'Take 1 capsule 1-2 times daily between meals for best absorption. Can be taken with or without food.',
  ARRAY['May lower blood sugar (caution for diabetics on medication)', 'Mild stomach upset possible', 'Biotin depletion with long-term use'],
  'Good for anyone seeking broad antioxidant support, blood sugar management, and those who want an affordable addition to their anti-aging supplement routine.',
  'CoQ10 for mitochondrial focus. Resveratrol for polyphenol support. Basis for NAD+ boosting.',
  'Q: Should I take R-ALA or regular ALA? A: R-ALA is more bioavailable but regular ALA still provides meaningful benefits at a lower cost. Q: Does it help with blood sugar? A: Yes, research supports ALA role in improving insulin sensitivity.',
  8.2,
  '[{"name": "Frank T.", "rating": 4, "text": "Great addition to my supplement routine. My fasting blood sugar has come down since adding ALA.", "verified": true, "date": "2026-01-02"}, {"name": "Susan M.", "rating": 4, "text": "Affordable and effective. I stack this with my CoQ10 and vitamin C for comprehensive antioxidant coverage.", "verified": true, "date": "2025-12-15"}]'::jsonb
);