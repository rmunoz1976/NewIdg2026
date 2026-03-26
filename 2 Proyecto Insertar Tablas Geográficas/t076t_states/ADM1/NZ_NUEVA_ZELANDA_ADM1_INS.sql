-- Insertar tipo de división geográfica ADM1 para Nueva Zelanda: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_nz', 156, 8, 'región', 'region', 
    'Region', 'Region', 'Region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Nueva Zelanda (Regiones y Territorios)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2179538, 156, 'NZ-WGN', NULL, NULL, '0', 'NZ-WGN', 'NZ-WGN', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'wellington', 'Wellington', 'Wellington', 'Wellington', 'Wellington', 1, NOW(6), NOW(6), 1, 1),
(2179671, 156, 'NZ-MWT', NULL, NULL, '0', 'NZ-MWT', 'NZ-MWT', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'manawatu-wanganui', 'Manawatu-Wanganui', 'Manawatu-Wanganui', 'Manawatu-Wanganui', 'Manawatu-Wanganui', 1, NOW(6), NOW(6), 1, 1),
(2180293, 156, 'NZ-WKO', NULL, NULL, '0', 'NZ-WKO', 'NZ-WKO', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'waikato', 'Waikato', 'Waikato', 'Waikato', 'Waikato', 1, NOW(6), NOW(6), 1, 1),
(2181818, 156, 'NZ-TAS', NULL, NULL, '0', 'NZ-TAS', 'NZ-TAS', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'tasman', 'Tasman', 'Tasman', 'Tasman', 'Tasman', 1, NOW(6), NOW(6), 1, 1),
(2181872, 156, 'NZ-TKI', NULL, NULL, '0', 'NZ-TKI', 'NZ-TKI', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'taranaki', 'Taranaki', 'Taranaki', 'Taranaki', 'Taranaki', 1, NOW(6), NOW(6), 1, 1),
(2182501, 156, 'NZ-STL', NULL, NULL, '0', 'NZ-STL', 'NZ-STL', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'southland', 'Southland', 'Southland', 'Southland', 'Southland', 1, NOW(6), NOW(6), 1, 1),
(2182560, 156, 'NZ-BOP', NULL, NULL, '0', 'NZ-BOP', 'NZ-BOP', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'bay of plenty', 'Bay of Plenty', 'Bay of Plenty', 'Bay of Plenty', 'Bay of Plenty', 1, NOW(6), NOW(6), 1, 1),
(2185978, 156, 'NZ-NTL', NULL, NULL, '0', 'NZ-NTL', 'NZ-NTL', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'northland', 'Northland', 'Northland', 'Northland', 'Northland', 1, NOW(6), NOW(6), 1, 1),
(2187304, 156, 'NZ-MBH', NULL, NULL, '0', 'NZ-MBH', 'NZ-MBH', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'marlborough', 'Marlborough', 'Marlborough', 'Marlborough', 'Marlborough', 1, NOW(6), NOW(6), 1, 1),
(2190146, 156, 'NZ-HKB', NULL, NULL, '0', 'NZ-HKB', 'NZ-HKB', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'hawke''s bay', 'Hawke''s Bay', 'Hawke''s Bay', 'Hawke''s Bay', 'Hawke''s Bay', 1, NOW(6), NOW(6), 1, 1),
(2190767, 156, 'NZ-GIS', NULL, NULL, '0', 'NZ-GIS', 'NZ-GIS', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'gisborne', 'Gisborne', 'Gisborne', 'Gisborne', 'Gisborne', 1, NOW(6), NOW(6), 1, 1),
(2192628, 156, 'NZ-CAN', NULL, NULL, '0', 'NZ-CAN', 'NZ-CAN', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'canterbury', 'Canterbury', 'Canterbury', 'Canterbury', 'Canterbury', 1, NOW(6), NOW(6), 1, 1),
(2193734, 156, 'NZ-AUK', NULL, NULL, '0', 'NZ-AUK', 'NZ-AUK', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'auckland', 'Auckland', 'Auckland', 'Auckland', 'Auckland', 1, NOW(6), NOW(6), 1, 1),
(4033013, 156, 'NZ-CIT', NULL, NULL, '0', 'NZ-CIT', 'NZ-CIT', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'islas chatham', 'Chatham Islands', 'Chatham Islands', 'Chatham Islands', 'Chatham Islands', 1, NOW(6), NOW(6), 1, 1),
(6612108, 156, 'NZ-NSN', NULL, NULL, '0', 'NZ-NSN', 'NZ-NSN', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'nelson', 'Nelson', 'Nelson', 'Nelson', 'Nelson', 1, NOW(6), NOW(6), 1, 1),
(6612109, 156, 'NZ-OTA', NULL, NULL, '0', 'NZ-OTA', 'NZ-OTA', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'otago', 'Otago', 'Otago', 'Otago', 'Otago', 1, NOW(6), NOW(6), 1, 1),
(6612113, 156, 'NZ-WTC', NULL, NULL, '0', 'NZ-WTC', 'NZ-WTC', '+64', (SELECT id FROM t075t_division_types WHERE code = 'region_nz' AND id_country = 156), 'west coast', 'West Coast', 'West Coast', 'West Coast', 'West Coast', 1, NOW(6), NOW(6), 1, 1);