CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
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


-- Cuisine Preference
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Meksika Mutfağı', 'Meksika mutfağına ait tarifler.', '2024-06-02 14:45:00', null, false);

-- Ingredients
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Avokado', 'Olgun ve yumuşak avokado.', '2024-06-02 14:45:00', null, false, 160.0, 2.0, 15.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Limon Suyu', 'Taze sıkılmış limon suyu.', '2024-06-02 14:45:00', null, false, 29.0, 0.5, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kırmızı Soğan', 'İnce doğranmış kırmızı soğan.', '2024-06-02 14:45:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Taze Kişniş', 'İnce doğranmış taze kişniş.', '2024-06-02 14:45:00', null, false, 23.0, 2.1, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Jalapeno Biberi', 'İnce doğranmış jalapeno biberi.', '2024-06-02 14:45:00', null, false, 29.0, 0.9, 0.4, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates', 'İnce doğranmış olgun domates.', '2024-06-02 14:45:00', null, false, 18.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tuz', 'İnce öğütülmüş deniz tuzu.', '2024-06-02 14:45:00', null, false, 0.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Guacamole', 'Olgun avokado, limon suyu, kırmızı soğan, taze kişniş, jalapeno biberi ve domates ile yapılan Meksika sosu.', false, null, '2024-06-02 14:45:00', 15, 200, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Meksika Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 2, '2024-06-02 14:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Avokado' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 14:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Limon Suyu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 1, '2024-06-02 14:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kırmızı Soğan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 1, '2024-06-02 14:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Taze Kişniş' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 1, '2024-06-02 14:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Jalapeno Biberi' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 1, '2024-06-02 14:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 1, '2024-06-02 14:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tuz' LIMIT 1));

-- Recipe Steps
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Avokadoları ikiye kesin, çekirdeklerini çıkarın ve içini bir kaseye çıkarın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), false, null, '2024-06-02 14:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Avokadoyu çatalla ezerek püre haline getirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), false, null, '2024-06-02 14:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Limon suyu, kırmızı soğan ve tuzu ekleyin, karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), false, null, '2024-06-02 14:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Doğranmış jalapeno biberi, domates ve taze kişnişi ekleyin, iyice karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), false, null, '2024-06-02 14:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Guacamole sosunu hemen servis yapın veya üzerini streç film ile kapatarak buzdolabında saklayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Guacamole' LIMIT 1), false, null, '2024-06-02 14:45:00');





-- Cuisine Preferences
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Türk Mutfağı', 'Türk mutfağına ait tarifler.', '2024-06-02 14:50:00', null, false);

-- Ingredients
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kırmızı Mercimek', 'Yüksek proteinli baklagil.', '2024-06-02 14:50:00', null, false, 360.0, 24.0, 2.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soğan', 'Orta boy kuru soğan.', '2024-06-02 14:50:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Havuç', 'Orta boy havuç.', '2024-06-02 14:50:00', null, false, 41.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zeytinyağı', 'Soğuk sıkım zeytinyağı.', '2024-06-02 14:50:00', null, false, 884.0, 0.0, 100.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tuz', 'İnce deniz tuzu.', '2024-06-02 14:50:00', null, false, 0.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Karabiber', 'Taze çekilmiş karabiber.', '2024-06-02 14:50:00', null, false, 255.0, 11.0, 3.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Su', 'Kaynar su.', '2024-06-02 14:50:00', null, false, 0.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Mercimek Çorbası', 'Kırmızı mercimek, soğan, havuç ve zeytinyağı ile yapılan geleneksel Türk çorbası.', false, null, '2024-06-02 14:50:00', 45, 250, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Türk Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 1, '2024-06-02 14:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kırmızı Mercimek' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 14:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soğan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 14:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Havuç' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 14:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zeytinyağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tatlı kaşığı', 1, '2024-06-02 14:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tuz' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 0.5, '2024-06-02 14:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Karabiber' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'litre', 1.5, '2024-06-02 14:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Su' LIMIT 1));

-- Recipe Steps
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Soğanı ince doğrayın ve tencerede zeytinyağı ile kavurun. Soğanlar altın rengi alana kadar yaklaşık 5 dakika kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), false, null, '2024-06-02 14:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Havucu rendeleyin ve tencereye ekleyin. Karıştırarak 3-4 dakika daha kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), false, null, '2024-06-02 14:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Kırmızı mercimeği yıkayın ve tencereye ekleyin. Mercimeklerin üstünü örtecek kadar su ekleyin ve karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), false, null, '2024-06-02 14:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Tencereye tuz, karabiber ve kalan suyu ekleyin. Karıştırdıktan sonra çorbayı kaynamaya bırakın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), false, null, '2024-06-02 14:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Çorba kaynadıktan sonra altını kısın ve kısık ateşte mercimekler tamamen yumuşayana kadar yaklaşık 25-30 dakika pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), false, null, '2024-06-02 14:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Çorbayı ocaktan alın ve el blenderı ile pürüzsüz bir kıvam alana kadar ezin. İsterseniz bir süzgeçten de geçirebilirsiniz.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), false, null, '2024-06-02 14:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 7, 'Çorbayı sıcak olarak servis edin. Üzerine isteğe bağlı olarak limon sıkabilir ve kızarmış ekmek dilimleri ile sunabilirsiniz.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mercimek Çorbası' LIMIT 1), false, null, '2024-06-02 14:50:00');









-- Cuisine Preferences
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Hint Mutfağı', 'Hint mutfağına ait tarifler.', '2024-06-02 15:00:00', null, false);

-- Ingredients
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tavuk Göğsü', 'Derisiz ve kemiksiz tavuk göğsü.', '2024-06-02 15:00:00', null, false, 165.0, 31.0, 3.6, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Yoğurt', 'Tam yağlı yoğurt.', '2024-06-02 15:00:00', null, false, 59.0, 10.0, 1.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates Sosu', 'Kıvamlı domates sosu.', '2024-06-02 15:00:00', null, false, 21.0, 1.0, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zencefil Ezmesi', 'Taze zencefilin ince ince rendelenmiş hali.', '2024-06-02 15:00:00', null, false, 80.0, 1.8, 0.75, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Sarımsak Ezmesi', 'Taze sarımsak dişlerinin ezilerek yapılmış hali.', '2024-06-02 15:00:00', null, false, 149.0, 6.36, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zerdeçal', 'Hint mutfağının vazgeçilmezi, altın sarısı baharat.', '2024-06-02 15:00:00', null, false, 354.0, 7.83, 9.88, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kimyon', 'Yoğun aromalı ve hafif acı bir baharat.', '2024-06-02 15:00:00', null, false, 375.0, 17.81, 22.27, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Tavuk Tikka Masala', 'Tavuk göğsü, yoğurt ve baharatlarla yapılan Hint yemeği.', false, null, '2024-06-02 15:00:00', 60, 450, '7aa5b730-3340-49cb-89f4-462b4233a5ff', 
(SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Hint Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 500, '2024-06-02 15:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tavuk Göğsü' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 15:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Yoğurt' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 1, '2024-06-02 15:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates Sosu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 1, '2024-06-02 15:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zencefil Ezmesi' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 1, '2024-06-02 15:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Sarımsak Ezmesi' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 1, '2024-06-02 15:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zerdeçal' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 1, '2024-06-02 15:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kimyon' LIMIT 1));

-- Recipe Steps
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Tavuk göğsünü küp küp doğrayın ve yoğurt, zencefil ezmesi, sarımsak ezmesi, zerdeçal, kimyon ve bir tutam tuz ile iyice marine edin. Bu karışımı buzdolabında en az 2 saat bekletin.', 
(SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), false, null, '2024-06-02 15:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Marine edilmiş tavuk parçalarını kızgın tavada veya ızgarada altın rengi olana kadar kızartın. Tavukların içinin iyice pişmesine özen gösterin.', 
(SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), false, null, '2024-06-02 15:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Ayrı bir tencerede domates sosunu kaynatın ve kıvam alana kadar pişirin. Kızartılmış tavukları domates sosunun içine ekleyin ve birkaç dakika daha pişirin.', 
(SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), false, null, '2024-06-02 15:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Servis yapmadan önce taze kişniş yaprakları ile süsleyin ve sıcak servis edin. Yanında pilav veya naan ekmeği ile sunabilirsiniz.', 
(SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuk Tikka Masala' LIMIT 1), false, null, '2024-06-02 15:00:00');



-- Cuisine Preference
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'İspanyol Mutfağı', 'İspanyol mutfağına ait tarifler.', '2024-06-02 15:05:00', null, false);

