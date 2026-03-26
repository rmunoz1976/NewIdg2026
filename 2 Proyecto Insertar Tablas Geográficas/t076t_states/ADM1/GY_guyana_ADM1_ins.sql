-- =============================================
-- Script de inserción para GUYANA (GY)
-- Archivo: GY_guyana_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GUYANA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_gy', 95, 8, 'Región', 'Region',
    'Region', 'Region', 'region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GUYANA (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3375463, 95, 'UT', NULL, NULL, '0', 'GY-UT', 'GY-UT', '+592', (SELECT id FROM t075t_division_types WHERE code = 'region_gy' AND id_country = 95), 'alto takutu-alto esequibo', 'Upper Takutu-Upper Essequibo', 'Upper Takutu-Upper Essequibo Region', 'Upper Takutu-Upper Essequibo Region', 'upper takutu upper essequibo', 1, NOW(6), NOW(6), 1, 1),
(3375469, 95, 'UD', NULL, NULL, '0', 'GY-UD', 'GY-UD', '+592', (SELECT id FROM t075t_division_types WHERE code = 'region_gy' AND id_country = 95), 'alto demerara-berbice', 'Upper Demerara-Berbice', 'Upper Demerara-Berbice Region', 'Upper Demerara-Berbice Region', 'upper demerara berbice', 1, NOW(6), NOW(6), 1, 1),
(3376386, 95, 'PT', NULL, NULL, '0', 'GY-PT', 'GY-PT', '+592', (SELECT id FROM t075t_division_types WHERE code = 'region_gy' AND id_country = 95), 'potaro-siparuni', 'Potaro-Siparuni', 'Potaro-Siparuni Region', 'Potaro-Siparuni Region', 'potaro siparuni', 1, NOW(6), NOW(6), 1, 1),
(3376407, 95, 'PM', NULL, NULL, '0', 'GY-PM', 'GY-PM', '+592', (SELECT id FROM t075t_division_types WHERE code = 'region_gy' AND id_country = 95), 'pomeroon-supenaam', 'Pomeroon-Supenaam', 'Pomeroon-Supenaam Region', 'Pomeroon-Supenaam Region', 'pomeroon supenaam', 1, NOW(6), NOW(6), 1, 1),
(3377274, 95, 'MA', NULL, NULL, '0', 'GY-MA', 'GY-MA', '+592', (SELECT id FROM t075t_division_types WHERE code = 'region_gy' AND id_country = 95), 'mahaica-berbice', 'Mahaica-Berbice', 'Mahaica-Berbice Region', 'Mahaica-Berbice Region', 'mahaica berbice', 1, NOW(6), NOW(6), 1, 1),
(3378741, 95, 'ES', NULL, NULL, '0', 'GY-ES', 'GY-ES', '+592', (SELECT id FROM t075t_division_types WHERE code = 'region_gy' AND id_country = 95), 'islas esequibo-demerara occidental', 'Essequibo Islands-West Demerara', 'Essequibo Islands-West Demerara Region', 'Essequibo Islands-West Demerara Region', 'essequibo islands west demerara', 1, NOW(6), NOW(6), 1, 1),
(3378840, 95, 'EB', NULL, NULL, '0', 'GY-EB', 'GY-EB', '+592', (SELECT id FROM t075t_division_types WHERE code = 'region_gy' AND id_country = 95), 'berbice oriental-corentyne', 'East Berbice-Corentyne', 'East Berbice-Corentyne Region', 'East Berbice-Corentyne Region', 'east berbice corentyne', 1, NOW(6), NOW(6), 1, 1),
(3378950, 95, 'DE', NULL, NULL, '0', 'GY-DE', 'GY-DE', '+592', (SELECT id FROM t075t_division_types WHERE code = 'region_gy' AND id_country = 95), 'demerara-mahaica', 'Demerara-Mahaica', 'Demerara-Mahaica Region', 'Demerara-Mahaica Region', 'demerara mahaica', 1, NOW(6), NOW(6), 1, 1),
(3379023, 95, 'CU', NULL, NULL, '0', 'GY-CU', 'GY-CU', '+592', (SELECT id FROM t075t_division_types WHERE code = 'region_gy' AND id_country = 95), 'cuyuni-mazaruni', 'Cuyuni-Mazaruni', 'Cuyuni-Mazaruni Region', 'Cuyuni-Mazaruni Region', 'cuyuni mazaruni', 1, NOW(6), NOW(6), 1, 1),
(3379515, 95, 'BW', NULL, NULL, '0', 'GY-BW', 'GY-BW', '+592', (SELECT id FROM t075t_division_types WHERE code = 'region_gy' AND id_country = 95), 'barima-waini', 'Barima-Waini', 'Barima-Waini Region', 'Barima-Waini Region', 'barima waini', 1, NOW(6), NOW(6), 1, 1);