-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para YEMEN (YE)
-- Archivo: YE_yemen_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para YEMEN: Gobernación
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'gobernacion_ye', 248, 8, 'Gobernación', 'Governorate',
    'Muḩāfaz̧ah', 'محافظة', 'Muhafazah', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de YEMEN (Gobernaciones)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(70222, 248, 'taizz', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Taiz', 'Muḩāfaz̧at Ta‘izz', 'Muḩāfaz̧at Ta‘izz', 'Muḩāfaz̧at Ta‘izz', 'Muḩāfaz̧at Ta‘izz', 1, NOW(6), NOW(6), 1, 1),
(70935, 248, 'shabwah', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Shabwah', 'Shabwah', 'Shabwah', 'Shabwah', 'Shabwah', 1, NOW(6), NOW(6), 1, 1),
(71132, 248, 'sanaa', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Saná', 'Sanaa', 'Sanaa', 'Sanaa', 'Sanaa', 1, NOW(6), NOW(6), 1, 1),
(71333, 248, 'sadah', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Sa''dah', 'Muḩāfaz̧at Şa‘dah', 'Muḩāfaz̧at Şa‘dah', 'Muḩāfaz̧at Şa‘dah', 'Muḩāfaz̧at Şa‘dah', 1, NOW(6), NOW(6), 1, 1),
(71532, 248, 'raymah', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Raymah', 'Muḩāfaz̧at Raymah', 'Muḩāfaz̧at Raymah', 'Muḩāfaz̧at Raymah', 'Muḩāfaz̧at Raymah', 1, NOW(6), NOW(6), 1, 1),
(72966, 248, 'marib', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Marib', 'Muḩāfaz̧at Ma’rib', 'Muḩāfaz̧at Ma’rib', 'Muḩāfaz̧at Ma’rib', 'Muḩāfaz̧at Ma’rib', 1, NOW(6), NOW(6), 1, 1),
(73200, 248, 'al_mahwit', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Al Mahwit', 'Al Maḩwīt', 'Al Maḩwīt', 'Al Maḩwīt', 'Al Maḩwīt', 1, NOW(6), NOW(6), 1, 1),
(74222, 248, 'al_jawf', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Al Jawf', 'Muḩāfaz̧at al Jawf', 'Muḩāfaz̧at al Jawf', 'Muḩāfaz̧at al Jawf', 'Muḩāfaz̧at al Jawf', 1, NOW(6), NOW(6), 1, 1),
(75411, 248, 'hadhramaut', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Hadramaut', 'Hadhramaut Governorate', 'Hadhramaut Governorate', 'Hadhramaut Governorate', 'Hadhramaut Governorate', 1, NOW(6), NOW(6), 1, 1),
(76183, 248, 'dhamar', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Dhamar', 'Muḩāfaz̧at Dhamār', 'Muḩāfaz̧at Dhamār', 'Muḩāfaz̧at Dhamār', 'Muḩāfaz̧at Dhamār', 1, NOW(6), NOW(6), 1, 1),
(78985, 248, 'al_mahrah', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Al Mahrah', 'Al Mahrah', 'Al Mahrah', 'Al Mahrah', 'Al Mahrah', 1, NOW(6), NOW(6), 1, 1),
(79416, 248, 'al_hudaydah', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Al Hudaydah', 'Muḩāfaz̧at al Ḩudaydah', 'Muḩāfaz̧at al Ḩudaydah', 'Muḩāfaz̧at al Ḩudaydah', 'Muḩāfaz̧at al Ḩudaydah', 1, NOW(6), NOW(6), 1, 1),
(79838, 248, 'al_bayda', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Al Bayda', 'Al Bayda Governorate', 'Al Bayda Governorate', 'Al Bayda Governorate', 'Al Bayda Governorate', 1, NOW(6), NOW(6), 1, 1),
(80412, 248, 'aden', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Adén', 'Governorate Number One', 'Governorate Number One', 'Governorate Number One', 'Governorate Number One', 1, NOW(6), NOW(6), 1, 1),
(80425, 248, 'abyan', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Abyan', 'Muḩāfaz̧at Abyan', 'Muḩāfaz̧at Abyan', 'Muḩāfaz̧at Abyan', 'Muḩāfaz̧at Abyan', 1, NOW(6), NOW(6), 1, 1),
(6201193, 248, 'ad_dali', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Ad Dali', 'Muḩāfaz̧at aḑ Ḑāli‘', 'Muḩāfaz̧at aḑ Ḑāli‘', 'Muḩāfaz̧at aḑ Ḑāli‘', 'Muḩāfaz̧at aḑ Ḑāli‘', 1, NOW(6), NOW(6), 1, 1),
(6201194, 248, 'amran', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Amran', 'Muḩāfaz̧at ‘Amrān', 'Muḩāfaz̧at ‘Amrān', 'Muḩāfaz̧at ‘Amrān', 'Muḩāfaz̧at ‘Amrān', 1, NOW(6), NOW(6), 1, 1),
(6201195, 248, 'hajjah', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Hajjah', 'Muḩāfaz̧at Ḩajjah', 'Muḩāfaz̧at Ḩajjah', 'Muḩāfaz̧at Ḩajjah', 'Muḩāfaz̧at Ḩajjah', 1, NOW(6), NOW(6), 1, 1),
(6201196, 248, 'ibb', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Ibb', 'Ibb', 'Ibb', 'Ibb', 'Ibb', 1, NOW(6), NOW(6), 1, 1),
(6201197, 248, 'lahij', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Lahij', 'Muḩāfaz̧at Laḩij', 'Muḩāfaz̧at Laḩij', 'Muḩāfaz̧at Laḩij', 'Muḩāfaz̧at Laḩij', 1, NOW(6), NOW(6), 1, 1),
(6940571, 248, 'amanat_al_asimah', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Amanat Al Asimah', 'Amanat alasimah', 'Amanat alasimah', 'Amanat alasimah', 'Amanat alasimah', 1, NOW(6), NOW(6), 1, 1),
(9645387, 248, 'socotra', NULL, NULL, '000', 'YE-000', 'YE-000', '+967', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_ye' AND id_country = 248), 'Socotra', 'Socotra', 'Socotra', 'Socotra', 'Socotra', 1, NOW(6), NOW(6), 1, 1);