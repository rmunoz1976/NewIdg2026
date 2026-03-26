-- Insertar tipo de división geográfica ADM1 para KIRGUISTÁN: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_kg', 120, 8, 'Región', 'Region', 
    'Oblast', 'Область', 'oblast', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de KIRGUISTÁN (Regiones y Ciudades)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (1346798, 120, 'KG-O', NULL, NULL, '08', 'KG-O', 'KG-O', '+996', (SELECT id FROM t075t_division_types WHERE code = 'region_kg' AND id_country = 120), 'Osh', 'Osh', 'Osh', 'Osh Oblasty', 'Osh Oblasty', 1, NOW(6), NOW(6), 1, 1),
    (1463580, 120, 'KG-B', NULL, NULL, '09', 'KG-B', 'KG-B', '+996', (SELECT id FROM t075t_division_types WHERE code = 'region_kg' AND id_country = 120), 'Batken', 'Batken', 'Batken', 'Batken', 'Batken', 1, NOW(6), NOW(6), 1, 1),
    (1527297, 120, 'KG-T', NULL, NULL, '06', 'KG-T', 'KG-T', '+996', (SELECT id FROM t075t_division_types WHERE code = 'region_kg' AND id_country = 120), 'Talas', 'Talas', 'Talas', 'Talas', 'Talas', 1, NOW(6), NOW(6), 1, 1),
    (1527590, 120, 'KG-N', NULL, NULL, '04', 'KG-N', 'KG-N', '+996', (SELECT id FROM t075t_division_types WHERE code = 'region_kg' AND id_country = 120), 'Naryn', 'Naryn', 'Naryn', 'Naryn oblast', 'Naryn oblast', 1, NOW(6), NOW(6), 1, 1),
    (1528260, 120, 'KG-Y', NULL, NULL, '07', 'KG-Y', 'KG-Y', '+996', (SELECT id FROM t075t_division_types WHERE code = 'region_kg' AND id_country = 120), 'Issyk-Kul', 'Issyk-Kul', 'Issyk-Kul', 'Issyk-Kul Region', 'Issyk-Kul Region', 1, NOW(6), NOW(6), 1, 1),
    (1528334, 120, 'KG-GB', NULL, NULL, '01', 'KG-GB', 'KG-GB', '+996', (SELECT id FROM t075t_division_types WHERE code = 'region_kg' AND id_country = 120), 'Bishkek', 'Bishkek', 'Bishkek', 'Gorod Bishkek', 'Gorod Bishkek', 1, NOW(6), NOW(6), 1, 1),
    (1529778, 120, 'KG-J', NULL, NULL, '03', 'KG-J', 'KG-J', '+996', (SELECT id FROM t075t_division_types WHERE code = 'region_kg' AND id_country = 120), 'Jalal-Abad', 'Jalal-Abad', 'Jalal-Abad', 'Jalal-Abad oblast', 'Jalal-Abad oblast', 1, NOW(6), NOW(6), 1, 1),
    (1538652, 120, 'KG-C', NULL, NULL, '02', 'KG-C', 'KG-C', '+996', (SELECT id FROM t075t_division_types WHERE code = 'region_kg' AND id_country = 120), 'Chuy', 'Chuy', 'Chuy', 'Chuyskaya Oblast’', 'Chuyskaya Oblast', 1, NOW(6), NOW(6), 1, 1),
    (10300944, 120, 'KG-GO', NULL, NULL, '10', 'KG-GO', 'KG-GO', '+996', (SELECT id FROM t075t_division_types WHERE code = 'region_kg' AND id_country = 120), 'Osh City', 'Osh City', 'Osh City', 'Osh City', 'Osh City', 1, NOW(6), NOW(6), 1, 1);