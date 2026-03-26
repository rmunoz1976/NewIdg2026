-- Insertar tipo de división geográfica ADM1 para COREA DEL NORTE: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_kp', 162, 8, 'Provincia', 'Province', 
    'Do', '도', 'do', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de COREA DEL NORTE (Provincias y Ciudades Especiales)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (1871856, 162, 'KP-01', NULL, NULL, '12', 'KP-01', 'KP-01', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Pionyang', 'Pyongyang', 'Pyongyang', 'Pyongyang', 'Pyongyang', 1, NOW(6), NOW(6), 1, 1),
    (1871952, 162, 'KP-02', NULL, NULL, '15', 'KP-02', 'KP-02', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Pionyang del Sur', 'South Pyongan', 'South Pyongan', 'South Pyongan', 'South Pyongan', 1, NOW(6), NOW(6), 1, 1),
    (1871954, 162, 'KP-03', NULL, NULL, '11', 'KP-03', 'KP-03', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Pionyang del Norte', 'North Pyongan', 'North Pyongan', 'North Pyongan', 'North Pyongan', 1, NOW(6), NOW(6), 1, 1),
    (1876101, 162, 'KP-07', NULL, NULL, '09', 'KP-07', 'KP-07', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Kangwon', 'Kangwon', 'Kangwon', 'Kangwŏn-do', 'Kangwon-do', 1, NOW(6), NOW(6), 1, 1),
    (1876884, 162, 'KP-05', NULL, NULL, '06', 'KP-05', 'KP-05', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Hwanghae del Sur', 'South Hwanghae', 'South Hwanghae', 'Hwanghae-namdo', 'Hwanghae-namdo', 1, NOW(6), NOW(6), 1, 1),
    (1876888, 162, 'KP-06', NULL, NULL, '07', 'KP-06', 'KP-06', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Hwanghae del Norte', 'North Hwanghae', 'North Hwanghae', 'Hwanghae-bukto', 'Hwanghae-bukto', 1, NOW(6), NOW(6), 1, 1),
    (1877450, 162, 'KP-08', NULL, NULL, '03', 'KP-08', 'KP-08', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Hamgyong del Sur', 'South Hamgyong', 'South Hamgyong', 'South Hamgyong', 'South Hamgyong', 1, NOW(6), NOW(6), 1, 1),
    (2039332, 162, 'KP-10', NULL, NULL, '13', 'KP-10', 'KP-10', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Ryanggang', 'Ryanggang', 'Ryanggang', 'Ryanggang', 'Ryanggang', 1, NOW(6), NOW(6), 1, 1),
    (2044245, 162, 'KP-09', NULL, NULL, '17', 'KP-09', 'KP-09', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Hamgyong del Norte', 'North Hamgyong', 'North Hamgyong', 'North Hamgyong Province', 'North Hamgyong Province', 1, NOW(6), NOW(6), 1, 1),
    (2045265, 162, 'KP-04', NULL, NULL, '01', 'KP-04', 'KP-04', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Chagang', 'Chagang', 'Chagang', 'Chagang-do', 'Chagang-do', 1, NOW(6), NOW(6), 1, 1),
    (2054927, 162, 'KP-13', NULL, NULL, '18', 'KP-13', 'KP-13', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Rason', 'Rason', 'Rason', 'Rason', 'Rason', 1, NOW(6), NOW(6), 1, 1),
    (12902702, 162, 'KP-14', NULL, NULL, '14', 'KP-14', 'KP-14', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Nampo', 'Nampo', 'Nampo', 'Nampo', 'Nampo', 1, NOW(6), NOW(6), 1, 1),
    (12902703, 162, 'KP-15', NULL, NULL, '19', 'KP-15', 'KP-15', '+850', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kp' AND id_country = 162), 'Kaesong', 'Kaesong', 'Kaesong', 'Kaesong', 'Kaesong', 1, NOW(6), NOW(6), 1, 1);