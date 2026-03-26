-- =============================================
-- Script de inserción para ISLAS COOK (CK)
-- Archivo: CK_islas_cook_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para ISLAS COOK: Isla
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'isla_ck', 52, 8, 'Isla', 'Island',
    'Island', 'Island', 'island', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ISLAS COOK (Islas)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(11695124, 52, 'AI', NULL, NULL, '0', 'CK-AI', 'CK-AI', '+682', (SELECT id FROM t075t_division_types WHERE code = 'isla_ck' AND id_country = 52), 'aitutaki', 'Aitutaki', 'Aitutaki', 'Aitutaki', 'aitutaki', 1, NOW(6), NOW(6), 1, 1),
(11695126, 52, 'AT', NULL, NULL, '0', 'CK-AT', 'CK-AT', '+682', (SELECT id FROM t075t_division_types WHERE code = 'isla_ck' AND id_country = 52), 'atiu', 'Atiu', 'Atiu', 'Atiu', 'atiu', 1, NOW(6), NOW(6), 1, 1),
(11695127, 52, 'MG', NULL, NULL, '0', 'CK-MG', 'CK-MG', '+682', (SELECT id FROM t075t_division_types WHERE code = 'isla_ck' AND id_country = 52), 'mangaia', 'Mangaia', 'Mangaia', 'Mangaia', 'mangaia', 1, NOW(6), NOW(6), 1, 1),
(11695384, 52, 'MH', NULL, NULL, '0', 'CK-MH', 'CK-MH', '+682', (SELECT id FROM t075t_division_types WHERE code = 'isla_ck' AND id_country = 52), 'manihiki', 'Manihiki', 'Manihiki', 'Manihiki', 'manihiki', 1, NOW(6), NOW(6), 1, 1),
(11695385, 52, 'MK', NULL, NULL, '0', 'CK-MK', 'CK-MK', '+682', (SELECT id FROM t075t_division_types WHERE code = 'isla_ck' AND id_country = 52), 'ma''uke', 'Ma''uke', 'Ma''uke', 'Ma''uke', 'mauke', 1, NOW(6), NOW(6), 1, 1),
(11695386, 52, 'MT', NULL, NULL, '0', 'CK-MT', 'CK-MT', '+682', (SELECT id FROM t075t_division_types WHERE code = 'isla_ck' AND id_country = 52), 'mitiaro', 'Mitiaro', 'Mitiaro', 'Mitiaro', 'mitiaro', 1, NOW(6), NOW(6), 1, 1),
(11695387, 52, 'PA', NULL, NULL, '0', 'CK-PA', 'CK-PA', '+682', (SELECT id FROM t075t_division_types WHERE code = 'isla_ck' AND id_country = 52), 'palmerston', 'Palmerston', 'Palmerston', 'Palmerston', 'palmerston', 1, NOW(6), NOW(6), 1, 1),
(11695388, 52, 'PE', NULL, NULL, '0', 'CK-PE', 'CK-PE', '+682', (SELECT id FROM t075t_division_types WHERE code = 'isla_ck' AND id_country = 52), 'penrhyn', 'Penrhyn', 'Penrhyn', 'Penrhyn', 'penrhyn', 1, NOW(6), NOW(6), 1, 1),
(11695389, 52, 'PU', NULL, NULL, '0', 'CK-PU', 'CK-PU', '+682', (SELECT id FROM t075t_division_types WHERE code = 'isla_ck' AND id_country = 52), 'pukapuka', 'Pukapuka', 'Pukapuka', 'Pukapuka', 'pukapuka', 1, NOW(6), NOW(6), 1, 1),
(11695390, 52, 'RA', NULL, NULL, '0', 'CK-RA', 'CK-RA', '+682', (SELECT id FROM t075t_division_types WHERE code = 'isla_ck' AND id_country = 52), 'rakahanga', 'Rakahanga', 'Rakahanga', 'Rakahanga', 'rakahanga', 1, NOW(6), NOW(6), 1, 1),
(11695425, 52, 'RR', NULL, NULL, '0', 'CK-RR', 'CK-RR', '+682', (SELECT id FROM t075t_division_types WHERE code = 'isla_ck' AND id_country = 52), 'rarotonga', 'Rarotonga', 'Rarotonga', 'Rarotonga', 'rarotonga', 1, NOW(6), NOW(6), 1, 1);