-- =============================================
-- Script de inserción para GRANADA (GD)
-- Archivo: GD_granada_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GRANADA: Parroquia / Dependencia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'parroquia_gd', 88, 8, 'Parroquia', 'Parish',
    'Parish', 'Parish', 'parish', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GRANADA (Parroquias y Dependencias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3579907, 88, 'PAT', NULL, NULL, '0', 'GD-PAT', 'GD-PAT', '+1-473', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gd' AND id_country = 88), 'saint patrick', 'Saint Patrick', 'Saint Patrick Parish', 'Saint Patrick', 'saint patrick', 1, NOW(6), NOW(6), 1, 1),
(3579913, 88, 'MAR', NULL, NULL, '0', 'GD-MAR', 'GD-MAR', '+1-473', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gd' AND id_country = 88), 'saint mark', 'Saint Mark', 'Saint Mark Parish', 'Saint Mark', 'saint mark', 1, NOW(6), NOW(6), 1, 1),
(3579919, 88, 'JOH', NULL, NULL, '0', 'GD-JOH', 'GD-JOH', '+1-473', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gd' AND id_country = 88), 'saint john', 'Saint John', 'Saint John Parish', 'Saint John', 'saint john', 1, NOW(6), NOW(6), 1, 1),
(3579926, 88, 'GEO', NULL, NULL, '0', 'GD-GEO', 'GD-GEO', '+1-473', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gd' AND id_country = 88), 'saint george', 'Saint George', 'Saint George Parish', 'Saint George', 'saint george', 1, NOW(6), NOW(6), 1, 1),
(3579932, 88, 'DAV', NULL, NULL, '0', 'GD-DAV', 'GD-DAV', '+1-473', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gd' AND id_country = 88), 'saint david', 'Saint David', 'Saint David Parish', 'Saint David', 'saint david', 1, NOW(6), NOW(6), 1, 1),
(3579938, 88, 'AND', NULL, NULL, '0', 'GD-AND', 'GD-AND', '+1-473', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gd' AND id_country = 88), 'saint andrew', 'Saint Andrew', 'Saint Andrew Parish', 'Saint Andrew', 'saint andrew', 1, NOW(6), NOW(6), 1, 1),
(7303836, 88, 'CAR', NULL, NULL, '0', 'GD-CAR', 'GD-CAR', '+1-473', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gd' AND id_country = 88), 'carriacou y petite martinique', 'Carriacou and Petite Martinique', 'Carriacou and Petite Martinique', 'Carriacou and Petite Martinique', 'carriacou and petite martinique', 1, NOW(6), NOW(6), 1, 1);