-- Ingredients
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates', 'Olgun, sulu ve tatlı domates.', '2024-06-02 15:05:00', null, false, 18.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Salatalık', 'Taze, çıtır ve aromatik salatalık.', '2024-06-02 15:05:00', null, false, 16.0, 0.7, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kırmızı Biber', 'Tatlı ve etli kırmızı biber.', '2024-06-02 15:05:00', null, false, 31.0, 1.0, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Sarımsak', 'Taze ve aromatik sarımsak dişi.', '2024-06-02 15:05:00', null, false, 149.0, 6.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soğan', 'Tatlı ve beyaz soğan.', '2024-06-02 15:05:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zeytinyağı', 'Sızma zeytinyağı.', '2024-06-02 15:05:00', null, false, 884.0, 0.0, 100.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Sirke', 'İspanyol sherry sirkesi.', '2024-06-02 15:05:00', null, false, 19.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Gazpacho', 'Olgun domates, taze salatalık, tatlı kırmızı biber ve aromatik sarımsak ile hazırlanan soğuk İspanyol çorbası.', false, null, '2024-06-02 15:05:00', 20, 150, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'İspanyol Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 4, '2024-06-02 15:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 1, '2024-06-02 15:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Salatalık' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 1, '2024-06-02 15:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kırmızı Biber' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'diş', 2, '2024-06-02 15:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Sarımsak' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 1, '2024-06-02 15:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soğan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'ml', 60, '2024-06-02 15:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zeytinyağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'ml', 30, '2024-06-02 15:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Sirke' LIMIT 1));

-- Recipe Steps
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Domateslerin saplarını çıkarın ve iri parçalar halinde doğrayın. Salatalığı soyun ve doğrayın. Kırmızı biberi temizleyin ve doğrayın. Sarımsak ve soğanı ince doğrayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), false, null, '2024-06-02 15:05:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Tüm doğranmış malzemeleri büyük bir kaseye alın. Zeytinyağı, sirke, tuz ve karabiber ekleyin. Tüm malzemeleri birleştirin ve karışımın iyice harmanlanmasını sağlayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), false, null, '2024-06-02 15:05:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Karışımı blendera alın ve püre haline gelene kadar karıştırın. Eğer pürüzsüz bir kıvam elde etmek isterseniz, karışımı ince bir süzgeçten geçirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), false, null, '2024-06-02 15:05:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Püre haline gelen gazpacho’yu buzdolabında en az 2 saat soğutun. Servis etmeden önce, kaselere paylaştırın ve üzerine zeytinyağı gezdirin. İsteğe bağlı olarak, kıyılmış yeşil soğan veya maydanoz ile süsleyebilirsiniz.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gazpacho' LIMIT 1), false, null, '2024-06-02 15:05:00');




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

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zeytinyağı', 'Soğuk sıkım zeytinyağı.', '2024-06-02 15:10:00', null, false, 884.0, 0.0, 100.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Sarımsak', 'Taze sarımsak dişleri.', '2024-06-02 15:10:00', null, false, 149.0, 6.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Biberiye', 'Taze biberiye dalları.', '2024-06-02 15:10:00', null, false, 131.0, 3.3, 5.9, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Ratatouille
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Ratatouille', 'Patlıcan, kabak, domates, zeytinyağı ve taze otlarla yapılan geleneksel Fransız yemeği.', false, null, '2024-06-02 15:10:00', 90, 250, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Fransız Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 2, '2024-06-02 15:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Patlıcan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 2, '2024-06-02 15:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kabak' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 4, '2024-06-02 15:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'diş', 3, '2024-06-02 15:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Sarımsak' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'dal', 2, '2024-06-02 15:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Biberiye' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'ml', 50, '2024-06-02 15:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zeytinyağı' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Patlıcanları ve kabakları yıkayıp, ince dilimler halinde doğrayın. Dilimlerin düzgün ve eşit olmasına özen gösterin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), false, null, '2024-06-02 15:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Domatesleri ve sarımsakları doğrayın. Domateslerin kabuklarını soyup, çekirdeklerini çıkartarak küp küp doğrayın. Sarımsakları ince ince dilimleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), false, null, '2024-06-02 15:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Fırın tepsisini yağlayın ve dilimlenmiş sebzeleri bir sıra patlıcan, bir sıra kabak ve bir sıra domates olacak şekilde tepsiye dizin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), false, null, '2024-06-02 15:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Üzerine doğranmış sarımsakları ve taze biberiye dallarını serpin. Zeytinyağını eşit bir şekilde sebzelerin üzerine gezdirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), false, null, '2024-06-02 15:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Fırını 180°C olacak şekilde ısıtın ve sebzeleri 45-60 dakika pişirin. Pişirme sırasında ara ara kontrol ederek sebzelerin yanmamasına özen gösterin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), false, null, '2024-06-02 15:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Fırından çıkardıktan sonra birkaç dakika dinlendirin ve sıcak servis edin. Yanında taze ekmek ile sunabilirsiniz.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Ratatouille' LIMIT 1), false, null, '2024-06-02 15:10:00');


-- Cuisine Preference (Bölge Mutfağı)
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Japon Mutfağı', 'Japon mutfağına ait tarifler.', '2024-06-02 15:15:00', null, false);

-- Ingredients (Malzemeler) - Sushi İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Suşi Pirinci', 'Özel suşi pirinci, Japon mutfağının temel bileşeni.', '2024-06-02 15:15:00', null, false, 130.0, 2.4, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Somon Balığı', 'En yüksek kalitede taze somon balığı dilimleri.', '2024-06-02 15:15:00', null, false, 208.0, 20.4, 13.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Nori Yaprağı', 'Kurumuş ve özenle seçilmiş deniz yosunu yaprağı.', '2024-06-02 15:15:00', null, false, 35.0, 5.8, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Pirinç Sirkesi', 'Tatlandırılmış Japon pirinç sirkesi.', '2024-06-02 15:15:00', null, false, 30.0, 0.1, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Şeker', 'Organik beyaz şeker.', '2024-06-02 15:15:00', null, false, 400.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tuz', 'Deniz tuzu.', '2024-06-02 15:15:00', null, false, 0.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Sushi
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Sushi', 'Suşi pirinci, somon balığı ve nori yaprağı ile yapılan Japon yemeği. Malzemelerin özenle seçildiği, adım adım detaylı anlatımlı suşi tarifi.', false, null, '2024-06-02 15:15:00', 60, 400, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Japon Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 300, '2024-06-02 15:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Suşi Pirinci' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 150, '2024-06-02 15:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Somon Balığı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yaprak', 5, '2024-06-02 15:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Nori Yaprağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'ml', 50, '2024-06-02 15:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Pirinç Sirkesi' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 10, '2024-06-02 15:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Şeker' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 5, '2024-06-02 15:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tuz' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Suşi pirincini bol su ile yıkayın ve durulayın. Ardından, 2 su bardağı su ile orta ateşte haşlayın. Pirinç haşlandıktan sonra ocaktan alıp, üzerine pirinç sirkesi, şeker ve tuzu ekleyin. Karıştırıp, soğumaya bırakın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), false, null, '2024-06-02 15:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Bambu suşi matının üzerine nori yaprağını serin. Nori yaprağının parlak yüzeyi alta gelecek şekilde yerleştirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), false, null, '2024-06-02 15:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Pirinci nori yaprağının üzerine eşit şekilde yayın. Ellerinizi hafifçe suya batırarak pirinci yapıştırmadan yayıp, üst kısmında yaklaşık 2 cm boşluk bırakın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), false, null, '2024-06-02 15:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Somon balığı dilimlerini pirincin üzerine yerleştirin. İsteğe bağlı olarak avokado veya salatalık dilimleri de ekleyebilirsiniz.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), false, null, '2024-06-02 15:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Nori yaprağını ve içindeki malzemeleri dikkatlice rulo yaparak sarın. Matı kullanarak sıkıca bastırarak rulo yapmayı tamamlayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), false, null, '2024-06-02 15:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Keskin bir bıçak ile suşiyi eşit dilimler halinde kesin. Bıçağı her kesimden önce hafifçe ıslatın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), false, null, '2024-06-02 15:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 7, 'Suşiyi servis tabağına dizin ve yanında soya sosu, wasabi ve zencefil turşusu ile servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Sushi' LIMIT 1), false, null, '2024-06-02 15:15:00');


-- Cuisine Preference (Bölge Mutfağı)
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'İtalyan Mutfağı', 'İtalyan mutfağına ait tarifler.', '2024-06-02 15:20:00', null, false);

