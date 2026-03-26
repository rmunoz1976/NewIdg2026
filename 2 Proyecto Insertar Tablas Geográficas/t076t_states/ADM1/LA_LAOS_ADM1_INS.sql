-- Insertar tipo de división geográfica ADM1 para Laos: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_la', 121, 8, 'provincia', 'province', 
    'Province', 'ແຂວງ', 'khoeng', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Laos (Provincias y Prefectura)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(1652077, 121, 'LA-XI', NULL, NULL, '0', 'LA-XI', 'LA-XI', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'xiangkhouang', 'Xiangkhouang', 'Xiangkhouang', 'Xiangkhouang', 'Xiangkhouang', 1, NOW(6), NOW(6), 1, 1),
(1652210, 121, 'LA-XA', NULL, NULL, '0', 'LA-XA', 'LA-XA', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'xaignabouli', 'Xaignabouli', 'Xaignabouli', 'Xaignabouli', 'Xaignabouli', 1, NOW(6), NOW(6), 1, 1),
(1652238, 121, 'LA-VT', NULL, NULL, '0', 'LA-VT', 'LA-VT', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'vientiane province', 'Vientiane Province', 'Vientiane Province', 'Vientiane Province', 'Vientiane Province', 1, NOW(6), NOW(6), 1, 1),
(1653315, 121, 'LA-SV', NULL, NULL, '0', 'LA-SV', 'LA-SV', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'savannakhet', 'Savannakhet', 'Savannakhet', 'Savannakhét', 'Savannakhet', 1, NOW(6), NOW(6), 1, 1),
(1653333, 121, 'LA-SL', NULL, NULL, '0', 'LA-SL', 'LA-SL', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'salavan', 'Salavan', 'Salavan', 'Salavan', 'Salavan', 1, NOW(6), NOW(6), 1, 1),
(1653893, 121, 'LA-PH', NULL, NULL, '0', 'LA-PH', 'LA-PH', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'phongsali', 'Phongsali', 'Phongsali', 'Phôngsali', 'Phongsali', 1, NOW(6), NOW(6), 1, 1),
(1654491, 121, 'LA-OU', NULL, NULL, '0', 'LA-OU', 'LA-OU', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'oudomxai', 'Oudomxai', 'Oudomxai', 'Oudômxai', 'Oudomxai', 1, NOW(6), NOW(6), 1, 1),
(1655558, 121, 'LA-LP', NULL, NULL, '0', 'LA-LP', 'LA-LP', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'luang prabang province', 'Luang Prabang Province', 'Luang Prabang Province', 'Luang Prabang Province', 'Luang Prabang Province', 1, NOW(6), NOW(6), 1, 1),
(1655561, 121, 'LA-LM', NULL, NULL, '0', 'LA-LM', 'LA-LM', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'louangnamtha', 'Louangnamtha', 'Louangnamtha', 'Louangnamtha', 'Louangnamtha', 1, NOW(6), NOW(6), 1, 1),
(1656538, 121, 'LA-KH', NULL, NULL, '0', 'LA-KH', 'LA-KH', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'khammouan', 'Khammouan', 'Khammouan', 'Khammouan', 'Khammouan', 1, NOW(6), NOW(6), 1, 1),
(1657114, 121, 'LA-HO', NULL, NULL, '0', 'LA-HO', 'LA-HO', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'houaphan', 'Houaphan', 'Houaphan', 'Houaphan', 'Houaphan', 1, NOW(6), NOW(6), 1, 1),
(1657818, 121, 'LA-CH', NULL, NULL, '0', 'LA-CH', 'LA-CH', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'champasak', 'Champasak', 'Champasak', 'Champasak', 'Champasak', 1, NOW(6), NOW(6), 1, 1),
(1665045, 121, 'LA-AT', NULL, NULL, '0', 'LA-AT', 'LA-AT', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'attapu', 'Attapu', 'Attapu', 'Attapu', 'Attapu', 1, NOW(6), NOW(6), 1, 1),
(1904615, 121, 'LA-XE', NULL, NULL, '0', 'LA-XE', 'LA-XE', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'sekong', 'Sekong', 'Sekong', 'Xékong', 'Sekong', 1, NOW(6), NOW(6), 1, 1),
(1904616, 121, 'LA-BK', NULL, NULL, '0', 'LA-BK', 'LA-BK', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'bokeo', 'Bokeo', 'Bokeo', 'Bokèo', 'Bokeo', 1, NOW(6), NOW(6), 1, 1),
(1904617, 121, 'LA-BL', NULL, NULL, '0', 'LA-BL', 'LA-BL', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'bolikhamxai', 'Bolikhamxai', 'Bolikhamxai', 'Bolikhamxai', 'Bolikhamxai', 1, NOW(6), NOW(6), 1, 1),
(1904618, 121, 'LA-VN', NULL, NULL, '0', 'LA-VN', 'LA-VN', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'vientiane prefecture', 'Vientiane Prefecture', 'Vientiane Prefecture', 'Vientiane Prefecture', 'Vientiane Prefecture', 1, NOW(6), NOW(6), 1, 1),
(11395958, 121, 'LA-XS', NULL, NULL, '0', 'LA-XS', 'LA-XS', '+856', (SELECT id FROM t075t_division_types WHERE code = 'provincia_la' AND id_country = 121), 'xaisomboun province', 'Xaisomboun Province', 'Xaisomboun Province', 'Xaisomboun Province', 'Xaisomboun Province', 1, NOW(6), NOW(6), 1, 1);