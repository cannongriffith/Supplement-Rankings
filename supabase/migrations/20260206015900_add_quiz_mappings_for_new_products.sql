/*
  # Add Quiz Mappings for 50 New Products

  1. Changes
    - Update quiz question 1 to add new goal options: Joint & Mobility, Gut Health, Performance & Energy
    - Add quiz_product_mappings for all 50 new products across all categories
    - Each mapping includes goal_tags, budget_tag, experience_tag, and priority_score

  2. Notes
    - Mappings enable the quiz to recommend new products
    - Priority scores reflect product quality and category relevance
*/

UPDATE quiz_questions
SET options = '[
  {"label": "Sharper Focus & Mental Clarity", "value": "focus"},
  {"label": "Build Muscle & Get Stronger", "value": "muscle"},
  {"label": "Lose Weight & Burn Fat", "value": "fat_loss"},
  {"label": "Better Sleep & Recovery", "value": "sleep"},
  {"label": "Overall Health & Wellness", "value": "wellness"},
  {"label": "Anti-Aging & Longevity", "value": "longevity"},
  {"label": "Joint & Mobility Support", "value": "joint_health"},
  {"label": "Gut Health & Digestion", "value": "gut_health"},
  {"label": "Performance & Energy", "value": "performance"}
]'::jsonb
WHERE step_number = 1;

-- Nootropics (new 5)
INSERT INTO quiz_product_mappings (product_id, goal_tags, budget_tag, experience_tag, priority_score) VALUES
('d071e261-36a8-45ff-9f7d-db033c85ff2d', ARRAY['focus','wellness'], 'mid', 'intermediate', 80),
('59a061c0-1258-4d54-abff-22e9df730dde', ARRAY['focus'], 'premium', 'advanced', 78),
('2b60eee7-5f4e-43fa-9585-c9cbcc5fcc34', ARRAY['focus'], 'mid', 'intermediate', 76),
('4ad62b6a-7b10-4ae5-b15c-9caa5cdfa4db', ARRAY['focus','wellness'], 'mid', 'beginner', 72),
('d93eccc2-26c9-45cc-bb79-4f45f0ad96ba', ARRAY['focus'], 'budget', 'beginner', 65);

-- Protein (new 5)
INSERT INTO quiz_product_mappings (product_id, goal_tags, budget_tag, experience_tag, priority_score) VALUES
('7f4e651d-8922-4efd-9b3b-8fcc073ebd14', ARRAY['muscle','performance'], 'mid', 'intermediate', 82),
('dfb43597-4739-4dfe-8548-db6ff7ad7317', ARRAY['muscle','performance'], 'mid', 'intermediate', 80),
('9f042aa9-762d-4f65-883c-b50af8885184', ARRAY['muscle'], 'mid', 'beginner', 76),
('7c69f2ff-0b53-4be0-9ec4-9d203210a680', ARRAY['muscle','wellness'], 'mid', 'intermediate', 74),
('d4ba1363-c13e-433b-8108-9b8c4ed3bdc5', ARRAY['muscle','wellness'], 'mid', 'intermediate', 72);

-- Fat Burners (new 5)
INSERT INTO quiz_product_mappings (product_id, goal_tags, budget_tag, experience_tag, priority_score) VALUES
('55d1e743-58c7-4ba8-865e-14e84265dc0e', ARRAY['fat_loss'], 'mid', 'intermediate', 78),
('15cce14b-8336-4f2c-ab47-8c39cf3a44df', ARRAY['fat_loss'], 'mid', 'intermediate', 76),
('5de66d78-385b-4f9f-bb34-f704b925598b', ARRAY['fat_loss'], 'budget', 'beginner', 72),
('64bef976-d2b9-48e8-9ff4-470ce3beae7a', ARRAY['fat_loss','muscle'], 'mid', 'advanced', 70),
('4af9835c-981e-4f30-baa0-ef172ca16cef', ARRAY['fat_loss'], 'mid', 'beginner', 68);

-- Vitamins & Minerals (new 5)
INSERT INTO quiz_product_mappings (product_id, goal_tags, budget_tag, experience_tag, priority_score) VALUES
('e2a3d0e7-8e66-4332-a70c-713b2379304b', ARRAY['wellness','longevity'], 'mid', 'intermediate', 80),
('5d12b912-0518-49c0-aac1-0f534c33da5b', ARRAY['wellness'], 'mid', 'beginner', 78),
('ac1efa79-e2ac-4bf7-ab9a-6846fffbab49', ARRAY['wellness'], 'mid', 'beginner', 76),
('73bc77cb-c0a6-47b3-9d2c-417219d2f921', ARRAY['wellness','performance'], 'budget', 'intermediate', 72),
('6c7a886b-a552-4445-8982-e13aa062d578', ARRAY['wellness'], 'budget', 'beginner', 68);

