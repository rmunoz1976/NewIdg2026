-- =============================================
-- Script de inserción para BAREÍN (BH)
-- Archivo: BH_barein_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BAREÍN: Gobernación
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'gobernacion_bh', 18, 8, 'Gobernación', 'Governorate',
    'Governorate', 'محافظة', 'muhafazah', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BAREÍN (Gobernaciones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(290333, 18, 'MUH', NULL, NULL, '0', 'BH-MUH', 'BH-MUH', '+973', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_bh' AND id_country = 18), 'muharraq', 'Muharraq', 'Muharraq Governorate', 'Muharraq Governorate', 'muharraq', 1, NOW(6), NOW(6), 1, 1),
(7090954, 18, 'CAP', NULL, NULL, '0', 'BH-CAP', 'BH-CAP', '+973', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_bh' AND id_country = 18), 'capital', 'Capital', 'Capital Governorate', 'Capital Governorate', 'capital', 1, NOW(6), NOW(6), 1, 1),
(7090972, 18, 'SOU', NULL, NULL, '0', 'BH-SOU', 'BH-SOU', '+973', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_bh' AND id_country = 18), 'sur', 'Southern', 'Southern Governorate', 'Southern Governorate', 'southern', 1, NOW(6), NOW(6), 1, 1),
(7090974, 18, 'NOR', NULL, NULL, '0', 'BH-NOR', 'BH-NOR', '+973', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_bh' AND id_country = 18), 'norte', 'Northern', 'Northern Governorate', 'Northern Governorate', 'northern', 1, NOW(6), NOW(6), 1, 1);