-- Ingredients (Malzemeler) - Spaghetti Carbonara İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'İtalyan Spagetti', 'Klasik İtalyan spagetti, sert buğday irmiğinden yapılmış.', '2024-06-02 15:20:00', null, false, 158.0, 6.0, 1.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Pancetta', 'İtalyan domuz pastırması, ince dilimlenmiş ve taze.', '2024-06-02 15:20:00', null, false, 450.0, 17.0, 42.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Taze Yumurta', 'Organik çiftlik yumurtası.', '2024-06-02 15:20:00', null, false, 155.0, 13.0, 11.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Pecorino Romano Peyniri', 'İtalya/Lazio bölgesinden koyun sütü peyniri.', '2024-06-02 15:20:00', null, false, 387.0, 30.0, 27.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Taze Çekilmiş Karabiber', 'El değirmeninde taze çekilmiş karabiber.', '2024-06-02 15:20:00', null, false, 251.0, 10.0, 3.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Spaghetti Carbonara
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Spaghetti Carbonara', 'Spagetti, pancetta, yumurta ve Pecorino Romano peyniri ile yapılan klasik İtalyan yemeği. Bu tarif, beş yıldızlı bir restoran şefi tarafından özenle seçilmiş malzemelerle hazırlanmıştır.', false, null, '2024-06-02 15:20:00', 25, 600, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'İtalyan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 15:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'İtalyan Spagetti' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 150, '2024-06-02 15:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Pancetta' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 4, '2024-06-02 15:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Taze Yumurta' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 100, '2024-06-02 15:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Pecorino Romano Peyniri' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tatlı kaşığı', 1, '2024-06-02 15:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Taze Çekilmiş Karabiber' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Büyük bir tencereye bol tuzlu su ekleyin ve kaynamaya bırakın. Kaynadıktan sonra spagettiyi ekleyin ve paket talimatlarına göre al dente kıvamında haşlayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), false, null, '2024-06-02 15:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Bu arada, geniş bir tavada pancettayı orta ateşte pişirin. Pancetta altın rengi ve çıtır hale gelene kadar pişirin, sonra ateşten alın ve bir kenara koyun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), false, null, '2024-06-02 15:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Bir kapta yumurtaları ve rendelenmiş Pecorino Romano peynirini çırpın. Pürüzsüz bir karışım elde edene kadar çırpmaya devam edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), false, null, '2024-06-02 15:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Spagetti haşlandıktan sonra, bir kepçe makarna suyunu ayırın ve spagettiyi süzün. Süzdüğünüz spagettiyi tavaya ekleyin ve pancetta ile karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), false, null, '2024-06-02 15:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Tavayı ateşten alın ve yumurta-peynir karışımını ekleyin. Sürekli karıştırarak, karışımın kremalı bir sos haline gelmesini sağlayın. Gerekirse biraz makarna suyu ekleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), false, null, '2024-06-02 15:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Son olarak, taze çekilmiş karabiberi ekleyin ve hemen servis edin. Afiyet olsun!', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Spaghetti Carbonara' LIMIT 1), false, null, '2024-06-02 15:20:00');



-- Cuisine Preference (Bölge Mutfağı)
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Amerikan Mutfağı', 'Amerikan mutfağına ait tarifler.', '2024-06-02 15:25:00', null, false);

-- Ingredients (Malzemeler) - Cheeseburger İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Yağlı Dana Kıyma', 'Özenle seçilmiş yağlı dana kıyma.', '2024-06-02 15:25:00', null, false, 250.0, 17.0, 20.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Olgunlaşmış Cheddar Peyniri', 'İngiltere’nin önde gelen çiftliklerinden getirilen, dilimlenmiş olgunlaşmış cheddar peyniri.', '2024-06-02 15:25:00', null, false, 403.0, 25.0, 33.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Taze Burger Ekmeği', 'El yapımı, yumuşak ve taze burger ekmeği.', '2024-06-02 15:25:00', null, false, 270.0, 9.0, 5.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Karamelize Soğan', 'Yavaşça karamelize edilmiş tatlı soğan.', '2024-06-02 15:25:00', null, false, 40.0, 1.0, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Taze Marul Yaprakları', 'Organik olarak yetiştirilmiş taze marul yaprakları.', '2024-06-02 15:25:00', null, false, 5.0, 0.5, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates Dilimleri', 'Organik olarak yetiştirilmiş taze domates dilimleri.', '2024-06-02 15:25:00', null, false, 20.0, 1.0, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Cheeseburger
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Gurme Cheeseburger', 'Özenle seçilmiş malzemelerle yapılan, lezzet dolu klasik bir Amerikan cheeseburger.', false, null, '2024-06-02 15:25:00', 30, 900, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Amerikan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 15:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Yağlı Dana Kıyma' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'dilim', 2, '2024-06-02 15:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Olgunlaşmış Cheddar Peyniri' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 15:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Taze Burger Ekmeği' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 15:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Karamelize Soğan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yaprak', 3, '2024-06-02 15:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Taze Marul Yaprakları' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'dilim', 2, '2024-06-02 15:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates Dilimleri' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Dana kıymasını tuz ve karabiber ile yoğurun, ardından köfte şekli verin ve buzdolabında 30 dakika dinlendirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), false, null, '2024-06-02 15:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Köfteleri yüksek ateşte önceden ısıtılmış ızgarada her iki tarafını da 3-4 dakika pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), false, null, '2024-06-02 15:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Köftelerin üzerine cheddar peyniri dilimlerini ekleyin ve erimesini bekleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), false, null, '2024-06-02 15:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Burger ekmeğini ikiye kesin ve iç kısımlarını hafifçe kızartın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), false, null, '2024-06-02 15:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Alt ekmek diliminin üzerine karamelize soğanları yerleştirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), false, null, '2024-06-02 15:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Köfteleri ekmek dilimlerinin üzerine yerleştirin, ardından marul yapraklarını ve domates dilimlerini ekleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), false, null, '2024-06-02 15:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 7, 'Üst ekmek dilimini kapatarak servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Gurme Cheeseburger' LIMIT 1), false, null, '2024-06-02 15:25:00');



-- Ingredients (Malzemeler) - Kuru Fasulye İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kuru Fasulye', 'Beyaz kuru fasulye, organik ve en iyi kalite.', '2024-06-02 15:30:00', null, false, 340.0, 21.0, 1.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soğan', 'Organik, orta boy kuru soğan.', '2024-06-02 15:30:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates Salçası', 'Taze ve organik domateslerden yapılmış salça.', '2024-06-02 15:30:00', null, false, 82.0, 3.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zeytinyağı', 'Soğuk sıkım, sızma zeytinyağı.', '2024-06-02 15:30:00', null, false, 884.0, 0, 100.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tuz', 'Deniz tuzu.', '2024-06-02 15:30:00', null, false, 0.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Karabiber', 'Taze çekilmiş karabiber.', '2024-06-02 15:30:00', null, false, 255.0, 11.0, 3.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Kuru Fasulye
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Kuru Fasulye', 'En iyi kalite malzemelerle hazırlanmış, kuru fasulye, soğan ve domates salçası ile yapılan geleneksel Türk yemeği.', false, null, '2024-06-02 15:30:00', 120, 600, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Türk Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 300, '2024-06-02 15:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kuru Fasulye' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 2, '2024-06-02 15:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soğan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 15:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates Salçası' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 4, '2024-06-02 15:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zeytinyağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 1, '2024-06-02 15:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tuz' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 0.5, '2024-06-02 15:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Karabiber' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Kuru fasulyeyi bir gece önceden bol suyla yıkayın ve geniş bir kapta suda bekletin. Bu işlem fasulyelerin yumuşamasını ve pişerken daha çabuk pişmesini sağlayacaktır.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), false, null, '2024-06-02 15:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Ertesi gün, fasulyeleri süzün ve yeniden suyla durulayın. Orta boy bir tencerede bol su ekleyerek fasulyeleri 30 dakika kadar haşlayın. Daha sonra süzün ve bir kenara alın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), false, null, '2024-06-02 15:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Soğanları ince ince doğrayın. Orta boy bir tencerede zeytinyağını ısıtın ve soğanları ekleyerek karamelize olana kadar kavurun. Soğanlar altın rengini aldığında domates salçasını ekleyin ve birkaç dakika karıştırarak kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), false, null, '2024-06-02 15:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Haşlanmış kuru fasulyeleri ekleyin ve tüm malzemelerin iyice karışmasını sağlayın. Üzerine sıcak su ekleyin, tuz ve karabiberle tatlandırın. Tencerenin kapağını kapatın ve kısık ateşte yaklaşık 1 saat kadar pişirin. Fasulyeler yumuşayıp, sosu yoğunlaşana kadar pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), false, null, '2024-06-02 15:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Servis etmeden önce kuru fasulyeyi 10 dakika kadar dinlendirin. Ardından sıcak olarak servis yapın. Yanında pilav ve turşu ile servis edebilirsiniz.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kuru Fasulye' LIMIT 1), false, null, '2024-06-02 15:30:00');


