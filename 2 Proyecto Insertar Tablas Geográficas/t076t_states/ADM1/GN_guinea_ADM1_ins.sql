-- =============================================
-- Script de inserción para GUINEA (GN)
-- Archivo: GN_guinea_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GUINEA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_gn', 93, 8, 'Región', 'Region',
    'Region', 'Région', 'region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GUINEA (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2422464, 93, 'C', NULL, NULL, '0', 'GN-C', 'GN-C', '+224', (SELECT id FROM t075t_division_types WHERE code = 'region_gn' AND id_country = 93), 'conakry', 'Conakry', 'Conakry Region', 'Conakry Region', 'conakry', 1, NOW(6), NOW(6), 1, 1),
(8335085, 93, 'B', NULL, NULL, '0', 'GN-B', 'GN-B', '+224', (SELECT id FROM t075t_division_types WHERE code = 'region_gn' AND id_country = 93), 'boké', 'Boké', 'Boké Region', 'Boké Region', 'boke', 1, NOW(6), NOW(6), 1, 1),
(8335086, 93, 'F', NULL, NULL, '0', 'GN-F', 'GN-F', '+224', (SELECT id FROM t075t_division_types WHERE code = 'region_gn' AND id_country = 93), 'faranah', 'Faranah', 'Faranah Region', 'Faranah Region', 'faranah', 1, NOW(6), NOW(6), 1, 1),
(8335087, 93, 'K', NULL, NULL, '0', 'GN-K', 'GN-K', '+224', (SELECT id FROM t075t_division_types WHERE code = 'region_gn' AND id_country = 93), 'kankan', 'Kankan', 'Kankan Region', 'Kankan Region', 'kankan', 1, NOW(6), NOW(6), 1, 1),
(8335088, 93, 'D', NULL, NULL, '0', 'GN-D', 'GN-D', '+224', (SELECT id FROM t075t_division_types WHERE code = 'region_gn' AND id_country = 93), 'kindia', 'Kindia', 'Kindia Region', 'Kindia Region', 'kindia', 1, NOW(6), NOW(6), 1, 1),
(8335089, 93, 'L', NULL, NULL, '0', 'GN-L', 'GN-L', '+224', (SELECT id FROM t075t_division_types WHERE code = 'region_gn' AND id_country = 93), 'labé', 'Labé', 'Labé Region', 'Labé Region', 'labe', 1, NOW(6), NOW(6), 1, 1),
(8335090, 93, 'M', NULL, NULL, '0', 'GN-M', 'GN-M', '+224', (SELECT id FROM t075t_division_types WHERE code = 'region_gn' AND id_country = 93), 'mamou', 'Mamou', 'Mamou Region', 'Mamou Region', 'mamou', 1, NOW(6), NOW(6), 1, 1),
(8335091, 93, 'N', NULL, NULL, '0', 'GN-N', 'GN-N', '+224', (SELECT id FROM t075t_division_types WHERE code = 'region_gn' AND id_country = 93), 'nzérékoré', 'Nzérékoré', 'Nzérékoré Region', 'Nzérékoré Region', 'nzerekore', 1, NOW(6), NOW(6), 1, 1);