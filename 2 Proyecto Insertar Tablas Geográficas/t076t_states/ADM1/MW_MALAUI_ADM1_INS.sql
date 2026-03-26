-- Insertar tipo de división geográfica ADM1 para Malaui: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_mw', 132, 8, 'región', 'region', 
    'Region', 'Region', 'Region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Malaui (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(923817, 132, 'MW-S', NULL, NULL, '0', 'MW-S', 'MW-S', '+265', (SELECT id FROM t075t_division_types WHERE code = 'region_mw' AND id_country = 132), 'sur', 'Southern Region', 'Southern Region', 'Southern Region', 'Southern', 1, NOW(6), NOW(6), 1, 1),
(924591, 132, 'MW-N', NULL, NULL, '0', 'MW-N', 'MW-N', '+265', (SELECT id FROM t075t_division_types WHERE code = 'region_mw' AND id_country = 132), 'norte', 'Northern Region', 'Northern Region', 'Northern Region', 'Northern', 1, NOW(6), NOW(6), 1, 1),
(931597, 132, 'MW-C', NULL, NULL, '0', 'MW-C', 'MW-C', '+265', (SELECT id FROM t075t_division_types WHERE code = 'region_mw' AND id_country = 132), 'central', 'Central Region', 'Central Region', 'Central Region', 'Central', 1, NOW(6), NOW(6), 1, 1);