-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para ESUATINI (SZ)
-- Archivo: SZ_esuatini_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para ESUATINI: Distrito
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_sz', 70, 8, 'Distrito', 'District',
    'District', 'District', 'District', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de ESUATINI (Distritos)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(934867, 70, 'shiselweni', NULL, NULL, '000', 'SZ-000', 'SZ-000', '+268', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sz' AND id_country = 70), 'Shiselweni', 'Shiselweni District', 'Shiselweni District', 'Shiselweni District', 'Shiselweni District', 1, NOW(6), NOW(6), 1, 1),
(934994, 70, 'manzini', NULL, NULL, '000', 'SZ-000', 'SZ-000', '+268', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sz' AND id_country = 70), 'Manzini', 'Manzini', 'Manzini', 'Manzini', 'Manzini', 1, NOW(6), NOW(6), 1, 1),
(935042, 70, 'lubombo', NULL, NULL, '000', 'SZ-000', 'SZ-000', '+268', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sz' AND id_country = 70), 'Lubombo', 'Lubombo District', 'Lubombo District', 'Lubombo District', 'Lubombo District', 1, NOW(6), NOW(6), 1, 1),
(935085, 70, 'hhohho', NULL, NULL, '000', 'SZ-000', 'SZ-000', '+268', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sz' AND id_country = 70), 'Hhohho', 'Hhohho', 'Hhohho', 'Hhohho', 'Hhohho', 1, NOW(6), NOW(6), 1, 1);