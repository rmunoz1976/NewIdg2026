-- =============================================
-- Script de inserción para GAMBIA (GM)
-- Archivo: GM_gambia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GAMBIA: División / Ciudad
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'division_gm', 81, 8, 'División', 'Division',
    'Division', 'Division', 'division', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GAMBIA (Divisiones y Ciudad)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2411683, 81, 'W', NULL, NULL, '0', 'GM-W', 'GM-W', '+220', (SELECT id FROM t075t_division_types WHERE code = 'division_gm' AND id_country = 81), 'costa occidental', 'West Coast', 'West Coast Region', 'West Coast', 'west coast', 1, NOW(6), NOW(6), 1, 1),
(2411711, 81, 'U', NULL, NULL, '0', 'GM-U', 'GM-U', '+220', (SELECT id FROM t075t_division_types WHERE code = 'division_gm' AND id_country = 81), 'río superior', 'Upper River', 'Upper River Region', 'Upper River', 'upper river', 1, NOW(6), NOW(6), 1, 1),
(2412353, 81, 'N', NULL, NULL, '0', 'GM-N', 'GM-N', '+220', (SELECT id FROM t075t_division_types WHERE code = 'division_gm' AND id_country = 81), 'banco norte', 'North Bank', 'North Bank Region', 'North Bank', 'north bank', 1, NOW(6), NOW(6), 1, 1),
(2412707, 81, 'M', NULL, NULL, '0', 'GM-M', 'GM-M', '+220', (SELECT id FROM t075t_division_types WHERE code = 'division_gm' AND id_country = 81), 'río central', 'Central River', 'Central River Region', 'Central River', 'central river', 1, NOW(6), NOW(6), 1, 1),
(2412716, 81, 'L', NULL, NULL, '0', 'GM-L', 'GM-L', '+220', (SELECT id FROM t075t_division_types WHERE code = 'division_gm' AND id_country = 81), 'río inferior', 'Lower River', 'Lower River Region', 'Lower River', 'lower river', 1, NOW(6), NOW(6), 1, 1),
(2413875, 81, 'B', NULL, NULL, '0', 'GM-B', 'GM-B', '+220', (SELECT id FROM t075t_division_types WHERE code = 'division_gm' AND id_country = 81), 'banjul', 'Banjul', 'Banjul', 'Banjul', 'banjul', 1, NOW(6), NOW(6), 1, 1);