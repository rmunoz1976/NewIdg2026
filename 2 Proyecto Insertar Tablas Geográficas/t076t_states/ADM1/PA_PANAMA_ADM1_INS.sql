-- Insertar tipo de división geográfica ADM1 para Panamá: Provincia / Comarca
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_pa', 170, 8, 'provincia', 'province', 
    'Province', 'Provincia', 'Provincia', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Panamá (Provincias y Comarcas)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(3700159, 170, 'PA-9', NULL, NULL, '0', 'PA-9', 'PA-9', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'veraguas', 'Veraguas', 'Veraguas', 'Provincia de Veraguas', 'Veraguas', 1, NOW(6), NOW(6), 1, 1),
(3701537, 170, 'PA-5', NULL, NULL, '0', 'PA-5', 'PA-5', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'guna yala', 'Guna Yala', 'Guna Yala', 'Guna Yala', 'Guna Yala', 1, NOW(6), NOW(6), 1, 1),
(3703433, 170, 'PA-8', NULL, NULL, '0', 'PA-8', 'PA-8', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'panamá', 'Panamá', 'Panamá', 'Provincia de Panamá', 'Panamá', 1, NOW(6), NOW(6), 1, 1),
(3704961, 170, 'PA-7', NULL, NULL, '0', 'PA-7', 'PA-7', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'los santos', 'Los Santos', 'Los Santos', 'Provincia de Los Santos', 'Los Santos', 1, NOW(6), NOW(6), 1, 1),
(3708710, 170, 'PA-6', NULL, NULL, '0', 'PA-6', 'PA-6', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'herrera', 'Herrera', 'Herrera', 'Provincia de Herrera', 'Herrera', 1, NOW(6), NOW(6), 1, 1),
(3711671, 170, 'PA-5', NULL, NULL, '0', 'PA-5', 'PA-5', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'darién', 'Darién', 'Darién', 'Provincia del Darién', 'Darién', 1, NOW(6), NOW(6), 1, 1),
(3712073, 170, 'PA-3', NULL, NULL, '0', 'PA-3', 'PA-3', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'colón', 'Colón', 'Colón', 'Provincia de Colón', 'Colón', 1, NOW(6), NOW(6), 1, 1),
(3712162, 170, 'PA-2', NULL, NULL, '0', 'PA-2', 'PA-2', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'coclé', 'Coclé', 'Coclé', 'Provincia de Coclé', 'Coclé', 1, NOW(6), NOW(6), 1, 1),
(3712410, 170, 'PA-1', NULL, NULL, '0', 'PA-1', 'PA-1', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'chiriquí', 'Chiriquí', 'Chiriquí', 'Provincia de Chiriquí', 'Chiriquí', 1, NOW(6), NOW(6), 1, 1),
(3713954, 170, 'PA-1', NULL, NULL, '0', 'PA-1', 'PA-1', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'bocas del toro', 'Bocas del Toro', 'Bocas del Toro', 'Provincia de Bocas del Toro', 'Bocas del Toro', 1, NOW(6), NOW(6), 1, 1),
(7303686, 170, 'PA-5', NULL, NULL, '0', 'PA-5', 'PA-5', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'emberá-wounaan', 'Emberá-Wounaan', 'Emberá-Wounaan', 'Emberá-Wounaan', 'Emberá-Wounaan', 1, NOW(6), NOW(6), 1, 1),
(7303688, 170, 'PA-5', NULL, NULL, '0', 'PA-5', 'PA-5', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'ngöbe-buglé', 'Ngöbe-Buglé', 'Ngöbe-Buglé', 'Ngöbe-Buglé', 'Ngöbe-Buglé', 1, NOW(6), NOW(6), 1, 1),
(11353126, 170, 'PA-8', NULL, NULL, '0', 'PA-8', 'PA-8', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'panamá oeste', 'Panamá Oeste', 'Panamá Oeste', 'Panamá Oeste', 'Panamá Oeste', 1, NOW(6), NOW(6), 1, 1),
(12508964, 170, 'PA-5', NULL, NULL, '0', 'PA-5', 'PA-5', '+507', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pa' AND id_country = 170), 'naso tjër di', 'Naso Tjër Di', 'Naso Tjër Di', 'Naso Tjër Di', 'Naso Tjër Di', 1, NOW(6), NOW(6), 1, 1);