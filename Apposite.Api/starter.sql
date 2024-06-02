﻿CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
insert into public."MediaFiles" ("Id", "FileName", "FileType", "MediaName", "IsDeleted", "UpdatedAt", "CreatedAt") values ('7aa5b730-3340-49cb-89f4-462b4233a5ff', '079ae404-2049-4a7f-a64a-c1f468d950d0.png', 1, 'Food Image', false, null, '2023-07-19 09:46:57');

insert into public."Healths" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") values (uuid_generate_v4(), 'Diyabet', 'Kan şekerini düzenlemek için gereken özel diyet ve ilaç tedavisi.', '2024-06-02 14:30:00', null, false);
insert into public."Healths" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") values (uuid_generate_v4(), 'Çölyak', 'Gluten içeren yiyeceklerden kaçınmayı gerektiren otomatik bağışıklık hastalığı.', '2024-06-02 14:30:00', null, false);
insert into public."Healths" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") values (uuid_generate_v4(), 'Laktoz İntoleransı', 'Süt ürünlerini sindirmede zorluk çeken bireyler için diyet düzenlemesi.', '2024-06-02 14:30:00', null, false);
insert into public."Healths" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") values (uuid_generate_v4(), 'Ketojenik Diyet', 'Düşük karbonhidrat ve yüksek yağ oranı içeren bir beslenme planı.', '2024-06-02 14:30:00', null, false);
insert into public."Healths" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") values (uuid_generate_v4(), 'Akdeniz Diyeti', 'Kalp sağlığını destekleyen zengin meyve ve sebze içeren diyet.', '2024-06-02 14:30:00', null, false);
insert into public."Healths" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") values (uuid_generate_v4(), 'Gluten İntoleransı', 'Gluten içeren gıdaların sindirim güçlüğü ve sağlık sorunlarına neden olduğu durum.', '2024-06-02 14:30:00', null, false);
insert into public."Healths" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") values (uuid_generate_v4(), 'Paleo Diyeti', 'İşlenmiş gıdalardan kaçınarak, tarih öncesi insanların diyetini taklit etmeyi amaçlar.', '2024-06-02 14:30:00', null, false);
insert into public."Healths" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") values (uuid_generate_v4(), 'Vejetaryen Diyet', 'Et ürünlerinin tüketimini sınırlayan veya tamamen hariç tutan beslenme şekli.', '2024-06-02 14:30:00', null, false);
insert into public."Healths" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") values (uuid_generate_v4(), 'Vegan Diyet', 'Hayvansal hiçbir ürünün kullanılmadığı sıkı bir diyet şekli.', '2024-06-02 14:30:00', null, false);
insert into public."Healths" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") values (uuid_generate_v4(), 'Şeker Diyeti', 'Rafine şeker tüketimini minimize etmeyi hedefleyen beslenme planı.', '2024-06-02 14:30:00', null, false);


insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Meksika Mutfağı', 'Meksika mutfağına ait tarifler.', '2024-06-02 14:45:00', null, false);
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Avokado', 'Olgun ve yumuşak avokado.', '2024-06-02 14:45:00', null, false, 160.0, 2.0, 15.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Limon Suyu', 'Taze sıkılmış limon suyu.', '2024-06-02 14:45:00', null, false, 29.0, 0.5, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kırmızı Soğan', 'İnce doğranmış kırmızı soğan.', '2024-06-02 14:45:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Guacamole', 'Olgun avokado, limon suyu ve kırmızı soğan ile yapılan Meksika sosu.', false, null, '2024-06-02 14:45:00', 15, 150, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Meksika Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 2, '2024-06-02 14:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Avokado' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 14:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Limon Suyu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 1, '2024-06-02 14:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kırmızı Soğan' LIMIT 1));
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Avokadoları ikiye kesin, çekirdeklerini çıkarın ve içini bir kaseye çıkarın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), false, null, '2024-06-02 14:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Avokadoyu çatalla ezerek püre haline getirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), false, null, '2024-06-02 14:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Limon suyu, kırmızı soğan ve tuzu ekleyin, karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), false, null, '2024-06-02 14:45:00');
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Türk Mutfağı', 'Türk mutfağına ait tarifler.', '2024-06-02 14:50:00', null, false);
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kırmızı Mercimek', 'Yüksek proteinli baklagil.', '2024-06-02 14:50:00', null, false, 360.0, 24.0, 2.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soğan', 'Orta boy kuru soğan.', '2024-06-02 14:50:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Havuç', 'Orta boy havuç.', '2024-06-02 14:50:00', null, false, 41.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Mercimek Çorbası', 'Kırmızı mercimek, soğan ve havuç ile yapılan geleneksel Türk çorbası.', false, null, '2024-06-02 14:50:00', 30, 200, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Türk Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 1, '2024-06-02 14:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kırmızı Mercimek' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 14:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soğan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 14:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Havuç' LIMIT 1));
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Soğanı ince doğrayın ve tencerede kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), false, null, '2024-06-02 14:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Havucu ve mercimeği ekleyin, karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), false, null, '2024-06-02 14:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Su ekleyin ve kaynamaya bırakın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), false, null, '2024-06-02 14:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Çorbayı blenderdan geçirip servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), false, null, '2024-06-02 14:50:00');
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Hint Mutfağı', 'Hint mutfağına ait tarifler.', '2024-06-02 15:00:00', null, false);
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tavuk Göğsü', 'Derisiz ve kemiksiz tavuk göğsü.', '2024-06-02 15:00:00', null, false, 165.0, 31.0, 3.6, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Yoğurt', 'Tam yağlı yoğurt.', '2024-06-02 15:00:00', null, false, 59.0, 10.0, 1.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates Sosu', 'Kıvamlı domates sosu.', '2024-06-02 15:00:00', null, false, 21.0, 1.0, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Tavuk Tikka Masala', 'Tavuk göğsü, yoğurt ve baharatlarla yapılan Hint yemeği.', false, null, '2024-06-02 15:00:00', 40, 400, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Hint Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 500, '2024-06-02 15:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tavuk Göğsü' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 15:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Yoğurt' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 1, '2024-06-02 15:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates Sosu' LIMIT 1));
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Tavuk göğsünü küp küp doğrayın ve yoğurtla marine edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), false, null, '2024-06-02 15:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Tavukları tavada kızartın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), false, null, '2024-06-02 15:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Domates sosunu ekleyin ve kaynatın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), false, null, '2024-06-02 15:00:00');
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'İspanyol Mutfağı', 'İspanyol mutfağına ait tarifler.', '2024-06-02 15:05:00', null, false);
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates', 'Olgun ve sulu domates.', '2024-06-02 15:05:00', null, false, 18.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Salatalık', 'Taze salatalık.', '2024-06-02 15:05:00', null, false, 16.0, 0.7, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Biber', 'Tatlı kırmızı biber.', '2024-06-02 15:05:00', null, false, 31.0, 1.0, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Gazpacho', 'Domates, salatalık ve biber ile yapılan soğuk İspanyol çorbası.', false, null, '2024-06-02 15:05:00', 20, 150, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'İspanyol Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 4, '2024-06-02 15:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 15:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Salatalık' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 15:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Biber' LIMIT 1));
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Domatesleri, salatalığı ve biberi doğrayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), false, null, '2024-06-02 15:05:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Tüm malzemeleri blenderda püre haline getirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), false, null, '2024-06-02 15:05:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Soğutun ve soğuk servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), false, null, '2024-06-02 15:05:00');

-- Cuisine Preference (Bölge Mutfağı)
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Fransız Mutfağı', 'Fransız mutfağına ait tarifler.', '2024-06-02 15:10:00', null, false);

-- Ingredients (Malzemeler) - Ratatouille İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Patlıcan', 'Taze ve sert patlıcan.', '2024-06-02 15:10:00', null, false, 25.0, 1.0, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kabak', 'Yeşil kabak.', '2024-06-02 15:10:00', null, false, 17.0, 1.2, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates', 'Olgun ve sulu domates.', '2024-06-02 15:10:00', null, false, 18.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Ratatouille
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Ratatouille', 'Patlıcan, kabak ve domates ile yapılan geleneksel Fransız yemeği.', false, null, '2024-06-02 15:10:00', 60, 200, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Fransız Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 2, '2024-06-02 15:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Patlıcan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 2, '2024-06-02 15:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kabak' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 4, '2024-06-02 15:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Patlıcanları ve kabakları dilimleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), false, null, '2024-06-02 15:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Domatesleri doğrayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), false, null, '2024-06-02 15:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Tüm malzemeleri bir fırın tepsisine dizin ve fırında pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), false, null, '2024-06-02 15:10:00');


