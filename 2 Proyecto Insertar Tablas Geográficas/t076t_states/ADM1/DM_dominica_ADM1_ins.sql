-- =============================================
-- Script de inserción para DOMINICA (DM)
-- Archivo: DM_dominica_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para DOMINICA: Parroquia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'parroquia_dm', 62, 8, 'Parroquia', 'Parish',
    'Parish', 'Parish', 'parish', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de DOMINICA (Parroquias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3575618, 62, 'PET', NULL, NULL, '0', 'DM-PET', 'DM-PET', '+1-767', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_dm' AND id_country = 62), 'saint peter', 'Saint Peter', 'Saint Peter Parish', 'Saint Peter', 'saint peter', 1, NOW(6), NOW(6), 1, 1),
(3575619, 62, 'POL', NULL, NULL, '0', 'DM-POL', 'DM-POL', '+1-767', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_dm' AND id_country = 62), 'saint paul', 'Saint Paul', 'Saint Paul Parish', 'Saint Paul', 'saint paul', 1, NOW(6), NOW(6), 1, 1),
(3575620, 62, 'PAT', NULL, NULL, '0', 'DM-PAT', 'DM-PAT', '+1-767', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_dm' AND id_country = 62), 'saint patrick', 'Saint Patrick', 'Saint Patrick Parish', 'Saint Patrick', 'saint patrick', 1, NOW(6), NOW(6), 1, 1),
(3575621, 62, 'MAR', NULL, NULL, '0', 'DM-MAR', 'DM-MAR', '+1-767', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_dm' AND id_country = 62), 'saint mark', 'Saint Mark', 'Saint Mark Parish', 'Saint Mark', 'saint mark', 1, NOW(6), NOW(6), 1, 1),
(3575622, 62, 'LUK', NULL, NULL, '0', 'DM-LUK', 'DM-LUK', '+1-767', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_dm' AND id_country = 62), 'saint luke', 'Saint Luke', 'Saint Luke Parish', 'Saint Luke', 'saint luke', 1, NOW(6), NOW(6), 1, 1),
(3575625, 62, 'JOS', NULL, NULL, '0', 'DM-JOS', 'DM-JOS', '+1-767', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_dm' AND id_country = 62), 'saint joseph', 'Saint Joseph', 'Saint Joseph Parish', 'Saint Joseph', 'saint joseph', 1, NOW(6), NOW(6), 1, 1),
(3575626, 62, 'JOH', NULL, NULL, '0', 'DM-JOH', 'DM-JOH', '+1-767', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_dm' AND id_country = 62), 'saint john', 'Saint John', 'Saint John Parish', 'Saint John', 'saint john', 1, NOW(6), NOW(6), 1, 1),
(3575628, 62, 'GEO', NULL, NULL, '0', 'DM-GEO', 'DM-GEO', '+1-767', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_dm' AND id_country = 62), 'saint george', 'Saint George', 'Saint George Parish', 'Saint George', 'saint george', 1, NOW(6), NOW(6), 1, 1),
(3575630, 62, 'DAV', NULL, NULL, '0', 'DM-DAV', 'DM-DAV', '+1-767', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_dm' AND id_country = 62), 'saint david', 'Saint David', 'Saint David Parish', 'Saint David', 'saint david', 1, NOW(6), NOW(6), 1, 1),
(3575632, 62, 'AND', NULL, NULL, '0', 'DM-AND', 'DM-AND', '+1-767', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_dm' AND id_country = 62), 'saint andrew', 'Saint Andrew', 'Saint Andrew Parish', 'Saint Andrew', 'saint andrew', 1, NOW(6), NOW(6), 1, 1);