-- Insertar tipo de división geográfica ADM1 para Islas Salomón: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_sb', 204, 8, 'provincia', 'province', 
    'Province', 'Province', 'Province', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Islas Salomón (Provincias y Territorio Capital)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2101556, 204, 'SB-WE', NULL, NULL, '0', 'SB-WE', 'SB-WE', '+677', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sb' AND id_country = 204), 'occidental', 'Western', 'Western', 'Western Province', 'Western', 1, NOW(6), NOW(6), 1, 1),
(2106552, 204, 'SB-ML', NULL, NULL, '0', 'SB-ML', 'SB-ML', '+677', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sb' AND id_country = 204), 'malaita', 'Malaita', 'Malaita', 'Malaita Province', 'Malaita', 1, NOW(6), NOW(6), 1, 1),
(2108262, 204, 'SB-IS', NULL, NULL, '0', 'SB-IS', 'SB-IS', '+677', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sb' AND id_country = 204), 'isabel', 'Isabel', 'Isabel', 'Isabel Province', 'Isabel', 1, NOW(6), NOW(6), 1, 1),
(2108831, 204, 'SB-GU', NULL, NULL, '0', 'SB-GU', 'SB-GU', '+677', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sb' AND id_country = 204), 'guadalcanal', 'Guadalcanal', 'Guadalcanal', 'Guadalcanal Province', 'Guadalcanal', 1, NOW(6), NOW(6), 1, 1),
(2109495, 204, 'SB-CE', NULL, NULL, '0', 'SB-CE', 'SB-CE', '+677', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sb' AND id_country = 204), 'central', 'Central', 'Central', 'Central Province', 'Central', 1, NOW(6), NOW(6), 1, 1),
(2178472, 204, 'SB-TE', NULL, NULL, '0', 'SB-TE', 'SB-TE', '+677', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sb' AND id_country = 204), 'temotu', 'Temotu', 'Temotu', 'Temotu Province', 'Temotu', 1, NOW(6), NOW(6), 1, 1),
(2178730, 204, 'SB-MK', NULL, NULL, '0', 'SB-MK', 'SB-MK', '+677', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sb' AND id_country = 204), 'makira-ulawa', 'Makira-Ulawa', 'Makira-Ulawa', 'Makira-Ulawa Province', 'Makira-Ulawa', 1, NOW(6), NOW(6), 1, 1),
(7280292, 204, 'SB-CH', NULL, NULL, '0', 'SB-CH', 'SB-CH', '+677', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sb' AND id_country = 204), 'choiseul', 'Choiseul', 'Choiseul', 'Choiseul', 'Choiseul', 1, NOW(6), NOW(6), 1, 1),
(7280293, 204, 'SB-RB', NULL, NULL, '0', 'SB-RB', 'SB-RB', '+677', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sb' AND id_country = 204), 'rennell y bellona', 'Rennell and Bellona', 'Rennell and Bellona', 'Rennell and Bellona', 'Rennell and Bellona', 1, NOW(6), NOW(6), 1, 1),
(9259067, 204, 'SB-CT', NULL, NULL, '0', 'SB-CT', 'SB-CT', '+677', (SELECT id FROM t075t_division_types WHERE code = 'provincia_sb' AND id_country = 204), 'honiara', 'Honiara', 'Honiara', 'Honiara', 'Honiara', 1, NOW(6), NOW(6), 1, 1);