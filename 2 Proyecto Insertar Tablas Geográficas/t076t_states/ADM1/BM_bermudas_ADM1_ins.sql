-- =============================================
-- Script de inserción para BERMUDAS (BM)
-- Archivo: BM_bermudas_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BERMUDAS: Parroquia / Municipio
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'parroquia_bm', 25, 8, 'Parroquia', 'Parish',
    'Parish', 'Parish', 'parish', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BERMUDAS (Parroquias y Municipios)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3572972, 25, 'WAR', NULL, NULL, '0', 'BM-WAR', 'BM-WAR', '+1-441', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bm' AND id_country = 25), 'warwick', 'Warwick', 'Warwick Parish', 'Warwick Parish', 'warwick', 1, NOW(6), NOW(6), 1, 1),
(3573026, 25, 'SOU', NULL, NULL, '0', 'BM-SOU', 'BM-SOU', '+1-441', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bm' AND id_country = 25), 'southampton', 'Southampton', 'Southampton Parish', 'Southampton Parish', 'southampton', 1, NOW(6), NOW(6), 1, 1),
(3573031, 25, 'SMI', NULL, NULL, '0', 'BM-SMI', 'BM-SMI', '+1-441', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bm' AND id_country = 25), 'smith', 'Smith''s', 'Smith''s Parish', 'Smith''s Parish', 'smiths', 1, NOW(6), NOW(6), 1, 1),
(3573050, 25, 'SAN', NULL, NULL, '0', 'BM-SAN', 'BM-SAN', '+1-441', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bm' AND id_country = 25), 'sandys', 'Sandys', 'Sandys Parish', 'Sandys Parish', 'sandys', 1, NOW(6), NOW(6), 1, 1),
(3573057, 25, 'SGE', NULL, NULL, '0', 'BM-SGE', 'BM-SGE', '+1-441', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bm' AND id_country = 25), 'saint george', 'Saint George''s', 'Saint George''s Parish', 'Saint George''s Parish', 'saint georges', 1, NOW(6), NOW(6), 1, 1),
(3573062, 25, 'STG', NULL, NULL, '0', 'BM-STG', 'BM-STG', '+1-441', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bm' AND id_country = 25), 'saint george', 'Saint George', 'Saint George', 'Saint George', 'saint george', 1, NOW(6), NOW(6), 1, 1),
(3573095, 25, 'PEM', NULL, NULL, '0', 'BM-PEM', 'BM-PEM', '+1-441', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bm' AND id_country = 25), 'pembroke', 'Pembroke', 'Pembroke Parish', 'Pembroke Parish', 'pembroke', 1, NOW(6), NOW(6), 1, 1),
(3573103, 25, 'PAG', NULL, NULL, '0', 'BM-PAG', 'BM-PAG', '+1-441', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bm' AND id_country = 25), 'paget', 'Paget', 'Paget Parish', 'Paget Parish', 'paget', 1, NOW(6), NOW(6), 1, 1),
(3573195, 25, 'HAM', NULL, NULL, '0', 'BM-HAM', 'BM-HAM', '+1-441', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bm' AND id_country = 25), 'hamilton', 'Hamilton', 'Hamilton Parish', 'Hamilton Parish', 'hamilton', 1, NOW(6), NOW(6), 1, 1),
(3573198, 25, 'HAMC', NULL, NULL, '0', 'BM-HAMC', 'BM-HAMC', '+1-441', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bm' AND id_country = 25), 'ciudad de hamilton', 'Hamilton', 'Hamilton City', 'Hamilton City', 'hamilton city', 1, NOW(6), NOW(6), 1, 1),
(3573251, 25, 'DEV', NULL, NULL, '0', 'BM-DEV', 'BM-DEV', '+1-441', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bm' AND id_country = 25), 'devonshire', 'Devonshire', 'Devonshire Parish', 'Devonshire Parish', 'devonshire', 1, NOW(6), NOW(6), 1, 1);