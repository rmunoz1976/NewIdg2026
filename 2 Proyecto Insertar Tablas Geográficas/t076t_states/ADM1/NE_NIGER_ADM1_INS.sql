-- Insertar tipo de división geográfica ADM1 para Níger: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_ne', 158, 8, 'región', 'region', 
    'Region', 'Région', 'Région', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Níger (Regiones y Distrito Capital)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2437797, 158, 'NE-7', NULL, NULL, '0', 'NE-7', 'NE-7', '+227', (SELECT id FROM t075t_division_types WHERE code = 'region_ne' AND id_country = 158), 'zinder', 'Zinder', 'Zinder', 'Zinder', 'Zinder', 1, NOW(6), NOW(6), 1, 1),
(2439374, 158, 'NE-5', NULL, NULL, '0', 'NE-5', 'NE-5', '+227', (SELECT id FROM t075t_division_types WHERE code = 'region_ne' AND id_country = 158), 'tahoua', 'Tahoua', 'Tahoua', 'Tahoua', 'Tahoua', 1, NOW(6), NOW(6), 1, 1),
(2441289, 158, 'NE-4', NULL, NULL, '0', 'NE-4', 'NE-4', '+227', (SELECT id FROM t075t_division_types WHERE code = 'region_ne' AND id_country = 158), 'maradi', 'Maradi', 'Maradi', 'Maradi', 'Maradi', 1, NOW(6), NOW(6), 1, 1),
(2445486, 158, 'NE-3', NULL, NULL, '0', 'NE-3', 'NE-3', '+227', (SELECT id FROM t075t_division_types WHERE code = 'region_ne' AND id_country = 158), 'dosso', 'Dosso', 'Dosso', 'Dosso Region', 'Dosso', 1, NOW(6), NOW(6), 1, 1),
(2445702, 158, 'NE-2', NULL, NULL, '0', 'NE-2', 'NE-2', '+227', (SELECT id FROM t075t_division_types WHERE code = 'region_ne' AND id_country = 158), 'diffa', 'Diffa', 'Diffa', 'Diffa', 'Diffa', 1, NOW(6), NOW(6), 1, 1),
(2448083, 158, 'NE-1', NULL, NULL, '0', 'NE-1', 'NE-1', '+227', (SELECT id FROM t075t_division_types WHERE code = 'region_ne' AND id_country = 158), 'agadez', 'Agadez', 'Agadez', 'Agadez', 'Agadez', 1, NOW(6), NOW(6), 1, 1),
(2595293, 158, 'NE-6', NULL, NULL, '0', 'NE-6', 'NE-6', '+227', (SELECT id FROM t075t_division_types WHERE code = 'region_ne' AND id_country = 158), 'tilaberi', 'Tillabéri', 'Tillabéri', 'Tillaberi Region', 'Tillabéri', 1, NOW(6), NOW(6), 1, 1),
(2595294, 158, 'NE-8', NULL, NULL, '0', 'NE-8', 'NE-8', '+227', (SELECT id FROM t075t_division_types WHERE code = 'region_ne' AND id_country = 158), 'niamey', 'Niamey', 'Niamey', 'Niamey', 'Niamey', 1, NOW(6), NOW(6), 1, 1);