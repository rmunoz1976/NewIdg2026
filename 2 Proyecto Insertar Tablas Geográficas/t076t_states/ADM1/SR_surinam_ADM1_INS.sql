-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SURINAM (SR)
-- Archivo: SR_surinam_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SURINAM: Distrito
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_sr', 213, 8, 'Distrito', 'District',
    'Distrikt', 'Distrikt', 'Distrikt', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SURINAM (Distritos)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3382761, 213, 'wanica', NULL, NULL, '000', 'SR-000', 'SR-000', '+597', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sr' AND id_country = 213), 'Wanica', 'Distrikt Wanica', 'Distrikt Wanica', 'Distrikt Wanica', 'Distrikt Wanica', 1, NOW(6), NOW(6), 1, 1),
(3383062, 213, 'sipaliwini', NULL, NULL, '000', 'SR-000', 'SR-000', '+597', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sr' AND id_country = 213), 'Sipaliwini', 'Distrikt Sipaliwini', 'Distrikt Sipaliwini', 'Distrikt Sipaliwini', 'Distrikt Sipaliwini', 1, NOW(6), NOW(6), 1, 1),
(3383110, 213, 'saramacca', NULL, NULL, '000', 'SR-000', 'SR-000', '+597', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sr' AND id_country = 213), 'Saramacca', 'Distrikt Saramacca', 'Distrikt Saramacca', 'Distrikt Saramacca', 'Distrikt Saramacca', 1, NOW(6), NOW(6), 1, 1),
(3383329, 213, 'paramaribo', NULL, NULL, '000', 'SR-000', 'SR-000', '+597', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sr' AND id_country = 213), 'Paramaribo', 'Distrikt Paramaribo', 'Distrikt Paramaribo', 'Distrikt Paramaribo', 'Distrikt Paramaribo', 1, NOW(6), NOW(6), 1, 1),
(3383337, 213, 'para', NULL, NULL, '000', 'SR-000', 'SR-000', '+597', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sr' AND id_country = 213), 'Para', 'Distrikt Para', 'Distrikt Para', 'Distrikt Para', 'Distrikt Para', 1, NOW(6), NOW(6), 1, 1),
(3383438, 213, 'nickerie', NULL, NULL, '000', 'SR-000', 'SR-000', '+597', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sr' AND id_country = 213), 'Nickerie', 'Distrikt Nickerie', 'Distrikt Nickerie', 'Distrikt Nickerie', 'Distrikt Nickerie', 1, NOW(6), NOW(6), 1, 1),
(3383560, 213, 'marowijne', NULL, NULL, '000', 'SR-000', 'SR-000', '+597', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sr' AND id_country = 213), 'Marowijne', 'Distrikt Marowijne', 'Distrikt Marowijne', 'Distrikt Marowijne', 'Distrikt Marowijne', 1, NOW(6), NOW(6), 1, 1),
(3384397, 213, 'coronie', NULL, NULL, '000', 'SR-000', 'SR-000', '+597', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sr' AND id_country = 213), 'Coronie', 'Distrikt Coronie', 'Distrikt Coronie', 'Distrikt Coronie', 'Distrikt Coronie', 1, NOW(6), NOW(6), 1, 1),
(3384418, 213, 'commewijne', NULL, NULL, '000', 'SR-000', 'SR-000', '+597', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sr' AND id_country = 213), 'Commewijne', 'Distrikt Commewijne', 'Distrikt Commewijne', 'Distrikt Commewijne', 'Distrikt Commewijne', 1, NOW(6), NOW(6), 1, 1),
(3384481, 213, 'brokopondo', NULL, NULL, '000', 'SR-000', 'SR-000', '+597', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sr' AND id_country = 213), 'Brokopondo', 'Distrikt Brokopondo', 'Distrikt Brokopondo', 'Distrikt Brokopondo', 'Distrikt Brokopondo', 1, NOW(6), NOW(6), 1, 1);