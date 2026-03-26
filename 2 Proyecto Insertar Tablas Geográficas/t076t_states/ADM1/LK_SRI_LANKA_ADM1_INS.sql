-- Insertar tipo de división geográfica ADM1 para Sri Lanka: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_lk', 211, 8, 'provincia', 'province', 
    'Province', 'Province', 'Province', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Sri Lanka (Provincias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(1223421, 211, 'LK-1', NULL, NULL, '0', 'LK-1', 'LK-1', '+94', (SELECT id FROM t075t_division_types WHERE code = 'provincia_lk' AND id_country = 211), 'occidental', 'Western Province', 'Western Province', 'Western Province', 'Western Province', 1, NOW(6), NOW(6), 1, 1),
(1225265, 211, 'LK-8', NULL, NULL, '0', 'LK-8', 'LK-8', '+94', (SELECT id FROM t075t_division_types WHERE code = 'provincia_lk' AND id_country = 211), 'uva', 'Province of Uva', 'Province of Uva', 'Province of Uva', 'Province of Uva', 1, NOW(6), NOW(6), 1, 1),
(1227618, 211, 'LK-3', NULL, NULL, '0', 'LK-3', 'LK-3', '+94', (SELECT id FROM t075t_division_types WHERE code = 'provincia_lk' AND id_country = 211), 'sur', 'Southern Province', 'Southern Province', 'Southern Province', 'Southern Province', 1, NOW(6), NOW(6), 1, 1),
(1228435, 211, 'LK-9', NULL, NULL, '0', 'LK-9', 'LK-9', '+94', (SELECT id FROM t075t_division_types WHERE code = 'provincia_lk' AND id_country = 211), 'sabaragamuwa', 'Sabaragamuwa Province', 'Sabaragamuwa Province', 'Sabaragamuwa Province', 'Sabaragamuwa Province', 1, NOW(6), NOW(6), 1, 1),
(1232860, 211, 'LK-6', NULL, NULL, '0', 'LK-6', 'LK-6', '+94', (SELECT id FROM t075t_division_types WHERE code = 'provincia_lk' AND id_country = 211), 'noroeste', 'North Western Province', 'North Western Province', 'North Western Province', 'North Western Province', 1, NOW(6), NOW(6), 1, 1),
(1232870, 211, 'LK-7', NULL, NULL, '0', 'LK-7', 'LK-7', '+94', (SELECT id FROM t075t_division_types WHERE code = 'provincia_lk' AND id_country = 211), 'centro norte', 'North Central Province', 'North Central Province', 'North Central Province', 'North Central Province', 1, NOW(6), NOW(6), 1, 1),
(1249296, 211, 'LK-2', NULL, NULL, '0', 'LK-2', 'LK-2', '+94', (SELECT id FROM t075t_division_types WHERE code = 'provincia_lk' AND id_country = 211), 'central', 'Central Province', 'Central Province', 'Central Province', 'Central Province', 1, NOW(6), NOW(6), 1, 1),
(7671049, 211, 'LK-4', NULL, NULL, '0', 'LK-4', 'LK-4', '+94', (SELECT id FROM t075t_division_types WHERE code = 'provincia_lk' AND id_country = 211), 'norte', 'Northern Province', 'Northern Province', 'Northern Province', 'Northern Province', 1, NOW(6), NOW(6), 1, 1),
(8133521, 211, 'LK-5', NULL, NULL, '0', 'LK-5', 'LK-5', '+94', (SELECT id FROM t075t_division_types WHERE code = 'provincia_lk' AND id_country = 211), 'este', 'Eastern Province', 'Eastern Province', 'Eastern Province', 'Eastern Province', 1, NOW(6), NOW(6), 1, 1);