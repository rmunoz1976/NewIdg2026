-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para TRINIDAD Y TOBAGO (TT)
-- Archivo: TT_trinidad_y_tobago_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para TRINIDAD Y TOBAGO: Región
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_tt', 227, 8, 'Región', 'Region',
    'Region', 'Region', 'Region', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de TRINIDAD Y TOBAGO (Regiones y Municipios)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3573606, 227, 'tobago', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Tobago', 'Tobago', 'Tobago', 'Tobago', 'Tobago', 1, NOW(6), NOW(6), 1, 1),
(3573739, 227, 'san_fernando', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'San Fernando', 'San Fernando', 'San Fernando', 'San Fernando', 'San Fernando', 1, NOW(6), NOW(6), 1, 1),
(3573891, 227, 'port_of_spain', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Puerto España', 'City of Port of Spain', 'City of Port of Spain', 'City of Port of Spain', 'City of Port of Spain', 1, NOW(6), NOW(6), 1, 1),
(3574155, 227, 'mayaro', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Mayaro', 'Mayaro', 'Mayaro', 'Mayaro', 'Mayaro', 1, NOW(6), NOW(6), 1, 1),
(3575052, 227, 'arima', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Arima', 'Arima', 'Arima', 'Arima', 'Arima', 1, NOW(6), NOW(6), 1, 1),
(7521937, 227, 'chaguanas', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Chaguanas', 'Chaguanas', 'Chaguanas', 'Chaguanas', 'Chaguanas', 1, NOW(6), NOW(6), 1, 1),
(7521938, 227, 'couva_tabaquite_talparo', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Couva-Tabaquite-Talparo', 'Couva-Tabaquite-Talparo', 'Couva-Tabaquite-Talparo', 'Couva-Tabaquite-Talparo', 'Couva-Tabaquite-Talparo', 1, NOW(6), NOW(6), 1, 1),
(7521939, 227, 'diego_martin', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Diego Martin', 'Diego Martin', 'Diego Martin', 'Diego Martin', 'Diego Martin', 1, NOW(6), NOW(6), 1, 1),
(7521941, 227, 'penal_debe', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Penal-Debe', 'Penal/Debe', 'Penal/Debe', 'Penal/Debe', 'Penal/Debe', 1, NOW(6), NOW(6), 1, 1),
(7521942, 227, 'princes_town', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Princes Town', 'Princes Town', 'Princes Town', 'Princes Town', 'Princes Town', 1, NOW(6), NOW(6), 1, 1),
(7521943, 227, 'point_fortin', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Point Fortin', 'Point Fortin', 'Point Fortin', 'Point Fortin', 'Point Fortin', 1, NOW(6), NOW(6), 1, 1),
(7521944, 227, 'sangre_grande', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Sangre Grande', 'Sangre Grande', 'Sangre Grande', 'Sangre Grande', 'Sangre Grande', 1, NOW(6), NOW(6), 1, 1),
(7521945, 227, 'siparia', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Siparia', 'Siparia', 'Siparia', 'Siparia', 'Siparia', 1, NOW(6), NOW(6), 1, 1),
(7521946, 227, 'san_juan_laventille', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'San Juan-Laventille', 'San Juan/Laventille', 'San Juan/Laventille', 'San Juan/Laventille', 'San Juan/Laventille', 1, NOW(6), NOW(6), 1, 1),
(7521947, 227, 'tunapuna_piarco', NULL, NULL, '000', 'TT-000', 'TT-000', '+1-868', (SELECT id FROM t075t_division_types WHERE code = 'region_tt' AND id_country = 227), 'Tunapuna-Piarco', 'Tunapuna/Piarco', 'Tunapuna/Piarco', 'Tunapuna/Piarco', 'Tunapuna/Piarco', 1, NOW(6), NOW(6), 1, 1);