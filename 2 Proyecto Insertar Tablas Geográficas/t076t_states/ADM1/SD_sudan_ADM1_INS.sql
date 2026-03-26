-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SUDÁN (SD)
-- Archivo: SD_sudan_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SUDÁN: Estado
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'estado_sd', 212, 8, 'Estado', 'State',
    'State', 'ولاية', 'Wilayah', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SUDÁN (Estados)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(378389, 212, 'northern', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Norte', 'Northern', 'Northern', 'Northern', 'Northern', 1, NOW(6), NOW(6), 1, 1),
(379253, 212, 'khartoum', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Jartum', 'Khartoum', 'Khartoum', 'Khartoum', 'Khartoum', 1, NOW(6), NOW(6), 1, 1),
(408646, 212, 'red_sea', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Mar Rojo', 'Red Sea', 'Red Sea', 'Red Sea', 'Red Sea', 1, NOW(6), NOW(6), 1, 1),
(408648, 212, 'al_jazirah', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Al Jazirah', 'Al Jazirah State', 'Al Jazirah State', 'Al Jazirah State', 'Al Jazirah State', 1, NOW(6), NOW(6), 1, 1),
(408649, 212, 'al_qadarif', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Al Qadarif', 'Al Qadarif State', 'Al Qadarif State', 'Al Qadarif State', 'Al Qadarif State', 1, NOW(6), NOW(6), 1, 1),
(408653, 212, 'white_nile', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Nilo Blanco', 'White Nile', 'White Nile', 'White Nile', 'White Nile', 1, NOW(6), NOW(6), 1, 1),
(408654, 212, 'blue_nile', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Nilo Azul', 'Blue Nile', 'Blue Nile', 'Blue Nile', 'Blue Nile', 1, NOW(6), NOW(6), 1, 1),
(408658, 212, 'west_darfur', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Darfur Occidental', 'West Darfur', 'West Darfur', 'West Darfur', 'West Darfur', 1, NOW(6), NOW(6), 1, 1),
(408659, 212, 'west_kordofan', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Kordofán Occidental', 'West Kordofan State', 'West Kordofan State', 'West Kordofan State', 'West Kordofan State', 1, NOW(6), NOW(6), 1, 1),
(408660, 212, 'south_darfur', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Darfur del Sur', 'South Darfur', 'South Darfur', 'South Darfur', 'South Darfur', 1, NOW(6), NOW(6), 1, 1),
(408661, 212, 'south_kordofan', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Kordofán del Sur', 'South Kordofan', 'South Kordofan', 'South Kordofan', 'South Kordofan', 1, NOW(6), NOW(6), 1, 1),
(408663, 212, 'kassala', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Kassala', 'Kassala State', 'Kassala State', 'Kassala State', 'Kassala State', 1, NOW(6), NOW(6), 1, 1),
(408664, 212, 'river_nile', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Río Nilo', 'River Nile', 'River Nile', 'River Nile', 'River Nile', 1, NOW(6), NOW(6), 1, 1),
(408666, 212, 'north_darfur', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Darfur del Norte', 'North Darfur', 'North Darfur', 'North Darfur', 'North Darfur', 1, NOW(6), NOW(6), 1, 1),
(408667, 212, 'north_kordofan', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Kordofán del Norte', 'North Kordofan', 'North Kordofan', 'North Kordofan', 'North Kordofan', 1, NOW(6), NOW(6), 1, 1),
(408669, 212, 'sennar', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Sennar', 'Sennar', 'Sennar', 'Sennar', 'Sennar', 1, NOW(6), NOW(6), 1, 1),
(8394435, 212, 'east_darfur', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Darfur Oriental', 'East Darfur', 'East Darfur', 'East Darfur', 'East Darfur', 1, NOW(6), NOW(6), 1, 1),
(8394436, 212, 'central_darfur', NULL, NULL, '000', 'SD-000', 'SD-000', '+249', (SELECT id FROM t075t_division_types WHERE code = 'estado_sd' AND id_country = 212), 'Darfur Central', 'Central Darfur State', 'Central Darfur State', 'Central Darfur State', 'Central Darfur State', 1, NOW(6), NOW(6), 1, 1);