-- Cuisine Preference (Bölge Mutfağı)
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Japon Mutfağı', 'Japon mutfağına ait tarifler.', '2024-06-02 15:15:00', null, false);

-- Ingredients (Malzemeler) - Sushi İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Suşi Pirinci', 'Özel suşi pirinci.', '2024-06-02 15:15:00', null, false, 130.0, 2.4, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Somon Balığı', 'Taze somon balığı dilimleri.', '2024-06-02 15:15:00', null, false, 208.0, 20.4, 13.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Nori Yaprağı', 'Kurumuş deniz yosunu yaprağı.', '2024-06-02 15:15:00', null, false, 35.0, 5.8, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Sushi
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Sushi', 'Suşi pirinci, somon balığı ve nori yaprağı ile yapılan Japon yemeği.', false, null, '2024-06-02 15:15:00', 30, 300, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Japon Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 15:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Suşi Pirinci' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 100, '2024-06-02 15:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Somon Balığı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yaprak', 3, '2024-06-02 15:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Nori Yaprağı' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Suşi pirincini haşlayın ve soğumaya bırakın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), false, null, '2024-06-02 15:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Nori yaprağını bambu suşi matının üzerine serin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), false, null, '2024-06-02 15:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Pirinci nori yaprağının üzerine eşit şekilde yayın ve somon balığını ekleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), false, null, '2024-06-02 15:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Rulo yaparak suşiyi şekillendirin ve dilimleyerek servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), false, null, '2024-06-02 15:15:00');

-- Cuisine Preference (Bölge Mutfağı)
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'İtalyan Mutfağı', 'İtalyan mutfağına ait tarifler.', '2024-06-02 15:20:00', null, false);

-- Ingredients (Malzemeler) - Spaghetti Carbonara İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Spagetti', 'Klasik İtalyan spagetti.', '2024-06-02 15:20:00', null, false, 158.0, 6.0, 1.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Pancetta', 'İtalyan domuz pastırması.', '2024-06-02 15:20:00', null, false, 450.0, 17.0, 42.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Yumurta', 'Taze yumurta.', '2024-06-02 15:20:00', null, false, 155.0, 13.0, 11.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Spaghetti Carbonara
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Spaghetti Carbonara', 'Spagetti, pancetta ve yumurta ile yapılan klasik İtalyan yemeği.', false, null, '2024-06-02 15:20:00', 25, 600, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'İtalyan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 15:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Spagetti' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 100, '2024-06-02 15:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Pancetta' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 3, '2024-06-02 15:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Yumurta' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Spagettiyi tuzlu suda haşlayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), false, null, '2024-06-02 15:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Pancettayı tavada kızartın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), false, null, '2024-06-02 15:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Yumurtaları çırpın ve spagetti ile karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), false, null, '2024-06-02 15:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Pancettayı ekleyin ve karıştırarak servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), false, null, '2024-06-02 15:20:00');


-- Cuisine Preference (Bölge Mutfağı)
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Amerikan Mutfağı', 'Amerikan mutfağına ait tarifler.', '2024-06-02 15:25:00', null, false);

-- Ingredients (Malzemeler) - Cheeseburger İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Dana Kıyma', 'Yağlı dana kıyma.', '2024-06-02 15:25:00', null, false, 250.0, 17.0, 20.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Cheddar Peyniri', 'Dilime cheddar peyniri.', '2024-06-02 15:25:00', null, false, 403.0, 25.0, 33.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Burger Ekmeği', 'Yumuşak burger ekmeği.', '2024-06-02 15:25:00', null, false, 270.0, 9.0, 5.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Cheeseburger
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Cheeseburger', 'Dana kıyma, cheddar peyniri ve burger ekmeği ile yapılan klasik Amerikan yemeği.', false, null, '2024-06-02 15:25:00', 20, 800, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Amerikan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 15:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Cheeseburger' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Dana Kıyma' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'dilim', 2, '2024-06-02 15:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Cheeseburger' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Cheddar Peyniri' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 15:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Cheeseburger' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Burger Ekmeği' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Dana kıymasını tuz ve karabiber ile yoğurun ve köfte şekli verin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Cheeseburger' LIMIT 1), false, null, '2024-06-02 15:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Köfteleri ızgarada veya tavada pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Cheeseburger' LIMIT 1), false, null, '2024-06-02 15:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Köftelerin üzerine cheddar peyniri dilimlerini koyun ve erimesini bekleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Cheeseburger' LIMIT 1), false, null, '2024-06-02 15:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Burger ekmeğini ikiye kesin ve köfteleri arasına koyarak servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Cheeseburger' LIMIT 1), false, null, '2024-06-02 15:25:00');


