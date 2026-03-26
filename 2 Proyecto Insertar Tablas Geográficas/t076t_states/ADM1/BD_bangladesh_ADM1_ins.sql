-- =============================================
-- Script de inserción para BANGLADESH (BD)
-- Archivo: BD_bangladesh_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BANGLADESH: División
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'division_bd', 19, 8, 'División', 'Division',
    'Division', 'বিভাগ', 'bibhag', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BANGLADESH
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(1337166, 19, 'C', NULL, NULL, '0', 'BD-C', 'BD-C', '+880', (SELECT id FROM t075t_division_types WHERE code = 'division_bd' AND id_country = 19), 'rajshahi', 'Rajshahi', 'Rajshahi Division', 'Rajshahi', 'rajshahi', 1, NOW(6), NOW(6), 1, 1),
(1337179, 19, 'D', NULL, NULL, '0', 'BD-D', 'BD-D', '+880', (SELECT id FROM t075t_division_types WHERE code = 'division_bd' AND id_country = 19), 'dhaka', 'Dhaka', 'Dhaka Division', 'Dhaka Division', 'dhaka', 1, NOW(6), NOW(6), 1, 1),
(1337200, 19, 'B', NULL, NULL, '0', 'BD-B', 'BD-B', '+880', (SELECT id FROM t075t_division_types WHERE code = 'division_bd' AND id_country = 19), 'chittagong', 'Chittagong', 'Chittagong Division', 'Chittagong', 'chittagong', 1, NOW(6), NOW(6), 1, 1),
(1337210, 19, 'K', NULL, NULL, '0', 'BD-K', 'BD-K', '+880', (SELECT id FROM t075t_division_types WHERE code = 'division_bd' AND id_country = 19), 'khulna', 'Khulna', 'Khulna Division', 'Khulna Division', 'khulna', 1, NOW(6), NOW(6), 1, 1),
(1337229, 19, 'A', NULL, NULL, '0', 'BD-A', 'BD-A', '+880', (SELECT id FROM t075t_division_types WHERE code = 'division_bd' AND id_country = 19), 'barisal', 'Barisal', 'Barisal Division', 'Barisal Division', 'barisal', 1, NOW(6), NOW(6), 1, 1),
(1477362, 19, 'G', NULL, NULL, '0', 'BD-G', 'BD-G', '+880', (SELECT id FROM t075t_division_types WHERE code = 'division_bd' AND id_country = 19), 'sylhet', 'Sylhet', 'Sylhet Division', 'Sylhet Division', 'sylhet', 1, NOW(6), NOW(6), 1, 1),
(7671048, 19, 'F', NULL, NULL, '0', 'BD-F', 'BD-F', '+880', (SELECT id FROM t075t_division_types WHERE code = 'division_bd' AND id_country = 19), 'rangpur', 'Rangpur', 'Rangpur Division', 'Rangpur Division', 'rangpur', 1, NOW(6), NOW(6), 1, 1),
(11287936, 19, 'H', NULL, NULL, '0', 'BD-H', 'BD-H', '+880', (SELECT id FROM t075t_division_types WHERE code = 'division_bd' AND id_country = 19), 'mymensingh', 'Mymensingh', 'Mymensingh Division', 'Mymensingh Division', 'mymensingh', 1, NOW(6), NOW(6), 1, 1);