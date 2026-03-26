-- =============================================
-- Script de inserción para ERITREA (ER)
-- Archivo: ER_eritrea_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para ERITREA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_er', 68, 8, 'Región', 'Region',
    'Region', 'ዞባ', 'zoba', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ERITREA (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(448497, 68, 'AN', NULL, NULL, '0', 'ER-AN', 'ER-AN', '+291', (SELECT id FROM t075t_division_types WHERE code = 'region_er' AND id_country = 68), 'anseba', 'Anseba', 'Anseba Region', 'Anseba Region', 'anseba', 1, NOW(6), NOW(6), 1, 1),
(448498, 68, 'DU', NULL, NULL, '0', 'ER-DU', 'ER-DU', '+291', (SELECT id FROM t075t_division_types WHERE code = 'region_er' AND id_country = 68), 'debub', 'Debub', 'Debub Region', 'Debub Region', 'debub', 1, NOW(6), NOW(6), 1, 1),
(448499, 68, 'DK', NULL, NULL, '0', 'ER-DK', 'ER-DK', '+291', (SELECT id FROM t075t_division_types WHERE code = 'region_er' AND id_country = 68), 'sur del mar rojo', 'Southern Red Sea', 'Southern Red Sea Region', 'Southern Red Sea Region', 'southern red sea', 1, NOW(6), NOW(6), 1, 1),
(448500, 68, 'GB', NULL, NULL, '0', 'ER-GB', 'ER-GB', '+291', (SELECT id FROM t075t_division_types WHERE code = 'region_er' AND id_country = 68), 'gash barka', 'Gash-Barka', 'Gash-Barka Region', 'Gash-Barka Region', 'gash barka', 1, NOW(6), NOW(6), 1, 1),
(448501, 68, 'MA', NULL, NULL, '0', 'ER-MA', 'ER-MA', '+291', (SELECT id FROM t075t_division_types WHERE code = 'region_er' AND id_country = 68), 'maekel', 'Maekel', 'Maekel Region', 'Maekel Region', 'maekel', 1, NOW(6), NOW(6), 1, 1),
(448502, 68, 'SK', NULL, NULL, '0', 'ER-SK', 'ER-SK', '+291', (SELECT id FROM t075t_division_types WHERE code = 'region_er' AND id_country = 68), 'norte del mar rojo', 'Northern Red Sea', 'Northern Red Sea Region', 'Northern Red Sea Region', 'northern red sea', 1, NOW(6), NOW(6), 1, 1);