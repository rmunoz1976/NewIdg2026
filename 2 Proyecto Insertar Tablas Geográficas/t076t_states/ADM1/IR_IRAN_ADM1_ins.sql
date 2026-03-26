-- Insertar tipo de división geográfica ADM1 para IRÁN: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_ir', 104, 8, 'Provincia', 'Province', 
    'Ostan', 'استان', 'ostan', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de IRÁN (Provincias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (110791, 104, 'IR-TH', NULL, NULL, '26', 'IR-TH', 'IR-TH', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Teherán', 'Tehran', 'Tehran', 'Tehran Province', 'Tehran Province', 1, NOW(6), NOW(6), 1, 1),
    (111452, 104, 'IR-ZA', NULL, NULL, '36', 'IR-ZA', 'IR-ZA', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Zanjan', 'Zanjan', 'Zanjan', 'Zanjan Province', 'Zanjan Province', 1, NOW(6), NOW(6), 1, 1),
    (111821, 104, 'IR-YZ', NULL, NULL, '40', 'IR-YZ', 'IR-YZ', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Yazd', 'Yazd', 'Yazd', 'Yazd Province', 'Yazd Province', 1, NOW(6), NOW(6), 1, 1),
    (116401, 104, 'IR-SM', NULL, NULL, '25', 'IR-SM', 'IR-SM', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Semnan', 'Semnan', 'Semnan', 'Semnan Province', 'Semnan Province', 1, NOW(6), NOW(6), 1, 1),
    (124544, 104, 'IR-MZ', NULL, NULL, '35', 'IR-MZ', 'IR-MZ', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Mazandaran', 'Mazandaran', 'Mazandaran', 'Mazandaran Province', 'Mazandaran Province', 1, NOW(6), NOW(6), 1, 1),
    (124763, 104, 'IR-MK', NULL, NULL, '34', 'IR-MK', 'IR-MK', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Markazi', 'Markazi', 'Markazi', 'Markazi Province', 'Markazi Province', 1, NOW(6), NOW(6), 1, 1),
    (125605, 104, 'IR-LR', NULL, NULL, '23', 'IR-LR', 'IR-LR', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Lorestan', 'Lorestan', 'Lorestan', 'Lorestan Province', 'Lorestan Province', 1, NOW(6), NOW(6), 1, 1),
    (126584, 104, 'IR-KD', NULL, NULL, '16', 'IR-KD', 'IR-KD', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Kurdistán', 'Kurdistan', 'Kurdistan', 'Kurdistan Province', 'Kurdistan Province', 1, NOW(6), NOW(6), 1, 1),
    (126878, 104, 'IR-KB', NULL, NULL, '05', 'IR-KB', 'IR-KB', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Kohgiluyeh y Boyer-Ahmad', 'Kohgiluyeh and Boyer-Ahmad', 'Kohgiluyeh and Boyer-Ahmad', 'Kohgiluyeh and Boyer-Ahmad Province', 'Kohgiluyeh and Boyer-Ahmad Province', 1, NOW(6), NOW(6), 1, 1),
    (127082, 104, 'IR-KH', NULL, NULL, '15', 'IR-KH', 'IR-KH', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Juzestán', 'Khuzestan', 'Khuzestan', 'Khuzestan Province', 'Khuzestan Province', 1, NOW(6), NOW(6), 1, 1),
    (128222, 104, 'IR-KS', NULL, NULL, '13', 'IR-KS', 'IR-KS', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Kermanshah', 'Kermanshah', 'Kermanshah', 'Kermanshah Province', 'Kermanshah Province', 1, NOW(6), NOW(6), 1, 1),
    (128231, 104, 'IR-KR', NULL, NULL, '29', 'IR-KR', 'IR-KR', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Kerman', 'Kerman', 'Kerman', 'Kerman Province', 'Kerman Province', 1, NOW(6), NOW(6), 1, 1),
    (130801, 104, 'IR-IL', NULL, NULL, '10', 'IR-IL', 'IR-IL', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Ilam', 'Ilam', 'Ilam', 'Ilam Province', 'Ilam Province', 1, NOW(6), NOW(6), 1, 1),
    (131222, 104, 'IR-HG', NULL, NULL, '11', 'IR-HG', 'IR-HG', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Hormozgan', 'Hormozgan', 'Hormozgan', 'Hormozgan Province', 'Hormozgan Province', 1, NOW(6), NOW(6), 1, 1),
    (132142, 104, 'IR-HD', NULL, NULL, '09', 'IR-HD', 'IR-HD', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Hamadán', 'Hamadan', 'Hamadan', 'Hamadan Province', 'Hamadan Province', 1, NOW(6), NOW(6), 1, 1),
    (133349, 104, 'IR-GL', NULL, NULL, '08', 'IR-GL', 'IR-GL', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Gilan', 'Gilan', 'Gilan', 'Gilan Province', 'Gilan Province', 1, NOW(6), NOW(6), 1, 1),
    (134766, 104, 'IR-FA', NULL, NULL, '07', 'IR-FA', 'IR-FA', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Fars', 'Fars', 'Fars', 'Fars Province', 'Fars Province', 1, NOW(6), NOW(6), 1, 1),
    (139677, 104, 'IR-CB', NULL, NULL, '03', 'IR-CB', 'IR-CB', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Chaharmahal y Bajtiarí', 'Chaharmahal and Bakhtiari', 'Chaharmahal and Bakhtiari', 'Chaharmahal and Bakhtiari Province', 'Chaharmahal and Bakhtiari Province', 1, NOW(6), NOW(6), 1, 1),
    (139816, 104, 'IR-BU', NULL, NULL, '22', 'IR-BU', 'IR-BU', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Bushehr', 'Bushehr', 'Bushehr', 'Bushehr Province', 'Bushehr Province', 1, NOW(6), NOW(6), 1, 1),
    (142549, 104, 'IR-EA', NULL, NULL, '33', 'IR-EA', 'IR-EA', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Azerbaiyán Oriental', 'East Azerbaijan', 'East Azerbaijan', 'East Azerbaijan Province', 'East Azerbaijan Province', 1, NOW(6), NOW(6), 1, 1),
    (142550, 104, 'IR-WA', NULL, NULL, '01', 'IR-WA', 'IR-WA', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Azerbaiyán Occidental', 'West Azerbaijan', 'West Azerbaijan', 'West Azerbaijan Province', 'West Azerbaijan Province', 1, NOW(6), NOW(6), 1, 1),
    (413931, 104, 'IR-AR', NULL, NULL, '32', 'IR-AR', 'IR-AR', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Ardabil', 'Ardabil', 'Ardabil', 'Ardabil Province', 'Ardabil Province', 1, NOW(6), NOW(6), 1, 1),
    (418862, 104, 'IR-ES', NULL, NULL, '28', 'IR-ES', 'IR-ES', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Isfahán', 'Isfahan', 'Isfahan', 'Isfahan Province', 'Isfahan Province', 1, NOW(6), NOW(6), 1, 1),
    (443792, 104, 'IR-GO', NULL, NULL, '37', 'IR-GO', 'IR-GO', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Golestán', 'Golestan', 'Golestan', 'Golestan Province', 'Golestan Province', 1, NOW(6), NOW(6), 1, 1),
    (443793, 104, 'IR-QZ', NULL, NULL, '38', 'IR-QZ', 'IR-QZ', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Qazvín', 'Qazvin', 'Qazvin', 'Qazvin Province', 'Qazvin Province', 1, NOW(6), NOW(6), 1, 1),
    (443794, 104, 'IR-QM', NULL, NULL, '39', 'IR-QM', 'IR-QM', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Qom', 'Qom', 'Qom', 'Qom Province', 'Qom Province', 1, NOW(6), NOW(6), 1, 1),
    (1159456, 104, 'IR-SB', NULL, NULL, '04', 'IR-SB', 'IR-SB', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Sistán y Baluchistán', 'Sistan and Baluchestan', 'Sistan and Baluchestan', 'Sistan and Baluchestan Province', 'Sistan and Baluchestan Province', 1, NOW(6), NOW(6), 1, 1),
    (6201374, 104, 'IR-SK', NULL, NULL, '41', 'IR-SK', 'IR-SK', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Jorasán del Sur', 'South Khorasan', 'South Khorasan', 'South Khorasan Province', 'South Khorasan Province', 1, NOW(6), NOW(6), 1, 1),
    (6201375, 104, 'IR-RZ', NULL, NULL, '42', 'IR-RZ', 'IR-RZ', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Jorasán Razaví', 'Razavi Khorasan', 'Razavi Khorasan', 'Razavi Khorasan Province', 'Razavi Khorasan Province', 1, NOW(6), NOW(6), 1, 1),
    (6201376, 104, 'IR-NK', NULL, NULL, '43', 'IR-NK', 'IR-NK', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Jorasán del Norte', 'North Khorasan', 'North Khorasan', 'North Khorasan Province', 'North Khorasan Province', 1, NOW(6), NOW(6), 1, 1),
    (7648907, 104, 'IR-AL', NULL, NULL, '44', 'IR-AL', 'IR-AL', '+98', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ir' AND id_country = 104), 'Alborz', 'Alborz', 'Alborz', 'Alborz Province', 'Alborz Province', 1, NOW(6), NOW(6), 1, 1);