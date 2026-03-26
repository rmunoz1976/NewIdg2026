-- =============================================
-- Script de inserción para BURUNDI (BI)
-- Archivo: BI_burundi_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BURUNDI: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_bi', 38, 8, 'Provincia', 'Province',
    'Province', 'Province', 'province', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BURUNDI (Provincias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(422233, 38, 'MA', NULL, NULL, '0', 'BI-MA', 'BI-MA', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'makamba', 'Makamba', 'Makamba Province', 'Makamba Province', 'makamba', 1, NOW(6), NOW(6), 1, 1),
(423327, 38, 'BR', NULL, NULL, '0', 'BI-BR', 'BI-BR', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'bururi', 'Bururi', 'Bururi Province', 'Bururi Province', 'bururi', 1, NOW(6), NOW(6), 1, 1),
(425550, 38, 'MU', NULL, NULL, '0', 'BI-MU', 'BI-MU', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'muramvya', 'Muramvya', 'Muramvya Province', 'Muramvya Province', 'muramvya', 1, NOW(6), NOW(6), 1, 1),
(426271, 38, 'GI', NULL, NULL, '0', 'BI-GI', 'BI-GI', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'gitega', 'Gitega', 'Gitega Province', 'Gitega Province', 'gitega', 1, NOW(6), NOW(6), 1, 1),
(426699, 38, 'RY', NULL, NULL, '0', 'BI-RY', 'BI-RY', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'ruyigi', 'Ruyigi', 'Ruyigi Province', 'Ruyigi Province', 'ruyigi', 1, NOW(6), NOW(6), 1, 1),
(427700, 38, 'CA', NULL, NULL, '0', 'BI-CA', 'BI-CA', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'cankuzo', 'Cankuzo', 'Cankuzo Province', 'Cankuzo Province', 'cankuzo', 1, NOW(6), NOW(6), 1, 1),
(428514, 38, 'BB', NULL, NULL, '0', 'BI-BB', 'BI-BB', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'bubanza', 'Bubanza', 'Bubanza Province', 'Bubanza Province', 'bubanza', 1, NOW(6), NOW(6), 1, 1),
(430020, 38, 'CI', NULL, NULL, '0', 'BI-CI', 'BI-CI', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'cibitoke', 'Cibitoke', 'Cibitoke Province', 'Cibitoke Province', 'cibitoke', 1, NOW(6), NOW(6), 1, 1),
(430567, 38, 'NG', NULL, NULL, '0', 'BI-NG', 'BI-NG', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'ngozi', 'Ngozi', 'Ngozi Province', 'Ngozi Province', 'ngozi', 1, NOW(6), NOW(6), 1, 1),
(430951, 38, 'KY', NULL, NULL, '0', 'BI-KY', 'BI-KY', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'kayanza', 'Kayanza', 'Kayanza Province', 'Kayanza Province', 'kayanza', 1, NOW(6), NOW(6), 1, 1),
(431747, 38, 'MY', NULL, NULL, '0', 'BI-MY', 'BI-MY', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'muyinga', 'Muyinga', 'Muyinga Province', 'Muyinga Province', 'muyinga', 1, NOW(6), NOW(6), 1, 1),
(432455, 38, 'KI', NULL, NULL, '0', 'BI-KI', 'BI-KI', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'kirundo', 'Kirundo', 'Kirundo Province', 'Kirundo Province', 'kirundo', 1, NOW(6), NOW(6), 1, 1),
(434147, 38, 'RT', NULL, NULL, '0', 'BI-RT', 'BI-RT', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'rutana', 'Rutana', 'Rutana Province', 'Rutana Province', 'rutana', 1, NOW(6), NOW(6), 1, 1),
(7303939, 38, 'BM', NULL, NULL, '0', 'BI-BM', 'BI-BM', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'buyumbura mairie', 'Bujumbura Mairie', 'Bujumbura Mairie Province', 'Bujumbura Mairie Province', 'bujumbura mairie', 1, NOW(6), NOW(6), 1, 1),
(7303940, 38, 'BL', NULL, NULL, '0', 'BI-BL', 'BI-BL', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'buyumbura rural', 'Bujumbura Rural', 'Bujumbura Rural Province', 'Bujumbura Rural Province', 'bujumbura rural', 1, NOW(6), NOW(6), 1, 1),
(11184798, 38, 'RM', NULL, NULL, '0', 'BI-RM', 'BI-RM', '+257', (SELECT id FROM t075t_division_types WHERE code = 'provincia_bi' AND id_country = 38), 'rumonge', 'Rumonge', 'Rumonge Province', 'Rumonge Province', 'rumonge', 1, NOW(6), NOW(6), 1, 1);