-- Insertar tipo de división geográfica ADM1 para Libia: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_ly', 126, 8, 'distrito', 'district', 
    'District', 'Shaʻbīyah', 'Shaʻbiyah', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Libia (Distritos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(87204, 126, 'LY-DR', NULL, NULL, '0', 'LY-DR', 'LY-DR', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'darnah', 'Darnah', 'Darnah', 'Darnah', 'Darnah', 1, NOW(6), NOW(6), 1, 1),
(88318, 126, 'LY-BA', NULL, NULL, '0', 'LY-BA', 'LY-BA', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'banghazi', 'Banghazi', 'Banghazi', 'Sha''biyat Banghazi', 'Banghazi', 1, NOW(6), NOW(6), 1, 1),
(88904, 126, 'LY-MJ', NULL, NULL, '0', 'LY-MJ', 'LY-MJ', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'al marj', 'Al Marj', 'Al Marj', 'Al Marj', 'Al Marj', 1, NOW(6), NOW(6), 1, 1),
(88932, 126, 'LY-KF', NULL, NULL, '0', 'LY-KF', 'LY-KF', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'al kufrah', 'Al Kufrah', 'Al Kufrah', 'Al Kufrah', 'Al Kufrah', 1, NOW(6), NOW(6), 1, 1),
(443289, 126, 'LY-JA', NULL, NULL, '0', 'LY-JA', 'LY-JA', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'al jabal al akhdar', 'Al Jabal al Akhdar', 'Al Jabal al Akhdar', 'Al Jabal al Akhdar', 'Al Jabal al Akhdar', 1, NOW(6), NOW(6), 1, 1),
(2210245, 126, 'LY-TB', NULL, NULL, '0', 'LY-TB', 'LY-TB', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'trípoli', 'Tripoli', 'Tripoli', 'Tripoli', 'Tripoli', 1, NOW(6), NOW(6), 1, 1),
(2210553, 126, 'LY-SR', NULL, NULL, '0', 'LY-SR', 'LY-SR', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'surt', 'Surt', 'Surt', 'Surt', 'Surt', 1, NOW(6), NOW(6), 1, 1),
(2212774, 126, 'LY-SB', NULL, NULL, '0', 'LY-SB', 'LY-SB', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'sabha', 'Sabha', 'Sabha', 'Sabha', 'Sabha', 1, NOW(6), NOW(6), 1, 1),
(2214432, 126, 'LY-NL', NULL, NULL, '0', 'LY-NL', 'LY-NL', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'nalut', 'Nalut', 'Nalut', 'Nalut', 'Nalut', 1, NOW(6), NOW(6), 1, 1),
(2214602, 126, 'LY-MQ', NULL, NULL, '0', 'LY-MQ', 'LY-MQ', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'murzuq', 'Murzuq', 'Murzuq', 'Murzuq', 'Murzuq', 1, NOW(6), NOW(6), 1, 1),
(2214845, 126, 'LY-MI', NULL, NULL, '0', 'LY-MI', 'LY-MI', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'misratah', 'Misratah', 'Misratah', 'Sha''biyat Misratah', 'Misratah', 1, NOW(6), NOW(6), 1, 1),
(2217350, 126, 'LY-GT', NULL, NULL, '0', 'LY-GT', 'LY-GT', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'ghat', 'Ghat', 'Ghat', 'Ghat', 'Ghat', 1, NOW(6), NOW(6), 1, 1),
(2218972, 126, 'LY-ZA', NULL, NULL, '0', 'LY-ZA', 'LY-ZA', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'az zawiyah', 'Az Zawiyah', 'Az Zawiyah', 'Az Zawiyah', 'Az Zawiyah', 1, NOW(6), NOW(6), 1, 1),
(2219413, 126, 'LY-WS', NULL, NULL, '0', 'LY-WS', 'LY-WS', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'wadi ash shati''', 'Wadi ash Shati''', 'Wadi ash Shati''', 'Wādī ash Shāţi''', 'Wadi ash Shati''', 1, NOW(6), NOW(6), 1, 1),
(2219944, 126, 'LY-JU', NULL, NULL, '0', 'LY-JU', 'LY-JU', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'al jufrah', 'Al Jufrah', 'Al Jufrah', 'Al Jufrah', 'Al Jufrah', 1, NOW(6), NOW(6), 1, 1),
(2593778, 126, 'LY-NQ', NULL, NULL, '0', 'LY-NQ', 'LY-NQ', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'an nuqat al khams', 'An Nuqat al Khams', 'An Nuqat al Khams', 'An Nuqat al Khams', 'An Nuqat al Khams', 1, NOW(6), NOW(6), 1, 1),
(7602688, 126, 'LY-BU', NULL, NULL, '0', 'LY-BU', 'LY-BU', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'al butnan', 'Al Butnan', 'Al Butnan', 'Al Butnan', 'Al Butnan', 1, NOW(6), NOW(6), 1, 1),
(7602689, 126, 'LY-JG', NULL, NULL, '0', 'LY-JG', 'LY-JG', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'jabal al gharbi', 'Jabal al Gharbi', 'Jabal al Gharbi', 'Jabal al Gharbi', 'Jabal al Gharbi', 1, NOW(6), NOW(6), 1, 1),
(7602690, 126, 'LY-JI', NULL, NULL, '0', 'LY-JI', 'LY-JI', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'al jafarah', 'Al Jafarah', 'Al Jafarah', 'Al Jafarah', 'Al Jafarah', 1, NOW(6), NOW(6), 1, 1),
(7602691, 126, 'LY-MB', NULL, NULL, '0', 'LY-MB', 'LY-MB', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'al marqab', 'Al Marqab', 'Al Marqab', 'Al Marqab', 'Al Marqab', 1, NOW(6), NOW(6), 1, 1),
(7602692, 126, 'LY-WA', NULL, NULL, '0', 'LY-WA', 'LY-WA', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'al wahat', 'Al Wahat', 'Al Wahat', 'Al Wahat', 'Al Wahat', 1, NOW(6), NOW(6), 1, 1),
(7602693, 126, 'LY-WD', NULL, NULL, '0', 'LY-WD', 'LY-WD', '+218', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ly' AND id_country = 126), 'wadi al hayat', 'Wadi al Hayat', 'Wadi al Hayat', 'Wadi al Hayat', 'Wadi al Hayat', 1, NOW(6), NOW(6), 1, 1);