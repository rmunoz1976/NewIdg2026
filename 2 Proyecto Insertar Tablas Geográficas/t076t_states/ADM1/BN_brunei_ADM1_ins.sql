-- =============================================
-- Script de inserción para BRUNÉI (BN)
-- Archivo: BN_brunei_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BRUNÉI: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_bn', 35, 8, 'Distrito', 'District',
    'District', 'Daerah', 'daerah', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BRUNÉI (Distritos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(1820068, 35, 'TU', NULL, NULL, '0', 'BN-TU', 'BN-TU', '+673', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bn' AND id_country = 35), 'tutong', 'Tutong', 'Tutong District', 'Tutong', 'tutong', 1, NOW(6), NOW(6), 1, 1),
(1820106, 35, 'TE', NULL, NULL, '0', 'BN-TE', 'BN-TE', '+673', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bn' AND id_country = 35), 'temburong', 'Temburong', 'Temburong District', 'Temburong', 'temburong', 1, NOW(6), NOW(6), 1, 1),
(1820818, 35, 'BM', NULL, NULL, '0', 'BN-BM', 'BN-BM', '+673', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bn' AND id_country = 35), 'brunei y muara', 'Brunei and Muara', 'Brunei and Muara District', 'Daerah Brunei dan Muara', 'brunei dan muara', 1, NOW(6), NOW(6), 1, 1),
(1820869, 35, 'BE', NULL, NULL, '0', 'BN-BE', 'BN-BE', '+673', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bn' AND id_country = 35), 'belait', 'Belait', 'Belait District', 'Belait', 'belait', 1, NOW(6), NOW(6), 1, 1);