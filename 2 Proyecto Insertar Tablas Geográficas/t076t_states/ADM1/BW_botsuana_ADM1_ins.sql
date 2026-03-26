-- =============================================
-- Script de inserción para BOTSUANA (BW)
-- Archivo: BW_botsuana_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BOTSUANA: Distrito / Ciudad
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_bw', 30, 8, 'Distrito', 'District',
    'District', 'District', 'district', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BOTSUANA (Distritos y Ciudades)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(933043, 30, 'SO', NULL, NULL, '0', 'BW-SO', 'BW-SO', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'sur', 'Southern', 'Southern District', 'Southern District', 'southern', 1, NOW(6), NOW(6), 1, 1),
(933044, 30, 'SE', NULL, NULL, '0', 'BW-SE', 'BW-SE', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'sudeste', 'South East', 'South East District', 'South East District', 'south east', 1, NOW(6), NOW(6), 1, 1),
(933210, 30, 'NE', NULL, NULL, '0', 'BW-NE', 'BW-NE', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'noreste', 'North East', 'North East District', 'North East District', 'north east', 1, NOW(6), NOW(6), 1, 1),
(933230, 30, 'NW', NULL, NULL, '0', 'BW-NW', 'BW-NW', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'noroeste', 'North West', 'North West District', 'North West District', 'north west', 1, NOW(6), NOW(6), 1, 1),
(933562, 30, 'KW', NULL, NULL, '0', 'BW-KW', 'BW-KW', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'kweneng', 'Kweneng', 'Kweneng District', 'Kweneng District', 'kweneng', 1, NOW(6), NOW(6), 1, 1),
(933654, 30, 'KG', NULL, NULL, '0', 'BW-KG', 'BW-KG', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'kgatleng', 'Kgatleng', 'Kgatleng District', 'Kgatleng District', 'kgatleng', 1, NOW(6), NOW(6), 1, 1),
(933657, 30, 'KG', NULL, NULL, '0', 'BW-KG', 'BW-KG', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'kgalagadi', 'Kgalagadi', 'Kgalagadi District', 'Kgalagadi District', 'kgalagadi', 1, NOW(6), NOW(6), 1, 1),
(933758, 30, 'GH', NULL, NULL, '0', 'BW-GH', 'BW-GH', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'ghanzi', 'Ghanzi', 'Ghanzi District', 'Ghanzi District', 'ghanzi', 1, NOW(6), NOW(6), 1, 1),
(933840, 30, 'CH', NULL, NULL, '0', 'BW-CH', 'BW-CH', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'chobe', 'Chobe', 'Chobe District', 'Chobe', 'chobe', 1, NOW(6), NOW(6), 1, 1),
(933851, 30, 'CE', NULL, NULL, '0', 'BW-CE', 'BW-CE', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'central', 'Central', 'Central District', 'Central District', 'central', 1, NOW(6), NOW(6), 1, 1),
(11778168, 30, 'FR', NULL, NULL, '0', 'BW-FR', 'BW-FR', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'francistown', 'Francistown', 'City of Francistown', 'City of Francistown', 'francistown', 1, NOW(6), NOW(6), 1, 1),
(11778169, 30, 'GA', NULL, NULL, '0', 'BW-GA', 'BW-GA', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'gaborone', 'Gaborone', 'Gaborone', 'Gaborone', 'gaborone', 1, NOW(6), NOW(6), 1, 1),
(11778170, 30, 'JW', NULL, NULL, '0', 'BW-JW', 'BW-JW', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'jwaneng', 'Jwaneng', 'Jwaneng', 'Jwaneng', 'jwaneng', 1, NOW(6), NOW(6), 1, 1),
(11778171, 30, 'LO', NULL, NULL, '0', 'BW-LO', 'BW-LO', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'lobatse', 'Lobatse', 'Lobatse', 'Lobatse', 'lobatse', 1, NOW(6), NOW(6), 1, 1),
(11778172, 30, 'SP', NULL, NULL, '0', 'BW-SP', 'BW-SP', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'selibe phikwe', 'Selibe Phikwe', 'Selibe Phikwe', 'Selibe Phikwe', 'selibe phikwe', 1, NOW(6), NOW(6), 1, 1),
(11778173, 30, 'ST', NULL, NULL, '0', 'BW-ST', 'BW-ST', '+267', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bw' AND id_country = 30), 'sowa', 'Sowa', 'Sowa Town', 'Sowa Town', 'sowa', 1, NOW(6), NOW(6), 1, 1);