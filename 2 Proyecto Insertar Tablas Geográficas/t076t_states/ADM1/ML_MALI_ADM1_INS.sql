-- Insertar tipo de división geográfica ADM1 para Malí: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_ml', 135, 8, 'región', 'region', 
    'Region', 'Région', 'Région', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Malí (Regiones y Distrito de Bamako)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2449066, 135, 'ML-6', NULL, NULL, '0', 'ML-6', 'ML-6', '+223', (SELECT id FROM t075t_division_types WHERE code = 'region_ml' AND id_country = 135), 'tombuctú', 'Tombouctou Region', 'Tombouctou', 'Tombouctou Region', 'Tombouctou', 1, NOW(6), NOW(6), 1, 1),
(2451184, 135, 'ML-3', NULL, NULL, '0', 'ML-3', 'ML-3', '+223', (SELECT id FROM t075t_division_types WHERE code = 'region_ml' AND id_country = 135), 'sikasso', 'Sikasso Region', 'Sikasso', 'Sikasso Region', 'Sikasso', 1, NOW(6), NOW(6), 1, 1),
(2451477, 135, 'ML-4', NULL, NULL, '0', 'ML-4', 'ML-4', '+223', (SELECT id FROM t075t_division_types WHERE code = 'region_ml' AND id_country = 135), 'ségou', 'Ségou Region', 'Ségou', 'Ségou Region', 'Ségou', 1, NOW(6), NOW(6), 1, 1),
(2453347, 135, 'ML-5', NULL, NULL, '0', 'ML-5', 'ML-5', '+223', (SELECT id FROM t075t_division_types WHERE code = 'region_ml' AND id_country = 135), 'mopti', 'Mopti Region', 'Mopti', 'Mopti Region', 'Mopti', 1, NOW(6), NOW(6), 1, 1),
(2454532, 135, 'ML-2', NULL, NULL, '0', 'ML-2', 'ML-2', '+223', (SELECT id FROM t075t_division_types WHERE code = 'region_ml' AND id_country = 135), 'kulikoró', 'Koulikoro Region', 'Koulikoro', 'Koulikoro Region', 'Koulikoro', 1, NOW(6), NOW(6), 1, 1),
(2455517, 135, 'ML-1', NULL, NULL, '0', 'ML-1', 'ML-1', '+223', (SELECT id FROM t075t_division_types WHERE code = 'region_ml' AND id_country = 135), 'kayes', 'Kayes Region', 'Kayes', 'Kayes Region', 'Kayes', 1, NOW(6), NOW(6), 1, 1),
(2457161, 135, 'ML-7', NULL, NULL, '0', 'ML-7', 'ML-7', '+223', (SELECT id FROM t075t_division_types WHERE code = 'region_ml' AND id_country = 135), 'gao', 'Gao Region', 'Gao', 'Gao Region', 'Gao', 1, NOW(6), NOW(6), 1, 1),
(2460594, 135, 'ML-BKO', NULL, NULL, '0', 'ML-BKO', 'ML-BKO', '+223', (SELECT id FROM t075t_division_types WHERE code = 'region_ml' AND id_country = 135), 'bamako', 'Bamako Region', 'Bamako', 'Bamako Region', 'Bamako', 1, NOW(6), NOW(6), 1, 1),
(2597449, 135, 'ML-8', NULL, NULL, '0', 'ML-8', 'ML-8', '+223', (SELECT id FROM t075t_division_types WHERE code = 'region_ml' AND id_country = 135), 'kidal', 'Kidal Region', 'Kidal', 'Kidal Region', 'Kidal', 1, NOW(6), NOW(6), 1, 1),
(12070575, 135, 'ML-10', NULL, NULL, '0', 'ML-10', 'ML-10', '+223', (SELECT id FROM t075t_division_types WHERE code = 'region_ml' AND id_country = 135), 'taoudenit', 'Taoudénit Region', 'Taoudénit', 'Taoudénit Region', 'Taoudénit', 1, NOW(6), NOW(6), 1, 1),
(12070577, 135, 'ML-9', NULL, NULL, '0', 'ML-9', 'ML-9', '+223', (SELECT id FROM t075t_division_types WHERE code = 'region_ml' AND id_country = 135), 'ménaka', 'Ménaka Region', 'Ménaka', 'Ménaka Region', 'Ménaka', 1, NOW(6), NOW(6), 1, 1);