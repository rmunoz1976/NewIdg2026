-- =============================================
-- Script de inserción para BAHAMAS (BS)
-- Archivo: BS_bahamas_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BAHAMAS: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_bs', 17, 8, 'Distrito', 'District',
    'District', 'District', 'district', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BAHAMAS (Distritos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3571493, 17, 'SS', NULL, NULL, '0', 'BS-SS', 'BS-SS', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'san salvador', 'San Salvador', 'San Salvador District', 'San Salvador District', 'san salvador', 1, NOW(6), NOW(6), 1, 1),
(3571629, 17, 'RI', NULL, NULL, '0', 'BS-RI', 'BS-RI', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'ragged island', 'Ragged Island', 'Ragged Island District', 'Ragged Island District', 'ragged island', 1, NOW(6), NOW(6), 1, 1),
(3571809, 17, 'BY', NULL, NULL, '0', 'BS-BY', 'BS-BY', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'berry islands', 'Berry Islands', 'Berry Islands District', 'Berry Islands District', 'berry islands', 1, NOW(6), NOW(6), 1, 1),
(3571815, 17, 'NP', NULL, NULL, '0', 'BS-NP', 'BS-NP', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'new providence', 'New Providence', 'New Providence District', 'New Providence District', 'new providence', 1, NOW(6), NOW(6), 1, 1),
(3571894, 17, 'MG', NULL, NULL, '0', 'BS-MG', 'BS-MG', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'mayaguana', 'Mayaguana', 'Mayaguana District', 'Mayaguana District', 'mayaguana', 1, NOW(6), NOW(6), 1, 1),
(3572005, 17, 'LI', NULL, NULL, '0', 'BS-LI', 'BS-LI', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'long island', 'Long Island', 'Long Island District', 'Long Island', 'long island', 1, NOW(6), NOW(6), 1, 1),
(3572154, 17, 'IN', NULL, NULL, '0', 'BS-IN', 'BS-IN', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'inagua', 'Inagua', 'Inagua District', 'Inagua', 'inagua', 1, NOW(6), NOW(6), 1, 1),
(3572238, 17, 'HI', NULL, NULL, '0', 'BS-HI', 'BS-HI', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'harbour island', 'Harbour Island', 'Harbour Island District', 'Harbour Island District', 'harbour island', 1, NOW(6), NOW(6), 1, 1),
(3572374, 17, 'FP', NULL, NULL, '0', 'BS-FP', 'BS-FP', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'freeport', 'Freeport', 'City of Freeport District', 'City of Freeport District', 'freeport', 1, NOW(6), NOW(6), 1, 1),
(3572427, 17, 'EX', NULL, NULL, '0', 'BS-EX', 'BS-EX', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'exuma', 'Exuma', 'Exuma District', 'Exuma District', 'exuma', 1, NOW(6), NOW(6), 1, 1),
(3572678, 17, 'CI', NULL, NULL, '0', 'BS-CI', 'BS-CI', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'cat island', 'Cat Island', 'Cat Island', 'Cat Island', 'cat island', 1, NOW(6), NOW(6), 1, 1),
(3572807, 17, 'BI', NULL, NULL, '0', 'BS-BI', 'BS-BI', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'bimini', 'Bimini', 'Bimini District', 'Bimini District', 'bimini', 1, NOW(6), NOW(6), 1, 1),
(3572937, 17, 'AK', NULL, NULL, '0', 'BS-AK', 'BS-AK', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'acklins', 'Acklins', 'Acklins Island District', 'Acklins Island District', 'acklins', 1, NOW(6), NOW(6), 1, 1),
(8030541, 17, 'BP', NULL, NULL, '0', 'BS-BP', 'BS-BP', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'black point', 'Black Point', 'Black Point District', 'Black Point District', 'black point', 1, NOW(6), NOW(6), 1, 1),
(8030542, 17, 'CA', NULL, NULL, '0', 'BS-CA', 'BS-CA', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'central abaco', 'Central Abaco', 'Central Abaco District', 'Central Abaco District', 'central abaco', 1, NOW(6), NOW(6), 1, 1),
(8030543, 17, 'CS', NULL, NULL, '0', 'BS-CS', 'BS-CS', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'central andros', 'Central Andros', 'Central Andros District', 'Central Andros District', 'central andros', 1, NOW(6), NOW(6), 1, 1),
(8030544, 17, 'CE', NULL, NULL, '0', 'BS-CE', 'BS-CE', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'central eleuthera', 'Central Eleuthera', 'Central Eleuthera District', 'Central Eleuthera District', 'central eleuthera', 1, NOW(6), NOW(6), 1, 1),
(8030545, 17, 'CK', NULL, NULL, '0', 'BS-CK', 'BS-CK', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'crooked island and long cay', 'Crooked Island and Long Cay', 'Crooked Island and Long Cay District', 'Crooked Island and Long Cay District', 'crooked island and long cay', 1, NOW(6), NOW(6), 1, 1),
(8030546, 17, 'EG', NULL, NULL, '0', 'BS-EG', 'BS-EG', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'east grand bahama', 'East Grand Bahama', 'East Grand Bahama District', 'East Grand Bahama District', 'east grand bahama', 1, NOW(6), NOW(6), 1, 1),
(8030547, 17, 'GC', NULL, NULL, '0', 'BS-GC', 'BS-GC', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'grand cay', 'Grand Cay', 'Grand Cay District', 'Grand Cay District', 'grand cay', 1, NOW(6), NOW(6), 1, 1),
(8030548, 17, 'HT', NULL, NULL, '0', 'BS-HT', 'BS-HT', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'hope town', 'Hope Town', 'Hope Town District', 'Hope Town District', 'hope town', 1, NOW(6), NOW(6), 1, 1),
(8030549, 17, 'MC', NULL, NULL, '0', 'BS-MC', 'BS-MC', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'mangrove cay', 'Mangrove Cay', 'Mangrove Cay', 'Mangrove Cay', 'mangrove cay', 1, NOW(6), NOW(6), 1, 1),
(8030550, 17, 'MI', NULL, NULL, '0', 'BS-MI', 'BS-MI', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'moore''s island', 'Moore''s Island', 'Moore''s Island District', 'Moore''s Island District', 'moores island', 1, NOW(6), NOW(6), 1, 1),
(8030551, 17, 'NO', NULL, NULL, '0', 'BS-NO', 'BS-NO', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'north abaco', 'North Abaco', 'North Abaco District', 'North Abaco District', 'north abaco', 1, NOW(6), NOW(6), 1, 1),
(8030552, 17, 'NS', NULL, NULL, '0', 'BS-NS', 'BS-NS', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'north andros', 'North Andros', 'North Andros District', 'North Andros District', 'north andros', 1, NOW(6), NOW(6), 1, 1),
(8030553, 17, 'NE', NULL, NULL, '0', 'BS-NE', 'BS-NE', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'north eleuthera', 'North Eleuthera', 'North Eleuthera District', 'North Eleuthera District', 'north eleuthera', 1, NOW(6), NOW(6), 1, 1),
(8030554, 17, 'RC', NULL, NULL, '0', 'BS-RC', 'BS-RC', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'rum cay', 'Rum Cay', 'Rum Cay', 'Rum Cay', 'rum cay', 1, NOW(6), NOW(6), 1, 1),
(8030555, 17, 'SO', NULL, NULL, '0', 'BS-SO', 'BS-SO', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'south abaco', 'South Abaco', 'South Abaco District', 'South Abaco District', 'south abaco', 1, NOW(6), NOW(6), 1, 1),
(8030556, 17, 'SA', NULL, NULL, '0', 'BS-SA', 'BS-SA', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'south andros', 'South Andros', 'South Andros', 'South Andros', 'south andros', 1, NOW(6), NOW(6), 1, 1),
(8030557, 17, 'SE', NULL, NULL, '0', 'BS-SE', 'BS-SE', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'south eleuthera', 'South Eleuthera', 'South Eleuthera', 'South Eleuthera', 'south eleuthera', 1, NOW(6), NOW(6), 1, 1),
(8030558, 17, 'SW', NULL, NULL, '0', 'BS-SW', 'BS-SW', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'spanish wells', 'Spanish Wells', 'Spanish Wells District', 'Spanish Wells District', 'spanish wells', 1, NOW(6), NOW(6), 1, 1),
(8030559, 17, 'WG', NULL, NULL, '0', 'BS-WG', 'BS-WG', '+1-242', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bs' AND id_country = 17), 'west grand bahama', 'West Grand Bahama', 'West Grand Bahama District', 'West Grand Bahama District', 'west grand bahama', 1, NOW(6), NOW(6), 1, 1);