-- Insertar tipo de división geográfica ADM1 para Papúa Nueva Guinea: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_pg', 171, 8, 'provincia', 'province', 
    'Province', 'Provins', 'Province', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Papúa Nueva Guinea (Provincias y Distrito Capital)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2083546, 171, 'PG-WBK', NULL, NULL, '0', 'PG-WBK', 'PG-WBK', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'nueva bretaña occidental', 'West New Britain', 'West New Britain', 'West New Britain Province', 'West New Britain', 1, NOW(6), NOW(6), 1, 1),
(2083549, 171, 'PG-WPD', NULL, NULL, '0', 'PG-WPD', 'PG-WPD', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'occidental', 'Western', 'Western', 'Western Province', 'Western', 1, NOW(6), NOW(6), 1, 1),
(2083551, 171, 'PG-WHM', NULL, NULL, '0', 'PG-WHM', 'PG-WHM', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'tierras altas occidentales', 'Western Highlands', 'Western Highlands', 'Western Highlands Province', 'Western Highlands', 1, NOW(6), NOW(6), 1, 1),
(2086331, 171, 'PG-SHM', NULL, NULL, '0', 'PG-SHM', 'PG-SHM', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'tierras altas meridionales', 'Southern Highlands', 'Southern Highlands', 'Southern Highlands Province', 'Southern Highlands', 1, NOW(6), NOW(6), 1, 1),
(2087246, 171, 'PG-SAN', NULL, NULL, '0', 'PG-SAN', 'PG-SAN', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'sandaun', 'West Sepik', 'West Sepik', 'West Sepik Province', 'West Sepik', 1, NOW(6), NOW(6), 1, 1),
(2089470, 171, 'PG-NSB', NULL, NULL, '0', 'PG-NSB', 'PG-NSB', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'buganvilla', 'Bougainville', 'Bougainville', 'Bougainville', 'Bougainville', 1, NOW(6), NOW(6), 1, 1),
(2089478, 171, 'PG-NPP', NULL, NULL, '0', 'PG-NPP', 'PG-NPP', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'norte', 'Northern', 'Northern', 'Northern Province', 'Northern', 1, NOW(6), NOW(6), 1, 1),
(2089693, 171, 'PG-NIK', NULL, NULL, '0', 'PG-NIK', 'PG-NIK', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'nueva irlanda', 'New Ireland', 'New Ireland', 'New Ireland Province', 'New Ireland', 1, NOW(6), NOW(6), 1, 1),
(2089856, 171, 'PG-NCD', NULL, NULL, '0', 'PG-NCD', 'PG-NCD', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'distrito capital nacional', 'National Capital District', 'National Capital', 'National Capital District', 'Port Moresby', 1, NOW(6), NOW(6), 1, 1),
(2090468, 171, 'PG-MPL', NULL, NULL, '0', 'PG-MPL', 'PG-MPL', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'morobe', 'Morobe', 'Morobe', 'Morobe Province', 'Morobe', 1, NOW(6), NOW(6), 1, 1),
(2091495, 171, 'PG-MRL', NULL, NULL, '0', 'PG-MRL', 'PG-MRL', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'manus', 'Manus', 'Manus', 'Manus Province', 'Manus', 1, NOW(6), NOW(6), 1, 1),
(2091993, 171, 'PG-MPM', NULL, NULL, '0', 'PG-MPM', 'PG-MPM', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'madang', 'Madang', 'Madang', 'Madang Province', 'Madang', 1, NOW(6), NOW(6), 1, 1),
(2096633, 171, 'PG-GPK', NULL, NULL, '0', 'PG-GPK', 'PG-GPK', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'golfo', 'Gulf', 'Gulf', 'Gulf Province', 'Gulf', 1, NOW(6), NOW(6), 1, 1),
(2097655, 171, 'PG-ENB', NULL, NULL, '0', 'PG-ENB', 'PG-ENB', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'enga', 'Enga', 'Enga', 'Enga Province', 'Enga', 1, NOW(6), NOW(6), 1, 1),
(2097846, 171, 'PG-ESW', NULL, NULL, '0', 'PG-ESW', 'PG-ESW', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'sepik oriental', 'East Sepik', 'East Sepik', 'East Sepik Province', 'East Sepik', 1, NOW(6), NOW(6), 1, 1),
(2097853, 171, 'PG-EBR', NULL, NULL, '0', 'PG-EBR', 'PG-EBR', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'nueva bretaña oriental', 'East New Britain', 'East New Britain', 'East New Britain Province', 'East New Britain', 1, NOW(6), NOW(6), 1, 1),
(2097855, 171, 'PG-EHG', NULL, NULL, '0', 'PG-EHG', 'PG-EHG', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'tierras altas orientales', 'Eastern Highlands', 'Eastern Highlands', 'Eastern Highlands Province', 'Eastern Highlands', 1, NOW(6), NOW(6), 1, 1),
(2098593, 171, 'PG-CPK', NULL, NULL, '0', 'PG-CPK', 'PG-CPK', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'chimbu', 'Chimbu', 'Chimbu', 'Chimbu Province', 'Chimbu', 1, NOW(6), NOW(6), 1, 1),
(2132895, 171, 'PG-MBA', NULL, NULL, '0', 'PG-MBA', 'PG-MBA', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'bahía milne', 'Milne Bay', 'Milne Bay', 'Milne Bay Province', 'Milne Bay', 1, NOW(6), NOW(6), 1, 1),
(2133763, 171, 'PG-CPM', NULL, NULL, '0', 'PG-CPM', 'PG-CPM', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'central', 'Central', 'Central', 'Central Province', 'Central', 1, NOW(6), NOW(6), 1, 1),
(8521658, 171, 'PG-HLA', NULL, NULL, '0', 'PG-HLA', 'PG-HLA', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'hela', 'Hela', 'Hela', 'Hela', 'Hela', 1, NOW(6), NOW(6), 1, 1),
(8521660, 171, 'PG-JWK', NULL, NULL, '0', 'PG-JWK', 'PG-JWK', '+675', (SELECT id FROM t075t_division_types WHERE code = 'provincia_pg' AND id_country = 171), 'jiwaka', 'Jiwaka', 'Jiwaka', 'Jiwaka', 'Jiwaka', 1, NOW(6), NOW(6), 1, 1);