-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SENEGAL (SN)
-- Archivo: SN_senegal_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SENEGAL: Región
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_sn', 196, 8, 'Región', 'Region',
    'Région', 'Région', 'Region', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SENEGAL (Regiones)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2243939, 196, 'ziguinchor', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Ziguinchor', 'Ziguinchor', 'Ziguinchor', 'Ziguinchor', 'Ziguinchor', 1, NOW(6), NOW(6), 1, 1),
(2244800, 196, 'thies', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Thiès', 'Région de Thiès', 'Région de Thiès', 'Région de Thiès', 'Région de Thiès', 1, NOW(6), NOW(6), 1, 1),
(2244990, 196, 'tambacounda', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Tambacounda', 'Tambacounda', 'Tambacounda', 'Tambacounda', 'Tambacounda', 1, NOW(6), NOW(6), 1, 1),
(2246451, 196, 'saint_louis', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Saint-Louis', 'Saint-Louis', 'Saint-Louis', 'Saint-Louis', 'Saint-Louis', 1, NOW(6), NOW(6), 1, 1),
(2248753, 196, 'matam', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Matam', 'Matam', 'Matam', 'Matam', 'Matam', 1, NOW(6), NOW(6), 1, 1),
(2249221, 196, 'louga', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Louga', 'Louga', 'Louga', 'Louga', 'Louga', 1, NOW(6), NOW(6), 1, 1),
(2249781, 196, 'kolda', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Kolda', 'Kolda', 'Kolda', 'Kolda', 'Kolda', 1, NOW(6), NOW(6), 1, 1),
(2250804, 196, 'kaolack', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Kaolack', 'Kaolack', 'Kaolack', 'Kaolack', 'Kaolack', 1, NOW(6), NOW(6), 1, 1),
(2251910, 196, 'fatick', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Fatick', 'Fatick', 'Fatick', 'Fatick', 'Fatick', 1, NOW(6), NOW(6), 1, 1),
(2252308, 196, 'diourbel', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Diourbel', 'Diourbel', 'Diourbel', 'Diourbel', 'Diourbel', 1, NOW(6), NOW(6), 1, 1),
(2253350, 196, 'dakar', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Dakar', 'Dakar', 'Dakar', 'Dakar', 'Dakar', 1, NOW(6), NOW(6), 1, 1),
(7303935, 196, 'kaffrine', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Kaffrine', 'Région de Kaffrine', 'Région de Kaffrine', 'Région de Kaffrine', 'Région de Kaffrine', 1, NOW(6), NOW(6), 1, 1),
(7303936, 196, 'kedougou', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Kédougou', 'Région de Kédougou', 'Région de Kédougou', 'Région de Kédougou', 'Région de Kédougou', 1, NOW(6), NOW(6), 1, 1),
(7303937, 196, 'sedhiou', NULL, NULL, '000', 'SN-000', 'SN-000', '+221', (SELECT id FROM t075t_division_types WHERE code = 'region_sn' AND id_country = 196), 'Sédhiou', 'Région de Sédhiou', 'Région de Sédhiou', 'Région de Sédhiou', 'Région de Sédhiou', 1, NOW(6), NOW(6), 1, 1);