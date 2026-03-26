-- =============================================
-- Script de inserción para BENÍN (BJ)
-- Archivo: BJ_benin_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BENÍN: Departamento
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'departamento_bj', 24, 8, 'Departamento', 'Department',
    'Department', 'Département', 'departement', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BENÍN (Departamentos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2390719, 24, 'ZO', NULL, NULL, '0', 'BJ-ZO', 'BJ-ZO', '+229', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bj' AND id_country = 24), 'zou', 'Zou', 'Zou Department', 'Zou Department', 'zou', 1, NOW(6), NOW(6), 1, 1),
(2392325, 24, 'OU', NULL, NULL, '0', 'BJ-OU', 'BJ-OU', '+229', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bj' AND id_country = 24), 'ouémé', 'Ouémé', 'Ouémé Department', 'Département de l''Ouémé', 'oueme', 1, NOW(6), NOW(6), 1, 1),
(2392716, 24, 'MO', NULL, NULL, '0', 'BJ-MO', 'BJ-MO', '+229', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bj' AND id_country = 24), 'mono', 'Mono', 'Mono Department', 'Mono', 'mono', 1, NOW(6), NOW(6), 1, 1),
(2394992, 24, 'BO', NULL, NULL, '0', 'BJ-BO', 'BJ-BO', '+229', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bj' AND id_country = 24), 'borgou', 'Borgou', 'Borgou Department', 'Borgou Department', 'borgou', 1, NOW(6), NOW(6), 1, 1),
(2395504, 24, 'AL', NULL, NULL, '0', 'BJ-AL', 'BJ-AL', '+229', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bj' AND id_country = 24), 'atlántico', 'Atlantique', 'Atlantique Department', 'Atlantique Department', 'atlantique', 1, NOW(6), NOW(6), 1, 1),
(2395524, 24, 'AK', NULL, NULL, '0', 'BJ-AK', 'BJ-AK', '+229', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bj' AND id_country = 24), 'atakora', 'Atakora', 'Atakora Department', 'Atakora Department', 'atakora', 1, NOW(6), NOW(6), 1, 1),
(2597271, 24, 'AL', NULL, NULL, '0', 'BJ-AL', 'BJ-AL', '+229', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bj' AND id_country = 24), 'alibori', 'Alibori', 'Alibori Department', 'Alibori', 'alibori', 1, NOW(6), NOW(6), 1, 1),
(2597272, 24, 'CO', NULL, NULL, '0', 'BJ-CO', 'BJ-CO', '+229', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bj' AND id_country = 24), 'colinas', 'Collines', 'Collines Department', 'Collines Department', 'collines', 1, NOW(6), NOW(6), 1, 1),
(2597273, 24, 'KO', NULL, NULL, '0', 'BJ-KO', 'BJ-KO', '+229', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bj' AND id_country = 24), 'kouffo', 'Kouffo', 'Kouffo Department', 'Kouffo Department', 'kouffo', 1, NOW(6), NOW(6), 1, 1),
(2597274, 24, 'DO', NULL, NULL, '0', 'BJ-DO', 'BJ-DO', '+229', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bj' AND id_country = 24), 'donga', 'Donga', 'Donga Department', 'Donga', 'donga', 1, NOW(6), NOW(6), 1, 1),
(2597275, 24, 'LI', NULL, NULL, '0', 'BJ-LI', 'BJ-LI', '+229', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bj' AND id_country = 24), 'litoral', 'Littoral', 'Littoral Department', 'Littoral', 'littoral', 1, NOW(6), NOW(6), 1, 1),
(2597277, 24, 'PL', NULL, NULL, '0', 'BJ-PL', 'BJ-PL', '+229', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bj' AND id_country = 24), 'meseta', 'Plateau', 'Plateau Department', 'Plateau Department', 'plateau', 1, NOW(6), NOW(6), 1, 1);