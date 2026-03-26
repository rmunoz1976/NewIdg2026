-- =============================================
-- Script de inserción para SUIZA (CH)
-- Archivo: CH_suiza_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para SUIZA: Cantón
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'canton_ch', 216, 8, 'Cantón', 'Canton',
    'Canton', 'Kanton', 'kanton', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de SUIZA (Cantones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2657895, 216, 'ZH', NULL, NULL, '0', 'CH-ZH', 'CH-ZH', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'zúrich', 'Zurich', 'Kanton Zürich', 'Kanton Zürich', 'zurich', 1, NOW(6), NOW(6), 1, 1),
(2657907, 216, 'ZG', NULL, NULL, '0', 'CH-ZG', 'CH-ZG', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'zug', 'Zug', 'Kanton Zug', 'Kanton Zug', 'zug', 1, NOW(6), NOW(6), 1, 1),
(2658182, 216, 'VD', NULL, NULL, '0', 'CH-VD', 'CH-VD', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'vaud', 'Vaud', 'Canton de Vaud', 'Canton de Vaud', 'vaud', 1, NOW(6), NOW(6), 1, 1),
(2658205, 216, 'VS', NULL, NULL, '0', 'CH-VS', 'CH-VS', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'valais', 'Valais', 'Canton du Valais', 'Canton du Valais', 'valais', 1, NOW(6), NOW(6), 1, 1),
(2658226, 216, 'UR', NULL, NULL, '0', 'CH-UR', 'CH-UR', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'uri', 'Uri', 'Kanton Uri', 'Kanton Uri', 'uri', 1, NOW(6), NOW(6), 1, 1),
(2658370, 216, 'TI', NULL, NULL, '0', 'CH-TI', 'CH-TI', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'ticino', 'Ticino', 'Cantone Ticino', 'Cantone Ticino', 'ticino', 1, NOW(6), NOW(6), 1, 1),
(2658372, 216, 'TG', NULL, NULL, '0', 'CH-TG', 'CH-TG', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'turgovia', 'Thurgau', 'Kanton Thurgau', 'Kanton Thurgau', 'thurgau', 1, NOW(6), NOW(6), 1, 1),
(2658563, 216, 'SO', NULL, NULL, '0', 'CH-SO', 'CH-SO', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'soleura', 'Solothurn', 'Kanton Solothurn', 'Kanton Solothurn', 'solothurn', 1, NOW(6), NOW(6), 1, 1),
(2658664, 216, 'SZ', NULL, NULL, '0', 'CH-SZ', 'CH-SZ', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'schwyz', 'Schwyz', 'Kanton Schwyz', 'Kanton Schwyz', 'schwyz', 1, NOW(6), NOW(6), 1, 1),
(2658760, 216, 'SH', NULL, NULL, '0', 'CH-SH', 'CH-SH', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'schaffhausen', 'Schaffhausen', 'Kanton Schaffhausen', 'Kanton Schaffhausen', 'schaffhausen', 1, NOW(6), NOW(6), 1, 1),
(2658821, 216, 'SG', NULL, NULL, '0', 'CH-SG', 'CH-SG', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'san galo', 'St. Gallen', 'Kanton St. Gallen', 'Kanton St. Gallen', 'st gallen', 1, NOW(6), NOW(6), 1, 1),
(2659315, 216, 'OW', NULL, NULL, '0', 'CH-OW', 'CH-OW', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'obwalden', 'Obwalden', 'Kanton Obwalden', 'Kanton Obwalden', 'obwalden', 1, NOW(6), NOW(6), 1, 1),
(2659471, 216, 'NW', NULL, NULL, '0', 'CH-NW', 'CH-NW', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'nidwalden', 'Nidwalden', 'Kanton Nidwalden', 'Kanton Nidwalden', 'nidwalden', 1, NOW(6), NOW(6), 1, 1),
(2659495, 216, 'NE', NULL, NULL, '0', 'CH-NE', 'CH-NE', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'neuchâtel', 'Neuchâtel', 'Canton de Neuchâtel', 'Canton de Neuchâtel', 'neuchatel', 1, NOW(6), NOW(6), 1, 1),
(2659810, 216, 'LU', NULL, NULL, '0', 'CH-LU', 'CH-LU', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'lucerna', 'Lucerne', 'Kanton Luzern', 'Kanton Luzern', 'lucerne', 1, NOW(6), NOW(6), 1, 1),
(2660207, 216, 'JU', NULL, NULL, '0', 'CH-JU', 'CH-JU', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'jura', 'Jura', 'Canton de Jura', 'Canton de Jura', 'jura', 1, NOW(6), NOW(6), 1, 1),
(2660522, 216, 'GR', NULL, NULL, '0', 'CH-GR', 'CH-GR', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'grisones', 'Graubünden', 'Kanton Graubünden', 'Kanton Graubünden', 'graubunden', 1, NOW(6), NOW(6), 1, 1),
(2660593, 216, 'GL', NULL, NULL, '0', 'CH-GL', 'CH-GL', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'glaris', 'Glarus', 'Kanton Glarus', 'Kanton Glarus', 'glarus', 1, NOW(6), NOW(6), 1, 1),
(2660645, 216, 'GE', NULL, NULL, '0', 'CH-GE', 'CH-GE', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'ginebra', 'Geneva', 'Canton de Genève', 'Canton de Genève', 'geneva', 1, NOW(6), NOW(6), 1, 1),
(2660717, 216, 'FR', NULL, NULL, '0', 'CH-FR', 'CH-FR', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'friburgo', 'Fribourg', 'Canton de Fribourg', 'Canton de Fribourg', 'fribourg', 1, NOW(6), NOW(6), 1, 1),
(2661551, 216, 'BE', NULL, NULL, '0', 'CH-BE', 'CH-BE', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'berna', 'Bern', 'Kanton Bern', 'Kanton Bern', 'bern', 1, NOW(6), NOW(6), 1, 1),
(2661602, 216, 'BS', NULL, NULL, '0', 'CH-BS', 'CH-BS', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'basilea ciudad', 'Basel-Stadt', 'Kanton Basel-Stadt', 'Kanton Basel-Stadt', 'basel stadt', 1, NOW(6), NOW(6), 1, 1),
(2661603, 216, 'BL', NULL, NULL, '0', 'CH-BL', 'CH-BL', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'basilea campiña', 'Basel-Landschaft', 'Kanton Basel-Landschaft', 'Kanton Basel-Landschaft', 'basel landschaft', 1, NOW(6), NOW(6), 1, 1),
(2661739, 216, 'AR', NULL, NULL, '0', 'CH-AR', 'CH-AR', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'appenzell exteriores', 'Appenzell Ausserrhoden', 'Kanton Appenzell Ausserrhoden', 'Kanton Appenzell Ausserrhoden', 'appenzell ausserrhoden', 1, NOW(6), NOW(6), 1, 1),
(2661741, 216, 'AI', NULL, NULL, '0', 'CH-AI', 'CH-AI', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'appenzell interiores', 'Appenzell Innerrhoden', 'Kanton Appenzell Innerrhoden', 'Kanton Appenzell Innerrhoden', 'appenzell innerrhoden', 1, NOW(6), NOW(6), 1, 1),
(2661876, 216, 'AG', NULL, NULL, '0', 'CH-AG', 'CH-AG', '+41', (SELECT id FROM t075t_division_types WHERE code = 'canton_ch' AND id_country = 216), 'argovia', 'Aargau', 'Kanton Aargau', 'Kanton Aargau', 'aargau', 1, NOW(6), NOW(6), 1, 1);