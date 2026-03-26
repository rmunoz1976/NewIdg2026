-- Insertar tipo de división geográfica ADM1 para COREA DEL SUR: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_kr', 208, 8, 'Provincia', 'Province', 
    'Do', '도', 'do', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de COREA DEL SUR (Provincias y Ciudades Metropolitanas)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (1833742, 208, 'KR-31', NULL, NULL, '21', 'KR-31', 'KR-31', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Ulsan', 'Ulsan', 'Ulsan', 'Ulsan', 'Ulsan', 1, NOW(6), NOW(6), 1, 1),
    (1835224, 208, 'KR-30', NULL, NULL, '19', 'KR-30', 'KR-30', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Daejeon', 'Daejeon', 'Daejeon', 'Daejeon', 'Daejeon', 1, NOW(6), NOW(6), 1, 1),
    (1835327, 208, 'KR-27', NULL, NULL, '15', 'KR-27', 'KR-27', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Daegu', 'Daegu', 'Daegu', 'Daegu', 'Daegu', 1, NOW(6), NOW(6), 1, 1),
    (1835847, 208, 'KR-11', NULL, NULL, '11', 'KR-11', 'KR-11', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Seúl', 'Seoul', 'Seoul', 'Seoul', 'Seoul', 1, NOW(6), NOW(6), 1, 1),
    (1838519, 208, 'KR-26', NULL, NULL, '10', 'KR-26', 'KR-26', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Busan', 'Busan', 'Busan', 'Busan', 'Busan', 1, NOW(6), NOW(6), 1, 1),
    (1841597, 208, 'KR-47', NULL, NULL, '14', 'KR-47', 'KR-47', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Gyeongsangbuk-do', 'North Gyeongsang', 'North Gyeongsang', 'Gyeongsangbuk-do', 'Gyeongsangbuk-do', 1, NOW(6), NOW(6), 1, 1),
    (1841610, 208, 'KR-41', NULL, NULL, '13', 'KR-41', 'KR-41', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Gyeonggi-do', 'Gyeonggi', 'Gyeonggi', 'Gyeonggi-do', 'Gyeonggi-do', 1, NOW(6), NOW(6), 1, 1),
    (1841808, 208, 'KR-29', NULL, NULL, '18', 'KR-29', 'KR-29', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Gwangju', 'Gwangju', 'Gwangju', 'Gwangju', 'Gwangju', 1, NOW(6), NOW(6), 1, 1),
    (1843125, 208, 'KR-42', NULL, NULL, '06', 'KR-42', 'KR-42', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Gangwon', 'Gangwon', 'Gangwon', 'Gangwon', 'Gangwon', 1, NOW(6), NOW(6), 1, 1),
    (1843561, 208, 'KR-28', NULL, NULL, '12', 'KR-28', 'KR-28', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Incheon', 'Incheon', 'Incheon', 'Incheon', 'Incheon', 1, NOW(6), NOW(6), 1, 1),
    (1845105, 208, 'KR-44', NULL, NULL, '17', 'KR-44', 'KR-44', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Chungcheongnam-do', 'South Chungcheong', 'South Chungcheong', 'Chungcheongnam-do', 'Chungcheongnam-do', 1, NOW(6), NOW(6), 1, 1),
    (1845106, 208, 'KR-43', NULL, NULL, '05', 'KR-43', 'KR-43', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Chungcheongbuk-do', 'North Chungcheong', 'North Chungcheong', 'Chungcheongbuk-do', 'Chungcheongbuk-do', 1, NOW(6), NOW(6), 1, 1),
    (1845788, 208, 'KR-46', NULL, NULL, '16', 'KR-46', 'KR-46', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Jeollanam-do', 'South Jeolla', 'South Jeolla', 'Jeollanam-do', 'Jeollanam-do', 1, NOW(6), NOW(6), 1, 1),
    (1845789, 208, 'KR-45', NULL, NULL, '03', 'KR-45', 'KR-45', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Jeollabuk-do', 'North Jeolla', 'North Jeolla', 'Jeonbuk', 'Jeonbuk', 1, NOW(6), NOW(6), 1, 1),
    (1846265, 208, 'KR-49', NULL, NULL, '01', 'KR-49', 'KR-49', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Jeju-do', 'Jeju', 'Jeju', 'Jeju-do', 'Jeju-do', 1, NOW(6), NOW(6), 1, 1),
    (1902028, 208, 'KR-48', NULL, NULL, '20', 'KR-48', 'KR-48', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Gyeongsangnam-do', 'South Gyeongsang', 'South Gyeongsang', 'Gyeongsangnam-do', 'Gyeongsangnam-do', 1, NOW(6), NOW(6), 1, 1),
    (8394437, 208, 'KR-50', NULL, NULL, '22', 'KR-50', 'KR-50', '+82', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kr' AND id_country = 208), 'Sejong', 'Sejong', 'Sejong', 'Sejong-si', 'Sejong-si', 1, NOW(6), NOW(6), 1, 1);