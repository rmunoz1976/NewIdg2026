-- Insertar tipo de división geográfica ADM1 para AUSTRALIA: Estado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'estado_au', 14, 8, 'Estado', 'State', 
    'State', 'State', 'Estado', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de AUSTRALIA (Estados y Territorios)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2058645, 14, 'AU-WA', NULL, NULL, '0', 'AU-WA', 'AU-WA', '+61', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_au' AND id_country = 14),
    'Australia Occidental', 'Western Australia', 'Western Australia', 'State of Western Australia', 
    'Australia Occidental', 1, NOW(6), NOW(6), 1, 1),
(2061327, 14, 'AU-SA', NULL, NULL, '0', 'AU-SA', 'AU-SA', '+61', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_au' AND id_country = 14),
    'Australia Meridional', 'South Australia', 'South Australia', 'State of South Australia', 
    'Australia Meridional', 1, NOW(6), NOW(6), 1, 1),
(2064513, 14, 'AU-NT', NULL, NULL, '0', 'AU-NT', 'AU-NT', '+61', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_au' AND id_country = 14),
    'Territorio del Norte', 'Northern Territory', 'Northern Territory', 'Northern Territory', 
    'Territorio del Norte', 1, NOW(6), NOW(6), 1, 1),
(2145234, 14, 'AU-VIC', NULL, NULL, '0', 'AU-VIC', 'AU-VIC', '+61', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_au' AND id_country = 14),
    'Victoria', 'Victoria', 'Victoria', 'State of Victoria', 
    'Victoria', 1, NOW(6), NOW(6), 1, 1),
(2147291, 14, 'AU-TAS', NULL, NULL, '0', 'AU-TAS', 'AU-TAS', '+61', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_au' AND id_country = 14),
    'Tasmania', 'Tasmania', 'Tasmania', 'State of Tasmania', 
    'Tasmania', 1, NOW(6), NOW(6), 1, 1),
(2152274, 14, 'AU-QLD', NULL, NULL, '0', 'AU-QLD', 'AU-QLD', '+61', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_au' AND id_country = 14),
    'Queensland', 'Queensland', 'Queensland', 'State of Queensland', 
    'Queensland', 1, NOW(6), NOW(6), 1, 1),
(2155400, 14, 'AU-NSW', NULL, NULL, '0', 'AU-NSW', 'AU-NSW', '+61', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_au' AND id_country = 14),
    'Nueva Gales del Sur', 'New South Wales', 'New South Wales', 'State of New South Wales', 
    'Nueva Gales del Sur', 1, NOW(6), NOW(6), 1, 1),
(2177478, 14, 'AU-ACT', NULL, NULL, '0', 'AU-ACT', 'AU-ACT', '+61', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_au' AND id_country = 14),
    'Territorio de la Capital Australiana', 'Australian Capital Territory', 'Australian Capital Territory', 'Australian Capital Territory', 
    'Territorio de la Capital Australiana', 1, NOW(6), NOW(6), 1, 1);