-- Ingredients (Malzemeler) - Tacos İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'El Yapımı Taco Ekmeği', 'Taş değirmende öğütülmüş organik mısır unundan yapılan, elde açılmış ve odun ateşinde pişirilmiş taco ekmeği.', '2024-06-02 15:35:00', null, false, 120.0, 3.0, 2.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Organik Tavuk Göğsü', 'Yerel çiftlikten taze, serbest dolaşan tavukların derisiz ve kemiksiz göğüs eti.', '2024-06-02 15:35:00', null, false, 165.0, 31.0, 3.6, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Olgun Avokado', 'Özenle seçilmiş, olgun ve kremsi tekstüre sahip avokado.', '2024-06-02 15:35:00', null, false, 160.0, 2.0, 15.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Ev Yapımı Salsa Sosu', 'Domates, soğan, kişniş ve lime suyu ile yapılan taze salsa sosu.', '2024-06-02 15:35:00', null, false, 25.0, 1.0, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Taze Kişniş', 'Özenle seçilmiş taze kişniş yaprakları.', '2024-06-02 15:35:00', null, false, 2.0, 0.2, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Taze Lime', 'Özenle seçilmiş taze lime dilimleri.', '2024-06-02 15:35:00', null, false, 20.0, 0.3, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Ev Yapımı Guacamole', 'Olgun avokado, lime suyu, soğan ve kişniş ile yapılan taze guacamole.', '2024-06-02 15:35:00', null, false, 160.0, 2.0, 15.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Tavuklu Tacos
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Tavuklu Tacos', 'Taş değirmende öğütülmüş mısır unundan yapılmış taco ekmeği, serbest dolaşan tavuk göğsü, taze avokado, salsa sosu ve kişniş ile hazırlanan leziz Meksika yemeği.', false, null, '2024-06-02 15:35:00', 45, 400, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Meksika Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 4, '2024-06-02 15:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'El Yapımı Taco Ekmeği' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 300, '2024-06-02 15:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Organik Tavuk Göğsü' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 2, '2024-06-02 15:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Olgun Avokado' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'kaşık', 4, '2024-06-02 15:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Ev Yapımı Salsa Sosu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'dal', 10, '2024-06-02 15:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Taze Kişniş' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'dilim', 6, '2024-06-02 15:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Taze Lime' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'kaşık', 4, '2024-06-02 15:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Ev Yapımı Guacamole' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Organik tavuk göğsünü ince şeritler halinde kesin ve tuz, karabiber ve az miktarda zeytinyağı ile marine edin. Marine edilen tavukları 15 dakika dinlendirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), false, null, '2024-06-02 15:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Marine edilen tavuk şeritlerini önceden ısıtılmış, yapışmaz tavada yüksek ateşte kızartın. Tavukların her iki tarafını da eşit şekilde pişirin ve dışı hafifçe kızarıncaya kadar yaklaşık 10 dakika pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), false, null, '2024-06-02 15:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'El yapımı taco ekmeklerini kuru bir tavada hafifçe ısıtın. Ekmeklerin her iki tarafını da sıcak ve yumuşak hale getirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), false, null, '2024-06-02 15:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Olgun avokadoları soyun, çekirdeklerini çıkarın ve ince dilimler halinde kesin. Taco ekmeklerinin içine yerleştirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), false, null, '2024-06-02 15:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Pişmiş tavuk şeritlerini avokadoların üzerine ekleyin. Her bir taco için eşit miktarda tavuk koyun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), false, null, '2024-06-02 15:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Ev yapımı salsa sosunu ve guacamoleyi ekleyin. Her bir taco için yaklaşık bir kaşık salsa sosu ve bir kaşık guacamole kullanın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), false, null, '2024-06-02 15:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 7, 'Taze kişniş yapraklarını ince ince doğrayın ve tacoların üzerine serpiştirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), false, null, '2024-06-02 15:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 8, 'Taze lime dilimlerini tacoların yanında servis edin. Tacoları yemeden önce lime suyu sıkın ve tadını çıkarın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tavuklu Tacos' LIMIT 1), false, null, '2024-06-02 15:35:00');


-- Cuisine Preference (Bölge Mutfağı)
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Yunan Mutfağı', 'Yunan mutfağına ait tarifler.', '2024-06-02 15:40:00', null, false);

-- Ingredients (Malzemeler) - Moussaka İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Organik Patlıcan', 'Taze ve sert, organik patlıcan.', '2024-06-02 15:40:00', null, false, 25.0, 1.0, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Yağsız Dana Kıyma', 'Kaliteli, yağsız dana kıyma.', '2024-06-02 15:40:00', null, false, 250.0, 17.0, 20.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates Salçası', 'Ev yapımı, taze domates salçası.', '2024-06-02 15:40:00', null, false, 82.0, 3.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soğan', 'Taze ve ince doğranmış soğan.', '2024-06-02 15:40:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Sarımsak', 'Ezilmiş taze sarımsak.', '2024-06-02 15:40:00', null, false, 149.0, 6.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zeytinyağı', 'Sızma zeytinyağı.', '2024-06-02 15:40:00', null, false, 884.0, 0.0, 100.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates', 'Taze ve rendelenmiş domates.', '2024-06-02 15:40:00', null, false, 18.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Beyaz Peynir', 'Taze, yağsız beyaz peynir.', '2024-06-02 15:40:00', null, false, 280.0, 17.0, 22.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Karabiber', 'Taze çekilmiş karabiber.', '2024-06-02 15:40:00', null, false, 251.0, 10.4, 3.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tuz', 'İnce öğütülmüş deniz tuzu.', '2024-06-02 15:40:00', null, false, 0.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Moussaka
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Moussaka', 'Patlıcan, dana kıyma ve domates salçası ile yapılan geleneksel Yunan yemeği.', false, null, '2024-06-02 15:40:00', 120, 550, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Yunan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 3, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Organik Patlıcan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 300, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Yağsız Dana Kıyma' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates Salçası' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 1, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soğan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'diş', 3, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Sarımsak' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zeytinyağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 2, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 50, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Beyaz Peynir' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tatlı kaşığı', 1, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Karabiber' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tatlı kaşığı', 1, '2024-06-02 15:40:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tuz' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Patlıcanları kalın dilimler halinde doğrayın ve acısını almak için tuzlu suda 30 dakika bekletin. Sonrasında suyu süzülüp kurutulmuş patlıcanları kağıt havlu ile kurulayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), false, null, '2024-06-02 15:40:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Soğan ve sarımsağı ince doğrayın ve zeytinyağı ile geniş bir tavada pembeleşinceye kadar kavurun. Ardından dana kıymayı ekleyin ve tamamen pişene kadar kavurmaya devam edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), false, null, '2024-06-02 15:40:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Kavrulmuş kıymaya rendelenmiş domates ve domates salçasını ekleyin. Tuz, karabiber ile tatlandırın ve 10 dakika daha pişirin. Hazırlanan karışımı bir kenara alın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), false, null, '2024-06-02 15:40:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Patlıcan dilimlerini zeytinyağı ile hafifçe yağlanmış bir fırın tepsisine dizin ve 200 derece ısıtılmış fırında 20 dakika pişirin. Ardından patlıcanları fırından çıkarın ve bir kenara alın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), false, null, '2024-06-02 15:40:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Fırın kabının tabanına bir kat patlıcan dizin, üzerine kıymalı karışımın bir kısmını ekleyin. Bu işlemi kat kat olacak şekilde tekrarlayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), false, null, '2024-06-02 15:40:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'En üst kata rendelenmiş beyaz peyniri serpin ve 180 derece ısıtılmış fırında üzeri kızarana kadar yaklaşık 30 dakika pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), false, null, '2024-06-02 15:40:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 7, 'Moussaka’yı fırından çıkarın ve dilimlemeden önce 10 dakika dinlenmeye bırakın. Sıcak servis yapın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Moussaka' LIMIT 1), false, null, '2024-06-02 15:40:00');


