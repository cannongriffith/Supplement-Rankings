/*
  # Fix All Broken Product Images with Verified Working URLs

  1. Overview
    - Updates image_url for 64 products whose Amazon image URLs were returning HTTP 404/400
    - All replacement URLs have been verified to return HTTP 200
    - Sources include Amazon, brand websites, Walmart, and other reliable CDNs
    - Only 16 of 80 product images were loading; this fixes the remaining 64

  2. Products Updated
    - Protein Powders: Transparent Labs Whey, Ghost Whey, Isopure, Vega Sport, etc.
    - Pre-Workouts: BULK, Ghost Legend, Gorilla Mode
    - Creatine: Thorne, Transparent Labs HMB, Naked, CON-CRET, ON Micronized
    - Nootropics: Genius Mushrooms, NooCube, Neuriva Plus, Performance Lab Mind
    - Fat Burners: Animal Cuts, Burn Lab Pro, Hydroxycut, Leanbean, PhenQ, etc.
    - Vitamins: Centrum Silver, Kirkland Daily, MegaFood, Ritual, Life Extension, etc.
    - Sleep: Dream Powder, OLLY Sleep, Natrol Melatonin, Valerian Root, Sleep Breakthrough
    - Gut Health: Culturelle, Garden of Life Probiotics, Seed DS-01, Align, Synbiotic+, Ritual
    - Joint/Bone: Thorne Glucosamine, Move Free, Osteo Bi-Flex, Plant Calcium, Hyaluronic Acid, Collagen
    - Longevity: Basis NAD+, Tru Niagen, Resveratrol, spermidineLIFE, CoQ10, Quercetin, Apigenin

  3. Important Notes
    - No schema changes; data-only update to image_url column
    - Existing fallback/placeholder logic in the app remains as safety net
*/

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61P1QjHOd6L._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE id = '7f4e651d-8922-4efd-9b3b-8fcc073ebd14';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/81np5Cw8yfS._SL1500_.jpg'
WHERE id = '73bc77cb-c0a6-47b3-9d2c-417219d2f921';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71es8VzI-nL._AC_.jpg'
WHERE id = '05054100-f5e6-4637-9cd5-1f4e68a2fb8b';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71pI5OD6g7L._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE id = '64bef976-d2b9-48e8-9ff4-470ce3beae7a';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61FWaZBWeRL._AC_SL1075_.jpg'
WHERE id = '704bfe5e-737a-41b6-8430-c0f62d7603b4';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61CHow2KSAL._AC_.jpg'
WHERE id = 'f3b169b1-e4ff-48c9-ac28-9d476e9ee781';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71yJXQgtwqL._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE id = '5c2e873a-acc1-4460-b649-a921b74389bf';

UPDATE products SET image_url = 'https://www.transparentlabs.com/cdn/shop/files/BULK_-_Blue_Raspberry.png?v=1719013177'
WHERE id = '143d1ea5-4404-4447-9735-4026b5eff9b4';

UPDATE products SET image_url = 'https://www.alizyme.com/wp-content/uploads/2022/05/Buy-Burn-Lab-Pro-Online--1024x576.png'
WHERE id = '15cce14b-8336-4f2c-ab47-8c39cf3a44df';

UPDATE products SET image_url = 'https://i5.walmartimages.com/asr/1c89c771-430c-472f-88af-c5231c7c3bd6_1.6fc62a24249768a01b59e33faa39fe52.jpeg'
WHERE id = '6c7a886b-a552-4445-8982-e13aa062d578';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71qQ0ib+mOL._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE id = '164ab9b8-833b-41e2-841b-8b908c50cfba';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71X9DAChHRL.jpg'
WHERE id = 'b313d198-637f-4400-b7e4-055051fb9ed0';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/51yir9Hua4L._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE id = '33d85b2c-c87c-41d0-bce4-a81c2fafa205';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61KjMm2QhWL._AC_SX679_.jpg'
WHERE id = '6367ca4e-d290-4943-9e59-230e15e1365b';

UPDATE products SET image_url = 'https://i5.walmartimages.com/seo/Kirkland-Signature-Daily-Multi-500-Tablets_64246ae0-c8c4-492b-932f-bca501a3bfd7.4b6aa391cd3281721f4f4273eaf81c87.jpeg'
WHERE id = 'b1b1f7f8-f2e5-47df-a7ec-907a68a862c0';

UPDATE products SET image_url = 'https://culturelleprobiotic.ca/cdn/shop/files/Culturelle_DigestiveHealth30Ct_Product1.jpg?crop=center&height=1200&v=1700061797&width=1200'
WHERE id = '554d8268-1675-41f8-9d51-782df3b44f21';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61sedBtfSbL._AC_SY300_SX300_QL70_FMwebp_.jpg'
WHERE id = '8fbce684-2bf7-44be-948f-e8c86817b916';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61Az06MnoQL._AC_UF1000,1000_QL80_.jpg'
WHERE id = 'b0daa6c9-990f-4b52-989e-3ec5a6771fe1';

