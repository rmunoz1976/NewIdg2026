-- Insertar tipo de división geográfica ADM1 para SAMOA AMERICANA: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_as', 5, 8, 'Distrito', 'District', 
    'District', 'District', 'Distrito', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de SAMOA AMERICANA (Distritos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(5880873, 5, 'AS-WE', NULL, NULL, '0', 'AS-WE', 'AS-WE', '+1-684', 
    (SELECT id FROM t075t_division_types WHERE code = 'distrito_as' AND id_country = 5),
    'Western District', 'Western District', 'Western District', 'Western District', 
    'Western District', 1, NOW(6), NOW(6), 1, 1),
(5881199, 5, 'AS-SW', NULL, NULL, '0', 'AS-SW', 'AS-SW', '+1-684', 
    (SELECT id FROM t075t_division_types WHERE code = 'distrito_as' AND id_country = 5),
    'Swains Island', 'Swains Island', 'Swains Island', 'Swains Island', 
    'Swains Island', 1, NOW(6), NOW(6), 1, 1),
(5881219, 5, 'AS-EA', NULL, NULL, '0', 'AS-EA', 'AS-EA', '+1-684', 
    (SELECT id FROM t075t_division_types WHERE code = 'distrito_as' AND id_country = 5),
    'Eastern District', 'Eastern District', 'Eastern District', 'Eastern District', 
    'Eastern District', 1, NOW(6), NOW(6), 1, 1),
(5881436, 5, 'AS-MA', NULL, NULL, '0', 'AS-MA', 'AS-MA', '+1-684', 
    (SELECT id FROM t075t_division_types WHERE code = 'distrito_as' AND id_country = 5),
    'Manu''a District', 'Manu''a District', 'Manu''a District', 'Manu''a District', 
    'Manu''a District', 1, NOW(6), NOW(6), 1, 1),
(7309441, 5, 'AS-RO', NULL, NULL, '0', 'AS-RO', 'AS-RO', '+1-684', 
    (SELECT id FROM t075t_division_types WHERE code = 'distrito_as' AND id_country = 5),
    'Rose Atoll', 'Rose Atoll', 'Rose Atoll', 'Rose Atoll', 
    'Rose Atoll', 1, NOW(6), NOW(6), 1, 1);