-- Ingredients (Malzemeler) - Butter Chicken İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tavuk Göğsü', 'Organik, derisiz ve kemiksiz tavuk göğsü, en taze haliyle.', '2024-06-02 15:45:00', null, false, 165.0, 31.0, 3.6, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates Salçası', 'Ev yapımı, taze ve organik domateslerden yapılan salça.', '2024-06-02 15:45:00', null, false, 82.0, 3.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tereyağı', 'Pastörize edilmemiş, taze çiftlik tereyağı.', '2024-06-02 15:45:00', null, false, 717.0, 0.85, 81.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Krema', 'Organik, yüksek yağlı taze krema.', '2024-06-02 15:45:00', null, false, 337.0, 2.8, 35.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Yoğurt', 'Doğal, katkısız ve taze yoğurt.', '2024-06-02 15:45:00', null, false, 59.0, 10.0, 0.4, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zencefil', 'Taze rendelenmiş organik zencefil.', '2024-06-02 15:45:00', null, false, 80.0, 1.8, 0.8, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Sarımsak', 'Taze ve ezilmiş sarımsak dişleri.', '2024-06-02 15:45:00', null, false, 149.0, 6.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Butter Chicken
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Butter Chicken', 'Tavuk göğsü, domates salçası, tereyağı ve taze baharatlarla yapılan geleneksel Hint yemeği.', false, null, '2024-06-02 15:45:00', 90, 750, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Hint Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 500, '2024-06-02 15:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tavuk Göğsü' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 15:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates Salçası' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 4, '2024-06-02 15:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tereyağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 100, '2024-06-02 15:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Krema' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 15:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Yoğurt' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 2, '2024-06-02 15:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zencefil' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 3, '2024-06-02 15:45:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Sarımsak' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Tavuk göğsünü küçük parçalara kesin ve taze zencefil ve sarımsakla marine edin. Marine edilmiş tavukları buzdolabında 1 saat bekletin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), false, null, '2024-06-02 15:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Büyük bir tencerede tereyağını eritin ve marine edilmiş tavukları ekleyin. Tavuklar tamamen pişene kadar kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), false, null, '2024-06-02 15:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Domates salçasını ekleyin ve karıştırarak 5 dakika pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), false, null, '2024-06-02 15:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Krema ve yoğurdu ekleyin. Kısık ateşte, sos kıvam alana kadar karıştırarak pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), false, null, '2024-06-02 15:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Tavukları sosa ekleyin ve karıştırarak 10 dakika daha pişirin. Tüm malzemeler iyice karışıp, tatlar birbiriyle özdeşleşene kadar pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), false, null, '2024-06-02 15:45:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Sıcak olarak servis edin ve taze kişniş ile süsleyin. Naan ekmeği veya pirinç pilavı ile servis edilebilir.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Butter Chicken' LIMIT 1), false, null, '2024-06-02 15:45:00');



-- Ingredients (Malzemeler) - Risotto İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Arborio Pirinci', 'Risotto yapımında kullanılan özel İtalyan Arborio pirinci. Bu pirinç, nişasta açısından zengindir ve kremsi bir doku sağlar.', '2024-06-02 15:50:00', null, false, 130.0, 2.7, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tavuk Suyu', 'Taze otlar ve baharatlarla kaynatılmış ev yapımı tavuk suyu, risottoya derin ve zengin bir tat katar.', '2024-06-02 15:50:00', null, false, 15.0, 1.0, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Parmesan Peyniri', 'İtalyan inek sütünden yapılan rendelenmiş parmesan peyniri. Yoğun aroması ve tuzlu tadı ile risottoyu tamamlar.', '2024-06-02 15:50:00', null, false, 431.0, 38.0, 29.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Beyaz Şarap', 'Risottoya hafif bir asidite ve derinlik katan kaliteli beyaz şarap.', '2024-06-02 15:50:00', null, false, 80.0, 0.1, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tereyağı', 'Yüksek kaliteli tereyağı, risottoya zenginlik ve parlaklık katar.', '2024-06-02 15:50:00', null, false, 717.0, 0.9, 81.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zeytinyağı', 'Sızma zeytinyağı, risotto yapımında başlangıç için kullanılır ve lezzet katar.', '2024-06-02 15:50:00', null, false, 884.0, 0.0, 100.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soğan', 'İnce doğranmış taze soğan, risottoya temel lezzet katmak için kullanılır.', '2024-06-02 15:50:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Sarımsak', 'Ezilmiş sarımsak, risottoya hafif bir tatlılık ve derinlik katmak için kullanılır.', '2024-06-02 15:50:00', null, false, 149.0, 6.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Risotto
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Risotto', 'Özenle seçilmiş malzemelerle hazırlanan, kremamsı dokusu ve zengin aromasıyla klasik İtalyan yemeği olan Risotto.', false, null, '2024-06-02 15:50:00', 50, 500, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'İtalyan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 300, '2024-06-02 15:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Arborio Pirinci' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 6, '2024-06-02 15:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tavuk Suyu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 4, '2024-06-02 15:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Parmesan Peyniri' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 0.5, '2024-06-02 15:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Beyaz Şarap' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 15:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tereyağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 15:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zeytinyağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 1, '2024-06-02 15:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soğan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'diş', 2, '2024-06-02 15:50:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Sarımsak' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Bir tencerede tereyağı ve zeytinyağını ısıtın. İnce doğranmış soğanı ekleyin ve şeffaflaşana kadar soteleyin. Ardından ezilmiş sarımsağı ekleyin ve 1 dakika daha soteleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), false, null, '2024-06-02 15:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Arborio pirincini ekleyin ve pirinç taneleri yağla kaplanana kadar karıştırarak kavurun. Beyaz şarabı ekleyin ve buharlaşana kadar karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), false, null, '2024-06-02 15:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Tavuk suyunu bir kepçe bir kepçe ekleyerek risottoyu pişirin. Her seferinde tavuk suyu tamamen emilene kadar sürekli karıştırın ve pirinç yumuşayana kadar bu işlemi tekrarlayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), false, null, '2024-06-02 15:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Pirinç tamamen piştiğinde, rendelenmiş parmesan peynirini ekleyin ve iyice karışana kadar karıştırın. Tencereyi ocaktan alın ve risottoyu 1-2 dakika dinlendirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), false, null, '2024-06-02 15:50:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Risottoyu servis tabağına alın ve sıcak servis edin. İsteğe bağlı olarak ekstra rendelenmiş parmesan peyniri ve taze çekilmiş karabiber ile süsleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Risotto' LIMIT 1), false, null, '2024-06-02 15:50:00');


-- Cuisine Preference (Bölge Mutfağı)
insert into public."CuisinePreferences" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted") 
values (uuid_generate_v4(), 'Çin Mutfağı', 'Çin mutfağına ait tarifler.', '2024-06-02 15:55:00', null, false);

-- Ingredients (Malzemeler) - Kung Pao Tavuk İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tavuk Göğsü', 'Derisiz ve kemiksiz, organik, serbest dolaşan tavuk göğsü.', '2024-06-02 15:55:00', null, false, 165.0, 31.0, 3.6, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kırmızı Biber', 'Taze, organik kırmızı biber.', '2024-06-02 15:55:00', null, false, 31.0, 1.0, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Yeşil Biber', 'Taze, organik yeşil biber.', '2024-06-02 15:55:00', null, false, 31.0, 1.0, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soya Sosu', 'Tuzlu ve lezzetli, düşük sodyumlu soya sosu.', '2024-06-02 15:55:00', null, false, 53.0, 4.0, 0.8, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zencefil', 'Taze rendelenmiş zencefil.', '2024-06-02 15:55:00', null, false, 80.0, 1.8, 0.8, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Sarımsak', 'Taze ezilmiş sarımsak dişleri.', '2024-06-02 15:55:00', null, false, 149.0, 6.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kuruyemiş', 'Taze kavrulmuş yer fıstığı.', '2024-06-02 15:55:00', null, false, 567.0, 25.0, 49.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Kung Pao Tavuk
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Kung Pao Tavuk', 'Tavuk göğsü, biber, soya sosu ve diğer lezzetli malzemelerle yapılan geleneksel Çin yemeği.', false, null, '2024-06-02 15:55:00', 40, 450, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Çin Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 300, '2024-06-02 15:55:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tavuk Göğsü' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 1, '2024-06-02 15:55:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kırmızı Biber' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 1, '2024-06-02 15:55:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Yeşil Biber' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 15:55:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soya Sosu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 1, '2024-06-02 15:55:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zencefil' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'diş', 3, '2024-06-02 15:55:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Sarımsak' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 50, '2024-06-02 15:55:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kuruyemiş' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Tavuk göğsünü küçük parçalara kesin. Tavayı orta ateşte ısıtın, az miktarda yağ ekleyin ve tavukları altın rengi alana kadar pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), false, null, '2024-06-02 15:55:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Kırmızı ve yeşil biberleri doğrayın ve tavaya ekleyin. Biberler yumuşayana kadar pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), false, null, '2024-06-02 15:55:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Rendelenmiş zencefil ve ezilmiş sarımsakları tavaya ekleyin. Karışım aromatik hale gelene kadar pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), false, null, '2024-06-02 15:55:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Soya sosunu ekleyin ve malzemeler iyice karışana kadar pişirin. Tuz ve karabiber ile tatlandırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), false, null, '2024-06-02 15:55:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Kavrulmuş yer fıstıklarını ekleyin ve karıştırın. Yemeği ocaktan alın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), false, null, '2024-06-02 15:55:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Yemeği sıcak olarak servis edin ve üzerine taze soğan ekleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Kung Pao Tavuk' LIMIT 1), false, null, '2024-06-02 15:55:00');


