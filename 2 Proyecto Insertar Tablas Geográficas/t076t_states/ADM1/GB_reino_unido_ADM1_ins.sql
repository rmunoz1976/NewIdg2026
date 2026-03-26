-- =============================================
-- Script de inserción para REINO UNIDO (GB)
-- Archivo: GB_reino_unido_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para REINO UNIDO: Nación
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'nacion_gb', 237, 8, 'Nación', 'Country',
    'Country', 'Country', 'country', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de REINO UNIDO (Naciones constituyentes)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2634895, 237, 'WLS', NULL, NULL, '0', 'GB-WLS', 'GB-WLS', '+44', (SELECT id FROM t075t_division_types WHERE code = 'nacion_gb' AND id_country = 237), 'gales', 'Wales', 'Wales', 'Wales', 'wales', 1, NOW(6), NOW(6), 1, 1),
(2638360, 237, 'SCT', NULL, NULL, '0', 'GB-SCT', 'GB-SCT', '+44', (SELECT id FROM t075t_division_types WHERE code = 'nacion_gb' AND id_country = 237), 'escocia', 'Scotland', 'Scotland', 'Scotland', 'scotland', 1, NOW(6), NOW(6), 1, 1),
(2641364, 237, 'NIR', NULL, NULL, '0', 'GB-NIR', 'GB-NIR', '+44', (SELECT id FROM t075t_division_types WHERE code = 'nacion_gb' AND id_country = 237), 'irlanda del norte', 'Northern Ireland', 'Northern Ireland', 'Northern Ireland', 'northern ireland', 1, NOW(6), NOW(6), 1, 1),
(6269131, 237, 'ENG', NULL, NULL, '0', 'GB-ENG', 'GB-ENG', '+44', (SELECT id FROM t075t_division_types WHERE code = 'nacion_gb' AND id_country = 237), 'inglaterra', 'England', 'England', 'England', 'england', 1, NOW(6), NOW(6), 1, 1);