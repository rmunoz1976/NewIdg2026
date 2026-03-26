-- Insertar tipo de división geográfica ADM1 para Noruega: Condado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'condado_no', 165, 8, 'condado', 'county', 
    'County', 'Fylke', 'Fylke', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Noruega (Condados)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(780166, 165, 'NO-20', NULL, NULL, '0', 'NO-20', 'NO-20', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'finnmark', 'Finnmark', 'Finnmark', 'Finnmark Fylke', 'Finnmark', 1, NOW(6), NOW(6), 1, 1),
(3132015, 165, 'NO-07', NULL, NULL, '0', 'NO-07', 'NO-07', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'vestfold', 'Vestfold', 'Vestfold', 'Vestfold fylke', 'Vestfold', 1, NOW(6), NOW(6), 1, 1),
(3133897, 165, 'NO-19', NULL, NULL, '0', 'NO-19', 'NO-19', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'troms', 'Troms', 'Troms', 'Troms Fylke', 'Troms', 1, NOW(6), NOW(6), 1, 1),
(3134723, 165, 'NO-08', NULL, NULL, '0', 'NO-08', 'NO-08', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'telemark', 'Telemark', 'Telemark', 'Telemark fylke', 'Telemark', 1, NOW(6), NOW(6), 1, 1),
(3141558, 165, 'NO-11', NULL, NULL, '0', 'NO-11', 'NO-11', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'rogaland', 'Rogaland', 'Rogaland', 'Rogaland Fylke', 'Rogaland', 1, NOW(6), NOW(6), 1, 1),
(3143188, 165, 'NO-31', NULL, NULL, '0', 'NO-31', 'NO-31', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'østfold', 'Østfold', 'Østfold', 'Østfold fylke', 'Østfold', 1, NOW(6), NOW(6), 1, 1),
(3143242, 165, 'NO-03', NULL, NULL, '0', 'NO-03', 'NO-03', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'oslo', 'Oslo', 'Oslo', 'Oslo County', 'Oslo', 1, NOW(6), NOW(6), 1, 1),
(3144301, 165, 'NO-18', NULL, NULL, '0', 'NO-18', 'NO-18', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'nordland', 'Nordland', 'Nordland', 'Nordland Fylke', 'Nordland', 1, NOW(6), NOW(6), 1, 1),
(3145495, 165, 'NO-15', NULL, NULL, '0', 'NO-15', 'NO-15', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'møre og romsdal', 'Møre og Romsdal', 'Møre og Romsdal', 'Møre og Romsdal fylke', 'Møre og Romsdal', 1, NOW(6), NOW(6), 1, 1),
(3159665, 165, 'NO-33', NULL, NULL, '0', 'NO-33', 'NO-33', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'buskerud', 'Buskerud', 'Buskerud', 'Buskerud fylke', 'Buskerud', 1, NOW(6), NOW(6), 1, 1),
(3163480, 165, 'NO-32', NULL, NULL, '0', 'NO-32', 'NO-32', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'akershus', 'Akershus', 'Akershus', 'Akershus fylke', 'Akershus', 1, NOW(6), NOW(6), 1, 1),
(11862827, 165, 'NO-50', NULL, NULL, '0', 'NO-50', 'NO-50', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'trøndelag', 'Trøndelag', 'Trøndelag', 'Trøndelag', 'Trøndelag', 1, NOW(6), NOW(6), 1, 1),
(12110596, 165, 'NO-42', NULL, NULL, '0', 'NO-42', 'NO-42', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'agder', 'Agder', 'Agder', 'Agder', 'Agder', 1, NOW(6), NOW(6), 1, 1),
(12110598, 165, 'NO-34', NULL, NULL, '0', 'NO-34', 'NO-34', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'innlandet', 'Innlandet', 'Innlandet', 'Innlandet', 'Innlandet', 1, NOW(6), NOW(6), 1, 1),
(12110600, 165, 'NO-46', NULL, NULL, '0', 'NO-46', 'NO-46', '+47', (SELECT id FROM t075t_division_types WHERE code = 'condado_no' AND id_country = 165), 'vestland', 'Vestland', 'Vestland', 'Vestland', 'Vestland', 1, NOW(6), NOW(6), 1, 1);