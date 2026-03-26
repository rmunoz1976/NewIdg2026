-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para UZBEKISTÁN (UZ)
-- Archivo: UZ_uzbekistan_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para UZBEKISTÁN: Región
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_uz', 241, 8, 'Región', 'Region',
    'Viloyati', 'Viloyati', 'Viloyati', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de UZBEKISTÁN (Regiones, República y Ciudad)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(453752, 241, 'karakalpakstan', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Karakalpakstán', 'Karakalpakstan', 'Karakalpakstan', 'Karakalpakstan', 'Karakalpakstan', 1, NOW(6), NOW(6), 1, 1),
(1114926, 241, 'surxondaryo', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Surxondaryo', 'Surxondaryo Region', 'Surxondaryo Region', 'Surxondaryo Region', 'Surxondaryo Region', 1, NOW(6), NOW(6), 1, 1),
(1114927, 241, 'samarqand', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Samarcanda', 'Samarqand Region', 'Samarqand Region', 'Samarqand Region', 'Samarqand Region', 1, NOW(6), NOW(6), 1, 1),
(1114928, 241, 'qashqadaryo', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Qashqadaryo', 'Qashqadaryo Region', 'Qashqadaryo Region', 'Qashqadaryo Region', 'Qashqadaryo Region', 1, NOW(6), NOW(6), 1, 1),
(1114929, 241, 'bukhara', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Bujará', 'Bukhara Region', 'Bukhara Region', 'Bukhara Region', 'Bukhara Region', 1, NOW(6), NOW(6), 1, 1),
(1484838, 241, 'tashkent_region', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Taskent', 'Tashkent Region', 'Tashkent Region', 'Tashkent Region', 'Tashkent Region', 1, NOW(6), NOW(6), 1, 1),
(1484839, 241, 'tashkent_city', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Taskent', 'Tashkent', 'Tashkent', 'Tashkent', 'Tashkent', 1, NOW(6), NOW(6), 1, 1),
(1484840, 241, 'sirdaryo', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Sirdaryo', 'Sirdaryo Region', 'Sirdaryo Region', 'Sirdaryo Region', 'Sirdaryo Region', 1, NOW(6), NOW(6), 1, 1),
(1484841, 241, 'navoiy', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Navoiy', 'Navoiy Region', 'Navoiy Region', 'Navoiy Region', 'Navoiy Region', 1, NOW(6), NOW(6), 1, 1),
(1484842, 241, 'namangan', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Namangan', 'Namangan Region', 'Namangan Region', 'Namangan Region', 'Namangan Region', 1, NOW(6), NOW(6), 1, 1),
(1484843, 241, 'xorazm', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Xorazm', 'Xorazm Region', 'Xorazm Region', 'Xorazm Region', 'Xorazm Region', 1, NOW(6), NOW(6), 1, 1),
(1484844, 241, 'jizzakh', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Jizzakh', 'Jizzakh Region', 'Jizzakh Region', 'Jizzakh Region', 'Jizzakh Region', 1, NOW(6), NOW(6), 1, 1),
(1484845, 241, 'fergana', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Ferganá', 'Fergana Region', 'Fergana Region', 'Fergana Region', 'Fergana Region', 1, NOW(6), NOW(6), 1, 1),
(1484846, 241, 'andijan', NULL, NULL, '000', 'UZ-000', 'UZ-000', '+998', (SELECT id FROM t075t_division_types WHERE code = 'region_uz' AND id_country = 241), 'Andiján', 'Andijan Region', 'Andijan Region', 'Andijan Region', 'Andijan Region', 1, NOW(6), NOW(6), 1, 1);