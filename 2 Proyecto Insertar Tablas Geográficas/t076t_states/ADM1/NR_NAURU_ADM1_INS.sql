-- Insertar tipo de división geográfica ADM1 para Nauru: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_nr', 153, 8, 'distrito', 'district', 
    'District', 'District', 'District', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Nauru (Distritos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2110418, 153, 'NR-14', NULL, NULL, '0', 'NR-14', 'NR-14', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'yaren', 'Yaren', 'Yaren', 'Yaren', 'Yaren', 1, NOW(6), NOW(6), 1, 1),
(2110420, 153, 'NR-13', NULL, NULL, '0', 'NR-13', 'NR-13', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'uaboe', 'Uaboe', 'Uaboe', 'Uaboe District', 'Uaboe', 1, NOW(6), NOW(6), 1, 1),
(2110423, 153, 'NR-12', NULL, NULL, '0', 'NR-12', 'NR-12', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'nibok', 'Nibok', 'Nibok', 'Nibok District', 'Nibok', 1, NOW(6), NOW(6), 1, 1),
(2110431, 153, 'NR-11', NULL, NULL, '0', 'NR-11', 'NR-11', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'meneng', 'Meneng', 'Meneng', 'Meneng District', 'Meneng', 1, NOW(6), NOW(6), 1, 1),
(2110432, 153, 'NR-10', NULL, NULL, '0', 'NR-10', 'NR-10', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'ijuw', 'Ijuw', 'Ijuw', 'Ijuw District', 'Ijuw', 1, NOW(6), NOW(6), 1, 1),
(2110435, 153, 'NR-09', NULL, NULL, '0', 'NR-09', 'NR-09', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'ewa', 'Ewa', 'Ewa', 'Ewa District', 'Ewa', 1, NOW(6), NOW(6), 1, 1),
(2110437, 153, 'NR-08', NULL, NULL, '0', 'NR-08', 'NR-08', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'denigomodu', 'Denigomodu', 'Denigomodu', 'Denigomodu District', 'Denigomodu', 1, NOW(6), NOW(6), 1, 1),
(2110440, 153, 'NR-07', NULL, NULL, '0', 'NR-07', 'NR-07', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'buada', 'Buada', 'Buada', 'Buada District', 'Buada', 1, NOW(6), NOW(6), 1, 1),
(2110441, 153, 'NR-06', NULL, NULL, '0', 'NR-06', 'NR-06', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'boe', 'Boe', 'Boe', 'Boe District', 'Boe', 1, NOW(6), NOW(6), 1, 1),
(2110442, 153, 'NR-05', NULL, NULL, '0', 'NR-05', 'NR-05', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'baiti', 'Baiti', 'Baiti', 'Baiti District', 'Baiti', 1, NOW(6), NOW(6), 1, 1),
(2110445, 153, 'NR-04', NULL, NULL, '0', 'NR-04', 'NR-04', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'anibare', 'Anibare', 'Anibare', 'Anibare District', 'Anibare', 1, NOW(6), NOW(6), 1, 1),
(2110448, 153, 'NR-03', NULL, NULL, '0', 'NR-03', 'NR-03', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'anetan', 'Anetan', 'Anetan', 'Anetan District', 'Anetan', 1, NOW(6), NOW(6), 1, 1),
(2110449, 153, 'NR-02', NULL, NULL, '0', 'NR-02', 'NR-02', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'anabar', 'Anabar', 'Anabar', 'Anabar District', 'Anabar', 1, NOW(6), NOW(6), 1, 1),
(2110451, 153, 'NR-01', NULL, NULL, '0', 'NR-01', 'NR-01', '+674', (SELECT id FROM t075t_division_types WHERE code = 'distrito_nr' AND id_country = 153), 'aiwo', 'Aiwo', 'Aiwo', 'Aiwo District', 'Aiwo', 1, NOW(6), NOW(6), 1, 1);