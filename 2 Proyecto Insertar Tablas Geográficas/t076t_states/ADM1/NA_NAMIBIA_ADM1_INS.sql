-- Insertar tipo de división geográfica ADM1 para Namibia: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_na', 152, 8, 'región', 'region', 
    'Region', 'Region', 'Region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Namibia (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(1090052, 152, 'NA-CA', NULL, NULL, '0', 'NA-CA', 'NA-CA', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'zambezi', 'Zambezi Region', 'Zambezi', 'Zambezi Region', 'Zambezi', 1, NOW(6), NOW(6), 1, 1),
(3352137, 152, 'NA-KH', NULL, NULL, '0', 'NA-KH', 'NA-KH', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'khomas', 'Khomas Region', 'Khomas', 'Khomas', 'Khomas', 1, NOW(6), NOW(6), 1, 1),
(3371199, 152, 'NA-ER', NULL, NULL, '0', 'NA-ER', 'NA-ER', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'erongo', 'Erongo Region', 'Erongo', 'Erongo', 'Erongo', 1, NOW(6), NOW(6), 1, 1),
(3371200, 152, 'NA-HA', NULL, NULL, '0', 'NA-HA', 'NA-HA', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'hardap', 'Hardap Region', 'Hardap', 'Hardap', 'Hardap', 1, NOW(6), NOW(6), 1, 1),
(3371201, 152, 'NA-KA', NULL, NULL, '0', 'NA-KA', 'NA-KA', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'karas', 'Karas Region', 'Karas', 'Karas', 'Karas', 1, NOW(6), NOW(6), 1, 1),
(3371202, 152, 'NA-KU', NULL, NULL, '0', 'NA-KU', 'NA-KU', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'kunene', 'Kunene Region', 'Kunene', 'Kunene', 'Kunene', 1, NOW(6), NOW(6), 1, 1),
(3371203, 152, 'NA-OW', NULL, NULL, '0', 'NA-OW', 'NA-OW', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'ohangwena', 'Ohangwena Region', 'Ohangwena', 'Ohangwena', 'Ohangwena', 1, NOW(6), NOW(6), 1, 1),
(3371205, 152, 'NA-OH', NULL, NULL, '0', 'NA-OH', 'NA-OH', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'omaheke', 'Omaheke Region', 'Omaheke', 'Omaheke', 'Omaheke', 1, NOW(6), NOW(6), 1, 1),
(3371206, 152, 'NA-OS', NULL, NULL, '0', 'NA-OS', 'NA-OS', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'omusati', 'Omusati Region', 'Omusati', 'Omusati', 'Omusati', 1, NOW(6), NOW(6), 1, 1),
(3371207, 152, 'NA-ON', NULL, NULL, '0', 'NA-ON', 'NA-ON', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'oshana', 'Oshana Region', 'Oshana', 'Oshana', 'Oshana', 1, NOW(6), NOW(6), 1, 1),
(3371208, 152, 'NA-OT', NULL, NULL, '0', 'NA-OT', 'NA-OT', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'oshikoto', 'Oshikoto Region', 'Oshikoto', 'Oshikoto', 'Oshikoto', 1, NOW(6), NOW(6), 1, 1),
(3371209, 152, 'NA-OD', NULL, NULL, '0', 'NA-OD', 'NA-OD', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'otjozondjupa', 'Otjozondjupa Region', 'Otjozondjupa', 'Otjozondjupa', 'Otjozondjupa', 1, NOW(6), NOW(6), 1, 1),
(8693188, 152, 'NA-KE', NULL, NULL, '0', 'NA-KE', 'NA-KE', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'kavango este', 'Kavango East Region', 'Kavango East', 'Kavango East Region', 'Kavango East', 1, NOW(6), NOW(6), 1, 1),
(8693189, 152, 'NA-KW', NULL, NULL, '0', 'NA-KW', 'NA-KW', '+264', (SELECT id FROM t075t_division_types WHERE code = 'region_na' AND id_country = 152), 'kavango oeste', 'Kavango West Region', 'Kavango West', 'Kavango West Region', 'Kavango West', 1, NOW(6), NOW(6), 1, 1);