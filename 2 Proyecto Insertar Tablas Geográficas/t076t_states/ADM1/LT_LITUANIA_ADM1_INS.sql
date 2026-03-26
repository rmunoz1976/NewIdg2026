-- Insertar tipo de división geográfica ADM1 para Lituania: Condado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'condado_lt', 128, 8, 'condado', 'county', 
    'County', 'Apskritis', 'Apskritis', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Lituania (Condados)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(864389, 128, 'LT-AL', NULL, NULL, '0', 'LT-AL', 'LT-AL', '+370', (SELECT id FROM t075t_division_types WHERE code = 'condado_lt' AND id_country = 128), 'alytus', 'Alytus County', 'Alytus County', 'Alytus County', 'Alytus County', 1, NOW(6), NOW(6), 1, 1),
(864477, 128, 'LT-KU', NULL, NULL, '0', 'LT-KU', 'LT-KU', '+370', (SELECT id FROM t075t_division_types WHERE code = 'condado_lt' AND id_country = 128), 'kaunas', 'Kaunas County', 'Kaunas County', 'Kaunas County', 'Kaunas County', 1, NOW(6), NOW(6), 1, 1),
(864478, 128, 'LT-KL', NULL, NULL, '0', 'LT-KL', 'LT-KL', '+370', (SELECT id FROM t075t_division_types WHERE code = 'condado_lt' AND id_country = 128), 'klaipėda', 'Klaipėda County', 'Klaipėda County', 'Klaipėda County', 'Klaipėda County', 1, NOW(6), NOW(6), 1, 1),
(864479, 128, 'LT-MR', NULL, NULL, '0', 'LT-MR', 'LT-MR', '+370', (SELECT id FROM t075t_division_types WHERE code = 'condado_lt' AND id_country = 128), 'marijampolė', 'Marijampolė County', 'Marijampolė County', 'Marijampolė County', 'Marijampolė County', 1, NOW(6), NOW(6), 1, 1),
(864480, 128, 'LT-PN', NULL, NULL, '0', 'LT-PN', 'LT-PN', '+370', (SELECT id FROM t075t_division_types WHERE code = 'condado_lt' AND id_country = 128), 'panevėžys', 'Panevėžys County', 'Panevėžys County', 'Panevėžys County', 'Panevėžys County', 1, NOW(6), NOW(6), 1, 1),
(864481, 128, 'LT-SA', NULL, NULL, '0', 'LT-SA', 'LT-SA', '+370', (SELECT id FROM t075t_division_types WHERE code = 'condado_lt' AND id_country = 128), 'šiauliai', 'Šiauliai County', 'Šiauliai County', 'Šiauliai County', 'Šiauliai County', 1, NOW(6), NOW(6), 1, 1),
(864482, 128, 'LT-TA', NULL, NULL, '0', 'LT-TA', 'LT-TA', '+370', (SELECT id FROM t075t_division_types WHERE code = 'condado_lt' AND id_country = 128), 'tauragė', 'Tauragė County', 'Tauragė County', 'Tauragė County', 'Tauragė County', 1, NOW(6), NOW(6), 1, 1),
(864483, 128, 'LT-TE', NULL, NULL, '0', 'LT-TE', 'LT-TE', '+370', (SELECT id FROM t075t_division_types WHERE code = 'condado_lt' AND id_country = 128), 'telšiai', 'Telšiai County', 'Telšiai County', 'Telšiai County', 'Telšiai County', 1, NOW(6), NOW(6), 1, 1),
(864484, 128, 'LT-UT', NULL, NULL, '0', 'LT-UT', 'LT-UT', '+370', (SELECT id FROM t075t_division_types WHERE code = 'condado_lt' AND id_country = 128), 'utena', 'Utena County', 'Utena County', 'Utena County', 'Utena County', 1, NOW(6), NOW(6), 1, 1),
(864485, 128, 'LT-VL', NULL, NULL, '0', 'LT-VL', 'LT-VL', '+370', (SELECT id FROM t075t_division_types WHERE code = 'condado_lt' AND id_country = 128), 'vilnius', 'Vilnius County', 'Vilnius County', 'Vilnius County', 'Vilnius County', 1, NOW(6), NOW(6), 1, 1);