-- Ingredients (Malzemeler) - Kuru Fasulye İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kuru Fasulye', 'Beyaz kuru fasulye.', '2024-06-02 15:30:00', null, false, 340.0, 21.0, 1.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soğan', 'Orta boy kuru soğan.', '2024-06-02 15:30:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates Salçası', 'Taze domates salçası.', '2024-06-02 15:30:00', null, false, 82.0, 3.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Kuru Fasulye
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Kuru Fasulye', 'Kuru fasulye, soğan ve domates salçası ile yapılan geleneksel Türk yemeği.', false, null, '2024-06-02 15:30:00', 90, 450, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Türk Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 250, '2024-06-02 15:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kuru Fasulye' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 15:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soğan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 15:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates Salçası' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Kuru fasulyeyi bir gece önceden suda bekletin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), false, null, '2024-06-02 15:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Soğanı doğrayın ve tencerede kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), false, null, '2024-06-02 15:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Domates salçasını ekleyin ve karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), false, null, '2024-06-02 15:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Kuru fasulyeyi ekleyin, su ekleyin ve pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), false, null, '2024-06-02 15:30:00');



-- Ingredients (Malzemeler) - Tacos İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Taco Ekmeği', 'Mısır unundan yapılan taco ekmeği.', '2024-06-02 15:35:00', null, false, 120.0, 3.0, 2.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tavuk Göğsü', 'Derisiz ve kemiksiz tavuk göğsü.', '2024-06-02 15:35:00', null, false, 165.0, 31.0, 3.6, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Avokado', 'Olgun ve yumuşak avokado.', '2024-06-02 15:35:00', null, false, 160.0, 2.0, 15.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Tavuklu Tacos
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Tavuklu Tacos', 'Taco ekmeği, tavuk göğsü ve avokado ile yapılan Meksika yemeği.', false, null, '2024-06-02 15:35:00', 30, 350, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Meksika Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 4, '2024-06-02 15:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Taco Ekmeği' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 300, '2024-06-02 15:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tavuk Göğsü' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 2, '2024-06-02 15:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Avokado' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Tavuk göğsünü küçük parçalara kesin ve tavada pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), false, null, '2024-06-02 15:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Taco ekmeklerini ısıtın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), false, null, '2024-06-02 15:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Avokadoyu dilimleyin ve taco ekmeklerinin içine yerleştirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), false, null, '2024-06-02 15:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Pişmiş tavuk parçalarını ekleyin ve servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), false, null, '2024-06-02 15:35:00');

-- Cuisine Preference (Bölge Mutfağı)
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Yunan Mutfağı', 'Yunan mutfağına ait tarifler.', '2024-06-02 15:40:00', null, false);

-- Ingredients (Malzemeler) - Moussaka İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Patlıcan', 'Taze ve sert patlıcan.', '2024-06-02 15:40:00', null, false, 25.0, 1.0, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Dana Kıyma', 'Yağsız dana kıyma.', '2024-06-02 15:40:00', null, false, 250.0, 17.0, 20.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates Salçası', 'Taze domates salçası.', '2024-06-02 15:40:00', null, false, 82.0, 3.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Moussaka
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Moussaka', 'Patlıcan, dana kıyma ve domates salçası ile yapılan geleneksel Yunan yemeği.', false, null, '2024-06-02 15:40:00', 90, 400, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Yunan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 3, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Patlıcan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 300, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Dana Kıyma' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates Salçası' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Patlıcanları dilimleyin ve tuzlu suda bekletin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), false, null, '2024-06-02 15:40:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Dana kıymayı tencerede kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), false, null, '2024-06-02 15:40:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Domates salçasını ekleyin ve karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), false, null, '2024-06-02 15:40:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Patlıcanları ekleyin ve pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), false, null, '2024-06-02 15:40:00');



