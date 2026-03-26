-- =============================================================================
-- Insertar tipo de división geográfica ADM1 para COSTA RICA: Provincia
-- =============================================================================
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) SELECT
    'provincia_cr', 53, 8, 'provincia', 'Province',
    'Province', 'Provincia', 'Provincia', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
    SELECT 1 FROM `t075t_division_types`
    WHERE `code` = 'provincia_cr' AND `id_country` = 53
);

-- =============================================================================
-- Insertar las divisiones ADM1 de COSTA RICA (Provincias)
-- =============================================================================
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
-- 01: Alajuela
(3624953, 53, 'CR-A', NULL, NULL, '0', 'CR-A', 'CR-A', '+506',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cr' AND id_country = 53),
 'alajuela', 'Alajuela', 'Alajuela', 'Provincia de Alajuela', 'Alajuela',
 1, NOW(6), NOW(6), 1, 1),

-- 02: Cartago
(3624368, 53, 'CR-C', NULL, NULL, '0', 'CR-C', 'CR-C', '+506',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cr' AND id_country = 53),
 'cartago', 'Cartago', 'Cartago', 'Provincia de Cartago', 'Cartago',
 1, NOW(6), NOW(6), 1, 1),

-- 03: Guanacaste
(3623582, 53, 'CR-G', NULL, NULL, '0', 'CR-G', 'CR-G', '+506',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cr' AND id_country = 53),
 'guanacaste', 'Guanacaste', 'Guanacaste', 'Provincia de Guanacaste', 'Guanacaste',
 1, NOW(6), NOW(6), 1, 1),

-- 04: Heredia
(3623484, 53, 'CR-H', NULL, NULL, '0', 'CR-H', 'CR-H', '+506',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cr' AND id_country = 53),
 'heredia', 'Heredia', 'Heredia', 'Provincia de Heredia', 'Heredia',
 1, NOW(6), NOW(6), 1, 1),

-- 06: Limón
(3623064, 53, 'CR-L', NULL, NULL, '0', 'CR-L', 'CR-L', '+506',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cr' AND id_country = 53),
 'limón', 'Limón', 'Limón', 'Provincia de Limón', 'Limón',
 1, NOW(6), NOW(6), 1, 1),

-- 07: Puntarenas
(3622226, 53, 'CR-P', NULL, NULL, '0', 'CR-P', 'CR-P', '+506',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cr' AND id_country = 53),
 'puntarenas', 'Puntarenas', 'Puntarenas', 'Provincia de Puntarenas', 'Puntarenas',
 1, NOW(6), NOW(6), 1, 1),

-- 08: San José
(3621837, 53, 'CR-SJ', NULL, NULL, '0', 'CR-SJ', 'CR-SJ', '+506',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cr' AND id_country = 53),
 'san josé', 'San José', 'San José', 'Provincia de San José', 'San José',
 1, NOW(6), NOW(6), 1, 1);
