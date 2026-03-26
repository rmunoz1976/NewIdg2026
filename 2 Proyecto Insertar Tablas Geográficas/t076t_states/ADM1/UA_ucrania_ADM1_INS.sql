-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para UCRANIA (UA)
-- Archivo: UA_ucrania_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para UCRANIA: Óblast
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'oblast_ua', 235, 8, 'Óblast', 'Oblast',
    'Oblast', 'Область', 'Oblast', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de UCRANIA (Óblasts, Ciudades y República Autónoma)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(686966, 235, 'zhytomyr', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Zhytomyr', 'Zhytomyrska Oblast', 'Zhytomyrska Oblast', 'Zhytomyrska Oblast', 'Zhytomyrska Oblast', 1, NOW(6), NOW(6), 1, 1),
(687699, 235, 'zaporizhzhya', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Zaporizhia', 'Zaporizhzhya Oblast', 'Zaporizhzhya Oblast', 'Zaporizhzhya Oblast', 'Zaporizhzhya Oblast', 1, NOW(6), NOW(6), 1, 1),
(687869, 235, 'zakarpattia', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Zakarpattia', 'Zakarpattia Oblast', 'Zakarpattia Oblast', 'Zakarpattia Oblast', 'Zakarpattia Oblast', 1, NOW(6), NOW(6), 1, 1),
(689064, 235, 'volyn', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Volinia', 'Volynska Oblast', 'Volynska Oblast', 'Volynska Oblast', 'Volynska Oblast', 1, NOW(6), NOW(6), 1, 1),
(689559, 235, 'vinnytsya', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Vinnytsia', 'Vinnytsya Oblast', 'Vinnytsya Oblast', 'Vinnytsya Oblast', 'Vinnytsya Oblast', 1, NOW(6), NOW(6), 1, 1),
(691649, 235, 'ternopil', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Ternopil', 'Ternopil Oblast', 'Ternopil Oblast', 'Ternopil Oblast', 'Ternopil Oblast', 1, NOW(6), NOW(6), 1, 1),
(692196, 235, 'sumy', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Sumy', 'Sumska Oblast', 'Sumska Oblast', 'Sumska Oblast', 'Sumska Oblast', 1, NOW(6), NOW(6), 1, 1),
(694422, 235, 'sevastopol', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Sebastopol', 'Sebastopol City', 'Sebastopol City', 'Sebastopol City', 'Sebastopol City', 1, NOW(6), NOW(6), 1, 1),
(695592, 235, 'rivne', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Rivne', 'Rivnenska Oblast', 'Rivnenska Oblast', 'Rivnenska Oblast', 'Rivnenska Oblast', 1, NOW(6), NOW(6), 1, 1),
(696634, 235, 'poltava', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Poltava', 'Poltava Oblast', 'Poltava Oblast', 'Poltava Oblast', 'Poltava Oblast', 1, NOW(6), NOW(6), 1, 1),
(698738, 235, 'odesa', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Odesa', 'Odeska Oblast', 'Odeska Oblast', 'Odeska Oblast', 'Odeska Oblast', 1, NOW(6), NOW(6), 1, 1),
(700567, 235, 'mykolaiv', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Mykolaiv', 'Mykolayiv Oblast', 'Mykolayiv Oblast', 'Mykolayiv Oblast', 'Mykolayiv Oblast', 1, NOW(6), NOW(6), 1, 1),
(702549, 235, 'lviv', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Lviv', 'Lvivska Oblast', 'Lvivska Oblast', 'Lvivska Oblast', 'Lvivska Oblast', 1, NOW(6), NOW(6), 1, 1),
(702657, 235, 'luhansk', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Luhansk', 'Luhanska Oblast', 'Luhanska Oblast', 'Luhanska Oblast', 'Luhanska Oblast', 1, NOW(6), NOW(6), 1, 1),
(703446, 235, 'kyiv_oblast', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Kiev', 'Kyiv Oblast', 'Kyiv Oblast', 'Kyiv Oblast', 'Kyiv Oblast', 1, NOW(6), NOW(6), 1, 1),
(703447, 235, 'kyiv_city', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Kiev', 'Misto Kyiv', 'Misto Kyiv', 'Misto Kyiv', 'Misto Kyiv', 1, NOW(6), NOW(6), 1, 1),
(703883, 235, 'crimea', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Crimea', 'Autonomous Republic of Crimea', 'Autonomous Republic of Crimea', 'Autonomous Republic of Crimea', 'Autonomous Republic of Crimea', 1, NOW(6), NOW(6), 1, 1),
(705811, 235, 'kirovohrad', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Kirovohrad', 'Kirovohrad Oblast', 'Kirovohrad Oblast', 'Kirovohrad Oblast', 'Kirovohrad Oblast', 1, NOW(6), NOW(6), 1, 1),
(706370, 235, 'khmelnytskyi', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Khmelnytskyi', 'Khmelnytskyi Oblast', 'Khmelnytskyi Oblast', 'Khmelnytskyi Oblast', 'Khmelnytskyi Oblast', 1, NOW(6), NOW(6), 1, 1),
(706442, 235, 'kherson', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Jersón', 'Kherson Oblast', 'Kherson Oblast', 'Kherson Oblast', 'Kherson Oblast', 1, NOW(6), NOW(6), 1, 1),
(706482, 235, 'kharkiv', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Járkov', 'Kharkivska Oblast', 'Kharkivska Oblast', 'Kharkivska Oblast', 'Kharkivska Oblast', 1, NOW(6), NOW(6), 1, 1),
(707470, 235, 'ivano_frankivsk', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Ivano-Frankivsk', 'Ivano-Frankivsk Oblast', 'Ivano-Frankivsk Oblast', 'Ivano-Frankivsk Oblast', 'Ivano-Frankivsk Oblast', 1, NOW(6), NOW(6), 1, 1),
(709716, 235, 'donetsk', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Donetsk', 'Donetska Oblast', 'Donetska Oblast', 'Donetska Oblast', 'Donetska Oblast', 1, NOW(6), NOW(6), 1, 1),
(709929, 235, 'dnipropetrovsk', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Dnipropetrovsk', 'Dnipropetrovsk Oblast', 'Dnipropetrovsk Oblast', 'Dnipropetrovsk Oblast', 'Dnipropetrovsk Oblast', 1, NOW(6), NOW(6), 1, 1),
(710720, 235, 'chernivtsi', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Chernivtsi', 'Chernivtsi Oblast', 'Chernivtsi Oblast', 'Chernivtsi Oblast', 'Chernivtsi Oblast', 1, NOW(6), NOW(6), 1, 1),
(710734, 235, 'chernihiv', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Chernihiv', 'Chernihivska Oblast', 'Chernihivska Oblast', 'Chernihivska Oblast', 'Chernihivska Oblast', 1, NOW(6), NOW(6), 1, 1),
(710802, 235, 'cherkasy', NULL, NULL, '000', 'UA-000', 'UA-000', '+380', (SELECT id FROM t075t_division_types WHERE code = 'oblast_ua' AND id_country = 235), 'Cherkasy', 'Cherkasy Oblast', 'Cherkasy Oblast', 'Cherkasy Oblast', 'Cherkasy Oblast', 1, NOW(6), NOW(6), 1, 1);