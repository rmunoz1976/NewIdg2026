-- =============================================
-- Script de inserción para GUINEA ECUATORIAL (GQ)
-- Archivo: GQ_guinea_ecuatorial_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GUINEA ECUATORIAL: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_gq', 67, 8, 'Provincia', 'Province',
    'Province', 'Provincia', 'provincia', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GUINEA ECUATORIAL (Provincias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2310307, 67, 'AN', NULL, NULL, '0', 'GQ-AN', 'GQ-AN', '+240', (SELECT id FROM t075t_division_types WHERE code = 'provincia_gq' AND id_country = 67), 'annobón', 'Annobón', 'Annobón Province', 'Provincia de Annobón', 'annobon', 1, NOW(6), NOW(6), 1, 1),
(2566978, 67, 'BN', NULL, NULL, '0', 'GQ-BN', 'GQ-BN', '+240', (SELECT id FROM t075t_division_types WHERE code = 'provincia_gq' AND id_country = 67), 'bioko norte', 'Bioko Norte', 'Bioko Norte Province', 'Provincia de Bioko Norte', 'bioko norte', 1, NOW(6), NOW(6), 1, 1),
(2566979, 67, 'BS', NULL, NULL, '0', 'GQ-BS', 'GQ-BS', '+240', (SELECT id FROM t075t_division_types WHERE code = 'provincia_gq' AND id_country = 67), 'bioko sur', 'Bioko Sur', 'Bioko Sur Province', 'Provincia de Bioko Sur', 'bioko sur', 1, NOW(6), NOW(6), 1, 1),
(2566980, 67, 'CS', NULL, NULL, '0', 'GQ-CS', 'GQ-CS', '+240', (SELECT id FROM t075t_division_types WHERE code = 'provincia_gq' AND id_country = 67), 'centro sur', 'Centro Sur', 'Centro Sur Province', 'Provincia de Centro Sur', 'centro sur', 1, NOW(6), NOW(6), 1, 1),
(2566981, 67, 'KN', NULL, NULL, '0', 'GQ-KN', 'GQ-KN', '+240', (SELECT id FROM t075t_division_types WHERE code = 'provincia_gq' AND id_country = 67), 'kié-ntem', 'Kié-Ntem', 'Kié-Ntem Province', 'Provincia de Kié-Ntem', 'kie ntem', 1, NOW(6), NOW(6), 1, 1),
(2566982, 67, 'LI', NULL, NULL, '0', 'GQ-LI', 'GQ-LI', '+240', (SELECT id FROM t075t_division_types WHERE code = 'provincia_gq' AND id_country = 67), 'litoral', 'Litoral', 'Litoral Province', 'Provincia de Litoral', 'litoral', 1, NOW(6), NOW(6), 1, 1),
(2566983, 67, 'WN', NULL, NULL, '0', 'GQ-WN', 'GQ-WN', '+240', (SELECT id FROM t075t_division_types WHERE code = 'provincia_gq' AND id_country = 67), 'wele-nzas', 'Wele-Nzas', 'Wele-Nzas Province', 'Provincia de Wele-Nzas', 'wele nzas', 1, NOW(6), NOW(6), 1, 1),
(12168385, 67, 'DJ', NULL, NULL, '0', 'GQ-DJ', 'GQ-DJ', '+240', (SELECT id FROM t075t_division_types WHERE code = 'provincia_gq' AND id_country = 67), 'djibloho', 'Djibloho', 'Djibloho', 'Djibloho', 'djibloho', 1, NOW(6), NOW(6), 1, 1);