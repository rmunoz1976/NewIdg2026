-- Insertar tipo de división geográfica ADM1 para México: Estado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'estado_mx', 142, 8, 'estado', 'state', 
    'State', 'Estado', 'Estado', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de México (Estados y Ciudad de México)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(3514211, 142, 'MX-YUC', NULL, NULL, '0', 'MX-YUC', 'MX-YUC', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'yucatán', 'Yucatán', 'Yucatán', 'Estado de Yucatán', 'Yucatán', 1, NOW(6), NOW(6), 1, 1),
(3514780, 142, 'MX-VER', NULL, NULL, '0', 'MX-VER', 'MX-VER', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'veracruz', 'Veracruz', 'Veracruz', 'Estado de Veracruz-Llave', 'Veracruz', 1, NOW(6), NOW(6), 1, 1),
(3515359, 142, 'MX-TLA', NULL, NULL, '0', 'MX-TLA', 'MX-TLA', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'tlaxcala', 'Tlaxcala', 'Tlaxcala', 'Estado de Tlaxcala', 'Tlaxcala', 1, NOW(6), NOW(6), 1, 1),
(3516391, 142, 'MX-TAM', NULL, NULL, '0', 'MX-TAM', 'MX-TAM', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'tamaulipas', 'Tamaulipas', 'Tamaulipas', 'Estado de Tamaulipas', 'Tamaulipas', 1, NOW(6), NOW(6), 1, 1),
(3516458, 142, 'MX-TAB', NULL, NULL, '0', 'MX-TAB', 'MX-TAB', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'tabasco', 'Tabasco', 'Tabasco', 'Estado de Tabasco', 'Tabasco', 1, NOW(6), NOW(6), 1, 1),
(3520887, 142, 'MX-ROO', NULL, NULL, '0', 'MX-ROO', 'MX-ROO', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'quintana roo', 'Quintana Roo', 'Quintana Roo', 'Estado de Quintana Roo', 'Quintana Roo', 1, NOW(6), NOW(6), 1, 1),
(3520914, 142, 'MX-QUE', NULL, NULL, '0', 'MX-QUE', 'MX-QUE', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'querétaro', 'Querétaro', 'Querétaro', 'Estado de Querétaro', 'Querétaro', 1, NOW(6), NOW(6), 1, 1),
(3521082, 142, 'MX-PUE', NULL, NULL, '0', 'MX-PUE', 'MX-PUE', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'puebla', 'Puebla', 'Puebla', 'Estado de Puebla', 'Puebla', 1, NOW(6), NOW(6), 1, 1),
(3522509, 142, 'MX-OAX', NULL, NULL, '0', 'MX-OAX', 'MX-OAX', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'oaxaca', 'Oaxaca', 'Oaxaca', 'Estado de Oaxaca', 'Oaxaca', 1, NOW(6), NOW(6), 1, 1),
(3522542, 142, 'MX-NLE', NULL, NULL, '0', 'MX-NLE', 'MX-NLE', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'nuevo león', 'Nuevo León', 'Nuevo León', 'Estado de Nuevo León', 'Nuevo León', 1, NOW(6), NOW(6), 1, 1),
(3522961, 142, 'MX-MOR', NULL, NULL, '0', 'MX-MOR', 'MX-MOR', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'morelos', 'Morelos', 'Morelos', 'Estado de Morelos', 'Morelos', 1, NOW(6), NOW(6), 1, 1),
(3523272, 142, 'MX-MEX', NULL, NULL, '0', 'MX-MEX', 'MX-MEX', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'méxico', 'México', 'México', 'Estado de México', 'México', 1, NOW(6), NOW(6), 1, 1),
(3527115, 142, 'MX-HID', NULL, NULL, '0', 'MX-HID', 'MX-HID', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'hidalgo', 'Hidalgo', 'Hidalgo', 'Estado de Hidalgo', 'Hidalgo', 1, NOW(6), NOW(6), 1, 1),
(3527213, 142, 'MX-GRO', NULL, NULL, '0', 'MX-GRO', 'MX-GRO', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'guerrero', 'Guerrero', 'Guerrero', 'Estado de Guerrero', 'Guerrero', 1, NOW(6), NOW(6), 1, 1),
(3527646, 142, 'MX-CMX', NULL, NULL, '0', 'MX-CMX', 'MX-CMX', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'ciudad de méxico', 'Ciudad de México', 'Ciudad de México', 'Ciudad de México', 'Ciudad de México', 1, NOW(6), NOW(6), 1, 1),
(3531011, 142, 'MX-CHP', NULL, NULL, '0', 'MX-CHP', 'MX-CHP', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'chiapas', 'Chiapas', 'Chiapas', 'Estado de Chiapas', 'Chiapas', 1, NOW(6), NOW(6), 1, 1),
(3531730, 142, 'MX-CAM', NULL, NULL, '0', 'MX-CAM', 'MX-CAM', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'campeche', 'Campeche', 'Campeche', 'Estado de Campeche', 'Campeche', 1, NOW(6), NOW(6), 1, 1),
(3979840, 142, 'MX-ZAC', NULL, NULL, '0', 'MX-ZAC', 'MX-ZAC', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'zacatecas', 'Zacatecas', 'Zacatecas', 'Estado de Zacatecas', 'Zacatecas', 1, NOW(6), NOW(6), 1, 1),
(3982846, 142, 'MX-SON', NULL, NULL, '0', 'MX-SON', 'MX-SON', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'sonora', 'Sonora', 'Sonora', 'Estado de Sonora', 'Sonora', 1, NOW(6), NOW(6), 1, 1),
(3983035, 142, 'MX-SIN', NULL, NULL, '0', 'MX-SIN', 'MX-SIN', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'sinaloa', 'Sinaloa', 'Sinaloa', 'Estado de Sinaloa', 'Sinaloa', 1, NOW(6), NOW(6), 1, 1),
(3985605, 142, 'MX-SLP', NULL, NULL, '0', 'MX-SLP', 'MX-SLP', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'san luis potosí', 'San Luis Potosí', 'San Luis Potosí', 'Estado de San Luis Potosí', 'San Luis Potosí', 1, NOW(6), NOW(6), 1, 1),
(3995012, 142, 'MX-NAY', NULL, NULL, '0', 'MX-NAY', 'MX-NAY', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'nayarit', 'Nayarit', 'Nayarit', 'Estado de Nayarit', 'Nayarit', 1, NOW(6), NOW(6), 1, 1),
(3995955, 142, 'MX-MIC', NULL, NULL, '0', 'MX-MIC', 'MX-MIC', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'michoacán', 'Michoacán', 'Michoacán', 'Estado de Michoacán de Ocampo', 'Michoacán', 1, NOW(6), NOW(6), 1, 1),
(4004156, 142, 'MX-JAL', NULL, NULL, '0', 'MX-JAL', 'MX-JAL', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'jalisco', 'Jalisco', 'Jalisco', 'Estado de Jalisco', 'Jalisco', 1, NOW(6), NOW(6), 1, 1),
(4005267, 142, 'MX-GUA', NULL, NULL, '0', 'MX-GUA', 'MX-GUA', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'guanajuato', 'Guanajuato', 'Guanajuato', 'Estado de Guanajuato', 'Guanajuato', 1, NOW(6), NOW(6), 1, 1),
(4011741, 142, 'MX-DUR', NULL, NULL, '0', 'MX-DUR', 'MX-DUR', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'durango', 'Durango', 'Durango', 'Estado de Durango', 'Durango', 1, NOW(6), NOW(6), 1, 1),
(4013513, 142, 'MX-COL', NULL, NULL, '0', 'MX-COL', 'MX-COL', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'colima', 'Colima', 'Colima', 'Estado de Colima', 'Colima', 1, NOW(6), NOW(6), 1, 1),
(4013674, 142, 'MX-COA', NULL, NULL, '0', 'MX-COA', 'MX-COA', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'coahuila', 'Coahuila', 'Coahuila', 'Estado de Coahuila de Zaragoza', 'Coahuila', 1, NOW(6), NOW(6), 1, 1),
(4014336, 142, 'MX-CHH', NULL, NULL, '0', 'MX-CHH', 'MX-CHH', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'chihuahua', 'Chihuahua', 'Chihuahua', 'Estado de Chihuahua', 'Chihuahua', 1, NOW(6), NOW(6), 1, 1),
(4017698, 142, 'MX-BCS', NULL, NULL, '0', 'MX-BCS', 'MX-BCS', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'baja california sur', 'Baja California Sur', 'Baja California Sur', 'Estado de Baja California Sur', 'Baja California Sur', 1, NOW(6), NOW(6), 1, 1),
(4017700, 142, 'MX-BCN', NULL, NULL, '0', 'MX-BCN', 'MX-BCN', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'baja california', 'Baja California', 'Baja California', 'Estado de Baja California', 'Baja California', 1, NOW(6), NOW(6), 1, 1),
(4019231, 142, 'MX-AGU', NULL, NULL, '0', 'MX-AGU', 'MX-AGU', '+52', (SELECT id FROM t075t_division_types WHERE code = 'estado_mx' AND id_country = 142), 'aguascalientes', 'Aguascalientes', 'Aguascalientes', 'Estado de Aguascalientes', 'Aguascalientes', 1, NOW(6), NOW(6), 1, 1);