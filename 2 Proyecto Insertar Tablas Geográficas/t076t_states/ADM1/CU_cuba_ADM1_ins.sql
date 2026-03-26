-- =============================================================================
-- Insertar tipo de división geográfica ADM1 para CUBA: Provincia
-- =============================================================================
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) SELECT
    'provincia_cu', 55, 8, 'provincia', 'Province',
    'Province', 'Provincia', 'Provincia', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
    SELECT 1 FROM `t075t_division_types`
    WHERE `code` = 'provincia_cu' AND `id_country` = 55
);

-- =============================================================================
-- Insertar las divisiones ADM1 de CUBA (Provincias)
-- =============================================================================
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
-- 01: Pinar del Río
(3544088, 55, 'CU-PR', NULL, NULL, '0', 'CU-PR', 'CU-PR', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'pinar del río', 'Pinar del Río', 'Pinar del Río', 'Provincia de Pinar del Río', 'Pinar del Río',
 1, NOW(6), NOW(6), 1, 1),

-- 02: La Habana
(3564073, 55, 'CU-LH', NULL, NULL, '0', 'CU-LH', 'CU-LH', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'la habana', 'Havana', 'La Habana', 'La Habana', 'La Habana',
 1, NOW(6), NOW(6), 1, 1),

-- 03: Matanzas
(3547394, 55, 'CU-MA', NULL, NULL, '0', 'CU-MA', 'CU-MA', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'matanzas', 'Matanzas', 'Matanzas', 'Provincia de Matanzas', 'Matanzas',
 1, NOW(6), NOW(6), 1, 1),

-- 04: Isla de la Juventud
(3556608, 55, 'CU-IJ', NULL, NULL, '0', 'CU-IJ', 'CU-IJ', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'isla de la juventud', 'Isla de la Juventud', 'Isla de la Juventud', 'Municipio Especial Isla de la Juventud', 'Isla de la Juventud',
 1, NOW(6), NOW(6), 1, 1),

-- 05: Camagüey
(3566062, 55, 'CU-CA', NULL, NULL, '0', 'CU-CA', 'CU-CA', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'camagüey', 'Camagüey', 'Camagüey', 'Provincia de Camagüey', 'Camagüey',
 1, NOW(6), NOW(6), 1, 1),

-- 07: Ciego de Ávila
(3564175, 55, 'CU-AV', NULL, NULL, '0', 'CU-AV', 'CU-AV', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'ciego de ávila', 'Ciego de Ávila', 'Ciego de Ávila', 'Provincia de Ciego de Ávila', 'Ciego de Ávila',
 1, NOW(6), NOW(6), 1, 1),

-- 08: Cienfuegos
(3564120, 55, 'CU-CF', NULL, NULL, '0', 'CU-CF', 'CU-CF', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'cienfuegos', 'Cienfuegos', 'Cienfuegos', 'Provincia de Cienfuegos', 'Cienfuegos',
 1, NOW(6), NOW(6), 1, 1),

-- 09: Granma
(3558052, 55, 'CU-GR', NULL, NULL, '0', 'CU-GR', 'CU-GR', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'granma', 'Granma', 'Granma', 'Provincia Granma', 'Granma',
 1, NOW(6), NOW(6), 1, 1),

-- 12: Holguín
(3556965, 55, 'CU-HO', NULL, NULL, '0', 'CU-HO', 'CU-HO', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'holguín', 'Holguín', 'Holguín', 'Provincia de Holguín', 'Holguín',
 1, NOW(6), NOW(6), 1, 1),

-- 13: Las Tunas
(3550595, 55, 'CU-LT', NULL, NULL, '0', 'CU-LT', 'CU-LT', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'las tunas', 'Las Tunas', 'Las Tunas', 'Las Tunas', 'Las Tunas',
 1, NOW(6), NOW(6), 1, 1),

-- 14: Sancti Spíritus
(3540665, 55, 'CU-SS', NULL, NULL, '0', 'CU-SS', 'CU-SS', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'sancti spíritus', 'Sancti Spíritus', 'Sancti Spíritus', 'Provincia de Sancti Spíritus', 'Sancti Spíritus',
 1, NOW(6), NOW(6), 1, 1),

-- 15: Santiago de Cuba
(3536725, 55, 'CU-SD', NULL, NULL, '0', 'CU-SD', 'CU-SD', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'santiago de cuba', 'Santiago de Cuba', 'Santiago de Cuba', 'Provincia de Santiago de Cuba', 'Santiago de Cuba',
 1, NOW(6), NOW(6), 1, 1),

-- 16: Villa Clara
(3534168, 55, 'CU-VC', NULL, NULL, '0', 'CU-VC', 'CU-VC', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'villa clara', 'Villa Clara', 'Villa Clara', 'Provincia de Villa Clara', 'Villa Clara',
 1, NOW(6), NOW(6), 1, 1),

-- AR: Artemisa
(7668824, 55, 'CU-AR', NULL, NULL, '0', 'CU-AR', 'CU-AR', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'artemisa', 'Artemisa', 'Artemisa', 'Artemisa', 'Artemisa',
 1, NOW(6), NOW(6), 1, 1),

-- MA: Mayabeque
(7668827, 55, 'CU-MQ', NULL, NULL, '0', 'CU-MQ', 'CU-MQ', '+53',
 (SELECT id FROM t075t_division_types WHERE code = 'provincia_cu' AND id_country = 55),
 'mayabeque', 'Mayabeque', 'Mayabeque', 'Provincia Mayabeque', 'Mayabeque',
 1, NOW(6), NOW(6), 1, 1);
