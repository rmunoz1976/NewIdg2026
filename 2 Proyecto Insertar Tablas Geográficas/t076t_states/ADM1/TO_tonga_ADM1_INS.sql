-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para TONGA (TO)
-- Archivo: TO_tonga_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para TONGA: División
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'division_to', 226, 8, 'División', 'Division',
    'Division', 'Division', 'Division', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de TONGA (Divisiones)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(4032231, 226, 'vavau', NULL, NULL, '000', 'TO-000', 'TO-000', '+676', (SELECT id FROM t075t_division_types WHERE code = 'division_to' AND id_country = 226), 'Vava‘u', 'Vava‘u', 'Vava‘u', 'Vava‘u', 'Vava‘u', 1, NOW(6), NOW(6), 1, 1),
(4032279, 226, 'tongatapu', NULL, NULL, '000', 'TO-000', 'TO-000', '+676', (SELECT id FROM t075t_division_types WHERE code = 'division_to' AND id_country = 226), 'Tongatapu', 'Tongatapu', 'Tongatapu', 'Tongatapu', 'Tongatapu', 1, NOW(6), NOW(6), 1, 1),
(4032637, 226, 'haapai', NULL, NULL, '000', 'TO-000', 'TO-000', '+676', (SELECT id FROM t075t_division_types WHERE code = 'division_to' AND id_country = 226), 'Ha‘apai', 'Ha‘apai', 'Ha‘apai', 'Ha‘apai', 'Ha‘apai', 1, NOW(6), NOW(6), 1, 1),
(7668021, 226, 'eua', NULL, NULL, '000', 'TO-000', 'TO-000', '+676', (SELECT id FROM t075t_division_types WHERE code = 'division_to' AND id_country = 226), 'Eua', 'Eua', 'Eua', 'Eua', 'Eua', 1, NOW(6), NOW(6), 1, 1),
(7668055, 226, 'niuas', NULL, NULL, '000', 'TO-000', 'TO-000', '+676', (SELECT id FROM t075t_division_types WHERE code = 'division_to' AND id_country = 226), 'Niuas', 'Niuas', 'Niuas', 'Niuas', 'Niuas', 1, NOW(6), NOW(6), 1, 1);