-- Ingredients (Malzemeler) - Quiche Lorraine İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Un', 'Yüksek kaliteli, elenmiş un.', '2024-06-02 16:00:00', null, false, 364.0, 10.0, 1.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tereyağı', 'Organik, tuzsuz tereyağı.', '2024-06-02 16:00:00', null, false, 717.0, 0.9, 81.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soğuk Su', 'Soğuk, filtrelenmiş su.', '2024-06-02 16:00:00', null, false, 0.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Deniz Tuzu', 'İnce öğütülmüş deniz tuzu.', '2024-06-02 16:00:00', null, false, 0.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Bacon', 'El yapımı, ince dilimlenmiş, az tuzlu bacon.', '2024-06-02 16:00:00', null, false, 541.0, 37.0, 42.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Krem Şanti', 'Taze, organik krem şanti.', '2024-06-02 16:00:00', null, false, 257.0, 3.0, 27.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Yumurta', 'Organik, serbest gezen tavuk yumurtası.', '2024-06-02 16:00:00', null, false, 155.0, 13.0, 11.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Gruyère Peyniri', 'Taze rendelenmiş Gruyère peyniri.', '2024-06-02 16:00:00', null, false, 413.0, 29.0, 32.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Quiche Lorraine
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Quiche Lorraine', 'Un, tereyağı, soğuk su ve deniz tuzuyla hazırlanan hamur, el yapımı ince dilimlenmiş bacon, taze organik krem şanti, serbest gezen tavuk yumurtası ve taze rendelenmiş Gruyère peyniri ile yapılan geleneksel Fransız tartı.', false, null, '2024-06-02 16:00:00', 90, 800, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Fransız Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 250, '2024-06-02 16:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Un' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 125, '2024-06-02 16:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tereyağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'ml', 60, '2024-06-02 16:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soğuk Su' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tsp', 1, '2024-06-02 16:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Deniz Tuzu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 150, '2024-06-02 16:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Bacon' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'ml', 250, '2024-06-02 16:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Krem Şanti' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 4, '2024-06-02 16:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Yumurta' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 100, '2024-06-02 16:00:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Gruyère Peyniri' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Un, tereyağı ve deniz tuzunu geniş bir kaba koyun ve tereyağını parmak uçlarınızla una yedirin. Soğuk suyu yavaşça ekleyin ve hamur oluşana kadar yoğurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), false, null, '2024-06-02 16:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Hamuru streç filme sarın ve buzdolabında 30 dakika dinlendirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), false, null, '2024-06-02 16:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Dinlenen hamuru un serpilmiş bir yüzeyde açın ve tart kalıbına yerleştirin. Hamurun tabanını çatalla birkaç yerinden delin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), false, null, '2024-06-02 16:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Bacon dilimlerini hafifçe kızartın ve fazla yağını kağıt havlu ile alın. Baconları tart hamurunun üzerine eşit şekilde yerleştirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), false, null, '2024-06-02 16:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Krem şantiyi geniş bir kapta çırpın, yumurtaları teker teker ekleyin ve karışımı pürüzsüz hale gelene kadar çırpmaya devam edin. Gruyère peynirini ekleyin ve karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), false, null, '2024-06-02 16:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Krem şantili karışımı tart hamurunun üzerine dökün ve 180 derecede önceden ısıtılmış fırında 30-35 dakika pişirin. Üstü altın rengini aldığında fırından çıkarın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), false, null, '2024-06-02 16:00:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 7, 'Quiche Lorraine yemeğini dilimlemeden önce oda sıcaklığında 10 dakika dinlendirin ve servis yapın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Quiche Lorraine' LIMIT 1), false, null, '2024-06-02 16:00:00');


-- Ingredients (Malzemeler) - Enchilada İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Mısır Ekmeği', 'Ev yapımı, taze mısır unu ile hazırlanmış mısır ekmeği.', '2024-06-02 16:05:00', null, false, 218.0, 6.0, 2.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tavuk Göğsü', 'Organik, derisiz ve kemiksiz tavuk göğsü, zeytinyağı ile marine edilmiş.', '2024-06-02 16:05:00', null, false, 165.0, 31.0, 3.6, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Enchilada Sosu', 'Ev yapımı, baharatlı enchilada sosu, taze domates ve biber ile hazırlanmış.', '2024-06-02 16:05:00', null, false, 50.0, 2.0, 1.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Cheddar Peyniri', 'Taze rendelenmiş cheddar peyniri.', '2024-06-02 16:05:00', null, false, 113.0, 7.0, 9.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Avokado', 'Olgunlaşmış, dilimlenmiş avokado.', '2024-06-02 16:05:00', null, false, 160.0, 2.0, 15.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kişniş', 'Taze doğranmış kişniş yaprakları.', '2024-06-02 16:05:00', null, false, 23.0, 2.0, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Enchilada
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Enchilada', 'Ev yapımı mısır ekmeği, zeytinyağı ile marine edilmiş tavuk göğsü ve taze baharatlarla zenginleştirilmiş enchilada sosu ile yapılan geleneksel Meksika yemeği.', false, null, '2024-06-02 16:05:00', 60, 550, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Meksika Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 4, '2024-06-02 16:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Mısır Ekmeği' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 300, '2024-06-02 16:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tavuk Göğsü' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 2, '2024-06-02 16:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Enchilada Sosu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 150, '2024-06-02 16:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Cheddar Peyniri' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 2, '2024-06-02 16:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Avokado' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 16:05:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kişniş' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Tavuk göğsünü zeytinyağı, tuz, karabiber ve taze kişniş ile marine edin. Marine edilmiş tavuk göğsünü ızgarada pişirin ve küçük parçalara ayırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), false, null, '2024-06-02 16:05:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Mısır ekmeklerini ısıtın ve içlerine pişmiş tavuk parçalarını eşit şekilde yerleştirin. Her bir ekmeğin üzerine taze rendelenmiş cheddar peyniri serpin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), false, null, '2024-06-02 16:05:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Enchilada sosunu her bir ekmeğin üzerine eşit şekilde dökün. Mısır ekmeklerini dikkatlice rulo yapın ve fırın tepsisine yerleştirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), false, null, '2024-06-02 16:05:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Önceden 200 dereceye ısıtılmış fırında 20 dakika pişirin. Piştikten sonra dilimlenmiş avokado ve doğranmış taze kişniş ile süsleyerek servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Enchilada' LIMIT 1), false, null, '2024-06-02 16:05:00');



-- Ingredients (Malzemeler) - Pesto Soslu Makarna İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Spagetti', 'Kaliteli durum buğdayından yapılmış İtalyan spagetti.', '2024-06-02 16:10:00', null, false, 158.0, 6.0, 1.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Taze Pesto Sosu', 'Fesleğen, çam fıstığı, parmesan, sarımsak ve zeytinyağı ile ev yapımı taze pesto sosu.', '2024-06-02 16:10:00', null, false, 450.0, 12.0, 42.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Taze Rendelenmiş Parmesan Peyniri', 'Yüksek kalitede taze rendelenmiş parmesan peyniri.', '2024-06-02 16:10:00', null, false, 431.0, 38.0, 29.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Sızma Zeytinyağı', 'Soğuk sıkım sızma zeytinyağı.', '2024-06-02 16:10:00', null, false, 884.0, 0.0, 100.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Taze Sarımsak', 'İnce kıyılmış taze sarımsak.', '2024-06-02 16:10:00', null, false, 149.0, 6.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Çam Fıstığı', 'Kavrulmuş çam fıstığı.', '2024-06-02 16:10:00', null, false, 673.0, 13.7, 68.4, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Pesto Soslu Makarna
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Pesto Soslu Makarna', 'Spagetti, ev yapımı taze pesto sosu ve taze rendelenmiş parmesan peyniri ile yapılan, sızma zeytinyağı ve çam fıstığı ile zenginleştirilmiş klasik İtalyan yemeği.', false, null, '2024-06-02 16:10:00', 20, 600, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'İtalyan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 16:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Spagetti' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 16:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Taze Pesto Sosu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 16:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Taze Rendelenmiş Parmesan Peyniri' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 16:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Sızma Zeytinyağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'diş', 2, '2024-06-02 16:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Taze Sarımsak' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 1, '2024-06-02 16:10:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Çam Fıstığı' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Spagettiyi büyük bir tencere tuzlu suda paketin üzerindeki talimatlara göre al dente kıvamına gelene kadar haşlayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), false, null, '2024-06-02 16:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Haşlanmış spagettiyi süzün ve bir kenara ayırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), false, null, '2024-06-02 16:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Taze pesto sosunu büyük bir tavada ısıtın. Üzerine ince kıyılmış sarımsağı ekleyin ve hafifçe kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), false, null, '2024-06-02 16:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Haşlanmış spagettiyi tavadaki pesto sosuna ekleyin ve iyice karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), false, null, '2024-06-02 16:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Servis tabağına alın ve üzerine taze rendelenmiş parmesan peynirini serpin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), false, null, '2024-06-02 16:10:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Son olarak çam fıstığı ve bir yemek kaşığı sızma zeytinyağı ile süsleyerek sıcak servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Pesto Soslu Makarna' LIMIT 1), false, null, '2024-06-02 16:10:00');


