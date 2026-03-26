-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para TÚNEZ (TN)
-- Archivo: TN_tunez_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para TÚNEZ: Gobernación
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'gobernacion_tn', 228, 8, 'Gobernación', 'Governorate',
    'Wilāyah', 'ولاية', 'Wilayah', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de TÚNEZ (Gobernaciones)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2464038, 228, 'zaghouan', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Zaghouan', 'Gouvernorat de Zaghouan', 'Gouvernorat de Zaghouan', 'Gouvernorat de Zaghouan', 'Gouvernorat de Zaghouan', 1, NOW(6), NOW(6), 1, 1),
(2464464, 228, 'tunis', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Túnez', 'Gouvernorat de Tunis', 'Gouvernorat de Tunis', 'Gouvernorat de Tunis', 'Gouvernorat de Tunis', 1, NOW(6), NOW(6), 1, 1),
(2464645, 228, 'tozeur', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Tozeur', 'Gouvernorat de Tozeur', 'Gouvernorat de Tozeur', 'Gouvernorat de Tozeur', 'Gouvernorat de Tozeur', 1, NOW(6), NOW(6), 1, 1),
(2464698, 228, 'tataouine', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Tataouine', 'Tataouine', 'Tataouine', 'Tataouine', 'Tataouine', 1, NOW(6), NOW(6), 1, 1),
(2464912, 228, 'sousse', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Sousse', 'Gouvernorat de Sousse', 'Gouvernorat de Sousse', 'Gouvernorat de Sousse', 'Gouvernorat de Sousse', 1, NOW(6), NOW(6), 1, 1),
(2465027, 228, 'siliana', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Siliana', 'Gouvernorat de Siliana', 'Gouvernorat de Siliana', 'Gouvernorat de Siliana', 'Gouvernorat de Siliana', 1, NOW(6), NOW(6), 1, 1),
(2465837, 228, 'sidi_bouzid', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Sidi Bouzid', 'Gouvernorat de Sidi Bouzid', 'Gouvernorat de Sidi Bouzid', 'Gouvernorat de Sidi Bouzid', 'Gouvernorat de Sidi Bouzid', 1, NOW(6), NOW(6), 1, 1),
(2467450, 228, 'sfax', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Sfax', 'Gouvernorat de Sfax', 'Gouvernorat de Sfax', 'Gouvernorat de Sfax', 'Gouvernorat de Sfax', 1, NOW(6), NOW(6), 1, 1),
(2468014, 228, 'kebili', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Kébili', 'Gouvernorat de Kébili', 'Gouvernorat de Kébili', 'Gouvernorat de Kébili', 'Gouvernorat de Kébili', 1, NOW(6), NOW(6), 1, 1),
(2468351, 228, 'gafsa', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Gafsa', 'Gafsa Governorate', 'Gafsa Governorate', 'Gafsa Governorate', 'Gafsa Governorate', 1, NOW(6), NOW(6), 1, 1),
(2468365, 228, 'gabes', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Gabès', 'Gouvernorat de Gabès', 'Gouvernorat de Gabès', 'Gouvernorat de Gabès', 'Gouvernorat de Gabès', 1, NOW(6), NOW(6), 1, 1),
(2468576, 228, 'nabeul', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Nabeul', 'Gouvernorat de Nabeul', 'Gouvernorat de Nabeul', 'Gouvernorat de Nabeul', 'Gouvernorat de Nabeul', 1, NOW(6), NOW(6), 1, 1),
(2469470, 228, 'medenine', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Médenine', 'Gouvernorat de Médenine', 'Gouvernorat de Médenine', 'Gouvernorat de Médenine', 'Gouvernorat de Médenine', 1, NOW(6), NOW(6), 1, 1),
(2470085, 228, 'jendouba', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Jendouba', 'Gouvernorat de Jendouba', 'Gouvernorat de Jendouba', 'Gouvernorat de Jendouba', 'Gouvernorat de Jendouba', 1, NOW(6), NOW(6), 1, 1),
(2472477, 228, 'ben_arous', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Ben Arous', 'Gouvernorat de Ben Arous', 'Gouvernorat de Ben Arous', 'Gouvernorat de Ben Arous', 'Gouvernorat de Ben Arous', 1, NOW(6), NOW(6), 1, 1),
(2472699, 228, 'bizerte', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Bizerta', 'Gouvernorat de Bizerte', 'Gouvernorat de Bizerte', 'Gouvernorat de Bizerte', 'Gouvernorat de Bizerte', 1, NOW(6), NOW(6), 1, 1),
(2472770, 228, 'beja', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Béja', 'Gouvernorat de Béja', 'Gouvernorat de Béja', 'Gouvernorat de Béja', 'Gouvernorat de Béja', 1, NOW(6), NOW(6), 1, 1),
(2473245, 228, 'ariana', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Ariana', 'Gouvernorat de l’Ariana', 'Gouvernorat de l’Ariana', 'Gouvernorat de l’Ariana', 'Gouvernorat de l’Ariana', 1, NOW(6), NOW(6), 1, 1),
(2473451, 228, 'kairouan', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Kairouan', 'Gouvernorat de Kairouan', 'Gouvernorat de Kairouan', 'Gouvernorat de Kairouan', 'Gouvernorat de Kairouan', 1, NOW(6), NOW(6), 1, 1),
(2473460, 228, 'kasserine', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Kasserine', 'Gouvernorat de Kasserine', 'Gouvernorat de Kasserine', 'Gouvernorat de Kasserine', 'Gouvernorat de Kasserine', 1, NOW(6), NOW(6), 1, 1),
(2473495, 228, 'monastir', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Monastir', 'Gouvernorat de Monastir', 'Gouvernorat de Monastir', 'Gouvernorat de Monastir', 'Gouvernorat de Monastir', 1, NOW(6), NOW(6), 1, 1),
(2473574, 228, 'mahdia', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Mahdia', 'Gouvernorat de Mahdia', 'Gouvernorat de Mahdia', 'Gouvernorat de Mahdia', 'Gouvernorat de Mahdia', 1, NOW(6), NOW(6), 1, 1),
(2473637, 228, 'kef', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Kef', 'Gouvernorat de Kef', 'Gouvernorat de Kef', 'Gouvernorat de Kef', 'Gouvernorat de Kef', 1, NOW(6), NOW(6), 1, 1),
(6201192, 228, 'manouba', NULL, NULL, '000', 'TN-000', 'TN-000', '+216', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_tn' AND id_country = 228), 'Manouba', 'Manouba', 'Manouba', 'Manouba', 'Manouba', 1, NOW(6), NOW(6), 1, 1);