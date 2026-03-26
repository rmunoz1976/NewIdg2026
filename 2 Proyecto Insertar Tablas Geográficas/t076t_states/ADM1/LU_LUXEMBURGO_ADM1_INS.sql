-- Insertar tipo de división geográfica ADM1 para Luxemburgo: Cantón
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'canton_lu', 129, 8, 'cantón', 'canton', 
    'Canton', 'Canton', 'Canton', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Luxemburgo (Cantones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2959975, 129, 'LU-WI', NULL, NULL, '0', 'LU-WI', 'LU-WI', '+352', (SELECT id FROM t075t_division_types WHERE code = 'canton_lu' AND id_country = 129), 'wiltz', 'Wiltz', 'Wiltz', 'Wiltz', 'Wiltz', 1, NOW(6), NOW(6), 1, 1),
(2960020, 129, 'LU-VD', NULL, NULL, '0', 'LU-VD', 'LU-VD', '+352', (SELECT id FROM t075t_division_types WHERE code = 'canton_lu' AND id_country = 129), 'vianden', 'Vianden', 'Vianden', 'Vianden', 'Vianden', 1, NOW(6), NOW(6), 1, 1),
(2960152, 129, 'LU-RM', NULL, NULL, '0', 'LU-RM', 'LU-RM', '+352', (SELECT id FROM t075t_division_types WHERE code = 'canton_lu' AND id_country = 129), 'remich', 'Remich', 'Remich', 'Remich', 'Remich', 1, NOW(6), NOW(6), 1, 1),
(2960161, 129, 'LU-RD', NULL, NULL, '0', 'LU-RD', 'LU-RD', '+352', (SELECT id FROM t075t_division_types WHERE code = 'canton_lu' AND id_country = 129), 'redange', 'Redange', 'Redange', 'Redange', 'Redange', 1, NOW(6), NOW(6), 1, 1),
(2960275, 129, 'LU-ME', NULL, NULL, '0', 'LU-ME', 'LU-ME', '+352', (SELECT id FROM t075t_division_types WHERE code = 'canton_lu' AND id_country = 129), 'mersch', 'Mersch', 'Mersch', 'Mersch', 'Mersch', 1, NOW(6), NOW(6), 1, 1),
(2960315, 129, 'LU-LU', NULL, NULL, '0', 'LU-LU', 'LU-LU', '+352', (SELECT id FROM t075t_division_types WHERE code = 'canton_lu' AND id_country = 129), 'luxemburgo', 'Luxembourg', 'Luxembourg', 'Luxembourg', 'Luxembourg', 1, NOW(6), NOW(6), 1, 1),
(2960514, 129, 'LU-GR', NULL, NULL, '0', 'LU-GR', 'LU-GR', '+352', (SELECT id FROM t075t_division_types WHERE code = 'canton_lu' AND id_country = 129), 'grevenmacher', 'Grevenmacher', 'Grevenmacher', 'Grevenmacher', 'Grevenmacher', 1, NOW(6), NOW(6), 1, 1),
(2960599, 129, 'LU-ES', NULL, NULL, '0', 'LU-ES', 'LU-ES', '+352', (SELECT id FROM t075t_division_types WHERE code = 'canton_lu' AND id_country = 129), 'esch-sur-alzette', 'Esch-sur-Alzette', 'Esch-sur-Alzette', 'Canton d''Esch-sur-Alzette', 'Esch-sur-Alzette', 1, NOW(6), NOW(6), 1, 1),
(2960629, 129, 'LU-EC', NULL, NULL, '0', 'LU-EC', 'LU-EC', '+352', (SELECT id FROM t075t_division_types WHERE code = 'canton_lu' AND id_country = 129), 'echternach', 'Echternach', 'Echternach', 'Canton d''Echternach', 'Echternach', 1, NOW(6), NOW(6), 1, 1),
(2960656, 129, 'LU-DI', NULL, NULL, '0', 'LU-DI', 'LU-DI', '+352', (SELECT id FROM t075t_division_types WHERE code = 'canton_lu' AND id_country = 129), 'diekirch', 'Diekirch', 'Diekirch', 'Diekirch', 'Diekirch', 1, NOW(6), NOW(6), 1, 1),
(2960683, 129, 'LU-CL', NULL, NULL, '0', 'LU-CL', 'LU-CL', '+352', (SELECT id FROM t075t_division_types WHERE code = 'canton_lu' AND id_country = 129), 'clervaux', 'Clervaux', 'Clervaux', 'Clervaux', 'Clervaux', 1, NOW(6), NOW(6), 1, 1),
(2960696, 129, 'LU-CA', NULL, NULL, '0', 'LU-CA', 'LU-CA', '+352', (SELECT id FROM t075t_division_types WHERE code = 'canton_lu' AND id_country = 129), 'capellen', 'Capellen', 'Capellen', 'Capellen', 'Capellen', 1, NOW(6), NOW(6), 1, 1);