-- =============================================
-- Script de inserción para GHANA (GH)
-- Archivo: GH_ghana_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GHANA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_gh', 84, 8, 'Región', 'Region',
    'Region', 'Region', 'region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GHANA (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2294076, 84, 'WP', NULL, NULL, '0', 'GH-WP', 'GH-WP', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'occidental', 'Western', 'Western Region', 'Western Region', 'western', 1, NOW(6), NOW(6), 1, 1),
(2294234, 84, 'TV', NULL, NULL, '0', 'GH-TV', 'GH-TV', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'volta', 'Volta', 'Volta Region', 'Volta Region', 'volta', 1, NOW(6), NOW(6), 1, 1),
(2294286, 84, 'UW', NULL, NULL, '0', 'GH-UW', 'GH-UW', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'occidental superior', 'Upper West', 'Upper West Region', 'Upper West Region', 'upper west', 1, NOW(6), NOW(6), 1, 1),
(2294291, 84, 'UE', NULL, NULL, '0', 'GH-UE', 'GH-UE', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'oriental superior', 'Upper East', 'Upper East Region', 'Upper East Region', 'upper east', 1, NOW(6), NOW(6), 1, 1),
(2297169, 84, 'NP', NULL, NULL, '0', 'GH-NP', 'GH-NP', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'norte', 'Northern', 'Northern Region', 'Northern Region', 'northern', 1, NOW(6), NOW(6), 1, 1),
(2300569, 84, 'AA', NULL, NULL, '0', 'GH-AA', 'GH-AA', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'gran acra', 'Greater Accra', 'Greater Accra Region', 'Greater Accra Region', 'greater accra', 1, NOW(6), NOW(6), 1, 1),
(2301360, 84, 'EP', NULL, NULL, '0', 'GH-EP', 'GH-EP', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'oriental', 'Eastern', 'Eastern Region', 'Eastern Region', 'eastern', 1, NOW(6), NOW(6), 1, 1),
(2302353, 84, 'CP', NULL, NULL, '0', 'GH-CP', 'GH-CP', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'central', 'Central', 'Central Region', 'Central Region', 'central', 1, NOW(6), NOW(6), 1, 1),
(2304116, 84, 'AH', NULL, NULL, '0', 'GH-AH', 'GH-AH', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'ashanti', 'Ashanti', 'Ashanti Region', 'Ashanti Region', 'ashanti', 1, NOW(6), NOW(6), 1, 1),
(12105069, 84, 'BO', NULL, NULL, '0', 'GH-BO', 'GH-BO', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'bono', 'Bono', 'Bono', 'Bono', 'bono', 1, NOW(6), NOW(6), 1, 1),
(12105070, 84, 'OT', NULL, NULL, '0', 'GH-OT', 'GH-OT', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'oti', 'Oti', 'Oti', 'Oti', 'oti', 1, NOW(6), NOW(6), 1, 1),
(12105071, 84, 'NE', NULL, NULL, '0', 'GH-NE', 'GH-NE', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'noreste', 'North East', 'North East', 'North East', 'north east', 1, NOW(6), NOW(6), 1, 1),
(12105072, 84, 'AF', NULL, NULL, '0', 'GH-AF', 'GH-AF', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'ahafo', 'Ahafo', 'Ahafo', 'Ahafo', 'ahafo', 1, NOW(6), NOW(6), 1, 1),
(12105073, 84, 'BE', NULL, NULL, '0', 'GH-BE', 'GH-BE', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'bono este', 'Bono East', 'Bono East', 'Bono East', 'bono east', 1, NOW(6), NOW(6), 1, 1),
(12105074, 84, 'SV', NULL, NULL, '0', 'GH-SV', 'GH-SV', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'sabana', 'Savannah', 'Savannah', 'Savannah', 'savannah', 1, NOW(6), NOW(6), 1, 1),
(12105075, 84, 'WN', NULL, NULL, '0', 'GH-WN', 'GH-WN', '+233', (SELECT id FROM t075t_division_types WHERE code = 'region_gh' AND id_country = 84), 'occidental norte', 'Western North', 'Western North', 'Western North', 'western north', 1, NOW(6), NOW(6), 1, 1);