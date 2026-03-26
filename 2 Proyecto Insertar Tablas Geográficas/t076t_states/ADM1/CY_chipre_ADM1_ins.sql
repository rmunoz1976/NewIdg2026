-- =============================================================================
-- Insertar tipo de división geográfica ADM1 para CHIPRE: Distrito
-- =============================================================================
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) SELECT
    'distrito_cy', 57, 8, 'distrito', 'District',
    'District', 'Επαρχία', 'Eparchia', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
    SELECT 1 FROM `t075t_division_types`
    WHERE `code` = 'distrito_cy' AND `id_country` = 57
);

-- =============================================================================
-- Insertar las divisiones ADM1 de CHIPRE (Distritos / Επαρχίες)
-- =============================================================================
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
-- 01: Famagusta / Ammochostos
(146615, 57, 'CY-04', NULL, NULL, '0', 'CY-04', 'CY-04', '+357',
 (SELECT id FROM t075t_division_types WHERE code = 'distrito_cy' AND id_country = 57),
 'famagusta', 'Famagusta', 'Ammochostos', 'Αμμόχωστος', 'Ammochostos',
 1, NOW(6), NOW(6), 1, 1),

-- 02: Kyrenia / Keryneia
(146411, 57, 'CY-06', NULL, NULL, '0', 'CY-06', 'CY-06', '+357',
 (SELECT id FROM t075t_division_types WHERE code = 'distrito_cy' AND id_country = 57),
 'kyrenia', 'Kyrenia', 'Keryneia', 'Κερύνεια', 'Keryneia',
 1, NOW(6), NOW(6), 1, 1),

-- 03: Larnaca / Larnaka
(146398, 57, 'CY-02', NULL, NULL, '0', 'CY-02', 'CY-02', '+357',
 (SELECT id FROM t075t_division_types WHERE code = 'distrito_cy' AND id_country = 57),
 'larnaca', 'Larnaca', 'Larnaka', 'Επαρχία Λάρνακας', 'Eparchia Larnakas',
 1, NOW(6), NOW(6), 1, 1),

-- 04: Nicosia / Lefkosia
(146267, 57, 'CY-01', NULL, NULL, '0', 'CY-01', 'CY-01', '+357',
 (SELECT id FROM t075t_division_types WHERE code = 'distrito_cy' AND id_country = 57),
 'nicosia', 'Nicosia', 'Lefkosia', 'Λευκωσία', 'Lefkosia',
 1, NOW(6), NOW(6), 1, 1),

-- 05: Limassol / Lemesos
(146383, 57, 'CY-03', NULL, NULL, '0', 'CY-03', 'CY-03', '+357',
 (SELECT id FROM t075t_division_types WHERE code = 'distrito_cy' AND id_country = 57),
 'limassol', 'Limassol', 'Lemesos', 'Λεμεσός', 'Lemesos',
 1, NOW(6), NOW(6), 1, 1),

-- 06: Paphos / Pafos
(146213, 57, 'CY-05', NULL, NULL, '0', 'CY-05', 'CY-05', '+357',
 (SELECT id FROM t075t_division_types WHERE code = 'distrito_cy' AND id_country = 57),
 'pafos', 'Paphos', 'Pafos', 'Πάφος', 'Pafos',
 1, NOW(6), NOW(6), 1, 1);
