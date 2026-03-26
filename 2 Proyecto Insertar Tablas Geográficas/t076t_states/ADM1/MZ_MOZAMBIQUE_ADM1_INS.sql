-- Insertar tipo de división geográfica ADM1 para Mozambique: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_mz', 150, 8, 'provincia', 'province', 
    'Province', 'Província', 'Provincia', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Mozambique (Provincias y Ciudad de Maputo)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(1024312, 150, 'MZ-Q', NULL, NULL, '0', 'MZ-Q', 'MZ-Q', '+258', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mz' AND id_country = 150), 'zambezia', 'Zambezia', 'Zambezia', 'Província de Zambézia', 'Zambezia', 1, NOW(6), NOW(6), 1, 1),
(1026010, 150, 'MZ-T', NULL, NULL, '0', 'MZ-T', 'MZ-T', '+258', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mz' AND id_country = 150), 'tete', 'Tete', 'Tete', 'Tete', 'Tete', 1, NOW(6), NOW(6), 1, 1),
(1026804, 150, 'MZ-S', NULL, NULL, '0', 'MZ-S', 'MZ-S', '+258', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mz' AND id_country = 150), 'sofala', 'Sofala', 'Sofala', 'Sofala Province', 'Sofala', 1, NOW(6), NOW(6), 1, 1),
(1030006, 150, 'MZ-N', NULL, NULL, '0', 'MZ-N', 'MZ-N', '+258', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mz' AND id_country = 150), 'niassa', 'Niassa', 'Niassa', 'Niassa Province', 'Niassa', 1, NOW(6), NOW(6), 1, 1),
(1033354, 150, 'MZ-N', NULL, NULL, '0', 'MZ-N', 'MZ-N', '+258', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mz' AND id_country = 150), 'nampula', 'Nampula', 'Nampula', 'Nampula', 'Nampula', 1, NOW(6), NOW(6), 1, 1),
(1040649, 150, 'MZ-L', NULL, NULL, '0', 'MZ-L', 'MZ-L', '+258', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mz' AND id_country = 150), 'maputo', 'Maputo Province', 'Maputo', 'Maputo Province', 'Maputo', 1, NOW(6), NOW(6), 1, 1),
(1040947, 150, 'MZ-B', NULL, NULL, '0', 'MZ-B', 'MZ-B', '+258', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mz' AND id_country = 150), 'manica', 'Manica', 'Manica', 'Manica Province', 'Manica', 1, NOW(6), NOW(6), 1, 1),
(1045110, 150, 'MZ-I', NULL, NULL, '0', 'MZ-I', 'MZ-I', '+258', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mz' AND id_country = 150), 'inhambane', 'Inhambane', 'Inhambane', 'Inhambane Province', 'Inhambane', 1, NOW(6), NOW(6), 1, 1),
(1046058, 150, 'MZ-G', NULL, NULL, '0', 'MZ-G', 'MZ-G', '+258', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mz' AND id_country = 150), 'gaza', 'Gaza', 'Gaza', 'Gaza Province', 'Gaza', 1, NOW(6), NOW(6), 1, 1),
(1051823, 150, 'MZ-P', NULL, NULL, '0', 'MZ-P', 'MZ-P', '+258', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mz' AND id_country = 150), 'cabo delgado', 'Cabo Delgado', 'Cabo Delgado', 'Cabo Delgado Province', 'Cabo Delgado', 1, NOW(6), NOW(6), 1, 1),
(1105845, 150, 'MZ-MPM', NULL, NULL, '0', 'MZ-MPM', 'MZ-MPM', '+258', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mz' AND id_country = 150), 'maputo ciudad', 'Maputo City', 'Maputo', 'Cidade de Maputo', 'Maputo', 1, NOW(6), NOW(6), 1, 1);