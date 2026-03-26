-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SANTO TOMÉ Y PRÍNCIPE (ST)
-- Archivo: ST_santo_tome_y_principe_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SANTO TOMÉ Y PRÍNCIPE: Provincia
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_st', 194, 8, 'Provincia', 'Province',
    'Província', 'Província', 'Provincia', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SANTO TOMÉ Y PRÍNCIPE (Provincias)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2410764, 194, 'sao_tome', NULL, NULL, '000', 'ST-000', 'ST-000', '+239', (SELECT id FROM t075t_division_types WHERE code = 'provincia_st' AND id_country = 194), 'Santo Tomé', 'São Tomé', 'São Tomé', 'São Tomé', 'São Tomé', 1, NOW(6), NOW(6), 1, 1),
(2410878, 194, 'principe', NULL, NULL, '000', 'ST-000', 'ST-000', '+239', (SELECT id FROM t075t_division_types WHERE code = 'provincia_st' AND id_country = 194), 'Príncipe', 'Príncipe', 'Príncipe', 'Príncipe', 'Príncipe', 1, NOW(6), NOW(6), 1, 1);