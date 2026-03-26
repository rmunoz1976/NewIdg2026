-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para VANUATU (VU)
-- Archivo: VU_vanuatu_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para VANUATU: Provincia
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_vu', 242, 8, 'Provincia', 'Province',
    'Province', 'Province', 'Province', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de VANUATU (Provincias)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2134739, 242, 'tafea', NULL, NULL, '000', 'VU-000', 'VU-000', '+678', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vu' AND id_country = 242), 'Tafea', 'Tafea Province', 'Tafea Province', 'Tafea Province', 'Tafea Province', 1, NOW(6), NOW(6), 1, 1),
(2134898, 242, 'sanma', NULL, NULL, '000', 'VU-000', 'VU-000', '+678', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vu' AND id_country = 242), 'Sanma', 'Sanma Province', 'Sanma Province', 'Sanma Province', 'Sanma Province', 1, NOW(6), NOW(6), 1, 1),
(2137421, 242, 'torba', NULL, NULL, '000', 'VU-000', 'VU-000', '+678', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vu' AND id_country = 242), 'Torba', 'Torba Province', 'Torba Province', 'Torba Province', 'Torba Province', 1, NOW(6), NOW(6), 1, 1),
(2208265, 242, 'malampa', NULL, NULL, '000', 'VU-000', 'VU-000', '+678', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vu' AND id_country = 242), 'Malampa', 'Malampa Province', 'Malampa Province', 'Malampa Province', 'Malampa Province', 1, NOW(6), NOW(6), 1, 1),
(2208266, 242, 'penama', NULL, NULL, '000', 'VU-000', 'VU-000', '+678', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vu' AND id_country = 242), 'Penama', 'Penama Province', 'Penama Province', 'Penama Province', 'Penama Province', 1, NOW(6), NOW(6), 1, 1),
(2208267, 242, 'shefa', NULL, NULL, '000', 'VU-000', 'VU-000', '+678', (SELECT id FROM t075t_division_types WHERE code = 'provincia_vu' AND id_country = 242), 'Shefa', 'Shefa Province', 'Shefa Province', 'Shefa Province', 'Shefa Province', 1, NOW(6), NOW(6), 1, 1);