-- Insertar tipo de división geográfica ADM1 para Filipinas: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_ph', 174, 8, 'región', 'region', 
    'Region', 'Rehiyon', 'Rehiyon', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Filipinas (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(7115989, 174, 'PH-14', NULL, NULL, '0', 'PH-14', 'PH-14', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'mindanao musulmán', 'Autonomous Region in Muslim Mindanao', 'Autonomous Region in Muslim Mindanao', 'Autonomous Region in Muslim Mindanao', 'ARMM', 1, NOW(6), NOW(6), 1, 1),
(7521295, 174, 'PH-10', NULL, NULL, '0', 'PH-10', 'PH-10', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'mindanao septentrional', 'Northern Mindanao', 'Northern Mindanao', 'Northern Mindanao', 'Northern Mindanao', 1, NOW(6), NOW(6), 1, 1),
(7521296, 174, 'PH-41', NULL, NULL, '0', 'PH-41', 'PH-41', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'mimaropa', 'Mimaropa', 'Mimaropa', 'Mimaropa', 'Mimaropa', 1, NOW(6), NOW(6), 1, 1),
(7521297, 174, 'PH-02', NULL, NULL, '0', 'PH-02', 'PH-02', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'valle del cagayán', 'Cagayan Valley', 'Cagayan Valley', 'Cagayan Valley', 'Cagayan Valley', 1, NOW(6), NOW(6), 1, 1),
(7521298, 174, 'PH-12', NULL, NULL, '0', 'PH-12', 'PH-12', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'soccsksargen', 'Soccsksargen', 'Soccsksargen', 'Soccsksargen', 'Soccsksargen', 1, NOW(6), NOW(6), 1, 1),
(7521299, 174, 'PH-13', NULL, NULL, '0', 'PH-13', 'PH-13', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'caraga', 'Caraga', 'Caraga', 'Caraga', 'Caraga', 1, NOW(6), NOW(6), 1, 1),
(7521300, 174, 'PH-15', NULL, NULL, '0', 'PH-15', 'PH-15', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'cordillera', 'Cordillera Administrative Region', 'Cordillera Administrative Region', 'Cordillera Administrative Region', 'CAR', 1, NOW(6), NOW(6), 1, 1),
(7521301, 174, 'PH-01', NULL, NULL, '0', 'PH-01', 'PH-01', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'ilocos', 'Ilocos', 'Ilocos', 'Ilocos', 'Ilocos', 1, NOW(6), NOW(6), 1, 1),
(7521303, 174, 'PH-40', NULL, NULL, '0', 'PH-40', 'PH-40', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'calabarzon', 'Calabarzon', 'Calabarzon', 'Calabarzon', 'Calabarzon', 1, NOW(6), NOW(6), 1, 1),
(7521304, 174, 'PH-06', NULL, NULL, '0', 'PH-06', 'PH-06', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'visayas occidental', 'Western Visayas', 'Western Visayas', 'Western Visayas', 'Western Visayas', 1, NOW(6), NOW(6), 1, 1),
(7521305, 174, 'PH-03', NULL, NULL, '0', 'PH-03', 'PH-03', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'luzón central', 'Central Luzon', 'Central Luzon', 'Central Luzon', 'Central Luzon', 1, NOW(6), NOW(6), 1, 1),
(7521306, 174, 'PH-07', NULL, NULL, '0', 'PH-07', 'PH-07', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'visayas central', 'Central Visayas', 'Central Visayas', 'Central Visayas', 'Central Visayas', 1, NOW(6), NOW(6), 1, 1),
(7521307, 174, 'PH-08', NULL, NULL, '0', 'PH-08', 'PH-08', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'visayas oriental', 'Eastern Visayas', 'Eastern Visayas', 'Eastern Visayas', 'Eastern Visayas', 1, NOW(6), NOW(6), 1, 1),
(7521308, 174, 'PH-09', NULL, NULL, '0', 'PH-09', 'PH-09', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'península de zamboanga', 'Zamboanga Peninsula', 'Zamboanga Peninsula', 'Zamboanga Peninsula', 'Zamboanga Peninsula', 1, NOW(6), NOW(6), 1, 1),
(7521309, 174, 'PH-11', NULL, NULL, '0', 'PH-11', 'PH-11', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'davao', 'Davao', 'Davao', 'Davao', 'Davao', 1, NOW(6), NOW(6), 1, 1),
(7521310, 174, 'PH-05', NULL, NULL, '0', 'PH-05', 'PH-05', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'bicol', 'Bicol', 'Bicol', 'Bicol', 'Bicol', 1, NOW(6), NOW(6), 1, 1),
(7521311, 174, 'PH-00', NULL, NULL, '0', 'PH-00', 'PH-00', '+63', (SELECT id FROM t075t_division_types WHERE code = 'region_ph' AND id_country = 174), 'región capital nacional', 'National Capital Region', 'National Capital Region', 'National Capital Region', 'NCR', 1, NOW(6), NOW(6), 1, 1);