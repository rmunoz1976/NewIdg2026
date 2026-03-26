-- Insertar tipo de división geográfica ADM1 para Moldavia: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_md', 144, 8, 'distrito', 'district', 
    'District', 'Raion', 'Raion', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Moldavia (Distritos, Municipios y Unidades Autónomas)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(617077, 144, 'MD-ED', NULL, NULL, '0', 'MD-ED', 'MD-ED', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'edineț', 'Edineț District', 'Edineț District', 'Raionul Edineț', 'Edineț', 1, NOW(6), NOW(6), 1, 1),
(617181, 144, 'MD-UN', NULL, NULL, '0', 'MD-UN', 'MD-UN', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'ungheni', 'Ungheni District', 'Ungheni District', 'Raionul Ungheni', 'Ungheni', 1, NOW(6), NOW(6), 1, 1),
(617255, 144, 'MD-TE', NULL, NULL, '0', 'MD-TE', 'MD-TE', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'telenești', 'Telenești District', 'Telenești District', 'Telenești', 'Telenești', 1, NOW(6), NOW(6), 1, 1),
(617264, 144, 'MD-TA', NULL, NULL, '0', 'MD-TA', 'MD-TA', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'taraclia', 'Taraclia District', 'Taraclia District', 'Taraclia', 'Taraclia', 1, NOW(6), NOW(6), 1, 1),
(617283, 144, 'MD-SV', NULL, NULL, '0', 'MD-SV', 'MD-SV', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'ștefan vodă', 'Ștefan Vodă District', 'Ștefan Vodă District', 'Raionul Ștefan Vodă', 'Ștefan Vodă', 1, NOW(6), NOW(6), 1, 1),
(617301, 144, 'MD-ST', NULL, NULL, '0', 'MD-ST', 'MD-ST', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'strășeni', 'Strășeni District', 'Strășeni District', 'Raionul Strășeni', 'Strășeni', 1, NOW(6), NOW(6), 1, 1),
(617366, 144, 'MD-SO', NULL, NULL, '0', 'MD-SO', 'MD-SO', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'soroca', 'Soroca District', 'Soroca District', 'Raionul Soroca', 'Soroca', 1, NOW(6), NOW(6), 1, 1),
(617483, 144, 'MD-RI', NULL, NULL, '0', 'MD-RI', 'MD-RI', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'rîșcani', 'Rîșcani District', 'Rîșcani District', 'Rîșcani', 'Rîșcani', 1, NOW(6), NOW(6), 1, 1),
(617501, 144, 'MD-RE', NULL, NULL, '0', 'MD-RE', 'MD-RE', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'rezina', 'Rezina District', 'Rezina District', 'Rezina', 'Rezina', 1, NOW(6), NOW(6), 1, 1),
(617639, 144, 'MD-OR', NULL, NULL, '0', 'MD-OR', 'MD-OR', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'orhei', 'Orhei District', 'Orhei District', 'Orhei', 'Orhei', 1, NOW(6), NOW(6), 1, 1),
(617656, 144, 'MD-OC', NULL, NULL, '0', 'MD-OC', 'MD-OC', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'ocnița', 'Ocnița District', 'Ocnița District', 'Raionul Ocnița', 'Ocnița', 1, NOW(6), NOW(6), 1, 1),
(617715, 144, 'MD-AN', NULL, NULL, '0', 'MD-AN', 'MD-AN', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'anenii noi', 'Anenii Noi District', 'Anenii Noi District', 'Anenii Noi', 'Anenii Noi', 1, NOW(6), NOW(6), 1, 1),
(617754, 144, 'MD-NI', NULL, NULL, '0', 'MD-NI', 'MD-NI', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'nisporeni', 'Nisporeni District', 'Nisporeni District', 'Nisporeni', 'Nisporeni', 1, NOW(6), NOW(6), 1, 1),
(617903, 144, 'MD-LE', NULL, NULL, '0', 'MD-LE', 'MD-LE', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'leova', 'Leova District', 'Leova District', 'Leova', 'Leova', 1, NOW(6), NOW(6), 1, 1),
(617913, 144, 'MD-SI', NULL, NULL, '0', 'MD-SI', 'MD-SI', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'sîngerei', 'Sîngerei District', 'Sîngerei District', 'Sîngerei', 'Sîngerei', 1, NOW(6), NOW(6), 1, 1),
(617962, 144, 'MD-CR', NULL, NULL, '0', 'MD-CR', 'MD-CR', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'criuleni', 'Criuleni District', 'Criuleni District', 'Criuleni', 'Criuleni', 1, NOW(6), NOW(6), 1, 1),
(617991, 144, 'MD-IA', NULL, NULL, '0', 'MD-IA', 'MD-IA', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'ialoveni', 'Ialoveni District', 'Ialoveni District', 'Ialoveni', 'Ialoveni', 1, NOW(6), NOW(6), 1, 1),
(618069, 144, 'MD-CU', NULL, NULL, '0', 'MD-CU', 'MD-CU', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'chișinău', 'Chișinău Municipality', 'Chișinău', 'Municipiul Chișinău', 'Chișinău', 1, NOW(6), NOW(6), 1, 1),
(618119, 144, 'MD-CS', NULL, NULL, '0', 'MD-CS', 'MD-CS', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'căușeni', 'Căușeni District', 'Căușeni District', 'Raionul Căușeni', 'Căușeni', 1, NOW(6), NOW(6), 1, 1),
(618142, 144, 'MD-CT', NULL, NULL, '0', 'MD-CT', 'MD-CT', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'cantemir', 'Cantemir District', 'Cantemir District', 'Cantemir', 'Cantemir', 1, NOW(6), NOW(6), 1, 1),
(618162, 144, 'MD-CL', NULL, NULL, '0', 'MD-CL', 'MD-CL', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'călărași', 'Călărași District', 'Călărași District', 'Raionul Călărași', 'Călărași', 1, NOW(6), NOW(6), 1, 1),
(618164, 144, 'MD-CA', NULL, NULL, '0', 'MD-CA', 'MD-CA', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'cahul', 'Cahul District', 'Cahul District', 'Raionul Cahul', 'Cahul', 1, NOW(6), NOW(6), 1, 1),
(618260, 144, 'MD-GL', NULL, NULL, '0', 'MD-GL', 'MD-GL', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'glodeni', 'Glodeni District', 'Glodeni District', 'Glodeni', 'Glodeni', 1, NOW(6), NOW(6), 1, 1),
(618331, 144, 'MD-FL', NULL, NULL, '0', 'MD-FL', 'MD-FL', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'florești', 'Florești District', 'Florești District', 'Florești', 'Florești', 1, NOW(6), NOW(6), 1, 1),
(618345, 144, 'MD-FA', NULL, NULL, '0', 'MD-FA', 'MD-FA', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'fălești', 'Fălești District', 'Fălești District', 'Fălești', 'Fălești', 1, NOW(6), NOW(6), 1, 1),
(618363, 144, 'MD-DU', NULL, NULL, '0', 'MD-DU', 'MD-DU', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'dubăsari', 'Dubăsari District', 'Dubăsari District', 'Raionul Dubăsari', 'Dubăsari', 1, NOW(6), NOW(6), 1, 1),
(618369, 144, 'MD-DR', NULL, NULL, '0', 'MD-DR', 'MD-DR', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'drochia', 'Drochia District', 'Drochia District', 'Raionul Drochia', 'Drochia', 1, NOW(6), NOW(6), 1, 1),
(618381, 144, 'MD-DO', NULL, NULL, '0', 'MD-DO', 'MD-DO', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'dondușeni', 'Dondușeni District', 'Dondușeni District', 'Dondușeni', 'Dondușeni', 1, NOW(6), NOW(6), 1, 1),
(618430, 144, 'MD-CM', NULL, NULL, '0', 'MD-CM', 'MD-CM', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'cimișlia', 'Cimișlia District', 'Cimișlia District', 'Cimișlia', 'Cimișlia', 1, NOW(6), NOW(6), 1, 1),
(618511, 144, 'MD-BR', NULL, NULL, '0', 'MD-BR', 'MD-BR', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'briceni', 'Briceni District', 'Briceni District', 'Briceni', 'Briceni', 1, NOW(6), NOW(6), 1, 1),
(618565, 144, 'MD-BS', NULL, NULL, '0', 'MD-BS', 'MD-BS', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'basarabeasca', 'Basarabeasca District', 'Basarabeasca District', 'Basarabeasca', 'Basarabeasca', 1, NOW(6), NOW(6), 1, 1),
(858803, 144, 'MD-HI', NULL, NULL, '0', 'MD-HI', 'MD-HI', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'hîncești', 'Hîncești District', 'Hîncești District', 'Hîncești', 'Hîncești', 1, NOW(6), NOW(6), 1, 1),
(858808, 144, 'MD-SD', NULL, NULL, '0', 'MD-SD', 'MD-SD', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'șoldănești', 'Șoldănești District', 'Șoldănești District', 'Șoldănești', 'Șoldănești', 1, NOW(6), NOW(6), 1, 1),
(858889, 144, 'MD-SN', NULL, NULL, '0', 'MD-SN', 'MD-SN', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'transnistria', 'Transnistria', 'Transnistria', 'Administrative-Territorial Units of the Left Bank of the Dniester', 'Transnistria', 1, NOW(6), NOW(6), 1, 1),
(858895, 144, 'MD-GA', NULL, NULL, '0', 'MD-GA', 'MD-GA', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'gagauzia', 'Gagauzia', 'Gagauzia', 'Gagauzia', 'Gagauzia', 1, NOW(6), NOW(6), 1, 1),
(861487, 144, 'MD-BD', NULL, NULL, '0', 'MD-BD', 'MD-BD', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'bender', 'Bender Municipality', 'Bender', 'Municipiul Bender', 'Bender', 1, NOW(6), NOW(6), 1, 1),
(873909, 144, 'MD-BA', NULL, NULL, '0', 'MD-BA', 'MD-BA', '+373', (SELECT id FROM t075t_division_types WHERE code = 'distrito_md' AND id_country = 144), 'bălți', 'Bălți Municipality', 'Bălți', 'Municipiul Bălți', 'Bălți', 1, NOW(6), NOW(6), 1, 1);