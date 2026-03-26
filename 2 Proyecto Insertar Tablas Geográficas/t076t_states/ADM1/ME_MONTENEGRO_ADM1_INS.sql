-- Insertar tipo de división geográfica ADM1 para Montenegro: Municipio
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'municipio_me', 147, 8, 'municipio', 'municipality', 
    'Municipality', 'Opština', 'Opština', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Montenegro (Municipios)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(786233, 147, 'ME-17', NULL, NULL, '0', 'ME-17', 'ME-17', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'rožaje', 'Rožaje', 'Rožaje', 'Opština Rožaje', 'Rožaje', 1, NOW(6), NOW(6), 1, 1),
(3186995, 147, 'ME-21', NULL, NULL, '0', 'ME-21', 'ME-21', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'žabljak', 'Žabljak', 'Žabljak', 'Opština Žabljak', 'Žabljak', 1, NOW(6), NOW(6), 1, 1),
(3188514, 147, 'ME-20', NULL, NULL, '0', 'ME-20', 'ME-20', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'ulcinj', 'Ulcinj', 'Ulcinj', 'Ulcinj', 'Ulcinj', 1, NOW(6), NOW(6), 1, 1),
(3189071, 147, 'ME-19', NULL, NULL, '0', 'ME-19', 'ME-19', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'tivat', 'Tivat', 'Tivat', 'Tivat', 'Tivat', 1, NOW(6), NOW(6), 1, 1),
(3189077, 147, 'ME-16', NULL, NULL, '0', 'ME-16', 'ME-16', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'podgorica', 'Podgorica', 'Podgorica', 'Podgorica', 'Podgorica', 1, NOW(6), NOW(6), 1, 1),
(3191221, 147, 'ME-18', NULL, NULL, '0', 'ME-18', 'ME-18', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'šavnik', 'Šavnik', 'Šavnik', 'Opština Šavnik', 'Šavnik', 1, NOW(6), NOW(6), 1, 1),
(3193129, 147, 'ME-15', NULL, NULL, '0', 'ME-15', 'ME-15', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'plužine', 'Plužine', 'Plužine', 'Opština Plužine', 'Plužine', 1, NOW(6), NOW(6), 1, 1),
(3193160, 147, 'ME-14', NULL, NULL, '0', 'ME-14', 'ME-14', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'pljevlja', 'Pljevlja', 'Pljevlja', 'Pljevlja', 'Pljevlja', 1, NOW(6), NOW(6), 1, 1),
(3193227, 147, 'ME-13', NULL, NULL, '0', 'ME-13', 'ME-13', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'plav', 'Plav', 'Plav', 'Opština Plav', 'Plav', 1, NOW(6), NOW(6), 1, 1),
(3194493, 147, 'ME-12', NULL, NULL, '0', 'ME-12', 'ME-12', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'nikšić', 'Nikšić', 'Nikšić', 'Opština Nikšić', 'Nikšić', 1, NOW(6), NOW(6), 1, 1),
(3194925, 147, 'ME-11', NULL, NULL, '0', 'ME-11', 'ME-11', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'mojkovac', 'Mojkovac', 'Mojkovac', 'Mojkovac', 'Mojkovac', 1, NOW(6), NOW(6), 1, 1),
(3197537, 147, 'ME-10', NULL, NULL, '0', 'ME-10', 'ME-10', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'kotor', 'Kotor', 'Kotor', 'Kotor', 'Kotor', 1, NOW(6), NOW(6), 1, 1),
(3197895, 147, 'ME-09', NULL, NULL, '0', 'ME-09', 'ME-09', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'kolašin', 'Kolašin', 'Kolašin', 'Opština Kolašin', 'Kolašin', 1, NOW(6), NOW(6), 1, 1),
(3199070, 147, 'ME-03', NULL, NULL, '0', 'ME-03', 'ME-03', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'berane', 'Berane', 'Berane', 'Berane', 'Berane', 1, NOW(6), NOW(6), 1, 1),
(3199393, 147, 'ME-08', NULL, NULL, '0', 'ME-08', 'ME-08', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'herceg novi', 'Herceg Novi', 'Herceg Novi', 'Herceg Novi', 'Herceg Novi', 1, NOW(6), NOW(6), 1, 1),
(3202193, 147, 'ME-07', NULL, NULL, '0', 'ME-07', 'ME-07', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'danilovgrad', 'Danilovgrad', 'Danilovgrad', 'Danilovgrad', 'Danilovgrad', 1, NOW(6), NOW(6), 1, 1),
(3202640, 147, 'ME-06', NULL, NULL, '0', 'ME-06', 'ME-06', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'cetiña', 'Cetinje', 'Cetinje', 'Cetinje', 'Cetinje', 1, NOW(6), NOW(6), 1, 1),
(3203104, 147, 'ME-05', NULL, NULL, '0', 'ME-05', 'ME-05', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'budva', 'Budva', 'Budva', 'Budva', 'Budva', 1, NOW(6), NOW(6), 1, 1),
(3204173, 147, 'ME-04', NULL, NULL, '0', 'ME-04', 'ME-04', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'bijelo polje', 'Bijelo Polje', 'Bijelo Polje', 'Bijelo Polje', 'Bijelo Polje', 1, NOW(6), NOW(6), 1, 1),
(3204508, 147, 'ME-02', NULL, NULL, '0', 'ME-02', 'ME-02', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'bar', 'Bar', 'Bar', 'Bar', 'Bar', 1, NOW(6), NOW(6), 1, 1),
(3343959, 147, 'ME-01', NULL, NULL, '0', 'ME-01', 'ME-01', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'andrijevica', 'Andrijevica', 'Andrijevica', 'Andrijevica', 'Andrijevica', 1, NOW(6), NOW(6), 1, 1),
(11497642, 147, 'ME-22', NULL, NULL, '0', 'ME-22', 'ME-22', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'gusinje', 'Gusinje', 'Gusinje', 'Gusinje', 'Gusinje', 1, NOW(6), NOW(6), 1, 1),
(11497643, 147, 'ME-23', NULL, NULL, '0', 'ME-23', 'ME-23', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'petnjica', 'Petnjica', 'Petnjica', 'Petnjica', 'Petnjica', 1, NOW(6), NOW(6), 1, 1),
(12104729, 147, 'ME-24', NULL, NULL, '0', 'ME-24', 'ME-24', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'tuzi', 'Tuzi', 'Tuzi', 'Tuzi', 'Tuzi', 1, NOW(6), NOW(6), 1, 1),
(12640530, 147, 'ME-25', NULL, NULL, '0', 'ME-25', 'ME-25', '+382', (SELECT id FROM t075t_division_types WHERE code = 'municipio_me' AND id_country = 147), 'zeta', 'Zeta', 'Zeta', 'Zeta', 'Zeta', 1, NOW(6), NOW(6), 1, 1);