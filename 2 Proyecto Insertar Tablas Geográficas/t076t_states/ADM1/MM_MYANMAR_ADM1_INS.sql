-- Insertar tipo de división geográfica ADM1 para Myanmar: Región/Estado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_mm', 151, 8, 'región', 'region', 
    'Region', 'တိုင်းဒေသကြီး', 'taing', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Myanmar (Regiones, Estados y Territorio)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(1293118, 151, 'MM-05', NULL, NULL, '0', 'MM-05', 'MM-05', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'tanintharyi', 'Tanintharyi Region', 'Tanintharyi', 'Tanintharyi Region', 'Tanintharyi', 1, NOW(6), NOW(6), 1, 1),
(1297099, 151, 'MM-17', NULL, NULL, '0', 'MM-17', 'MM-17', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'shan', 'Shan State', 'Shan', 'Shan State', 'Shan', 1, NOW(6), NOW(6), 1, 1),
(1298480, 151, 'MM-01', NULL, NULL, '0', 'MM-01', 'MM-01', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'sagaing', 'Sagaing Region', 'Sagaing', 'Sagaing Region', 'Sagaing', 1, NOW(6), NOW(6), 1, 1),
(1298822, 151, 'MM-06', NULL, NULL, '0', 'MM-06', 'MM-06', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'yangon', 'Yangon Region', 'Yangon', 'Yangon Region', 'Yangon', 1, NOW(6), NOW(6), 1, 1),
(1298852, 151, 'MM-16', NULL, NULL, '0', 'MM-16', 'MM-16', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'rakhine', 'Rakhine State', 'Rakhine', 'Rakhine State', 'Rakhine', 1, NOW(6), NOW(6), 1, 1),
(1300463, 151, 'MM-02', NULL, NULL, '0', 'MM-02', 'MM-02', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'bago', 'Bago Region', 'Bago', 'Bago Region', 'Bago', 1, NOW(6), NOW(6), 1, 1),
(1308528, 151, 'MM-15', NULL, NULL, '0', 'MM-15', 'MM-15', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'mon', 'Mon State', 'Mon', 'Mon State', 'Mon', 1, NOW(6), NOW(6), 1, 1),
(1311871, 151, 'MM-04', NULL, NULL, '0', 'MM-04', 'MM-04', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'mandalay', 'Mandalay Region', 'Mandalay', 'Mandalay Region', 'Mandalay', 1, NOW(6), NOW(6), 1, 1),
(1312604, 151, 'MM-03', NULL, NULL, '0', 'MM-03', 'MM-03', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'magway', 'Magway Region', 'Magway', 'Magway Region', 'Magway', 1, NOW(6), NOW(6), 1, 1),
(1319539, 151, 'MM-13', NULL, NULL, '0', 'MM-13', 'MM-13', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'kayah', 'Kayah State', 'Kayah', 'Kayah State', 'Kayah', 1, NOW(6), NOW(6), 1, 1),
(1320233, 151, 'MM-14', NULL, NULL, '0', 'MM-14', 'MM-14', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'kayin', 'Kayin State', 'Kayin', 'Kayin State', 'Kayin', 1, NOW(6), NOW(6), 1, 1),
(1321702, 151, 'MM-11', NULL, NULL, '0', 'MM-11', 'MM-11', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'kachin', 'Kachin State', 'Kachin', 'Kachin State', 'Kachin', 1, NOW(6), NOW(6), 1, 1),
(1321850, 151, 'MM-07', NULL, NULL, '0', 'MM-07', 'MM-07', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'ayeyarwady', 'Ayeyarwady Region', 'Ayeyarwady', 'Ayeyarwady Region', 'Ayeyarwady', 1, NOW(6), NOW(6), 1, 1),
(1327132, 151, 'MM-12', NULL, NULL, '0', 'MM-12', 'MM-12', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'chin', 'Chin State', 'Chin', 'Chin State', 'Chin', 1, NOW(6), NOW(6), 1, 1),
(8239588, 151, 'MM-18', NULL, NULL, '0', 'MM-18', 'MM-18', '+95', (SELECT id FROM t075t_division_types WHERE code = 'region_mm' AND id_country = 151), 'nay pyi taw', 'Nay Pyi Taw', 'Nay Pyi Taw', 'Nay Pyi Taw', 'Nay Pyi Taw', 1, NOW(6), NOW(6), 1, 1);