-- Ingredients (Malzemeler) - Butter Chicken İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tavuk Göğsü', 'Derisiz ve kemiksiz tavuk göğsü.', '2024-06-02 15:45:00', null, false, 165.0, 31.0, 3.6, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates Salçası', 'Taze domates salçası.', '2024-06-02 15:45:00', null, false, 82.0, 3.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tereyağı', 'Taze tereyağı.', '2024-06-02 15:45:00', null, false, 717.0, 0.85, 81.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Butter Chicken
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Butter Chicken', 'Tavuk göğsü, domates salçası ve tereyağı ile yapılan geleneksel Hint yemeği.', false, null, '2024-06-02 15:45:00', 60, 600, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Hint Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 500, '2024-06-02 15:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tavuk Göğsü' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 15:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates Salçası' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 4, '2024-06-02 15:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tereyağı' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Tavuk göğsünü küçük parçalara kesin ve tencerede pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), false, null, '2024-06-02 15:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Domates salçasını ekleyin ve karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), false, null, '2024-06-02 15:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Tereyağını ekleyin ve eriyene kadar karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), false, null, '2024-06-02 15:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Tüm malzemeler piştiğinde servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), false, null, '2024-06-02 15:45:00');



-- Ingredients (Malzemeler) - Risotto İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Arborio Pirinci', 'Risotto yapımında kullanılan özel İtalyan pirinci.', '2024-06-02 15:50:00', null, false, 130.0, 2.7, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tavuk Suyu', 'Taze tavuk suyu.', '2024-06-02 15:50:00', null, false, 15.0, 1.0, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Parmesan Peyniri', 'Rendelenmiş parmesan peyniri.', '2024-06-02 15:50:00', null, false, 431.0, 38.0, 29.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Risotto
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Risotto', 'Arborio pirinci, tavuk suyu ve parmesan peyniri ile yapılan klasik İtalyan yemeği.', false, null, '2024-06-02 15:50:00', 40, 400, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'İtalyan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 15:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Arborio Pirinci' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 4, '2024-06-02 15:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tavuk Suyu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 15:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Parmesan Peyniri' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Arborio pirincini tereyağında kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), false, null, '2024-06-02 15:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Tavuk suyunu yavaş yavaş ekleyin ve sürekli karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), false, null, '2024-06-02 15:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Parmesan peynirini ekleyin ve karıştırarak servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), false, null, '2024-06-02 15:50:00');


-- Cuisine Preference (Bölge Mutfağı)
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Çin Mutfağı', 'Çin mutfağına ait tarifler.', '2024-06-02 15:55:00', null, false);

-- Ingredients (Malzemeler) - Kung Pao Tavuk İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tavuk Göğsü', 'Derisiz ve kemiksiz tavuk göğsü.', '2024-06-02 15:55:00', null, false, 165.0, 31.0, 3.6, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Biber', 'Kırmızı ve yeşil biber.', '2024-06-02 15:55:00', null, false, 31.0, 1.0, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soya Sosu', 'Tuzlu ve lezzetli soya sosu.', '2024-06-02 15:55:00', null, false, 53.0, 4.0, 0.8, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Kung Pao Tavuk
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Kung Pao Tavuk', 'Tavuk göğsü, biber ve soya sosu ile yapılan geleneksel Çin yemeği.', false, null, '2024-06-02 15:55:00', 30, 350, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Çin Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 300, '2024-06-02 15:55:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tavuk Göğsü' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 2, '2024-06-02 15:55:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Biber' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 15:55:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soya Sosu' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Tavuk göğsünü küçük parçalara kesin ve tavada pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), false, null, '2024-06-02 15:55:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Biberleri doğrayın ve ekleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), false, null, '2024-06-02 15:55:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Soya sosunu ekleyin ve karıştırarak pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), false, null, '2024-06-02 15:55:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Tüm malzemeler piştiğinde servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), false, null, '2024-06-02 15:55:00');