-- Sleep Aids (new 5)
INSERT INTO quiz_product_mappings (product_id, goal_tags, budget_tag, experience_tag, priority_score) VALUES
('64bc0b79-d161-452e-87a9-2a104f27928d', ARRAY['sleep'], 'mid', 'advanced', 78),
('b0daa6c9-990f-4b52-989e-3ec5a6771fe1', ARRAY['sleep'], 'mid', 'beginner', 76),
('3fea9260-3813-4791-bdc2-f2856ec92134', ARRAY['sleep','focus'], 'budget', 'intermediate', 74),
('704bfe5e-737a-41b6-8430-c0f62d7603b4', ARRAY['sleep'], 'budget', 'advanced', 70),
('4a8df242-391c-4838-a8a9-eed871762f9c', ARRAY['sleep'], 'budget', 'beginner', 68);

-- Longevity (new 5)
INSERT INTO quiz_product_mappings (product_id, goal_tags, budget_tag, experience_tag, priority_score) VALUES
('5a44fec0-d75e-4b9f-8894-ca5c789aa759', ARRAY['longevity'], 'budget', 'intermediate', 78),
('5c2e873a-acc1-4460-b649-a921b74389bf', ARRAY['longevity','wellness'], 'budget', 'beginner', 76),
('e3206745-eb8f-4103-9e4c-3e87f04f8602', ARRAY['longevity','wellness'], 'budget', 'intermediate', 74),
('05054100-f5e6-4637-9cd5-1f4e68a2fb8b', ARRAY['longevity'], 'budget', 'intermediate', 72),
('46fa526d-3b33-45ec-8bb9-2afecb165274', ARRAY['longevity'], 'mid', 'advanced', 70);

-- Pre-Workout (new 5)
INSERT INTO quiz_product_mappings (product_id, goal_tags, budget_tag, experience_tag, priority_score) VALUES
('143d1ea5-4404-4447-9735-4026b5eff9b4', ARRAY['performance','muscle'], 'mid', 'intermediate', 90),
('8735ed29-3129-4412-b755-ed4317cc89e0', ARRAY['performance','muscle'], 'mid', 'advanced', 88),
('6d828abd-13d9-40b4-a924-051451e41ce9', ARRAY['performance','muscle'], 'mid', 'advanced', 86),
('53157105-6f34-4eeb-bc4f-1eeb5947152a', ARRAY['performance'], 'mid', 'beginner', 82),
('842d0c5e-6568-4967-a91b-6ae2761c4f43', ARRAY['performance','muscle'], 'budget', 'beginner', 78);

-- Creatine (new 5)
INSERT INTO quiz_product_mappings (product_id, goal_tags, budget_tag, experience_tag, priority_score) VALUES
('33d85b2c-c87c-41d0-bce4-a81c2fafa205', ARRAY['muscle','performance'], 'mid', 'intermediate', 88),
('6367ca4e-d290-4943-9e59-230e15e1365b', ARRAY['muscle','performance'], 'mid', 'intermediate', 86),
('12a1646a-5c53-46d4-8ef6-edd33fa29713', ARRAY['muscle','performance'], 'budget', 'beginner', 84),
('ab08a42a-03ba-4d31-b37f-39ed47ecc6a0', ARRAY['muscle','performance'], 'budget', 'beginner', 80),
('a632da78-0bff-45cc-a877-4dc9499e60c9', ARRAY['muscle','performance'], 'budget', 'intermediate', 76);

-- Joint & Bone Health (new 5)
INSERT INTO quiz_product_mappings (product_id, goal_tags, budget_tag, experience_tag, priority_score) VALUES
('99474c08-68b7-4bab-afaf-919d84fc9ab2', ARRAY['joint_health','longevity'], 'mid', 'intermediate', 88),
('fefdc465-7f9e-4eb2-a22a-65570422cf8f', ARRAY['joint_health'], 'budget', 'beginner', 82),
('2a30dbf1-338e-48f3-ba10-b913dd239bf9', ARRAY['joint_health'], 'budget', 'beginner', 78),
('80cb1515-0549-49f9-8404-c786e9ece4c4', ARRAY['joint_health','wellness'], 'mid', 'beginner', 76),
('985c86c9-2d4a-4019-869c-3996c8057abe', ARRAY['joint_health','longevity'], 'budget', 'intermediate', 74);

-- Gut Health (new 5)
INSERT INTO quiz_product_mappings (product_id, goal_tags, budget_tag, experience_tag, priority_score) VALUES
('9288d2f9-7f91-4b7d-8454-3ded49213d8b', ARRAY['gut_health','wellness'], 'mid', 'advanced', 90),
('8fbce684-2bf7-44be-948f-e8c86817b916', ARRAY['gut_health','wellness'], 'mid', 'intermediate', 86),
('06175d55-1103-4f67-af84-d86a15c5a100', ARRAY['gut_health','wellness'], 'mid', 'beginner', 82),
('5b734433-7b44-433e-be29-e96bc0db350b', ARRAY['gut_health'], 'budget', 'beginner', 78),
('554d8268-1675-41f8-9d51-782df3b44f21', ARRAY['gut_health'], 'budget', 'beginner', 74);