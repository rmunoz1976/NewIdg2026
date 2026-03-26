-- Insertar tipo de división geográfica ADM1 para Nepal: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_np', 154, 8, 'provincia', 'province', 
    'Province', 'Pradesh', 'Pradesh', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Nepal (Provincias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(12095447, 154, 'NP-P1', NULL, NULL, '0', 'NP-P1', 'NP-P1', '+977', (SELECT id FROM t075t_division_types WHERE code = 'provincia_np' AND id_country = 154), 'koshi', 'Koshi', 'Koshi', 'Koshi', 'Koshi', 1, NOW(6), NOW(6), 1, 1),
(12095448, 154, 'NP-P2', NULL, NULL, '0', 'NP-P2', 'NP-P2', '+977', (SELECT id FROM t075t_division_types WHERE code = 'provincia_np' AND id_country = 154), 'madhesh', 'Madhesh', 'Madhesh', 'Madhesh', 'Madhesh', 1, NOW(6), NOW(6), 1, 1),
(12095449, 154, 'NP-P3', NULL, NULL, '0', 'NP-P3', 'NP-P3', '+977', (SELECT id FROM t075t_division_types WHERE code = 'provincia_np' AND id_country = 154), 'bagmati', 'Bagmati', 'Bagmati', 'Bagmati Province', 'Bagmati', 1, NOW(6), NOW(6), 1, 1),
(12095450, 154, 'NP-P4', NULL, NULL, '0', 'NP-P4', 'NP-P4', '+977', (SELECT id FROM t075t_division_types WHERE code = 'provincia_np' AND id_country = 154), 'gandaki', 'Gandaki', 'Gandaki', 'Gandaki Pradesh', 'Gandaki', 1, NOW(6), NOW(6), 1, 1),
(12095451, 154, 'NP-P5', NULL, NULL, '0', 'NP-P5', 'NP-P5', '+977', (SELECT id FROM t075t_division_types WHERE code = 'provincia_np' AND id_country = 154), 'lumbini', 'Lumbini', 'Lumbini', 'Lumbini Province', 'Lumbini', 1, NOW(6), NOW(6), 1, 1),
(12095452, 154, 'NP-P6', NULL, NULL, '0', 'NP-P6', 'NP-P6', '+977', (SELECT id FROM t075t_division_types WHERE code = 'provincia_np' AND id_country = 154), 'karnali', 'Karnali', 'Karnali', 'Karnali Province', 'Karnali', 1, NOW(6), NOW(6), 1, 1),
(12095453, 154, 'NP-P7', NULL, NULL, '0', 'NP-P7', 'NP-P7', '+977', (SELECT id FROM t075t_division_types WHERE code = 'provincia_np' AND id_country = 154), 'sudurpashchim', 'Sudurpashchim', 'Sudurpashchim', 'Sudurpashchim Pradesh', 'Sudurpashchim', 1, NOW(6), NOW(6), 1, 1);