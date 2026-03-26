-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SIERRA LEONA (SL)
-- Archivo: SL_sierra_leona_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SIERRA LEONA: Provincia
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_sl', 199, 8, 'Provincia', 'Province',
    'Province', 'Province', 'Province', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SIERRA LEONA (Provincias y Área)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2403068, 199, 'western_area', NULL, NULL, '000', 'SL-000', 'SL-000', '+232', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sl' AND id_country = 199), 'Área Occidental', 'Western Area', 'Western Area', 'Western Area', 'Western Area', 1, NOW(6), NOW(6), 1, 1),
(2403745, 199, 'southern', NULL, NULL, '000', 'SL-000', 'SL-000', '+232', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sl' AND id_country = 199), 'Provincia del Sur', 'Southern Province', 'Southern Province', 'Southern Province', 'Southern Province', 1, NOW(6), NOW(6), 1, 1),
(2404798, 199, 'northern', NULL, NULL, '000', 'SL-000', 'SL-000', '+232', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sl' AND id_country = 199), 'Provincia del Norte', 'Northern Province', 'Northern Province', 'Northern Province', 'Northern Province', 1, NOW(6), NOW(6), 1, 1),
(2409543, 199, 'eastern', NULL, NULL, '000', 'SL-000', 'SL-000', '+232', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sl' AND id_country = 199), 'Provincia del Este', 'Eastern Province', 'Eastern Province', 'Eastern Province', 'Eastern Province', 1, NOW(6), NOW(6), 1, 1),
(11919533, 199, 'north_west', NULL, NULL, '000', 'SL-000', 'SL-000', '+232', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sl' AND id_country = 199), 'Provincia del Noroeste', 'North West Province', 'North West Province', 'North West Province', 'North West Province', 1, NOW(6), NOW(6), 1, 1);