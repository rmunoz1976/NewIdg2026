-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para KOSOVO (XK)
-- Archivo: XK_kosovo_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para KOSOVO: Distrito
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_xk', 118, 8, 'Distrito', 'District',
    'Rajoni', 'Rajoni', 'Rajoni', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de KOSOVO (Distritos)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(10096138, 118, 'ferizaj', NULL, NULL, '000', 'XK-000', 'XK-000', '', (SELECT id FROM t075t_division_types WHERE code = 'distrito_xk' AND id_country = 118), 'Ferizaj', 'Ferizaj District', 'Ferizaj District', 'Ferizaj District', 'Ferizaj District', 1, NOW(6), NOW(6), 1, 1),
(10096859, 118, 'gjakova', NULL, NULL, '000', 'XK-000', 'XK-000', '', (SELECT id FROM t075t_division_types WHERE code = 'distrito_xk' AND id_country = 118), 'Gjakova', 'Gjakova District', 'Gjakova District', 'Gjakova District', 'Gjakova District', 1, NOW(6), NOW(6), 1, 1),
(10097357, 118, 'gjilan', NULL, NULL, '000', 'XK-000', 'XK-000', '', (SELECT id FROM t075t_division_types WHERE code = 'distrito_xk' AND id_country = 118), 'Gjilan', 'Gjilan District', 'Gjilan District', 'Gjilan District', 'Gjilan District', 1, NOW(6), NOW(6), 1, 1),
(10097358, 118, 'mitrovica', NULL, NULL, '000', 'XK-000', 'XK-000', '', (SELECT id FROM t075t_division_types WHERE code = 'distrito_xk' AND id_country = 118), 'Mitrovica', 'Mitrovica District', 'Mitrovica District', 'Mitrovica District', 'Mitrovica District', 1, NOW(6), NOW(6), 1, 1),
(10097359, 118, 'pec', NULL, NULL, '000', 'XK-000', 'XK-000', '', (SELECT id FROM t075t_division_types WHERE code = 'distrito_xk' AND id_country = 118), 'Peć', 'Pec District', 'Pec District', 'Pec District', 'Pec District', 1, NOW(6), NOW(6), 1, 1),
(10097360, 118, 'pristina', NULL, NULL, '000', 'XK-000', 'XK-000', '', (SELECT id FROM t075t_division_types WHERE code = 'distrito_xk' AND id_country = 118), 'Pristina', 'Pristina District', 'Pristina District', 'Pristina District', 'Pristina District', 1, NOW(6), NOW(6), 1, 1),
(10097361, 118, 'prizren', NULL, NULL, '000', 'XK-000', 'XK-000', '', (SELECT id FROM t075t_division_types WHERE code = 'distrito_xk' AND id_country = 118), 'Prizren', 'Prizren District', 'Prizren District', 'Prizren District', 'Prizren District', 1, NOW(6), NOW(6), 1, 1);