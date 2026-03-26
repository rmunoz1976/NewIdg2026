-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para ZIMBABUE (ZW)
-- Archivo: ZW_zimbabue_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para ZIMBABUE: Provincia
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_zw', 250, 8, 'Provincia', 'Province',
    'Province', 'Province', 'Province', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de ZIMBABUE (Provincias y Ciudades)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(886119, 250, 'midlands', NULL, NULL, '000', 'ZW-000', 'ZW-000', '+263', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zw' AND id_country = 250), 'Midlands', 'Midlands Province', 'Midlands Province', 'Midlands Province', 'Midlands Province', 1, NOW(6), NOW(6), 1, 1),
(886747, 250, 'matabeleland_south', NULL, NULL, '000', 'ZW-000', 'ZW-000', '+263', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zw' AND id_country = 250), 'Matabelelandia Meridional', 'Matabeleland South Province', 'Matabeleland South Province', 'Matabeleland South Province', 'Matabeleland South Province', 1, NOW(6), NOW(6), 1, 1),
(886748, 250, 'matabeleland_north', NULL, NULL, '000', 'ZW-000', 'ZW-000', '+263', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zw' AND id_country = 250), 'Matabelelandia Septentrional', 'Matabeleland North Province', 'Matabeleland North Province', 'Matabeleland North Province', 'Matabeleland North Province', 1, NOW(6), NOW(6), 1, 1),
(886761, 250, 'masvingo', NULL, NULL, '000', 'ZW-000', 'ZW-000', '+263', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zw' AND id_country = 250), 'Masvingo', 'Masvingo Province', 'Masvingo Province', 'Masvingo Province', 'Masvingo Province', 1, NOW(6), NOW(6), 1, 1),
(886841, 250, 'mashonaland_west', NULL, NULL, '000', 'ZW-000', 'ZW-000', '+263', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zw' AND id_country = 250), 'Mashonalandia Occidental', 'Mashonaland West Province', 'Mashonaland West Province', 'Mashonaland West Province', 'Mashonaland West Province', 1, NOW(6), NOW(6), 1, 1),
(886842, 250, 'mashonaland_east', NULL, NULL, '000', 'ZW-000', 'ZW-000', '+263', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zw' AND id_country = 250), 'Mashonalandia Oriental', 'Mashonaland East Province', 'Mashonaland East Province', 'Mashonaland East Province', 'Mashonaland East Province', 1, NOW(6), NOW(6), 1, 1),
(886843, 250, 'mashonaland_central', NULL, NULL, '000', 'ZW-000', 'ZW-000', '+263', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zw' AND id_country = 250), 'Mashonalandia Central', 'Mashonaland Central Province', 'Mashonaland Central Province', 'Mashonaland Central Province', 'Mashonaland Central Province', 1, NOW(6), NOW(6), 1, 1),
(887358, 250, 'manicaland', NULL, NULL, '000', 'ZW-000', 'ZW-000', '+263', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zw' AND id_country = 250), 'Manicaland', 'Manicaland Province', 'Manicaland Province', 'Manicaland Province', 'Manicaland Province', 1, NOW(6), NOW(6), 1, 1),
(1105843, 250, 'bulawayo', NULL, NULL, '000', 'ZW-000', 'ZW-000', '+263', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zw' AND id_country = 250), 'Bulawayo', 'Bulawayo Province', 'Bulawayo Province', 'Bulawayo Province', 'Bulawayo Province', 1, NOW(6), NOW(6), 1, 1),
(1105844, 250, 'harare', NULL, NULL, '000', 'ZW-000', 'ZW-000', '+263', (SELECT id FROM t075t_division_types WHERE code = 'provincia_zw' AND id_country = 250), 'Harare', 'Harare Province', 'Harare Province', 'Harare Province', 'Harare Province', 1, NOW(6), NOW(6), 1, 1);