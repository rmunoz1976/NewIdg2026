-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para UGANDA (UG)
-- Archivo: UG_uganda_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para UGANDA: Región
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_ug', 234, 8, 'Región', 'Region',
    'Mkoa', 'Mkoa', 'Mkoa', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de UGANDA (Regiones)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(234594, 234, 'central', NULL, NULL, '000', 'UG-000', 'UG-000', '+256', (SELECT id FROM t075t_division_types WHERE code = 'region_ug' AND id_country = 234), 'Central', 'Central Region', 'Central Region', 'Central Region', 'Central Region', 1, NOW(6), NOW(6), 1, 1),
(8260673, 234, 'eastern', NULL, NULL, '000', 'UG-000', 'UG-000', '+256', (SELECT id FROM t075t_division_types WHERE code = 'region_ug' AND id_country = 234), 'Este', 'Eastern Region', 'Eastern Region', 'Eastern Region', 'Eastern Region', 1, NOW(6), NOW(6), 1, 1),
(8260674, 234, 'northern', NULL, NULL, '000', 'UG-000', 'UG-000', '+256', (SELECT id FROM t075t_division_types WHERE code = 'region_ug' AND id_country = 234), 'Norte', 'Northern Region', 'Northern Region', 'Northern Region', 'Northern Region', 1, NOW(6), NOW(6), 1, 1),
(8260675, 234, 'western', NULL, NULL, '000', 'UG-000', 'UG-000', '+256', (SELECT id FROM t075t_division_types WHERE code = 'region_ug' AND id_country = 234), 'Oeste', 'Western Region', 'Western Region', 'Western Region', 'Western Region', 1, NOW(6), NOW(6), 1, 1);