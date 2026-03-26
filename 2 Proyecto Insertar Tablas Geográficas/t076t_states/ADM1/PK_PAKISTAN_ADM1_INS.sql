-- Insertar tipo de división geográfica ADM1 para Pakistán: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_pk', 167, 8, 'provincia', 'province', 
    'Province', 'Province', 'Province', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Pakistán (Provincias, Territorios y Capital)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(1162015, 167, 'PK-IS', NULL, NULL, '0', 'PK-IS', 'PK-IS', '+92', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pk' AND id_country = 167), 'islamabad', 'Islamabad', 'Islamabad', 'Islamabad', 'Islamabad', 1, NOW(6), NOW(6), 1, 1),
(1164807, 167, 'PK-SD', NULL, NULL, '0', 'PK-SD', 'PK-SD', '+92', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pk' AND id_country = 167), 'sindh', 'Sindh', 'Sindh', 'Sindh', 'Sindh', 1, NOW(6), NOW(6), 1, 1),
(1167710, 167, 'PK-PB', NULL, NULL, '0', 'PK-PB', 'PK-PB', '+92', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pk' AND id_country = 167), 'punjab', 'Punjab', 'Punjab', 'Punjab Province', 'Punjab', 1, NOW(6), NOW(6), 1, 1),
(1168873, 167, 'PK-KP', NULL, NULL, '0', 'PK-KP', 'PK-KP', '+92', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pk' AND id_country = 167), 'khyber pakhtunkhwa', 'Khyber Pakhtunkhwa', 'Khyber Pakhtunkhwa', 'Khyber Pakhtunkhwa Province', 'Khyber Pakhtunkhwa', 1, NOW(6), NOW(6), 1, 1),
(1168878, 167, 'PK-GB', NULL, NULL, '0', 'PK-GB', 'PK-GB', '+92', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pk' AND id_country = 167), 'gilgit-baltistán', 'Gilgit-Baltistan', 'Gilgit-Baltistan', 'Gilgit-Baltistan', 'Gilgit-Baltistan', 1, NOW(6), NOW(6), 1, 1),
(1183606, 167, 'PK-BA', NULL, NULL, '0', 'PK-BA', 'PK-BA', '+92', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pk' AND id_country = 167), 'baluchistán', 'Balochistan', 'Balochistan', 'Balochistan', 'Balochistan', 1, NOW(6), NOW(6), 1, 1),
(1184196, 167, 'PK-AJK', NULL, NULL, '0', 'PK-AJK', 'PK-AJK', '+92', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pk' AND id_country = 167), 'azad cachemira', 'Azad Jammu and Kashmir', 'Azad Kashmir', 'Azad Jammu and Kashmir', 'Azad Kashmir', 1, NOW(6), NOW(6), 1, 1);