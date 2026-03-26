-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para TOGO (TG)
-- Archivo: TG_togo_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para TOGO: Región
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_tg', 224, 8, 'Región', 'Region',
    'Région', 'Région', 'Region', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de TOGO (Regiones)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2364205, 224, 'savanes', NULL, NULL, '000', 'TG-000', 'TG-000', '+228', (SELECT id FROM t075t_division_types WHERE code = 'region_tg' AND id_country = 224), 'Savanes', 'Savanes', 'Savanes', 'Savanes', 'Savanes', 1, NOW(6), NOW(6), 1, 1),
(2364370, 224, 'plateaux', NULL, NULL, '000', 'TG-000', 'TG-000', '+228', (SELECT id FROM t075t_division_types WHERE code = 'region_tg' AND id_country = 224), 'Plateaux', 'Plateaux', 'Plateaux', 'Plateaux', 'Plateaux', 1, NOW(6), NOW(6), 1, 1),
(2365173, 224, 'maritime', NULL, NULL, '000', 'TG-000', 'TG-000', '+228', (SELECT id FROM t075t_division_types WHERE code = 'region_tg' AND id_country = 224), 'Maritime', 'Maritime', 'Maritime', 'Maritime', 'Maritime', 1, NOW(6), NOW(6), 1, 1),
(2367237, 224, 'centrale', NULL, NULL, '000', 'TG-000', 'TG-000', '+228', (SELECT id FROM t075t_division_types WHERE code = 'region_tg' AND id_country = 224), 'Centrale', 'Centrale', 'Centrale', 'Centrale', 'Centrale', 1, NOW(6), NOW(6), 1, 1),
(2597439, 224, 'kara', NULL, NULL, '000', 'TG-000', 'TG-000', '+228', (SELECT id FROM t075t_division_types WHERE code = 'region_tg' AND id_country = 224), 'Kara', 'Kara', 'Kara', 'Kara', 'Kara', 1, NOW(6), NOW(6), 1, 1);