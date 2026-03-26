-- =============================================
-- Script de inserción para REPÚBLICA DEL CONGO (CG)
-- Archivo: CG_republica_del_congo_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para REPÚBLICA DEL CONGO: Departamento
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'departamento_cg', 180, 8, 'Departamento', 'Department',
    'Department', 'Département', 'departement', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de REPÚBLICA DEL CONGO (Departamentos y Comunas)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2255329, 180, 'SGH', NULL, NULL, '0', 'CG-SGH', 'CG-SGH', '+242', (SELECT id FROM t075t_division_types WHERE code = 'departamento_cg' AND id_country = 180), 'sangha', 'Sangha', 'Sangha Department', 'Sangha', 'sangha', 1, NOW(6), NOW(6), 1, 1),
(2255404, 180, 'POL', NULL, NULL, '0', 'CG-POL', 'CG-POL', '+242', (SELECT id FROM t075t_division_types WHERE code = 'departamento_cg' AND id_country = 180), 'pool', 'Pool', 'Pool Department', 'Pool', 'pool', 1, NOW(6), NOW(6), 1, 1),
(2255422, 180, 'PLT', NULL, NULL, '0', 'CG-PLT', 'CG-PLT', '+242', (SELECT id FROM t075t_division_types WHERE code = 'departamento_cg' AND id_country = 180), 'plateaux', 'Plateaux', 'Plateaux Department', 'Plateaux', 'plateaux', 1, NOW(6), NOW(6), 1, 1),
(2256175, 180, 'NIA', NULL, NULL, '0', 'CG-NIA', 'CG-NIA', '+242', (SELECT id FROM t075t_division_types WHERE code = 'departamento_cg' AND id_country = 180), 'niari', 'Niari', 'Niari Department', 'Niari', 'niari', 1, NOW(6), NOW(6), 1, 1),
(2258431, 180, 'LIK', NULL, NULL, '0', 'CG-LIK', 'CG-LIK', '+242', (SELECT id FROM t075t_division_types WHERE code = 'departamento_cg' AND id_country = 180), 'likouala', 'Likouala', 'Likouala Department', 'Likouala', 'likouala', 1, NOW(6), NOW(6), 1, 1),
(2258534, 180, 'LEK', NULL, NULL, '0', 'CG-LEK', 'CG-LEK', '+242', (SELECT id FROM t075t_division_types WHERE code = 'departamento_cg' AND id_country = 180), 'lékoumou', 'Lékoumou', 'Lékoumou Department', 'Lékoumou', 'lekoumou', 1, NOW(6), NOW(6), 1, 1),
(2258738, 180, 'KOU', NULL, NULL, '0', 'CG-KOU', 'CG-KOU', '+242', (SELECT id FROM t075t_division_types WHERE code = 'departamento_cg' AND id_country = 180), 'kouilou', 'Kouilou', 'Kouilou Department', 'Kouilou', 'kouilou', 1, NOW(6), NOW(6), 1, 1),
(2260487, 180, 'CUV', NULL, NULL, '0', 'CG-CUV', 'CG-CUV', '+242', (SELECT id FROM t075t_division_types WHERE code = 'departamento_cg' AND id_country = 180), 'cuvette', 'Cuvette', 'Cuvette Department', 'Cuvette', 'cuvette', 1, NOW(6), NOW(6), 1, 1),
(2260668, 180, 'BOU', NULL, NULL, '0', 'CG-BOU', 'CG-BOU', '+242', (SELECT id FROM t075t_division_types WHERE code = 'departamento_cg' AND id_country = 180), 'bouenza', 'Bouenza', 'Bouenza Department', 'Bouenza', 'bouenza', 1, NOW(6), NOW(6), 1, 1),
(2572183, 180, 'BZV', NULL, NULL, '0', 'CG-BZV', 'CG-BZV', '+242', (SELECT id FROM t075t_division_types WHERE code = 'departamento_cg' AND id_country = 180), 'brazzaville', 'Brazzaville', 'Brazzaville Department', 'Brazzaville', 'brazzaville', 1, NOW(6), NOW(6), 1, 1),
(2593118, 180, 'CUVO', NULL, NULL, '0', 'CG-CUVO', 'CG-CUVO', '+242', (SELECT id FROM t075t_division_types WHERE code = 'departamento_cg' AND id_country = 180), 'cuvette oeste', 'Cuvette-Ouest', 'Cuvette-Ouest Department', 'Cuvette-Ouest', 'cuvette ouest', 1, NOW(6), NOW(6), 1, 1),
(7280295, 180, 'PNR', NULL, NULL, '0', 'CG-PNR', 'CG-PNR', '+242', (SELECT id FROM t075t_division_types WHERE code = 'departamento_cg' AND id_country = 180), 'pointe noire', 'Pointe-Noire', 'Pointe-Noire Department', 'Pointe-Noire', 'pointe noire', 1, NOW(6), NOW(6), 1, 1);