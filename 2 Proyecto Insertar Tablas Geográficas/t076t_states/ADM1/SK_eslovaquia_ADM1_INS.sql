-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para ESLOVAQUIA (SK)
-- Archivo: SK_eslovaquia_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para ESLOVAQUIA: Región
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_sk', 202, 8, 'Región', 'Region',
    'Kraj', 'Kraj', 'Kraj', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de ESLOVAQUIA (Regiones)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(865084, 202, 'kosice', NULL, NULL, '042', 'SK-042', 'SK-042', '+421', (SELECT id FROM t075t_division_types WHERE code = 'region_sk' AND id_country = 202), 'Košice', 'Kosice', 'Košický kraj', 'Kosice', 'Kosice', 1, NOW(6), NOW(6), 1, 1),
(865085, 202, 'presov', NULL, NULL, '041', 'SK-041', 'SK-041', '+421', (SELECT id FROM t075t_division_types WHERE code = 'region_sk' AND id_country = 202), 'Prešov', 'Presov', 'Prešovský kraj', 'Presov', 'Presov', 1, NOW(6), NOW(6), 1, 1),
(3056506, 202, 'zilina', NULL, NULL, '031', 'SK-031', 'SK-031', '+421', (SELECT id FROM t075t_division_types WHERE code = 'region_sk' AND id_country = 202), 'Žilina', 'Zilina', 'Žilinský kraj', 'Zilina', 'Zilina', 1, NOW(6), NOW(6), 1, 1),
(3343954, 202, 'banska_bystrica', NULL, NULL, '032', 'SK-032', 'SK-032', '+421', (SELECT id FROM t075t_division_types WHERE code = 'region_sk' AND id_country = 202), 'Banská Bystrica', 'Banska Bystrica', 'Banskobystrický kraj', 'Banska Bystrica', 'Banska Bystrica', 1, NOW(6), NOW(6), 1, 1),
(3343955, 202, 'bratislava', NULL, NULL, '010', 'SK-010', 'SK-010', '+421', (SELECT id FROM t075t_division_types WHERE code = 'region_sk' AND id_country = 202), 'Bratislava', 'Bratislava', 'Bratislavský kraj', 'Bratislava', 'Bratislava', 1, NOW(6), NOW(6), 1, 1),
(3343956, 202, 'nitra', NULL, NULL, '023', 'SK-023', 'SK-023', '+421', (SELECT id FROM t075t_division_types WHERE code = 'region_sk' AND id_country = 202), 'Nitra', 'Nitra', 'Nitriansky kraj', 'Nitra', 'Nitra', 1, NOW(6), NOW(6), 1, 1),
(3343957, 202, 'trencin', NULL, NULL, '022', 'SK-022', 'SK-022', '+421', (SELECT id FROM t075t_division_types WHERE code = 'region_sk' AND id_country = 202), 'Trenčín', 'Trencin', 'Trenčiansky kraj', 'Trencin', 'Trencin', 1, NOW(6), NOW(6), 1, 1),
(3343958, 202, 'trnava', NULL, NULL, '021', 'SK-021', 'SK-021', '+421', (SELECT id FROM t075t_division_types WHERE code = 'region_sk' AND id_country = 202), 'Trnava', 'Trnava', 'Trnavský kraj', 'Trnava', 'Trnava', 1, NOW(6), NOW(6), 1, 1);