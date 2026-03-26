-- =============================================
-- Script de inserción para FINLANDIA (FI)
-- Archivo: FI_finlandia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para FINLANDIA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_fi', 75, 8, 'Región', 'Region',
    'Region', 'Maakunta', 'maakunta', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de FINLANDIA (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(830603, 75, '19', NULL, NULL, '0', 'FI-19', 'FI-19', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'laponia', 'Lapland', 'Lapland', 'Lappi', 'lappi', 1, NOW(6), NOW(6), 1, 1),
(830664, 75, '05', NULL, NULL, '0', 'FI-05', 'FI-05', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'kainuu', 'Kainuu', 'Kainuu', 'Kainuu', 'kainuu', 1, NOW(6), NOW(6), 1, 1),
(830667, 75, '14', NULL, NULL, '0', 'FI-14', 'FI-14', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'ostrobotnia del norte', 'North Ostrobothnia', 'North Ostrobothnia', 'Pohjois-Pohjanmaa', 'pohjois pohjanmaa', 1, NOW(6), NOW(6), 1, 1),
(830675, 75, '07', NULL, NULL, '0', 'FI-07', 'FI-07', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'ostrobotnia central', 'Central Ostrobothnia', 'Central Ostrobothnia', 'Keski-Pohjanmaa', 'keski pohjanmaa', 1, NOW(6), NOW(6), 1, 1),
(830676, 75, '12', NULL, NULL, '0', 'FI-12', 'FI-12', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'ostrobotnia', 'Ostrobothnia', 'Ostrobothnia', 'Pohjanmaa', 'pohjanmaa', 1, NOW(6), NOW(6), 1, 1),
(830682, 75, '03', NULL, NULL, '0', 'FI-03', 'FI-03', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'ostrobotnia del sur', 'South Ostrobothnia', 'South Ostrobothnia', 'Etelä-Pohjanmaa', 'etela pohjanmaa', 1, NOW(6), NOW(6), 1, 1),
(830685, 75, '08', NULL, NULL, '0', 'FI-08', 'FI-08', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'finlandia central', 'Central Finland', 'Central Finland', 'Keski-Suomi', 'keski suomi', 1, NOW(6), NOW(6), 1, 1),
(830686, 75, '13', NULL, NULL, '0', 'FI-13', 'FI-13', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'carelia del norte', 'North Karelia', 'North Karelia', 'Pohjois-Karjala', 'pohjois karjala', 1, NOW(6), NOW(6), 1, 1),
(830690, 75, '15', NULL, NULL, '0', 'FI-15', 'FI-15', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'savo del norte', 'North Savo', 'North Savo', 'Pohjois-Savo', 'pohjois savo', 1, NOW(6), NOW(6), 1, 1),
(830695, 75, '04', NULL, NULL, '0', 'FI-04', 'FI-04', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'savo del sur', 'South Savo', 'South Savo', 'Etelä-Savo', 'etela savo', 1, NOW(6), NOW(6), 1, 1),
(830699, 75, '02', NULL, NULL, '0', 'FI-02', 'FI-02', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'carelia del sur', 'South Karelia', 'South Karelia', 'Etelä-Karjala', 'etela karjala', 1, NOW(6), NOW(6), 1, 1),
(830703, 75, '09', NULL, NULL, '0', 'FI-09', 'FI-09', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'kymenlaakso', 'Kymenlaakso', 'Kymenlaakso', 'Kymenlaakso', 'kymenlaakso', 1, NOW(6), NOW(6), 1, 1),
(830704, 75, '11', NULL, NULL, '0', 'FI-11', 'FI-11', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'pirkanmaa', 'Pirkanmaa', 'Pirkanmaa', 'Pirkanmaa', 'pirkanmaa', 1, NOW(6), NOW(6), 1, 1),
(830705, 75, '06', NULL, NULL, '0', 'FI-06', 'FI-06', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'tavastia propia', 'Kanta-Häme', 'Kanta-Häme', 'Kanta-Häme', 'kanta hame', 1, NOW(6), NOW(6), 1, 1),
(830708, 75, '01', NULL, NULL, '0', 'FI-01', 'FI-01', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'finlandia del suroeste', 'Southwest Finland', 'Southwest Finland', 'Varsinais-Suomi', 'varsinais suomi', 1, NOW(6), NOW(6), 1, 1),
(830709, 75, '18', NULL, NULL, '0', 'FI-18', 'FI-18', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'uusimaa', 'Uusimaa', 'Uusimaa', 'Uusimaa', 'uusimaa', 1, NOW(6), NOW(6), 1, 1),
(831040, 75, '16', NULL, NULL, '0', 'FI-16', 'FI-16', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'päijät-häme', 'Päijät-Häme', 'Päijät-Häme', 'Päijät-Häme', 'paijat hame', 1, NOW(6), NOW(6), 1, 1),
(831041, 75, '17', NULL, NULL, '0', 'FI-17', 'FI-17', '+358', (SELECT id FROM t075t_division_types WHERE code = 'region_fi' AND id_country = 75), 'satakunta', 'Satakunta', 'Satakunta', 'Satakunta', 'satakunta', 1, NOW(6), NOW(6), 1, 1);