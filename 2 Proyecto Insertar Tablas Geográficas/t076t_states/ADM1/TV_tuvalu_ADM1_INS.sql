-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para TUVALU (TV)
-- Archivo: TV_tuvalu_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para TUVALU: Isla
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'isla_tv', 232, 8, 'Isla', 'Island',
    'Island', 'Island', 'Island', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de TUVALU (Islas)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2110341, 232, 'nui', NULL, NULL, '000', 'TV-000', 'TV-000', '+688', (SELECT id FROM t075t_division_types WHERE code = 'isla_tv' AND id_country = 232), 'Nui', 'Nui', 'Nui', 'Nui', 'Nui', 1, NOW(6), NOW(6), 1, 1),
(2110345, 232, 'nanumea', NULL, NULL, '000', 'TV-000', 'TV-000', '+688', (SELECT id FROM t075t_division_types WHERE code = 'isla_tv' AND id_country = 232), 'Nanumea', 'Nanumea', 'Nanumea', 'Nanumea', 'Nanumea', 1, NOW(6), NOW(6), 1, 1),
(2110384, 232, 'funafuti', NULL, NULL, '000', 'TV-000', 'TV-000', '+688', (SELECT id FROM t075t_division_types WHERE code = 'isla_tv' AND id_country = 232), 'Funafuti', 'Funafuti', 'Funafuti', 'Funafuti', 'Funafuti', 1, NOW(6), NOW(6), 1, 1),
(7601979, 232, 'niutao', NULL, NULL, '000', 'TV-000', 'TV-000', '+688', (SELECT id FROM t075t_division_types WHERE code = 'isla_tv' AND id_country = 232), 'Niutao', 'Niutao', 'Niutao', 'Niutao', 'Niutao', 1, NOW(6), NOW(6), 1, 1),
(7601980, 232, 'nanumanga', NULL, NULL, '000', 'TV-000', 'TV-000', '+688', (SELECT id FROM t075t_division_types WHERE code = 'isla_tv' AND id_country = 232), 'Nanumanga', 'Nanumanga', 'Nanumanga', 'Nanumanga', 'Nanumanga', 1, NOW(6), NOW(6), 1, 1),
(7601981, 232, 'vaitupu', NULL, NULL, '000', 'TV-000', 'TV-000', '+688', (SELECT id FROM t075t_division_types WHERE code = 'isla_tv' AND id_country = 232), 'Vaitupu', 'Vaitupu', 'Vaitupu', 'Vaitupu', 'Vaitupu', 1, NOW(6), NOW(6), 1, 1),
(7601982, 232, 'nukufetau', NULL, NULL, '000', 'TV-000', 'TV-000', '+688', (SELECT id FROM t075t_division_types WHERE code = 'isla_tv' AND id_country = 232), 'Nukufetau', 'Nukufetau', 'Nukufetau', 'Nukufetau', 'Nukufetau', 1, NOW(6), NOW(6), 1, 1),
(7601983, 232, 'nukulaelae', NULL, NULL, '000', 'TV-000', 'TV-000', '+688', (SELECT id FROM t075t_division_types WHERE code = 'isla_tv' AND id_country = 232), 'Nukulaelae', 'Nukulaelae', 'Nukulaelae', 'Nukulaelae', 'Nukulaelae', 1, NOW(6), NOW(6), 1, 1);