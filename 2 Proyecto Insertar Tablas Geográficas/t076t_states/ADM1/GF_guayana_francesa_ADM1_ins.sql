-- =============================================
-- Script de inserción para GUAYANA FRANCESA (GF)
-- Archivo: GF_guayana_francesa_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GUAYANA FRANCESA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_gf', 77, 8, 'Región', 'Region',
    'Region', 'Région', 'region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GUAYANA FRANCESA (Región única)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(6690605, 77, 'GF', NULL, NULL, '0', 'GF-GF', 'GF-GF', '+594', (SELECT id FROM t075t_division_types WHERE code = 'region_gf' AND id_country = 77), 'guayana francesa', 'French Guiana', 'French Guiana', 'Guyane', 'guyane', 1, NOW(6), NOW(6), 1, 1);