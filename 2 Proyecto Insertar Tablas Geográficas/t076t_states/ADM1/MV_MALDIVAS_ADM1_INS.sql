-- Insertar tipo de división geográfica ADM1 para Maldivas: Atolón
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'atolon_mv', 134, 8, 'atolón', 'atoll', 
    'Atoll', 'Atholhu', 'Atholhu', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Maldivas (Atolones y Ciudad Capital)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(1281843, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'vaavu', 'Vaavu Atholhu', 'Vaavu', 'Vaavu Atholhu', 'Vaavu', 1, NOW(6), NOW(6), 1, 1),
(1281881, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'thaa', 'Thaa Atholhu', 'Thaa', 'Thaa Atholhu', 'Thaa', 1, NOW(6), NOW(6), 1, 1),
(1281892, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'shaviyani', 'Shaviyani Atholhu', 'Shaviyani', 'Shaviyani Atholhu', 'Shaviyani', 1, NOW(6), NOW(6), 1, 1),
(1281893, 134, 'MV-01', NULL, NULL, '0', 'MV-01', 'MV-01', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'addu', 'Addu Atoll', 'Addu', 'Addu Atoll', 'Addu', 1, NOW(6), NOW(6), 1, 1),
(1281918, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'raa', 'Raa Atholhu', 'Raa', 'Raa Atholhu', 'Raa', 1, NOW(6), NOW(6), 1, 1),
(1281937, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'noonu', 'Noonu Atoll', 'Noonu', 'Noonu Atoll', 'Noonu', 1, NOW(6), NOW(6), 1, 1),
(1281945, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'gnaviyani', 'Gnaviyani Atoll', 'Gnaviyani', 'Gnaviyani Atoll', 'Gnaviyani', 1, NOW(6), NOW(6), 1, 1),
(1281985, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'meemu', 'Meemu Atholhu', 'Meemu', 'Meemu Atholhu', 'Meemu', 1, NOW(6), NOW(6), 1, 1),
(1282096, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'lhaviyani', 'Lhaviyani Atholhu', 'Lhaviyani', 'Lhaviyani Atholhu', 'Lhaviyani', 1, NOW(6), NOW(6), 1, 1),
(1282101, 134, 'MV-05', NULL, NULL, '0', 'MV-05', 'MV-05', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'laamu', 'Laamu Atholhu', 'Laamu', 'Laamu Atholhu', 'Laamu', 1, NOW(6), NOW(6), 1, 1),
(1282208, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'kaafu', 'Kaafu Atoll', 'Kaafu', 'Kaafu Atoll', 'Kaafu', 1, NOW(6), NOW(6), 1, 1),
(1282293, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'haa dhaalu', 'Haa Dhaalu Atholhu', 'Haa Dhaalu', 'Haa Dhaalu Atholhu', 'Haa Dhaalu', 1, NOW(6), NOW(6), 1, 1),
(1282294, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'haa alifu', 'Haa Alifu Atholhu', 'Haa Alifu', 'Haa Alifu Atholhu', 'Haa Alifu', 1, NOW(6), NOW(6), 1, 1),
(1282328, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'gaafu dhaalu', 'Gaafu Dhaalu Atholhu', 'Gaafu Dhaalu', 'Gaafu Dhaalu Atholhu', 'Gaafu Dhaalu', 1, NOW(6), NOW(6), 1, 1),
(1282329, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'gaafu alifu', 'Gaafu Alifu Atholhu', 'Gaafu Alifu', 'Gaafu Alifu Atholhu', 'Gaafu Alifu', 1, NOW(6), NOW(6), 1, 1),
(1282393, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'faafu', 'Faafu Atholhu', 'Faafu', 'Faafu Atholhu', 'Faafu', 1, NOW(6), NOW(6), 1, 1),
(1282447, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'dhaalu', 'Dhaalu Atholhu', 'Dhaalu', 'Dhaalu Atholhu', 'Dhaalu', 1, NOW(6), NOW(6), 1, 1),
(1282478, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'baa', 'Baa Atholhu', 'Baa', 'Baa Atholhu', 'Baa', 1, NOW(6), NOW(6), 1, 1),
(1282497, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'alifu', 'Alifu Atholhu', 'Alifu', 'Alifu Atholhu', 'Alifu', 1, NOW(6), NOW(6), 1, 1),
(1337624, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'malé', 'Malé', 'Malé', 'Maale', 'Malé', 1, NOW(6), NOW(6), 1, 1),
(10346475, 134, 'MV-00', NULL, NULL, '0', 'MV-00', 'MV-00', '+960', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mv' AND id_country = 134), 'alifu dhaalu', 'Alifu Dhaalu Atoll', 'Alifu Dhaalu', 'Southern Ari Atoll', 'Alifu Dhaalu', 1, NOW(6), NOW(6), 1, 1);