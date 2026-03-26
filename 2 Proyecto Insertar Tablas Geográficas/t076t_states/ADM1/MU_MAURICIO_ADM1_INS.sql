-- Insertar tipo de división geográfica ADM1 para Mauricio: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_mu', 140, 8, 'distrito', 'district', 
    'District', 'District', 'District', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Mauricio (Distritos y Dependencias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(448254, 140, 'MU-AG', NULL, NULL, '0', 'MU-AG', 'MU-AG', '+230', (SELECT id FROM t075t_division_types WHERE code = 'distrito_mu' AND id_country = 140), 'islas agalega', 'Agalega Islands', 'Agalega', 'Agalega Islands', 'Agalega', 1, NOW(6), NOW(6), 1, 1),
(934017, 140, 'MU-SA', NULL, NULL, '0', 'MU-SA', 'MU-SA', '+230', (SELECT id FROM t075t_division_types WHERE code = 'distrito_mu' AND id_country = 140), 'savanne', 'Savanne District', 'Savanne', 'Savanne District', 'Savanne', 1, NOW(6), NOW(6), 1, 1),
(934090, 140, 'MU-RR', NULL, NULL, '0', 'MU-RR', 'MU-RR', '+230', (SELECT id FROM t075t_division_types WHERE code = 'distrito_mu' AND id_country = 140), 'rivière du rempart', 'Rivière du Rempart District', 'Rivière du Rempart', 'Rivière du Rempart District', 'Rivière du Rempart', 1, NOW(6), NOW(6), 1, 1),
(934153, 140, 'MU-PL', NULL, NULL, '0', 'MU-PL', 'MU-PL', '+230', (SELECT id FROM t075t_division_types WHERE code = 'distrito_mu' AND id_country = 140), 'port louis', 'Port Louis District', 'Port Louis', 'Port Louis District', 'Port Louis', 1, NOW(6), NOW(6), 1, 1),
(934166, 140, 'MU-PW', NULL, NULL, '0', 'MU-PW', 'MU-PW', '+230', (SELECT id FROM t075t_division_types WHERE code = 'distrito_mu' AND id_country = 140), 'plaines wilhems', 'Plaines Wilhems District', 'Plaines Wilhems', 'Plaines Wilhems District', 'Plaines Wilhems', 1, NOW(6), NOW(6), 1, 1),
(934212, 140, 'MU-PA', NULL, NULL, '0', 'MU-PA', 'MU-PA', '+230', (SELECT id FROM t075t_division_types WHERE code = 'distrito_mu' AND id_country = 140), 'pamplemousses', 'Pamplemousses District', 'Pamplemousses', 'Pamplemousses District', 'Pamplemousses', 1, NOW(6), NOW(6), 1, 1),
(934275, 140, 'MU-MO', NULL, NULL, '0', 'MU-MO', 'MU-MO', '+230', (SELECT id FROM t075t_division_types WHERE code = 'distrito_mu' AND id_country = 140), 'moka', 'Moka District', 'Moka', 'Moka District', 'Moka', 1, NOW(6), NOW(6), 1, 1),
(934466, 140, 'MU-GP', NULL, NULL, '0', 'MU-GP', 'MU-GP', '+230', (SELECT id FROM t075t_division_types WHERE code = 'distrito_mu' AND id_country = 140), 'grand port', 'Grand Port District', 'Grand Port', 'Grand Port District', 'Grand Port', 1, NOW(6), NOW(6), 1, 1),
(934522, 140, 'MU-FL', NULL, NULL, '0', 'MU-FL', 'MU-FL', '+230', (SELECT id FROM t075t_division_types WHERE code = 'distrito_mu' AND id_country = 140), 'flacq', 'Flacq District', 'Flacq', 'Flacq District', 'Flacq', 1, NOW(6), NOW(6), 1, 1),
(934718, 140, 'MU-BL', NULL, NULL, '0', 'MU-BL', 'MU-BL', '+230', (SELECT id FROM t075t_division_types WHERE code = 'distrito_mu' AND id_country = 140), 'black river', 'Black River District', 'Black River', 'Black River District', 'Black River', 1, NOW(6), NOW(6), 1, 1),
(1106583, 140, 'MU-CC', NULL, NULL, '0', 'MU-CC', 'MU-CC', '+230', (SELECT id FROM t075t_division_types WHERE code = 'distrito_mu' AND id_country = 140), 'cargados carajos', 'Cargados Carajos', 'Cargados Carajos', 'Cargados Carajos', 'Cargados Carajos', 1, NOW(6), NOW(6), 1, 1),
(1547449, 140, 'MU-RO', NULL, NULL, '0', 'MU-RO', 'MU-RO', '+230', (SELECT id FROM t075t_division_types WHERE code = 'distrito_mu' AND id_country = 140), 'rodrigues', 'Rodrigues', 'Rodrigues', 'Rodrigues', 'Rodrigues', 1, NOW(6), NOW(6), 1, 1);