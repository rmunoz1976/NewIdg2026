-- Insertar tipo de división geográfica ADM1 para Mauritania: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_mr', 139, 8, 'región', 'region', 
    'Region', 'ولاية', 'wilaya', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Mauritania (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2375742, 139, 'MR-06', NULL, NULL, '0', 'MR-06', 'MR-06', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'trarza', 'Trarza', 'Trarza', 'Wilaya du Trarza', 'Trarza', 1, NOW(6), NOW(6), 1, 1),
(2375989, 139, 'MR-11', NULL, NULL, '0', 'MR-11', 'MR-11', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'tiris zemmour', 'Tiris Zemmour', 'Tiris Zemmour', 'Tiris Zemmour', 'Tiris Zemmour', 1, NOW(6), NOW(6), 1, 1),
(2376551, 139, 'MR-09', NULL, NULL, '0', 'MR-09', 'MR-09', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'tagant', 'Tagant', 'Tagant', 'Tagant', 'Tagant', 1, NOW(6), NOW(6), 1, 1),
(2378903, 139, 'MR-12', NULL, NULL, '0', 'MR-12', 'MR-12', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'inchiri', 'Inchiri', 'Inchiri', 'Inchiri', 'Inchiri', 1, NOW(6), NOW(6), 1, 1),
(2379024, 139, 'MR-02', NULL, NULL, '0', 'MR-02', 'MR-02', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'hodh el gharbi', 'Hodh El Gharbi', 'Hodh El Gharbi', 'Hodh el Gharbi', 'Hodh El Gharbi', 1, NOW(6), NOW(6), 1, 1),
(2379025, 139, 'MR-01', NULL, NULL, '0', 'MR-01', 'MR-01', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'hodh ech chargui', 'Hodh Ech Chargui', 'Hodh Ech Chargui', 'Hodh ech Chargui', 'Hodh Ech Chargui', 1, NOW(6), NOW(6), 1, 1),
(2379216, 139, 'MR-10', NULL, NULL, '0', 'MR-10', 'MR-10', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'guidimaka', 'Guidimaka', 'Guidimaka', 'Guidimaka', 'Guidimaka', 1, NOW(6), NOW(6), 1, 1),
(2379384, 139, 'MR-04', NULL, NULL, '0', 'MR-04', 'MR-04', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'gorgol', 'Gorgol', 'Gorgol', 'Gorgol', 'Gorgol', 1, NOW(6), NOW(6), 1, 1),
(2380426, 139, 'MR-08', NULL, NULL, '0', 'MR-08', 'MR-08', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'dakhlet nouadhibou', 'Dakhlet Nouadhibou', 'Dakhlet Nouadhibou', 'Dakhlet Nouadhibou', 'Dakhlet Nouadhibou', 1, NOW(6), NOW(6), 1, 1),
(2380635, 139, 'MR-05', NULL, NULL, '0', 'MR-05', 'MR-05', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'brakna', 'Brakna', 'Brakna', 'Brakna', 'Brakna', 1, NOW(6), NOW(6), 1, 1),
(2381344, 139, 'MR-03', NULL, NULL, '0', 'MR-03', 'MR-03', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'assaba', 'Assaba', 'Assaba', 'Assaba', 'Assaba', 1, NOW(6), NOW(6), 1, 1),
(2381972, 139, 'MR-07', NULL, NULL, '0', 'MR-07', 'MR-07', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'adrar', 'Adrar', 'Adrar', 'Adrar', 'Adrar', 1, NOW(6), NOW(6), 1, 1),
(11496391, 139, 'MR-13', NULL, NULL, '0', 'MR-13', 'MR-13', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'nuakchot oeste', 'Nouakchott Ouest', 'Nouakchott Ouest', 'Nouakchott Ouest', 'Nouakchott Ouest', 1, NOW(6), NOW(6), 1, 1),
(11496392, 139, 'MR-14', NULL, NULL, '0', 'MR-14', 'MR-14', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'nuakchot norte', 'Nouakchott Nord', 'Nouakchott Nord', 'Nouakchott Nord', 'Nouakchott Nord', 1, NOW(6), NOW(6), 1, 1),
(11496393, 139, 'MR-15', NULL, NULL, '0', 'MR-15', 'MR-15', '+222', (SELECT id FROM t075t_division_types WHERE code = 'region_mr' AND id_country = 139), 'nuakchot sur', 'Nouakchott Sud', 'Nouakchott Sud', 'Nouakchott Sud', 'Nouakchott Sud', 1, NOW(6), NOW(6), 1, 1);