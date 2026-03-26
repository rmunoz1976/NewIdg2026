-- =============================================
-- Script de inserción para BURKINA FASO (BF)
-- Archivo: BF_burkina_faso_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BURKINA FASO: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_bf', 37, 8, 'Región', 'Region',
    'Region', 'Région', 'region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BURKINA FASO (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(6930701, 37, '01', NULL, NULL, '0', 'BF-01', 'BF-01', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'bucle del mouhoun', 'Boucle du Mouhoun', 'Boucle du Mouhoun Region', 'Boucle du Mouhoun', 'boucle du mouhoun', 1, NOW(6), NOW(6), 1, 1),
(6930703, 37, '02', NULL, NULL, '0', 'BF-02', 'BF-02', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'cascadas', 'Cascades', 'Cascades Region', 'Cascades', 'cascades', 1, NOW(6), NOW(6), 1, 1),
(6930704, 37, '03', NULL, NULL, '0', 'BF-03', 'BF-03', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'centro', 'Centre', 'Centre Region', 'Centre', 'centre', 1, NOW(6), NOW(6), 1, 1),
(6930705, 37, '04', NULL, NULL, '0', 'BF-04', 'BF-04', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'centro-este', 'Centre-Est', 'Centre-Est Region', 'Centre-Est', 'centre-est', 1, NOW(6), NOW(6), 1, 1),
(6930706, 37, '05', NULL, NULL, '0', 'BF-05', 'BF-05', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'centro-norte', 'Centre-Nord', 'Centre-Nord Region', 'Centre-Nord', 'centre-nord', 1, NOW(6), NOW(6), 1, 1),
(6930707, 37, '06', NULL, NULL, '0', 'BF-06', 'BF-06', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'centro-oeste', 'Centre-Ouest', 'Centre-Ouest Region', 'Centre-Ouest', 'centre-ouest', 1, NOW(6), NOW(6), 1, 1),
(6930708, 37, '07', NULL, NULL, '0', 'BF-07', 'BF-07', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'centro-sur', 'Centre-Sud', 'Centre-Sud Region', 'Centre-Sud', 'centre-sud', 1, NOW(6), NOW(6), 1, 1),
(6930709, 37, '08', NULL, NULL, '0', 'BF-08', 'BF-08', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'este', 'Est', 'Est Region', 'Est', 'est', 1, NOW(6), NOW(6), 1, 1),
(6930710, 37, '09', NULL, NULL, '0', 'BF-09', 'BF-09', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'altas cuencas', 'Hauts-Bassins', 'Hauts-Bassins Region', 'Hauts-Bassins', 'hauts-bassins', 1, NOW(6), NOW(6), 1, 1),
(6930711, 37, '10', NULL, NULL, '0', 'BF-10', 'BF-10', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'norte', 'Nord', 'Nord Region', 'Nord', 'nord', 1, NOW(6), NOW(6), 1, 1),
(6930712, 37, '11', NULL, NULL, '0', 'BF-11', 'BF-11', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'meseta central', 'Plateau-Central', 'Plateau-Central Region', 'Plateau-Central', 'plateau-central', 1, NOW(6), NOW(6), 1, 1),
(6930713, 37, '12', NULL, NULL, '0', 'BF-12', 'BF-12', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'sahel', 'Sahel', 'Sahel Region', 'Sahel', 'sahel', 1, NOW(6), NOW(6), 1, 1),
(6930714, 37, '13', NULL, NULL, '0', 'BF-13', 'BF-13', '+226', (SELECT id FROM t075t_division_types WHERE code = 'region_bf' AND id_country = 37), 'suroeste', 'Sud-Ouest', 'Sud-Ouest Region', 'Sud-Ouest', 'sud-ouest', 1, NOW(6), NOW(6), 1, 1);