UPDATE products SET image_url = 'https://pinestreetclinic.com/cdn/shop/files/Seed_PDP_01_Hero_1_NEW_664x664.png?v=1702825685'
WHERE id = '9288d2f9-7f91-4b7d-8454-3ded49213d8b';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71emKLWuihL._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE id = '1c40d322-1d4c-4efb-a08c-5c5f1c0d56bc';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71a8HzKz-cL._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE id = '53157105-6f34-4eeb-bc4f-1eeb5947152a';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61DJifdWHaL._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE id = '9f042aa9-762d-4f65-883c-b50af8885184';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/4149fLWvT7L._AC_.jpg'
WHERE id = '99474c08-68b7-4bab-afaf-919d84fc9ab2';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61ObslAhoFL._AC_SL1500_.jpg'
WHERE id = '4a8df242-391c-4838-a8a9-eed871762f9c';

UPDATE products SET image_url = 'https://cdn11.bigcommerce.com/s-hml7iwqa3w/images/stencil/1920w/products/3374/9210/Gorilla_Mode_Bombsicle__61954.1694667516.jpg?c=1'
WHERE id = '8735ed29-3129-4412-b755-ed4317cc89e0';

UPDATE products SET image_url = 'https://nowfoods.ca/wp-content/uploads/2022/05/NOW83155_01-1000x1000.png'
WHERE id = '985c86c9-2d4a-4019-869c-3996c8057abe';

UPDATE products SET image_url = 'https://international.muscletech.com/wp-content/uploads/2022/01/muscletech-hydroxycut-hardcore-elite-1.png'
WHERE id = '9dbec031-d7ef-4997-bae2-5c616f96d852';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61niWdcm0GL._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE id = 'ab2b8ed6-4953-454b-bd99-70487c4d80ba';

UPDATE products SET image_url = 'https://barbend.com/wp-content/uploads/2018/10/Leanbean-Fat-Burner-1.png'
WHERE id = '85df5078-8a77-404f-9091-efd519332e42';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71JUh9ACUOL._AC_.jpg'
WHERE id = '3b4939d5-d740-4cd3-8566-1fc244893df6';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/719Q4IVm+ML.jpg'
WHERE id = '22908cf3-9618-496f-97c0-2722936b4ed8';

UPDATE products SET image_url = 'https://nowfoods.ca/wp-content/uploads/2022/05/NOW82390_01-2048x2048.png'
WHERE id = '3fea9260-3813-4791-bdc2-f2856ec92134';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71jsM-VYI7L._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE id = 'ac1efa79-e2ac-4bf7-ab9a-6846fffbab49';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71SGNJz5y8L._AC_SY300_SX300_QL70_FMwebp_.jpg'
WHERE id = '12a1646a-5c53-46d4-8ef6-edd33fa29713';

UPDATE products SET image_url = 'https://www.schiffvitamins.com/cdn/shop/files/MF_80ct_2x_24b36b15-0bef-49be-81fa-595932e8eb87.png?v=1689784477&width=1346'
WHERE id = '2a30dbf1-338e-48f3-ba10-b913dd239bf9';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/81rwKAPM71S._AC_SL1500_.jpg'
WHERE id = '80cb1515-0549-49f9-8404-c786e9ece4c4';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71Y8GT3GYvL._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE id = 'ab08a42a-03ba-4d31-b37f-39ed47ecc6a0';

UPDATE products SET image_url = 'https://www.natrol.com/cdn/shop/products/Natrol-Melatonin-5mg-Tablets-60ct-Front1.png?v=1699407365&width=600'
WHERE id = '0f014d12-748c-4cce-965d-dbd608dced00';

UPDATE products SET image_url = 'https://www.schiffvitamins.com/cdn/shop/products/neurivaplusbottle.png?v=1675105171'
WHERE id = '4ad62b6a-7b10-4ae5-b15c-9caa5cdfa4db';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71vC+BLx3HL._AC_SL1500_.jpg'
WHERE id = '2be1a8c1-6548-42c7-8d50-b5fa7d43e222';

UPDATE products SET image_url = 'https://i5.walmartimages.com/seo/OLLY-Sleep-Gummy-Supplement-3mg-Melatonin-L-Theanine-Sleep-Aid-Blackberry-Flavor-90-ct_0cf9283c-4c8b-46ce-ba54-bb3d7c2918e3.008dc5e46af058137225cb110716711a.jpeg'
WHERE id = '213921ad-ac46-4bdd-b54e-2bb2d694016d';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61mZIdgyvqL._AC_SY300_SX300_QL70_ML2_.jpg'
WHERE id = 'a632da78-0bff-45cc-a877-4dc9499e60c9';

UPDATE products SET image_url = 'https://brainsupplementsresearch.com/img/product-performancelabmind-box-front.png'
WHERE id = '2b60eee7-5f4e-43fa-9585-c9cbcc5fcc34';