-- Ingredients (Malzemeler) - Quiche Lorraine İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Hamur', 'Kıyır kıyır tart hamuru.', '2024-06-02 16:00:00', null, false, 350.0, 5.0, 20.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Bacon', 'İnce dilimlenmiş bacon.', '2024-06-02 16:00:00', null, false, 541.0, 37.0, 42.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Krem Şanti', 'Taze krem şanti.', '2024-06-02 16:00:00', null, false, 257.0, 3.0, 27.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Quiche Lorraine
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Quiche Lorraine', 'Hamur, bacon ve krem şanti ile yapılan geleneksel Fransız tartı.', false, null, '2024-06-02 16:00:00', 50, 600, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Fransız Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 16:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Hamur' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 100, '2024-06-02 16:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Bacon' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 100, '2024-06-02 16:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Krem Şanti' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Hamuru açın ve tart kalıbına yerleştirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), false, null, '2024-06-02 16:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Bacon dilimlerini yerleştirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), false, null, '2024-06-02 16:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Krem şantiyi ekleyin ve karıştırarak pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), false, null, '2024-06-02 16:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, '180 derecede 30 dakika pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), false, null, '2024-06-02 16:00:00');


-- Ingredients (Malzemeler) - Enchilada İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Mısır Ekmeği', 'Taze mısır ekmeği.', '2024-06-02 16:05:00', null, false, 218.0, 6.0, 2.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tavuk Göğsü', 'Derisiz ve kemiksiz tavuk göğsü.', '2024-06-02 16:05:00', null, false, 165.0, 31.0, 3.6, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Enchilada Sosu', 'Baharatlı enchilada sosu.', '2024-06-02 16:05:00', null, false, 50.0, 2.0, 1.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Enchilada
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Enchilada', 'Mısır ekmeği, tavuk göğsü ve enchilada sosu ile yapılan geleneksel Meksika yemeği.', false, null, '2024-06-02 16:05:00', 45, 500, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Meksika Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 4, '2024-06-02 16:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Mısır Ekmeği' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 300, '2024-06-02 16:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tavuk Göğsü' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 2, '2024-06-02 16:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Enchilada Sosu' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Tavuk göğsünü pişirin ve küçük parçalara ayırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), false, null, '2024-06-02 16:05:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Mısır ekmeklerini ısıtın ve tavukları içine yerleştirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), false, null, '2024-06-02 16:05:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Enchilada sosunu ekleyin ve rulo yapın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), false, null, '2024-06-02 16:05:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, '200 derecede 20 dakika pişirin ve servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), false, null, '2024-06-02 16:05:00');


-- Ingredients (Malzemeler) - Pesto Soslu Makarna İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Makarna', 'Klasik İtalyan makarnası.', '2024-06-02 16:10:00', null, false, 158.0, 6.0, 1.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Pesto Sosu', 'Fesleğen, çam fıstığı ve parmesan ile yapılan pesto sosu.', '2024-06-02 16:10:00', null, false, 450.0, 12.0, 42.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Parmesan Peyniri', 'Rendelenmiş parmesan peyniri.', '2024-06-02 16:10:00', null, false, 431.0, 38.0, 29.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Pesto Soslu Makarna
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Pesto Soslu Makarna', 'Makarna, pesto sosu ve parmesan peyniri ile yapılan klasik İtalyan yemeği.', false, null, '2024-06-02 16:10:00', 20, 600, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'İtalyan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 16:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Makarna' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 16:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Pesto Sosu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 16:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Parmesan Peyniri' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Makarnayı tuzlu suda haşlayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), false, null, '2024-06-02 16:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Pesto sosunu ekleyin ve karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), false, null, '2024-06-02 16:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Rendelenmiş parmesan peyniri ile servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), false, null, '2024-06-02 16:10:00');



-- Ingredients (Malzemeler) - Tempura İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Karides', 'Taze ve büyük boy karides.', '2024-06-02 16:15:00', null, false, 99.0, 24.0, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Un', 'Beyaz un.', '2024-06-02 16:15:00', null, false, 364.0, 10.0, 1.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Maden Suyu', 'Soğuk maden suyu.', '2024-06-02 16:15:00', null, false, 0.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Tempura
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Tempura', 'Karides, un ve maden suyu ile yapılan geleneksel Japon kızartması.', false, null, '2024-06-02 16:15:00', 30, 300, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Japon Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 12, '2024-06-02 16:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Karides' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 1, '2024-06-02 16:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Un' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 1, '2024-06-02 16:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Maden Suyu' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Karidesleri temizleyin ve kabuklarını çıkarın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), false, null, '2024-06-02 16:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Un ve maden suyunu karıştırarak tempura hamurunu hazırlayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), false, null, '2024-06-02 16:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Karidesleri tempura hamuruna batırın ve kızgın yağda kızartın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), false, null, '2024-06-02 16:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Kızaran karidesleri kağıt havlu üzerine çıkararak fazla yağını alın ve servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), false, null, '2024-06-02 16:15:00');


