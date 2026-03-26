-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para ZAMBIA (ZM)
-- Archivo: ZM_zambia_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para ZAMBIA: Provincia
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_zm', 249, 8, 'Provincia', 'Province',
    'Province', 'Province', 'Province', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de ZAMBIA (Provincias)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(896140, 249, 'western', NULL, NULL, '000', 'ZM-000', 'ZM-000', '+260', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zm' AND id_country = 249), 'Occidental', 'Western Province', 'Western Province', 'Western Province', 'Western Province', 1, NOW(6), NOW(6), 1, 1),
(896972, 249, 'southern', NULL, NULL, '000', 'ZM-000', 'ZM-000', '+260', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zm' AND id_country = 249), 'Meridional', 'Southern Province', 'Southern Province', 'Southern Province', 'Southern Province', 1, NOW(6), NOW(6), 1, 1),
(900594, 249, 'north_western', NULL, NULL, '000', 'ZM-000', 'ZM-000', '+260', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zm' AND id_country = 249), 'Noroccidental', 'North-Western Province', 'North-Western Province', 'North-Western Province', 'North-Western Province', 1, NOW(6), NOW(6), 1, 1),
(900601, 249, 'northern', NULL, NULL, '000', 'ZM-000', 'ZM-000', '+260', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zm' AND id_country = 249), 'Septentrional', 'Northern Province', 'Northern Province', 'Northern Province', 'Northern Province', 1, NOW(6), NOW(6), 1, 1),
(909129, 249, 'lusaka', NULL, NULL, '000', 'ZM-000', 'ZM-000', '+260', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zm' AND id_country = 249), 'Lusaka', 'Lusaka Province', 'Lusaka Province', 'Lusaka Province', 'Lusaka Province', 1, NOW(6), NOW(6), 1, 1),
(909845, 249, 'luapula', NULL, NULL, '000', 'ZM-000', 'ZM-000', '+260', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zm' AND id_country = 249), 'Luapula', 'Luapula Province', 'Luapula Province', 'Luapula Province', 'Luapula Province', 1, NOW(6), NOW(6), 1, 1),
(917388, 249, 'eastern', NULL, NULL, '000', 'ZM-000', 'ZM-000', '+260', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zm' AND id_country = 249), 'Oriental', 'Eastern Province', 'Eastern Province', 'Eastern Province', 'Eastern Province', 1, NOW(6), NOW(6), 1, 1),
(917524, 249, 'copperbelt', NULL, NULL, '000', 'ZM-000', 'ZM-000', '+260', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zm' AND id_country = 249), 'Copperbelt', 'Copperbelt Province', 'Copperbelt Province', 'Copperbelt Province', 'Copperbelt Province', 1, NOW(6), NOW(6), 1, 1),
(921064, 249, 'central', NULL, NULL, '000', 'ZM-000', 'ZM-000', '+260', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zm' AND id_country = 249), 'Central', 'Central Province', 'Central Province', 'Central Province', 'Central Province', 1, NOW(6), NOW(6), 1, 1),
(11154503, 249, 'muchinga', NULL, NULL, '000', 'ZM-000', 'ZM-000', '+260', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zm' AND id_country = 249), 'Muchinga', 'Muchinga Province', 'Muchinga Province', 'Muchinga Province', 'Muchinga Province', 1, NOW(6), NOW(6), 1, 1);