-- Insertar tipo de división geográfica ADM1 para Lesoto: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_ls', 124, 8, 'distrito', 'district', 
    'District', 'District', 'District', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Lesoto (Distritos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(932011, 124, 'LS-K', NULL, NULL, '0', 'LS-K', 'LS-K', '+266', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ls' AND id_country = 124), 'thaba-tseka', 'Thaba-Tseka', 'Thaba-Tseka', 'Thaba-Tseka', 'Thaba-Tseka', 1, NOW(6), NOW(6), 1, 1),
(932184, 124, 'LS-G', NULL, NULL, '0', 'LS-G', 'LS-G', '+266', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ls' AND id_country = 124), 'quthing', 'Quthing', 'Quthing', 'Quthing', 'Quthing', 1, NOW(6), NOW(6), 1, 1),
(932219, 124, 'LS-H', NULL, NULL, '0', 'LS-H', 'LS-H', '+266', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ls' AND id_country = 124), 'qacha''s nek', 'Qacha''s Nek', 'Qacha''s Nek', 'Qacha''s Nek', 'Qacha''s Nek', 1, NOW(6), NOW(6), 1, 1),
(932418, 124, 'LS-J', NULL, NULL, '0', 'LS-J', 'LS-J', '+266', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ls' AND id_country = 124), 'mokhotlong', 'Mokhotlong', 'Mokhotlong', 'Mokhotlong', 'Mokhotlong', 1, NOW(6), NOW(6), 1, 1),
(932439, 124, 'LS-F', NULL, NULL, '0', 'LS-F', 'LS-F', '+266', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ls' AND id_country = 124), 'mohale''s hoek', 'Mohale''s Hoek', 'Mohale''s Hoek', 'Mohale''s Hoek', 'Mohale''s Hoek', 1, NOW(6), NOW(6), 1, 1),
(932506, 124, 'LS-A', NULL, NULL, '0', 'LS-A', 'LS-A', '+266', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ls' AND id_country = 124), 'maseru', 'Maseru', 'Maseru', 'Maseru', 'Maseru', 1, NOW(6), NOW(6), 1, 1),
(932615, 124, 'LS-E', NULL, NULL, '0', 'LS-E', 'LS-E', '+266', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ls' AND id_country = 124), 'mafeteng', 'Mafeteng', 'Mafeteng', 'Mafeteng', 'Mafeteng', 1, NOW(6), NOW(6), 1, 1),
(932700, 124, 'LS-C', NULL, NULL, '0', 'LS-C', 'LS-C', '+266', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ls' AND id_country = 124), 'leribe', 'Leribe', 'Leribe', 'Leribe', 'Leribe', 1, NOW(6), NOW(6), 1, 1),
(932888, 124, 'LS-B', NULL, NULL, '0', 'LS-B', 'LS-B', '+266', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ls' AND id_country = 124), 'butha-buthe', 'Butha-Buthe', 'Butha-Buthe', 'Butha-Buthe', 'Butha-Buthe', 1, NOW(6), NOW(6), 1, 1),
(932932, 124, 'LS-D', NULL, NULL, '0', 'LS-D', 'LS-D', '+266', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ls' AND id_country = 124), 'berea', 'Berea', 'Berea', 'Berea', 'Berea', 1, NOW(6), NOW(6), 1, 1);