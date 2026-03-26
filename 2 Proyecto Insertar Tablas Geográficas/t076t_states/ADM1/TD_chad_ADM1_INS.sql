-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para CHAD (TD)
-- Archivo: TD_chad_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para CHAD: Región
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_td', 45, 8, 'Región', 'Region',
    'Région', 'Région', 'Region', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de CHAD (Regiones)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(242048, 45, 'salamat', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Salamat', 'Salamat Region', 'Salamat Region', 'Salamat Region', 'Salamat Region', 1, NOW(6), NOW(6), 1, 1),
(242246, 45, 'ouaddai', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Ouaddaï', 'Ouaddai Region', 'Ouaddai Region', 'Ouaddai Region', 'Ouaddai Region', 1, NOW(6), NOW(6), 1, 1),
(244877, 45, 'wadi_fira', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Wadi Fira', 'Wadi Fira Region', 'Wadi Fira Region', 'Wadi Fira Region', 'Wadi Fira Region', 1, NOW(6), NOW(6), 1, 1),
(2425287, 45, 'tandjile', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Tandjilé', 'Tandjile Region', 'Tandjile Region', 'Tandjile Region', 'Tandjile Region', 1, NOW(6), NOW(6), 1, 1),
(2427315, 45, 'moyen_chari', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Moyen-Chari', 'Moyen-Chari Region', 'Moyen-Chari Region', 'Moyen-Chari Region', 'Moyen-Chari Region', 1, NOW(6), NOW(6), 1, 1),
(2428132, 45, 'mayo_kebbi_est', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Mayo-Kebbi Este', 'Mayo-Kebbi East Region', 'Mayo-Kebbi East Region', 'Mayo-Kebbi East Region', 'Mayo-Kebbi East Region', 1, NOW(6), NOW(6), 1, 1),
(2429058, 45, 'logone_oriental', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Logone Oriental', 'Logone Oriental Region', 'Logone Oriental Region', 'Logone Oriental Region', 'Logone Oriental Region', 1, NOW(6), NOW(6), 1, 1),
(2429060, 45, 'logone_occidental', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Logone Occidental', 'Logone Occidental Region', 'Logone Occidental Region', 'Logone Occidental Region', 'Logone Occidental Region', 1, NOW(6), NOW(6), 1, 1),
(2429323, 45, 'lac', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Lac', 'Lac Region', 'Lac Region', 'Lac Region', 'Lac Region', 1, NOW(6), NOW(6), 1, 1),
(2430873, 45, 'kanem', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Kanem', 'Kanem Region', 'Kanem Region', 'Kanem Region', 'Kanem Region', 1, NOW(6), NOW(6), 1, 1),
(2431555, 45, 'guera', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Guéra', 'Guera Region', 'Guera Region', 'Guera Region', 'Guera Region', 1, NOW(6), NOW(6), 1, 1),
(2434478, 45, 'chari_baguirmi', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Chari-Baguirmi', 'Chari-Baguirmi Region', 'Chari-Baguirmi Region', 'Chari-Baguirmi Region', 'Chari-Baguirmi Region', 1, NOW(6), NOW(6), 1, 1),
(2435899, 45, 'batha', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Batha', 'Batha Region', 'Batha Region', 'Batha Region', 'Batha Region', 1, NOW(6), NOW(6), 1, 1),
(7602866, 45, 'borkou', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Borkou', 'Borkou Region', 'Borkou Region', 'Borkou Region', 'Borkou Region', 1, NOW(6), NOW(6), 1, 1),
(7603251, 45, 'hadjer_lamis', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Hadjer-Lamis', 'Hadjer-Lamis', 'Hadjer-Lamis', 'Hadjer-Lamis', 'Hadjer-Lamis', 1, NOW(6), NOW(6), 1, 1),
(7603252, 45, 'mandoul', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Mandoul', 'Mandoul', 'Mandoul', 'Mandoul', 'Mandoul', 1, NOW(6), NOW(6), 1, 1),
(7603253, 45, 'mayo_kebbi_ouest', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Mayo-Kebbi Oeste', 'Mayo-Kebbi West Region', 'Mayo-Kebbi West Region', 'Mayo-Kebbi West Region', 'Mayo-Kebbi West Region', 1, NOW(6), NOW(6), 1, 1),
(7603254, 45, 'ndjamena', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Yamena', 'Ville de N\'Djamena', 'Ville de N\'Djamena', 'Ville de N\'Djamena', 'Ville de N\'Djamena', 1, NOW(6), NOW(6), 1, 1),
(7603255, 45, 'barh_el_gazel', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Barh el Gazel', 'Province du Barh-El-Gazel', 'Province du Barh-El-Gazel', 'Province du Barh-El-Gazel', 'Province du Barh-El-Gazel', 1, NOW(6), NOW(6), 1, 1),
(7603257, 45, 'sila', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Sila', 'Sila', 'Sila', 'Sila', 'Sila', 1, NOW(6), NOW(6), 1, 1),
(7603258, 45, 'tibesti', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Tibesti', 'Tibesti Region', 'Tibesti Region', 'Tibesti Region', 'Tibesti Region', 1, NOW(6), NOW(6), 1, 1),
(8604857, 45, 'ennedi_ouest', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Ennedi Oeste', 'Ennedi-Ouest', 'Ennedi-Ouest', 'Ennedi-Ouest', 'Ennedi-Ouest', 1, NOW(6), NOW(6), 1, 1),
(8604858, 45, 'ennedi_est', NULL, NULL, '000', 'TD-000', 'TD-000', '+235', (SELECT id FROM t075t_division_types WHERE code = 'region_td' AND id_country = 45), 'Ennedi Este', 'Ennedi-Est', 'Ennedi-Est', 'Ennedi-Est', 'Ennedi-Est', 1, NOW(6), NOW(6), 1, 1);