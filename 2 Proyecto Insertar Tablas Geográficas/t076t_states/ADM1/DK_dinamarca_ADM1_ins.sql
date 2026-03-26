-- =============================================
-- Script de inserción para DINAMARCA (DK)
-- Archivo: DK_dinamarca_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para DINAMARCA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_dk', 60, 8, 'Región', 'Region',
    'Region', 'Region', 'region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de DINAMARCA (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(6418538, 60, '84', NULL, NULL, '0', 'DK-84', 'DK-84', '+45', (SELECT id FROM t075t_division_types WHERE code = 'region_dk' AND id_country = 60), 'capital', 'Capital', 'Capital Region', 'Region Hovedstaden', 'capital', 1, NOW(6), NOW(6), 1, 1),
(6418539, 60, '82', NULL, NULL, '0', 'DK-82', 'DK-82', '+45', (SELECT id FROM t075t_division_types WHERE code = 'region_dk' AND id_country = 60), 'jutlandia central', 'Central Jutland', 'Central Denmark Region', 'Region Midtjylland', 'central jutland', 1, NOW(6), NOW(6), 1, 1),
(6418540, 60, '81', NULL, NULL, '0', 'DK-81', 'DK-81', '+45', (SELECT id FROM t075t_division_types WHERE code = 'region_dk' AND id_country = 60), 'jutlandia septentrional', 'North Jutland', 'North Denmark Region', 'North Denmark Region', 'north jutland', 1, NOW(6), NOW(6), 1, 1),
(6418541, 60, '85', NULL, NULL, '0', 'DK-85', 'DK-85', '+45', (SELECT id FROM t075t_division_types WHERE code = 'region_dk' AND id_country = 60), 'selandia', 'Zealand', 'Region Zealand', 'Region Sjælland', 'zealand', 1, NOW(6), NOW(6), 1, 1),
(6418542, 60, '83', NULL, NULL, '0', 'DK-83', 'DK-83', '+45', (SELECT id FROM t075t_division_types WHERE code = 'region_dk' AND id_country = 60), 'dinamarca meridional', 'Southern Denmark', 'Region of Southern Denmark', 'Region Syddanmark', 'southern denmark', 1, NOW(6), NOW(6), 1, 1);