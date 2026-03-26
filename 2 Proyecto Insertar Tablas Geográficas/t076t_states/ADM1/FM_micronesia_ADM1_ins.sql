-- =============================================
-- Script de inserción para MICRONESIA (FM)
-- Archivo: FM_micronesia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para MICRONESIA: Estado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'estado_fm', 143, 8, 'Estado', 'State',
    'State', 'State', 'state', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de MICRONESIA (Estados)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2081175, 143, 'YAP', NULL, NULL, '0', 'FM-YAP', 'FM-YAP', '+691', (SELECT id FROM t075t_division_types WHERE code = 'estado_fm' AND id_country = 143), 'yap', 'Yap', 'Yap State', 'State of Yap', 'yap', 1, NOW(6), NOW(6), 1, 1),
(2081550, 143, 'PNI', NULL, NULL, '0', 'FM-PNI', 'FM-PNI', '+691', (SELECT id FROM t075t_division_types WHERE code = 'estado_fm' AND id_country = 143), 'pohnpei', 'Pohnpei', 'Pohnpei State', 'State of Pohnpei', 'pohnpei', 1, NOW(6), NOW(6), 1, 1),
(2082036, 143, 'KSA', NULL, NULL, '0', 'FM-KSA', 'FM-KSA', '+691', (SELECT id FROM t075t_division_types WHERE code = 'estado_fm' AND id_country = 143), 'kosrae', 'Kosrae', 'Kosrae State', 'State of Kosrae', 'kosrae', 1, NOW(6), NOW(6), 1, 1),
(2082282, 143, 'CHK', NULL, NULL, '0', 'FM-CHK', 'FM-CHK', '+691', (SELECT id FROM t075t_division_types WHERE code = 'estado_fm' AND id_country = 143), 'chuuk', 'Chuuk', 'Chuuk State', 'State of Chuuk', 'chuuk', 1, NOW(6), NOW(6), 1, 1);