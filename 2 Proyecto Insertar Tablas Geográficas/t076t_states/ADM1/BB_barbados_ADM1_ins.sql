-- =============================================
-- Script de inserción para BARBADOS (BB)
-- Archivo: BB_barbados_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BARBADOS: Parroquia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'parroquia_bb', 20, 8, 'Parroquia', 'Parish',
    'Parish', 'Parish', 'Parish', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BARBADOS (Parroquias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3373551, 20, 'TH', NULL, NULL, '0', 'BB-TH', 'BB-TH', '+1-246', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bb' AND id_country = 20), 'saint thomas', 'Saint Thomas', 'Saint Thomas', 'Saint Thomas', 'saint thomas', 1, NOW(6), NOW(6), 1, 1),
(3373553, 20, 'PH', NULL, NULL, '0', 'BB-PH', 'BB-PH', '+1-246', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bb' AND id_country = 20), 'saint philip', 'Saint Philip', 'Saint Philip', 'Saint Philip', 'saint philip', 1, NOW(6), NOW(6), 1, 1),
(3373554, 20, 'PE', NULL, NULL, '0', 'BB-PE', 'BB-PE', '+1-246', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bb' AND id_country = 20), 'saint peter', 'Saint Peter', 'Saint Peter', 'Saint Peter', 'saint peter', 1, NOW(6), NOW(6), 1, 1),
(3373557, 20, 'MI', NULL, NULL, '0', 'BB-MI', 'BB-MI', '+1-246', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bb' AND id_country = 20), 'saint michael', 'Saint Michael', 'Saint Michael', 'Saint Michael', 'saint michael', 1, NOW(6), NOW(6), 1, 1),
(3373565, 20, 'LU', NULL, NULL, '0', 'BB-LU', 'BB-LU', '+1-246', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bb' AND id_country = 20), 'saint lucy', 'Saint Lucy', 'Saint Lucy', 'Saint Lucy', 'saint lucy', 1, NOW(6), NOW(6), 1, 1),
(3373568, 20, 'JO', NULL, NULL, '0', 'BB-JO', 'BB-JO', '+1-246', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bb' AND id_country = 20), 'saint joseph', 'Saint Joseph', 'Saint Joseph', 'Saint Joseph', 'saint joseph', 1, NOW(6), NOW(6), 1, 1),
(3373569, 20, 'JN', NULL, NULL, '0', 'BB-JN', 'BB-JN', '+1-246', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bb' AND id_country = 20), 'saint john', 'Saint John', 'Saint John', 'Saint John', 'saint john', 1, NOW(6), NOW(6), 1, 1),
(3373570, 20, 'JA', NULL, NULL, '0', 'BB-JA', 'BB-JA', '+1-246', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bb' AND id_country = 20), 'saint james', 'Saint James', 'Saint James', 'Saint James', 'saint james', 1, NOW(6), NOW(6), 1, 1),
(3373572, 20, 'GE', NULL, NULL, '0', 'BB-GE', 'BB-GE', '+1-246', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bb' AND id_country = 20), 'saint george', 'Saint George', 'Saint George', 'Saint George', 'saint george', 1, NOW(6), NOW(6), 1, 1),
(3373580, 20, 'AN', NULL, NULL, '0', 'BB-AN', 'BB-AN', '+1-246', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bb' AND id_country = 20), 'saint andrew', 'Saint Andrew', 'Saint Andrew', 'Saint Andrew', 'saint andrew', 1, NOW(6), NOW(6), 1, 1),
(3373988, 20, 'CC', NULL, NULL, '0', 'BB-CC', 'BB-CC', '+1-246', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_bb' AND id_country = 20), 'christ church', 'Christ Church', 'Christ Church', 'Christ Church', 'christ church', 1, NOW(6), NOW(6), 1, 1);