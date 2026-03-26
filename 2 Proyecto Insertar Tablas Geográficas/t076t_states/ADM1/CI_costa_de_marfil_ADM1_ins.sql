-- =============================================
-- Script de inserción para COSTA DE MARFIL (CI)
-- Archivo: CI_costa_de_marfil_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para COSTA DE MARFIL: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_ci', 110, 8, 'Distrito', 'District',
    'District', 'District', 'district', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de COSTA DE MARFIL (Distritos y Distritos Autónomos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(10629377, 110, 'YM', NULL, NULL, '0', 'CI-YM', 'CI-YM', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'yamoussoukro', 'Yamoussoukro', 'Yamoussoukro Autonomous District', 'Yamoussoukro', 'yamoussoukro', 1, NOW(6), NOW(6), 1, 1),
(11153052, 110, 'BS', NULL, NULL, '0', 'CI-BS', 'CI-BS', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'bajo sassandra', 'Bas-Sassandra', 'Bas-Sassandra District', 'Bas-Sassandra', 'bas sassandra', 1, NOW(6), NOW(6), 1, 1),
(11153053, 110, 'CM', NULL, NULL, '0', 'CI-CM', 'CI-CM', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'comoé', 'Comoé', 'Comoé District', 'Comoé', 'comoe', 1, NOW(6), NOW(6), 1, 1),
(11153054, 110, 'DN', NULL, NULL, '0', 'CI-DN', 'CI-DN', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'denguélé', 'Denguélé', 'Denguélé District', 'Denguélé', 'denguele', 1, NOW(6), NOW(6), 1, 1),
(11153055, 110, 'GD', NULL, NULL, '0', 'CI-GD', 'CI-GD', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'gôh-djiboua', 'Gôh-Djiboua', 'Gôh-Djiboua District', 'Gôh-Djiboua', 'goh djiboua', 1, NOW(6), NOW(6), 1, 1),
(11153056, 110, 'LC', NULL, NULL, '0', 'CI-LC', 'CI-LC', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'lagos', 'Lacs', 'Lacs District', 'Lacs', 'lacs', 1, NOW(6), NOW(6), 1, 1),
(11153057, 110, 'LG', NULL, NULL, '0', 'CI-LG', 'CI-LG', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'lagunas', 'Lagunes', 'Lagunes District', 'Lagunes', 'lagunes', 1, NOW(6), NOW(6), 1, 1),
(11153058, 110, 'MG', NULL, NULL, '0', 'CI-MG', 'CI-MG', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'montañas', 'Montagnes', 'Montagnes District', 'Montagnes', 'montagnes', 1, NOW(6), NOW(6), 1, 1),
(11153059, 110, 'SM', NULL, NULL, '0', 'CI-SM', 'CI-SM', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'sassandra-marahoué', 'Sassandra-Marahoué', 'Sassandra-Marahoué District', 'Sassandra-Marahoué', 'sassandra marahoue', 1, NOW(6), NOW(6), 1, 1),
(11153060, 110, 'SV', NULL, NULL, '0', 'CI-SV', 'CI-SV', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'sabanas', 'Savanes', 'Savanes District', 'Savanes', 'savanes', 1, NOW(6), NOW(6), 1, 1),
(11153061, 110, 'VB', NULL, NULL, '0', 'CI-VB', 'CI-VB', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'valle del bandama', 'Vallée du Bandama', 'Vallée du Bandama District', 'Vallée du Bandama', 'vallee du bandama', 1, NOW(6), NOW(6), 1, 1),
(11153062, 110, 'WR', NULL, NULL, '0', 'CI-WR', 'CI-WR', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'woroba', 'Woroba', 'Woroba District', 'Woroba', 'woroba', 1, NOW(6), NOW(6), 1, 1),
(11153063, 110, 'ZZ', NULL, NULL, '0', 'CI-ZZ', 'CI-ZZ', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'zanzan', 'Zanzan', 'Zanzan District', 'Zanzan', 'zanzan', 1, NOW(6), NOW(6), 1, 1),
(11153151, 110, 'AB', NULL, NULL, '0', 'CI-AB', 'CI-AB', '+225', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ci' AND id_country = 110), 'abidján', 'Abidjan', 'Abidjan Autonomous District', 'Abidjan', 'abidjan', 1, NOW(6), NOW(6), 1, 1);