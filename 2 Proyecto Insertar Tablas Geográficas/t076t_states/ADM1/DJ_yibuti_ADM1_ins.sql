-- =============================================
-- Script de inserción para YIBUTI (DJ)
-- Archivo: DJ_yibuti_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para YIBUTI: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_dj', 61, 8, 'Región', 'Region',
    'Region', 'Région', 'region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de YIBUTI (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(220781, 61, 'TA', NULL, NULL, '0', 'DJ-TA', 'DJ-TA', '+253', (SELECT id FROM t075t_division_types WHERE code = 'region_dj' AND id_country = 61), 'tadjoura', 'Tadjourah', 'Tadjourah Region', 'Tadjourah', 'tadjourah', 1, NOW(6), NOW(6), 1, 1),
(221525, 61, 'OB', NULL, NULL, '0', 'DJ-OB', 'DJ-OB', '+253', (SELECT id FROM t075t_division_types WHERE code = 'region_dj' AND id_country = 61), 'obock', 'Obock', 'Obock Region', 'Obock', 'obock', 1, NOW(6), NOW(6), 1, 1),
(223818, 61, 'DJ', NULL, NULL, '0', 'DJ-DJ', 'DJ-DJ', '+253', (SELECT id FROM t075t_division_types WHERE code = 'region_dj' AND id_country = 61), 'yibuti', 'Djibouti', 'Djibouti Region', 'Djibouti Region', 'djibouti', 1, NOW(6), NOW(6), 1, 1),
(223889, 61, 'DI', NULL, NULL, '0', 'DJ-DI', 'DJ-DI', '+253', (SELECT id FROM t075t_division_types WHERE code = 'region_dj' AND id_country = 61), 'dikhil', 'Dikhil', 'Dikhil Region', 'Dikhil', 'dikhil', 1, NOW(6), NOW(6), 1, 1),
(225282, 61, 'AS', NULL, NULL, '0', 'DJ-AS', 'DJ-AS', '+253', (SELECT id FROM t075t_division_types WHERE code = 'region_dj' AND id_country = 61), 'ali sabieh', 'Ali Sabieh', 'Ali Sabieh Region', 'Ali Sabieh Region', 'ali sabieh', 1, NOW(6), NOW(6), 1, 1),
(449265, 61, 'AR', NULL, NULL, '0', 'DJ-AR', 'DJ-AR', '+253', (SELECT id FROM t075t_division_types WHERE code = 'region_dj' AND id_country = 61), 'arta', 'Arta', 'Arta Region', 'Arta Region', 'arta', 1, NOW(6), NOW(6), 1, 1);