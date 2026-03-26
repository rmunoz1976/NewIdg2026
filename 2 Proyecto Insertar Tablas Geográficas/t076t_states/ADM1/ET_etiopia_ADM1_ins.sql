-- =============================================
-- Script de inserción para ETIOPÍA (ET)
-- Archivo: ET_etiopia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para ETIOPÍA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_et', 71, 8, 'Región', 'Region',
    'Region', 'ክልል', 'kilil', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ETIOPÍA (Regiones y Ciudades Charter)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(444178, 71, 'AA', NULL, NULL, '0', 'ET-AA', 'ET-AA', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'addis abeba', 'Addis Ababa', 'Addis Ababa', 'Addis Ababa', 'addis ababa', 1, NOW(6), NOW(6), 1, 1),
(444179, 71, 'AF', NULL, NULL, '0', 'ET-AF', 'ET-AF', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'afar', 'Afar', 'Afar Region', 'Afar Region', 'afar', 1, NOW(6), NOW(6), 1, 1),
(444180, 71, 'AM', NULL, NULL, '0', 'ET-AM', 'ET-AM', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'amhara', 'Amhara', 'Amhara Region', 'Amhara Region', 'amhara', 1, NOW(6), NOW(6), 1, 1),
(444181, 71, 'BE', NULL, NULL, '0', 'ET-BE', 'ET-BE', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'benishangul gumuz', 'Benishangul-Gumuz', 'Benishangul-Gumuz Region', 'Benishangul-Gumuz Region', 'benishangul gumuz', 1, NOW(6), NOW(6), 1, 1),
(444182, 71, 'DD', NULL, NULL, '0', 'ET-DD', 'ET-DD', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'dire dawa', 'Dire Dawa', 'Dire Dawa', 'Dire Dawa Region', 'dire dawa', 1, NOW(6), NOW(6), 1, 1),
(444183, 71, 'GA', NULL, NULL, '0', 'ET-GA', 'ET-GA', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'gambela', 'Gambela', 'Gambela Region', 'Gambela Region', 'gambela', 1, NOW(6), NOW(6), 1, 1),
(444184, 71, 'HA', NULL, NULL, '0', 'ET-HA', 'ET-HA', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'harari', 'Harari', 'Harari Region', 'Harari Region', 'harari', 1, NOW(6), NOW(6), 1, 1),
(444185, 71, 'OR', NULL, NULL, '0', 'ET-OR', 'ET-OR', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'oromia', 'Oromia', 'Oromia Region', 'Oromiya Region', 'oromia', 1, NOW(6), NOW(6), 1, 1),
(444186, 71, 'SO', NULL, NULL, '0', 'ET-SO', 'ET-SO', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'somali', 'Somali', 'Somali Region', 'Somali Region', 'somali', 1, NOW(6), NOW(6), 1, 1),
(444187, 71, 'TI', NULL, NULL, '0', 'ET-TI', 'ET-TI', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'tigray', 'Tigray', 'Tigray Region', 'Tigray Region', 'tigray', 1, NOW(6), NOW(6), 1, 1),
(8299784, 71, 'SI', NULL, NULL, '0', 'ET-SI', 'ET-SI', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'sidama', 'Sidama', 'Sidama Region', 'Sidama', 'sidama', 1, NOW(6), NOW(6), 1, 1),
(12902749, 71, 'CE', NULL, NULL, '0', 'ET-CE', 'ET-CE', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'etiopía central', 'Central Ethiopia', 'Central Ethiopia Regional State', 'Central Ethiopia Regional State', 'central ethiopia', 1, NOW(6), NOW(6), 1, 1),
(12902766, 71, 'SE', NULL, NULL, '0', 'ET-SE', 'ET-SE', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'etiopía meridional', 'South Ethiopia', 'South Ethiopia Regional State', 'South Ethiopia Regional State', 'south ethiopia', 1, NOW(6), NOW(6), 1, 1),
(12902784, 71, 'SW', NULL, NULL, '0', 'ET-SW', 'ET-SW', '+251', (SELECT id FROM t075t_division_types WHERE code = 'region_et' AND id_country = 71), 'suroeste de etiopía', 'South West Ethiopia', 'South West Ethiopia Peoples'' Region', 'South West Ethiopia Peoples'' Region', 'south west ethiopia', 1, NOW(6), NOW(6), 1, 1);