-- Insertar tipo de división geográfica ADM1 para Malasia: Estado / Territorio Federal
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'estado_my', 133, 8, 'estado', 'state', 
    'State', 'Negeri', 'Negeri', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Malasia (Estados y Territorios Federales)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(1733035, 133, 'MY-04', NULL, NULL, '0', 'MY-04', 'MY-04', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'malaca', 'Melaka', 'Melaka', 'Melaka', 'Melaka', 1, NOW(6), NOW(6), 1, 1),
(1733036, 133, 'MY-13', NULL, NULL, '0', 'MY-13', 'MY-13', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'terengganu', 'Terengganu', 'Terengganu', 'Terengganu', 'Terengganu', 1, NOW(6), NOW(6), 1, 1),
(1733037, 133, 'MY-12', NULL, NULL, '0', 'MY-12', 'MY-12', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'selangor', 'Selangor', 'Selangor', 'Selangor', 'Selangor', 1, NOW(6), NOW(6), 1, 1),
(1733038, 133, 'MY-11', NULL, NULL, '0', 'MY-11', 'MY-11', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'sarawak', 'Sarawak', 'Sarawak', 'Sarawak', 'Sarawak', 1, NOW(6), NOW(6), 1, 1),
(1733039, 133, 'MY-16', NULL, NULL, '0', 'MY-16', 'MY-16', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'sabah', 'Sabah', 'Sabah', 'Sabah', 'Sabah', 1, NOW(6), NOW(6), 1, 1),
(1733040, 133, 'MY-08', NULL, NULL, '0', 'MY-08', 'MY-08', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'perlis', 'Perlis', 'Perlis', 'Perlis', 'Perlis', 1, NOW(6), NOW(6), 1, 1),
(1733041, 133, 'MY-07', NULL, NULL, '0', 'MY-07', 'MY-07', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'perak', 'Perak', 'Perak', 'Perak', 'Perak', 1, NOW(6), NOW(6), 1, 1),
(1733042, 133, 'MY-06', NULL, NULL, '0', 'MY-06', 'MY-06', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'pahang', 'Pahang', 'Pahang', 'Pahang', 'Pahang', 1, NOW(6), NOW(6), 1, 1),
(1733043, 133, 'MY-05', NULL, NULL, '0', 'MY-05', 'MY-05', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'negeri sembilan', 'Negeri Sembilan', 'Negeri Sembilan', 'Negeri Sembilan', 'Negeri Sembilan', 1, NOW(6), NOW(6), 1, 1),
(1733044, 133, 'MY-03', NULL, NULL, '0', 'MY-03', 'MY-03', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'kelantan', 'Kelantan', 'Kelantan', 'Kelantan', 'Kelantan', 1, NOW(6), NOW(6), 1, 1),
(1733046, 133, 'MY-14', NULL, NULL, '0', 'MY-14', 'MY-14', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'kuala lumpur', 'Kuala Lumpur', 'Kuala Lumpur', 'Kuala Lumpur', 'Kuala Lumpur', 1, NOW(6), NOW(6), 1, 1),
(1733047, 133, 'MY-09', NULL, NULL, '0', 'MY-09', 'MY-09', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'penang', 'Penang', 'Penang', 'Pulau Pinang', 'Penang', 1, NOW(6), NOW(6), 1, 1),
(1733048, 133, 'MY-02', NULL, NULL, '0', 'MY-02', 'MY-02', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'kedah', 'Kedah', 'Kedah', 'Kedah', 'Kedah', 1, NOW(6), NOW(6), 1, 1),
(1733049, 133, 'MY-01', NULL, NULL, '0', 'MY-01', 'MY-01', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'johor', 'Johor', 'Johor', 'Johor', 'Johor', 1, NOW(6), NOW(6), 1, 1),
(1734240, 133, 'MY-15', NULL, NULL, '0', 'MY-15', 'MY-15', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'labuan', 'Labuan', 'Labuan', 'Labuan', 'Labuan', 1, NOW(6), NOW(6), 1, 1),
(1996552, 133, 'MY-17', NULL, NULL, '0', 'MY-17', 'MY-17', '+60', (SELECT id FROM t075t_division_types WHERE code = 'estado_my' AND id_country = 133), 'putrajaya', 'Putrajaya', 'Putrajaya', 'Putrajaya', 'Putrajaya', 1, NOW(6), NOW(6), 1, 1);