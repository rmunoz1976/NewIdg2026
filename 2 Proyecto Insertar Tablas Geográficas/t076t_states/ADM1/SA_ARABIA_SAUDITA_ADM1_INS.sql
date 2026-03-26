-- Insertar tipo de división geográfica ADM1 para Arabia Saudita: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_sa', 195, 8, 'región', 'region', 
    'Region', 'منطقة', 'minṭaqah', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Arabia Saudita (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(101627, 195, 'SA-07', NULL, NULL, '0', 'SA-07', 'SA-07', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'tabuk', 'Tabuk', 'Tabuk', 'Tabuk Region', 'Tabuk', 1, NOW(6), NOW(6), 1, 1),
(103628, 195, 'SA-10', NULL, NULL, '0', 'SA-10', 'SA-10', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'najran', 'Najran', 'Najran', 'Najran Region', 'Najran', 1, NOW(6), NOW(6), 1, 1),
(104514, 195, 'SA-02', NULL, NULL, '0', 'SA-02', 'SA-02', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'meca', 'Mecca', 'Mecca', 'Mecca Region', 'Mecca', 1, NOW(6), NOW(6), 1, 1),
(105298, 195, 'SA-09', NULL, NULL, '0', 'SA-09', 'SA-09', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'jazán', 'Jazan', 'Jazan', 'Jazan Region', 'Jazan', 1, NOW(6), NOW(6), 1, 1),
(106280, 195, 'SA-06', NULL, NULL, '0', 'SA-06', 'SA-06', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'haíl', 'Ha''il', 'Ha''il', 'Ha''il Region', 'Ha''il', 1, NOW(6), NOW(6), 1, 1),
(108179, 195, 'SA-11', NULL, NULL, '0', 'SA-11', 'SA-11', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'asir', 'Asir', 'Asir', 'Asir Region', 'Asir', 1, NOW(6), NOW(6), 1, 1),
(108241, 195, 'SA-04', NULL, NULL, '0', 'SA-04', 'SA-04', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'oriental', 'Eastern Province', 'Eastern Province', 'Eastern Province', 'Ash Sharqiyah', 1, NOW(6), NOW(6), 1, 1),
(108411, 195, 'SA-01', NULL, NULL, '0', 'SA-01', 'SA-01', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'riyad', 'Riyadh', 'Riyadh', 'Riyadh Region', 'Riyadh', 1, NOW(6), NOW(6), 1, 1),
(108933, 195, 'SA-05', NULL, NULL, '0', 'SA-05', 'SA-05', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'al qasim', 'Al-Qassim', 'Al-Qassim', 'Al-Qassim Region', 'Al-Qassim', 1, NOW(6), NOW(6), 1, 1),
(109224, 195, 'SA-03', NULL, NULL, '0', 'SA-03', 'SA-03', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'medina', 'Medina', 'Medina', 'Medina Region', 'Medina', 1, NOW(6), NOW(6), 1, 1),
(109470, 195, 'SA-12', NULL, NULL, '0', 'SA-12', 'SA-12', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'al jawf', 'Al Jawf', 'Al Jawf', 'Al Jawf Region', 'Al Jawf', 1, NOW(6), NOW(6), 1, 1),
(109579, 195, 'SA-08', NULL, NULL, '0', 'SA-08', 'SA-08', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'fronteras del norte', 'Northern Borders', 'Northern Borders', 'Northern Borders Region', 'Northern Borders', 1, NOW(6), NOW(6), 1, 1),
(109954, 195, 'SA-14', NULL, NULL, '0', 'SA-14', 'SA-14', '+966', (SELECT id FROM t075t_division_types WHERE code = 'region_sa' AND id_country = 195), 'al bahah', 'Al Bahah', 'Al Bahah', 'Al Bahah Region', 'Al Bahah', 1, NOW(6), NOW(6), 1, 1);