-- Ingredients (Malzemeler) - Tempura İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Karides', 'Taze, büyük boy, kuyruksuz ve ayıklanmış karides.', '2024-06-02 16:15:00', null, false, 99.0, 24.0, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Un', 'Yüksek kaliteli beyaz un.', '2024-06-02 16:15:00', null, false, 364.0, 10.0, 1.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Maden Suyu', 'Soğuk, doğal kaynak maden suyu.', '2024-06-02 16:15:00', null, false, 0.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soya Sosu', 'Yüksek kaliteli Japon soya sosu.', '2024-06-02 16:15:00', null, false, 53.0, 8.0, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Daikon Turpu', 'Taze ve ince doğranmış daikon turpu.', '2024-06-02 16:15:00', null, false, 18.0, 0.6, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Tempura
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Tempura', 'Taze karides, un ve maden suyu ile yapılan geleneksel Japon kızartması. Soya sosu ve ince doğranmış daikon turpu ile servis edilir.', false, null, '2024-06-02 16:15:00', 45, 350, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Japon Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 12, '2024-06-02 16:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Karides' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 1, '2024-06-02 16:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Un' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 1, '2024-06-02 16:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Maden Suyu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 0.5, '2024-06-02 16:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soya Sosu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 50, '2024-06-02 16:15:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Daikon Turpu' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Karidesleri temizleyin ve kabuklarını çıkarın. Her bir karidesi bir kağıt havlu üzerine yerleştirerek fazla nemini alın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), false, null, '2024-06-02 16:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Büyük bir kaseye unu eleyin ve ortasını havuz şeklinde açın. Soğuk maden suyunu yavaş yavaş ekleyerek karıştırın. Pürüzsüz bir hamur elde edene kadar çırpın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), false, null, '2024-06-02 16:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Karidesleri tempura hamuruna tamamen batırın. Her bir karidesin eşit şekilde kaplandığından emin olun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), false, null, '2024-06-02 16:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Derin bir tencerede yağı 180°C’ye kadar ısıtın. Hamura batırılmış karidesleri dikkatlice kızgın yağa bırakın ve altın rengi olana kadar kızartın. Bu yaklaşık 2-3 dakika sürer.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), false, null, '2024-06-02 16:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Kızaran karidesleri delikli bir kaşık yardımıyla kağıt havlu üzerine çıkararak fazla yağını süzün.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), false, null, '2024-06-02 16:15:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Soya sosu ve ince doğranmış daikon turpu ile sıcak servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Tempura' LIMIT 1), false, null, '2024-06-02 16:15:00');


-- Ingredients (Malzemeler) - Greek Salad İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates', 'Olgun ve taze, mevsiminde toplanmış organik domates.', '2024-06-02 16:20:00', null, false, 18.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Salatalık', 'Taze ve gevrek, yerel çiftlikten alınmış salatalık.', '2024-06-02 16:20:00', null, false, 16.0, 0.7, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Feta Peyniri', 'Yunanistanın ünlü bir peynir üreticisinden gelen, tam yağlı beyaz feta peyniri.', '2024-06-02 16:20:00', null, false, 264.0, 14.0, 21.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kalamata Zeytini', 'Taş çekirdeği çıkarılmış, kaliteli Kalamata zeytinleri.', '2024-06-02 16:20:00', null, false, 115.0, 0.8, 11.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kırmızı Soğan', 'İnce dilimlenmiş, tatlı kırmızı soğan.', '2024-06-02 16:20:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Yeşil Biber', 'İnce dilimlenmiş, taze yeşil biber.', '2024-06-02 16:20:00', null, false, 20.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Sızma Zeytinyağı', 'Soğuk sıkım, yüksek kaliteli sızma zeytinyağı.', '2024-06-02 16:20:00', null, false, 120.0, 0.0, 14.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Limon Suyu', 'Taze sıkılmış limon suyu.', '2024-06-02 16:20:00', null, false, 6.0, 0.1, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kekik', 'Kurutulmuş ve ezilmiş taze kekik.', '2024-06-02 16:20:00', null, false, 2.0, 0.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Greek Salad
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Greek Salad', 'Mevsiminde toplanmış taze sebzeler ve yüksek kaliteli feta peyniri ile yapılan geleneksel Yunan salatası.', false, null, '2024-06-02 16:20:00', 20, 200, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Yunan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 4, '2024-06-02 16:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 2, '2024-06-02 16:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Salatalık' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 150, '2024-06-02 16:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Feta Peyniri' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 50, '2024-06-02 16:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kalamata Zeytini' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 16:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kırmızı Soğan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 16:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Yeşil Biber' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 3, '2024-06-02 16:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Sızma Zeytinyağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 1, '2024-06-02 16:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Limon Suyu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 1, '2024-06-02 16:20:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kekik' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Domatesleri iri küpler halinde doğrayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), false, null, '2024-06-02 16:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Salatalıkları kabuklarını soyduktan sonra halka halka doğrayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), false, null, '2024-06-02 16:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Kırmızı soğanı ince dilimler halinde kesin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), false, null, '2024-06-02 16:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Yeşil biberi ince halkalar halinde kesin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), false, null, '2024-06-02 16:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Doğranmış sebzeleri ve zeytinleri büyük bir salata kasesine koyun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), false, null, '2024-06-02 16:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Feta peynirini iri küpler halinde kesin ve salatanın üzerine ekleyin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), false, null, '2024-06-02 16:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 7, 'Sızma zeytinyağı, limon suyu ve kekiği bir kasede karıştırın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), false, null, '2024-06-02 16:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 8, 'Hazırladığınız sosu salatanın üzerine dökün ve nazikçe karıştırarak sosun her yere yayılmasını sağlayın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), false, null, '2024-06-02 16:20:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 9, 'Salatayı hemen servis edin veya soğuk servis yapmak için buzdolabında bekletin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Greek Salad' LIMIT 1), false, null, '2024-06-02 16:20:00');



-- Ingredients (Malzemeler) - Mac and Cheese İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Makarna', 'En iyi kalite durum buğdayından üretilmiş makarna.', '2024-06-02 16:25:00', null, false, 158.0, 6.0, 1.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Cheddar Peyniri', 'Olgunlaştırılmış, yoğun lezzetli rendelenmiş cheddar peyniri.', '2024-06-02 16:25:00', null, false, 403.0, 25.0, 33.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Süt', 'Organik, tam yağlı taze süt.', '2024-06-02 16:25:00', null, false, 61.0, 3.2, 3.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tereyağı', 'Yüksek kaliteli, tuzsuz tereyağı.', '2024-06-02 16:25:00', null, false, 717.0, 0.9, 81.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Un', 'İnce elenmiş, organik beyaz un.', '2024-06-02 16:25:00', null, false, 364.0, 10.0, 1.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tuz', 'Deniz tuzu, ince taneli.', '2024-06-02 16:25:00', null, false, 0.0, 0.0, 0.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Mac and Cheese
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Mac and Cheese', 'Makarna, cheddar peyniri ve süt ile yapılan, tereyağı ve un ile zenginleştirilmiş klasik Amerikan yemeği.', false, null, '2024-06-02 16:25:00', 30, 850, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Amerikan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 16:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Makarna' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 150, '2024-06-02 16:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Cheddar Peyniri' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'bardak', 1, '2024-06-02 16:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Süt' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 50, '2024-06-02 16:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tereyağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 16:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Un' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 1, '2024-06-02 16:25:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tuz' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Büyük bir tencerede su kaynatın ve tuz ekleyin. Makarnayı ekleyin ve al dente kıvama gelene kadar, yaklaşık 8-10 dakika haşlayın. Makarnayı süzün ve bir kenara koyun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), false, null, '2024-06-02 16:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Başka bir tencerede tereyağını orta ateşte eritin. Unu ekleyin ve karışım köpürene kadar sürekli karıştırarak yaklaşık 1-2 dakika pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), false, null, '2024-06-02 16:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Yavaş yavaş sütü ekleyin, sürekli karıştırarak pürüzsüz bir sos elde edin. Karışım kaynama noktasına gelene kadar pişirin ve koyulaşana kadar, yaklaşık 5 dakika karıştırmaya devam edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), false, null, '2024-06-02 16:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Ocaktan alın ve rendelenmiş cheddar peynirini ekleyin. Peynir tamamen eriyene kadar karıştırın ve pürüzsüz bir peynir sosu elde edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), false, null, '2024-06-02 16:25:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Haşlanmış makarnayı peynir sosuna ekleyin ve iyice karıştırın. Sıcak servis yapın ve üzerine ekstra rendelenmiş cheddar peyniri serpin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Mac and Cheese' LIMIT 1), false, null, '2024-06-02 16:25:00');



