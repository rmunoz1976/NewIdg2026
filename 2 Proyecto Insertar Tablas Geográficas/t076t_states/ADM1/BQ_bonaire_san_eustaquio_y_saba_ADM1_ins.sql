-- =============================================
-- Script de inserción para BONAIRE, SAN EUSTAQUIO Y SABA (BQ)
-- Archivo: BQ_bonaire_san_eustaquio_y_saba_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BONAIRE, SAN EUSTAQUIO Y SABA: Entidad Pública
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'entidad_publica_bq', 28, 8, 'Entidad Pública', 'Public Entity',
    'Public Entity', 'Openbaar Lichaam', 'openbaar lichaam', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BONAIRE, SAN EUSTAQUIO Y SABA
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(7609816, 28, 'BO', NULL, NULL, '0', 'BQ-BO', 'BQ-BO', '+599', (SELECT id FROM t075t_division_types WHERE code = 'entidad_publica_bq' AND id_country = 28), 'bonaire', 'Bonaire', 'Bonaire', 'Bonaire', 'bonaire', 1, NOW(6), NOW(6), 1, 1),
(7610358, 28, 'SA', NULL, NULL, '0', 'BQ-SA', 'BQ-SA', '+599', (SELECT id FROM t075t_division_types WHERE code = 'entidad_publica_bq' AND id_country = 28), 'saba', 'Saba', 'Saba', 'Saba', 'saba', 1, NOW(6), NOW(6), 1, 1),
(7610359, 28, 'SE', NULL, NULL, '0', 'BQ-SE', 'BQ-SE', '+599', (SELECT id FROM t075t_division_types WHERE code = 'entidad_publica_bq' AND id_country = 28), 'sint eustatius', 'Sint Eustatius', 'Sint Eustatius', 'Sint Eustatius', 'sint eustatius', 1, NOW(6), NOW(6), 1, 1);