-- Ingredients (Malzemeler) - Greek Salad İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates', 'Olgun ve taze domates.', '2024-06-02 16:20:00', null, false, 18.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Salatalık', 'Taze salatalık.', '2024-06-02 16:20:00', null, false, 16.0, 0.7, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Feta Peyniri', 'Beyaz feta peyniri.', '2024-06-02 16:20:00', null, false, 264.0, 14.0, 21.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Greek Salad
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Greek Salad', 'Domates, salatalık ve feta peyniri ile yapılan geleneksel Yunan salatası.', false, null, '2024-06-02 16:20:00', 15, 150, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Yunan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 2, '2024-06-02 16:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 16:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Salatalık' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 100, '2024-06-02 16:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Feta Peyniri' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Domatesleri ve salatalığı doğrayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), false, null, '2024-06-02 16:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Doğranmış domates ve salatalıkları bir kaseye koyun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), false, null, '2024-06-02 16:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Feta peynirini ekleyin ve karıştırarak servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), false, null, '2024-06-02 16:20:00');



-- Ingredients (Malzemeler) - Mac and Cheese İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Makarna', 'Klasik makarna.', '2024-06-02 16:25:00', null, false, 158.0, 6.0, 1.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Cheddar Peyniri', 'Rendelenmiş cheddar peyniri.', '2024-06-02 16:25:00', null, false, 403.0, 25.0, 33.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Süt', 'Tam yağlı süt.', '2024-06-02 16:25:00', null, false, 61.0, 3.2, 3.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Mac and Cheese
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Mac and Cheese', 'Makarna, cheddar peyniri ve süt ile yapılan klasik Amerikan yemeği.', false, null, '2024-06-02 16:25:00', 25, 700, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Amerikan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 16:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Makarna' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 150, '2024-06-02 16:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Cheddar Peyniri' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 1, '2024-06-02 16:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Süt' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Makarnayı tuzlu suda haşlayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), false, null, '2024-06-02 16:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Rendelenmiş cheddar peynirini ekleyin ve eriyene kadar karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), false, null, '2024-06-02 16:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Sütü ekleyin ve karıştırarak kremamsı bir kıvam elde edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), false, null, '2024-06-02 16:25:00');


-- Ingredients (Malzemeler) - Chana Masala İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Nohut', 'Haşlanmış nohut.', '2024-06-02 16:30:00', null, false, 364.0, 19.0, 6.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates', 'Olgun ve taze domates.', '2024-06-02 16:30:00', null, false, 18.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soğan', 'Orta boy kuru soğan.', '2024-06-02 16:30:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Chana Masala
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Chana Masala', 'Nohut, domates ve soğan ile yapılan geleneksel Hint yemeği.', false, null, '2024-06-02 16:30:00', 40, 400, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Hint Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Nohut' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 2, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soğan' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Soğanı doğrayın ve tencerede kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), false, null, '2024-06-02 16:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Domatesleri doğrayın ve soğanlara ekleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), false, null, '2024-06-02 16:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Nohutları ekleyin ve baharatlarla tatlandırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), false, null, '2024-06-02 16:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Tüm malzemeler piştiğinde servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), false, null, '2024-06-02 16:30:00');



-- Ingredients (Malzemeler) - Minestrone Çorbası İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kabak', 'Yeşil kabak.', '2024-06-02 16:35:00', null, false, 17.0, 1.2, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Havuç', 'Taze havuç.', '2024-06-02 16:35:00', null, false, 41.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates', 'Olgun ve taze domates.', '2024-06-02 16:35:00', null, false, 18.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Minestrone Çorbası
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Minestrone Çorbası', 'Kabak, havuç ve domates ile yapılan klasik İtalyan çorbası.', false, null, '2024-06-02 16:35:00', 45, 200, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'İtalyan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kabak' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 2, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Havuç' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 3, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Kabak, havuç ve domatesleri doğrayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), false, null, '2024-06-02 16:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Sebzeleri tencerede kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), false, null, '2024-06-02 16:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Su ekleyin ve sebzeler yumuşayana kadar pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), false, null, '2024-06-02 16:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Sıcak servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), false, null, '2024-06-02 16:35:00');