-- Ingredients (Malzemeler) - Chana Masala İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Nohut', 'Bir gece önceden suya yatırılmış ve haşlanmış nohut.', '2024-06-02 16:30:00', null, false, 364.0, 19.0, 6.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates', 'Mevsiminde toplanmış, olgun ve taze organik domates.', '2024-06-02 16:30:00', null, false, 18.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soğan', 'Organik, taze ve orta boy kuru soğan.', '2024-06-02 16:30:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zencefil', 'Taze rendelenmiş zencefil.', '2024-06-02 16:30:00', null, false, 80.0, 1.8, 0.7, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Sarımsak', 'Ezilmiş taze sarımsak.', '2024-06-02 16:30:00', null, false, 149.0, 6.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Yeşil Biber', 'İnce doğranmış, çekirdekleri çıkarılmış yeşil biber.', '2024-06-02 16:30:00', null, false, 20.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zerdeçal', 'Toz zerdeçal.', '2024-06-02 16:30:00', null, false, 312.0, 9.7, 3.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kimyon', 'Toz kimyon.', '2024-06-02 16:30:00', null, false, 375.0, 17.8, 22.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Garam Masala', 'Hint mutfağının vazgeçilmez baharat karışımı.', '2024-06-02 16:30:00', null, false, 347.0, 12.5, 14.6, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Limon Suyu', 'Taze sıkılmış limon suyu.', '2024-06-02 16:30:00', null, false, 22.0, 0.4, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kişniş', 'Taze doğranmış kişniş yaprakları.', '2024-06-02 16:30:00', null, false, 23.0, 2.1, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Chana Masala
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Chana Masala', 'Nohut, domates, soğan ve baharatlarla yapılan geleneksel Hint yemeği. Bu tarifte taze malzemeler kullanılarak ve özenle pişirilerek hazırlanmıştır.', false, null, '2024-06-02 16:30:00', 60, 400, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'Hint Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'gram', 200, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Nohut' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 3, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 2, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soğan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 1, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zencefil' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'diş', 4, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Sarımsak' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'tane', 1, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Yeşil Biber' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 1, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zerdeçal' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 1, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kimyon' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'çay kaşığı', 1, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Garam Masala' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 1, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Limon Suyu' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'dal', 1, '2024-06-02 16:30:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kişniş' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Soğanları ince ince doğrayın. Geniş bir tencereye zeytinyağını ekleyin ve orta ateşte soğanları pembeleşene kadar kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), false, null, '2024-06-02 16:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Doğranmış sarımsak ve rendelenmiş zencefili ekleyin. Karışımı birkaç dakika daha kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), false, null, '2024-06-02 16:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Yeşil biberleri ekleyin ve karıştırarak kavurun. Domatesleri küp küp doğrayın ve tencereye ekleyin. Domatesler suyunu salana kadar pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), false, null, '2024-06-02 16:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Nohutları, zerdeçalı, kimyonu, garam masalayı ve tuzu ekleyin. Karışımı iyice karıştırın ve 10 dakika daha pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), false, null, '2024-06-02 16:30:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Yemeği ocaktan alın ve üzerine taze limon suyu sıkın. Doğranmış kişniş yaprakları ile süsleyerek servis edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Chana Masala' LIMIT 1), false, null, '2024-06-02 16:30:00');




-- Ingredients (Malzemeler) - Minestrone Çorbası İçin Malzemeler
insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Zeytinyağı', 'Soğuk sıkım, sızma zeytinyağı.', '2024-06-02 16:35:00', null, false, 884.0, 0, 100.0, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Soğan', 'Organik, taze beyaz soğan.', '2024-06-02 16:35:00', null, false, 40.0, 1.1, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kabak', 'Organik, taze yeşil kabak.', '2024-06-02 16:35:00', null, false, 17.0, 1.2, 0.3, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Havuç', 'Organik, taze havuç.', '2024-06-02 16:35:00', null, false, 41.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Domates', 'Organik, olgun ve taze domates.', '2024-06-02 16:35:00', null, false, 18.0, 0.9, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Sarımsak', 'Organik, taze sarımsak.', '2024-06-02 16:35:00', null, false, 149.0, 6.4, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Barbunya Fasulyesi', 'Konserve, organik barbunya fasulyesi.', '2024-06-02 16:35:00', null, false, 93.0, 6.6, 0.5, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Bezelye', 'Organik, taze bezelye.', '2024-06-02 16:35:00', null, false, 81.0, 5.4, 0.4, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Kereviz', 'Organik, taze kereviz sapı.', '2024-06-02 16:35:00', null, false, 16.0, 0.7, 0.2, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

insert into public."Ingredients" ("Id", "Name", "Description", "CreatedAt", "UpdatedAt", "IsDeleted", "Calories", "Protein", "Fat", "MediaFileId") 
values (uuid_generate_v4(), 'Tavuk Suyu', 'Ev yapımı, taze tavuk suyu.', '2024-06-02 16:35:00', null, false, 12.0, 0.5, 0.1, '7aa5b730-3340-49cb-89f4-462b4233a5ff');

-- Recipe (Tarif) - Minestrone Çorbası
insert into public."Recipes" ("Id", "Title", "Description", "IsDeleted", "UpdatedAt", "CreatedAt", "PreparationTime", "Calories", "MediaFileId", "CuisinePreferenceId", "UserId") 
values (uuid_generate_v4(), 'Minestrone Çorbası', 'Kabak, havuç, domates ve diğer sebzeler ile yapılan klasik İtalyan çorbası.', false, null, '2024-06-02 16:35:00', 60, 250, '7aa5b730-3340-49cb-89f4-462b4233a5ff', (SELECT "Id" FROM public."CuisinePreferences" WHERE "Name" = 'İtalyan Mutfağı' LIMIT 1), (SELECT "Id" FROM public."User" ORDER BY random() LIMIT 1));

-- Recipe Ingredients (Tarif Malzemeleri)
insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'yemek kaşığı', 2, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Zeytinyağı' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 1, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Soğan' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 2, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kabak' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 2, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Havuç' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'adet', 3, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Domates' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'diş', 3, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Sarımsak' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'su bardağı', 1, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Barbunya Fasulyesi' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'su bardağı', 1, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Bezelye' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'dal', 2, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Kereviz' LIMIT 1));

insert into public."RecipeIngredients" ("Id", "QuantityType", "Quantity", "CreatedAt", "UpdatedAt", "IsDeleted", "RecipeId", "IngredientId") 
values (uuid_generate_v4(), 'litre', 1.5, '2024-06-02 16:35:00', null, false, (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), (SELECT "Id" FROM public."Ingredients" WHERE "Name" = 'Tavuk Suyu' LIMIT 1));

-- Recipe Steps (Tarif Adımları)
insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 1, 'Zeytinyağını tencerede ısıtın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), false, null, '2024-06-02 16:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 2, 'Soğanları doğrayın ve zeytinyağında kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), false, null, '2024-06-02 16:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 3, 'Kabak, havuç ve kerevizleri doğrayın ve tencereye ekleyin, kavurmaya devam edin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), false, null, '2024-06-02 16:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 4, 'Domatesleri doğrayın ve tencereye ekleyin. Birkaç dakika daha pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), false, null, '2024-06-02 16:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 5, 'Sarımsakları ekleyin ve kokusu çıkana kadar kavurun.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), false, null, '2024-06-02 16:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 6, 'Tavuk suyunu ekleyin ve kaynamaya bırakın.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), false, null, '2024-06-02 16:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 7, 'Barbunya fasulyesi ve bezelyeleri ekleyin, sebzeler yumuşayana kadar pişirin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), false, null, '2024-06-02 16:35:00');

insert into public."RecipeSteps" ("Id", "StepNumber", "Description", "RecipeId", "IsDeleted", "UpdatedAt", "CreatedAt") 
values (uuid_generate_v4(), 8, 'Çorbayı sıcak servis edin ve üzerine taze rendelenmiş Parmesan peyniri serpin.', (SELECT "Id" FROM public."Recipes" WHERE "Title" = 'Minestrone Çorbası' LIMIT 1), false, null, '2024-06-02 16:35:00');


