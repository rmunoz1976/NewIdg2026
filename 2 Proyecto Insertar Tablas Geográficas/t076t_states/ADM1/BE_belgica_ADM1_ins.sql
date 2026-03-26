-- =============================================
-- Script de inserción para BÉLGICA (BE)
-- Archivo: BE_belgica_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BÉLGICA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_be', 22, 8, 'Región', 'Region',
    'Region', 'Région', 'region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BÉLGICA (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2800867, 22, 'BRU', NULL, NULL, '0', 'BE-BRU', 'BE-BRU', '+32', (SELECT id FROM t075t_division_types WHERE code = 'region_be' AND id_country = 22), 'región de bruselas-capital', 'Brussels-Capital Region', 'Brussels-Capital Region', 'Bruxelles-Capitale', 'bruxelles-capitale', 1, NOW(6), NOW(6), 1, 1),
(3337387, 22, 'WAL', NULL, NULL, '0', 'BE-WAL', 'BE-WAL', '+32', (SELECT id FROM t075t_division_types WHERE code = 'region_be' AND id_country = 22), 'valonia', 'Wallonia', 'Walloon Region', 'Wallonie', 'wallonie', 1, NOW(6), NOW(6), 1, 1),
(3337388, 22, 'VLG', NULL, NULL, '0', 'BE-VLG', 'BE-VLG', '+32', (SELECT id FROM t075t_division_types WHERE code = 'region_be' AND id_country = 22), 'flandes', 'Flanders', 'Flemish Region', 'Vlaams Gewest', 'vlaams gewest', 1, NOW(6), NOW(6), 1, 1);