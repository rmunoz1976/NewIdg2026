-- Insertar tipo de división geográfica ADM1 para Ruanda: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_rw', 184, 8, 'provincia', 'province', 
    'Province', 'Intara', 'Intara', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Ruanda (Provincias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(6413337, 184, 'RW-02', NULL, NULL, '0', 'RW-02', 'RW-02', '+250', (SELECT id FROM t075t_division_types WHERE code = 'provincia_rw' AND id_country = 184), 'este', 'Eastern Province', 'Eastern', 'Eastern Province', 'Eastern', 1, NOW(6), NOW(6), 1, 1),
(6413338, 184, 'RW-01', NULL, NULL, '0', 'RW-01', 'RW-01', '+250', (SELECT id FROM t075t_division_types WHERE code = 'provincia_rw' AND id_country = 184), 'kigali', 'Kigali Province', 'Kigali', 'Kigali Province', 'Kigali', 1, NOW(6), NOW(6), 1, 1),
(6413339, 184, 'RW-03', NULL, NULL, '0', 'RW-03', 'RW-03', '+250', (SELECT id FROM t075t_division_types WHERE code = 'provincia_rw' AND id_country = 184), 'norte', 'Northern Province', 'Northern', 'Northern Province', 'Northern', 1, NOW(6), NOW(6), 1, 1),
(6413340, 184, 'RW-04', NULL, NULL, '0', 'RW-04', 'RW-04', '+250', (SELECT id FROM t075t_division_types WHERE code = 'provincia_rw' AND id_country = 184), 'oeste', 'Western Province', 'Western', 'Western Province', 'Western', 1, NOW(6), NOW(6), 1, 1),
(6413341, 184, 'RW-05', NULL, NULL, '0', 'RW-05', 'RW-05', '+250', (SELECT id FROM t075t_division_types WHERE code = 'provincia_rw' AND id_country = 184), 'sur', 'Southern Province', 'Southern', 'Southern Province', 'Southern', 1, NOW(6), NOW(6), 1, 1);