UPDATE products SET image_url = 'https://ultimatestrengths.com/wp-content/uploads/2022/09/PhenQ-fat-burner-1.png'
WHERE id = '981342b9-0323-4f24-9f03-a96f1a79271c';

UPDATE products SET image_url = 'https://blog.priceplow.com/wp-content/uploads/transparent-labs-fat-burner.png'
WHERE id = '55d1e743-58c7-4ba8-865e-14e84265dc0e';

UPDATE products SET image_url = 'https://transforms.premierprotein.com/production/a/general/Family/PREINT0006_PDP_PRODUCT_1400x732.jpg?w=1200&h=630&q=82&auto=format&fit=crop&dm=1693327958&s=533715d5383fd8460ca904b3ec0ee23f'
WHERE id = 'd831997f-daa4-45b3-832c-1b77077fe9de';

UPDATE products SET image_url = 'https://www.betterhealthinternational.com/cdn/shop/products/qb00101.jpg?v=1611451070'
WHERE id = 'd93eccc2-26c9-45cc-bb79-4f45f0ad96ba';

UPDATE products SET image_url = 'https://i5.walmartimages.com/asr/62080736-0009-4590-b22f-3f50034efbd0_1.ed6d96b2de261737a46678362d99fb13.jpeg'
WHERE id = '5b734433-7b44-433e-be29-e96bc0db350b';

UPDATE products SET image_url = 'https://images-na.ssl-images-amazon.com/images/I/81mN7YXn4XL.jpg'
WHERE id = 'e3206745-eb8f-4103-9e4c-3e87f04f8602';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71dUGo9ExjL._AC_SX522_.jpg'
WHERE id = '5a44fec0-d75e-4b9f-8894-ca5c789aa759';

UPDATE products SET image_url = 'https://images.ctfassets.net/uuc5ok478nyh/1G5IunqV5wUv9TeYCvYDXE/f3034635f01142a4008b3e917c8ae1db/PDP_EFM18_Bottle.jpg?w=1110&h=1110&fl=progressive&q=90&fm=jpg'
WHERE id = '5d12b912-0518-49c0-aac1-0f534c33da5b';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61yMgHXWB5L._AC_SL1500_.jpg'
WHERE id = '64bc0b79-d161-452e-87a9-2a104f27928d';

UPDATE products SET image_url = 'https://mydrxm.com/cdn/shop/products/14057_1200x1200.jpg?v=1655925274'
WHERE id = '46fa526d-3b33-45ec-8bb9-2afecb165274';

UPDATE products SET image_url = 'https://cdn.shopify.com/s/files/1/1255/6803/products/SPORT_Protein_Plant_Vanilla_1800x.jpg?v=1600981252'
WHERE id = 'e167e09d-1ef2-484f-9f9e-7621ac17a121';

UPDATE products SET image_url = 'https://cdn.shopify.com/s/files/1/1492/2278/products/CELL_2104_Ecomm_PDP_SupplementImages_Cellucor_SuperHD.png?v=1655483398&width=1946'
WHERE id = 'fc9596d9-d60a-4faa-9f47-ec8ae95f645b';

UPDATE products SET image_url = 'https://www.gosupps.com/media/catalog/product/cache/25/image/1500x/040ec09b1e35df139433887a97daa66f/8/1/81A2FD8VZwL.jpg'
WHERE id = '06175d55-1103-4f67-af84-d86a15c5a100';

UPDATE products SET image_url = 'https://womenandmuscle.com/wp-content/uploads/2020/07/trimtoneonebottle.png'
WHERE id = '4af9835c-981e-4f30-baa0-ef172ca16cef';

UPDATE products SET image_url = 'https://i5.walmartimages.com/asr/006cba48-1190-4a6d-bd86-86bafbbaea37_1.db352b7ac8eebed1d1c73f070674e03a.jpeg'
WHERE id = 'fefdc465-7f9e-4eb2-a22a-65570422cf8f';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71BarSbrj-L._AC_.jpg'
WHERE id = '47ba37e2-f7af-4efd-bb7f-373002d5eddb';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71S8+dha6DL._AC_.jpg'
WHERE id = 'a467e036-af34-4c55-96dc-b735c9f11807';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/61EiSuvCtsL._AC_SL1000_.jpg'
WHERE id = 'b2bbd809-e121-4abd-b8d7-3ddc88d8193b';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/71EtQk5Nc2L._AC_.jpg'
WHERE id = 'f00cc9a6-1be7-467e-9de4-afd5622814a6';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/81FckdHDDEL.jpg'
WHERE id = 'd4ba1363-c13e-433b-8108-9b8c4ed3bdc5';

UPDATE products SET image_url = 'https://m.media-amazon.com/images/I/81o1sQIhNcL._AC_SL1500_.jpg'
WHERE id = 'ae7aefc1-5778-499b-9a6f-7755aea76093';