-- =============================================
-- Script de inserción para FIYI (FJ)
-- Archivo: FJ_fiyi_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para FIYI: División / Dependencia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'division_fj', 74, 8, 'División', 'Division',
    'Division', 'Division', 'division', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de FIYI (Divisiones y Dependencia)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2194371, 74, 'W', NULL, NULL, '0', 'FJ-W', 'FJ-W', '+679', (SELECT id FROM t075t_division_types WHERE code = 'division_fj' AND id_country = 74), 'oeste', 'Western', 'Western Division', 'Western Division', 'western', 1, NOW(6), NOW(6), 1, 1),
(2199295, 74, 'N', NULL, NULL, '0', 'FJ-N', 'FJ-N', '+679', (SELECT id FROM t075t_division_types WHERE code = 'division_fj' AND id_country = 74), 'norte', 'Northern', 'Northern Division', 'Northern Division', 'northern', 1, NOW(6), NOW(6), 1, 1),
(2205272, 74, 'C', NULL, NULL, '0', 'FJ-C', 'FJ-C', '+679', (SELECT id FROM t075t_division_types WHERE code = 'division_fj' AND id_country = 74), 'central', 'Central', 'Central Division', 'Central Division', 'central', 1, NOW(6), NOW(6), 1, 1),
(4036647, 74, 'E', NULL, NULL, '0', 'FJ-E', 'FJ-E', '+679', (SELECT id FROM t075t_division_types WHERE code = 'division_fj' AND id_country = 74), 'este', 'Eastern', 'Eastern Division', 'Eastern Division', 'eastern', 1, NOW(6), NOW(6), 1, 1),
(6324593, 74, 'R', NULL, NULL, '0', 'FJ-R', 'FJ-R', '+679', (SELECT id FROM t075t_division_types WHERE code = 'division_fj' AND id_country = 74), 'rotuma', 'Rotuma', 'Rotuma', 'Rotuma', 'rotuma', 1, NOW(6), NOW(6), 1, 1);