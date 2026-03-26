-- =============================================
-- Script de inserción para BELICE (BZ)
-- Archivo: BZ_belice_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BELICE: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_bz', 23, 8, 'Distrito', 'District',
    'District', 'District', 'district', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BELICE (Distritos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3580913, 23, 'TOL', NULL, NULL, '0', 'BZ-TOL', 'BZ-TOL', '+501', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bz' AND id_country = 23), 'toledo', 'Toledo', 'Toledo District', 'Toledo District', 'toledo', 1, NOW(6), NOW(6), 1, 1),
(3580975, 23, 'SC', NULL, NULL, '0', 'BZ-SC', 'BZ-SC', '+501', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bz' AND id_country = 23), 'stann creek', 'Stann Creek', 'Stann Creek District', 'Stann Creek District', 'stann creek', 1, NOW(6), NOW(6), 1, 1),
(3581511, 23, 'OW', NULL, NULL, '0', 'BZ-OW', 'BZ-OW', '+501', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bz' AND id_country = 23), 'orange walk', 'Orange Walk', 'Orange Walk District', 'Orange Walk District', 'orange walk', 1, NOW(6), NOW(6), 1, 1),
(3582302, 23, 'CZ', NULL, NULL, '0', 'BZ-CZ', 'BZ-CZ', '+501', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bz' AND id_country = 23), 'corozal', 'Corozal', 'Corozal District', 'Corozal District', 'corozal', 1, NOW(6), NOW(6), 1, 1),
(3582429, 23, 'CY', NULL, NULL, '0', 'BZ-CY', 'BZ-CY', '+501', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bz' AND id_country = 23), 'cayo', 'Cayo', 'Cayo District', 'Cayo District', 'cayo', 1, NOW(6), NOW(6), 1, 1),
(3582676, 23, 'BZ', NULL, NULL, '0', 'BZ-BZ', 'BZ-BZ', '+501', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bz' AND id_country = 23), 'belice', 'Belize', 'Belize District', 'Belize District', 'belize', 1, NOW(6), NOW(6), 1, 1);