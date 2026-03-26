-- Insertar tipo de división geográfica ADM1 para Nigeria: Estado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'estado_ng', 159, 8, 'estado', 'state', 
    'State', 'State', 'State', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Nigeria (Estados y Territorio Capital)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2322907, 159, 'NG-SO', NULL, NULL, '0', 'NG-SO', 'NG-SO', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'sokoto', 'Sokoto', 'Sokoto', 'Sokoto State', 'Sokoto', 1, NOW(6), NOW(6), 1, 1),
(2324433, 159, 'NG-RI', NULL, NULL, '0', 'NG-RI', 'NG-RI', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'rivers', 'Rivers', 'Rivers', 'Rivers State', 'Rivers', 1, NOW(6), NOW(6), 1, 1),
(2324828, 159, 'NG-PL', NULL, NULL, '0', 'NG-PL', 'NG-PL', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'plateau', 'Plateau', 'Plateau', 'Plateau State', 'Plateau', 1, NOW(6), NOW(6), 1, 1),
(2325190, 159, 'NG-OY', NULL, NULL, '0', 'NG-OY', 'NG-OY', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'oyo', 'Oyo', 'Oyo', 'Oyo State', 'Oyo', 1, NOW(6), NOW(6), 1, 1),
(2326168, 159, 'NG-ON', NULL, NULL, '0', 'NG-ON', 'NG-ON', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'ondo', 'Ondo', 'Ondo', 'Ondo State', 'Ondo', 1, NOW(6), NOW(6), 1, 1),
(2327546, 159, 'NG-OG', NULL, NULL, '0', 'NG-OG', 'NG-OG', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'ogun', 'Ogun', 'Ogun', 'Ogun State', 'Ogun', 1, NOW(6), NOW(6), 1, 1),
(2328925, 159, 'NG-NI', NULL, NULL, '0', 'NG-NI', 'NG-NI', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'niger', 'Niger', 'Niger', 'Niger State', 'Niger', 1, NOW(6), NOW(6), 1, 1),
(2332453, 159, 'NG-LA', NULL, NULL, '0', 'NG-LA', 'NG-LA', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'lagos', 'Lagos', 'Lagos', 'Lagos State', 'Lagos', 1, NOW(6), NOW(6), 1, 1),
(2332785, 159, 'NG-KW', NULL, NULL, '0', 'NG-KW', 'NG-KW', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'kwara', 'Kwara', 'Kwara', 'Kwara State', 'Kwara', 1, NOW(6), NOW(6), 1, 1),
(2334797, 159, 'NG-KT', NULL, NULL, '0', 'NG-KT', 'NG-KT', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'katsina', 'Katsina', 'Katsina', 'Katsina State', 'Katsina', 1, NOW(6), NOW(6), 1, 1),
(2335196, 159, 'NG-KN', NULL, NULL, '0', 'NG-KN', 'NG-KN', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'kano', 'Kano', 'Kano', 'Kano State', 'Kano', 1, NOW(6), NOW(6), 1, 1),
(2335722, 159, 'NG-KD', NULL, NULL, '0', 'NG-KD', 'NG-KD', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'kaduna', 'Kaduna', 'Kaduna', 'Kaduna State', 'Kaduna', 1, NOW(6), NOW(6), 1, 1),
(2337542, 159, 'NG-IM', NULL, NULL, '0', 'NG-IM', 'NG-IM', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'imo', 'Imo', 'Imo', 'Imo State', 'Imo', 1, NOW(6), NOW(6), 1, 1),
(2345891, 159, 'NG-CR', NULL, NULL, '0', 'NG-CR', 'NG-CR', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'cross river', 'Cross River', 'Cross River', 'Cross River State', 'Cross River', 1, NOW(6), NOW(6), 1, 1),
(2346794, 159, 'NG-BO', NULL, NULL, '0', 'NG-BO', 'NG-BO', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'borno', 'Borno', 'Borno', 'Borno State', 'Borno', 1, NOW(6), NOW(6), 1, 1),
(2347266, 159, 'NG-BE', NULL, NULL, '0', 'NG-BE', 'NG-BE', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'benue', 'Benue', 'Benue', 'Benue State', 'Benue', 1, NOW(6), NOW(6), 1, 1),
(2347468, 159, 'NG-BA', NULL, NULL, '0', 'NG-BA', 'NG-BA', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'bauchi', 'Bauchi', 'Bauchi', 'Bauchi State', 'Bauchi', 1, NOW(6), NOW(6), 1, 1),
(2349961, 159, 'NG-AN', NULL, NULL, '0', 'NG-AN', 'NG-AN', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'anambra', 'Anambra', 'Anambra', 'Anambra State', 'Anambra', 1, NOW(6), NOW(6), 1, 1),
(2350813, 159, 'NG-AK', NULL, NULL, '0', 'NG-AK', 'NG-AK', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'akwa ibom', 'Akwa Ibom', 'Akwa Ibom', 'Akwa Ibom State', 'Akwa Ibom', 1, NOW(6), NOW(6), 1, 1),
(2352776, 159, 'NG-FC', NULL, NULL, '0', 'NG-FC', 'NG-FC', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'abuja', 'Federal Capital Territory', 'Abuja', 'Federal Capital Territory', 'Abuja', 1, NOW(6), NOW(6), 1, 1),
(2565340, 159, 'NG-AB', NULL, NULL, '0', 'NG-AB', 'NG-AB', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'abia', 'Abia', 'Abia', 'Abia State', 'Abia', 1, NOW(6), NOW(6), 1, 1),
(2565341, 159, 'NG-DE', NULL, NULL, '0', 'NG-DE', 'NG-DE', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'delta', 'Delta', 'Delta', 'Delta State', 'Delta', 1, NOW(6), NOW(6), 1, 1),
(2565342, 159, 'NG-AD', NULL, NULL, '0', 'NG-AD', 'NG-AD', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'adamawa', 'Adamawa', 'Adamawa', 'Adamawa State', 'Adamawa', 1, NOW(6), NOW(6), 1, 1),
(2565343, 159, 'NG-ED', NULL, NULL, '0', 'NG-ED', 'NG-ED', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'edo', 'Edo', 'Edo', 'Edo', 'Edo', 1, NOW(6), NOW(6), 1, 1),
(2565344, 159, 'NG-EN', NULL, NULL, '0', 'NG-EN', 'NG-EN', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'enugu', 'Enugu', 'Enugu', 'Enugu State', 'Enugu', 1, NOW(6), NOW(6), 1, 1),
(2565345, 159, 'NG-JI', NULL, NULL, '0', 'NG-JI', 'NG-JI', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'jigawa', 'Jigawa', 'Jigawa', 'Jigawa State', 'Jigawa', 1, NOW(6), NOW(6), 1, 1),
(2595344, 159, 'NG-BY', NULL, NULL, '0', 'NG-BY', 'NG-BY', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'bayelsa', 'Bayelsa', 'Bayelsa', 'Bayelsa State', 'Bayelsa', 1, NOW(6), NOW(6), 1, 1),
(2595345, 159, 'NG-EB', NULL, NULL, '0', 'NG-EB', 'NG-EB', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'ebonyi', 'Ebonyi', 'Ebonyi', 'Ebonyi State', 'Ebonyi', 1, NOW(6), NOW(6), 1, 1),
(2595346, 159, 'NG-EK', NULL, NULL, '0', 'NG-EK', 'NG-EK', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'ekiti', 'Ekiti', 'Ekiti', 'Ekiti State', 'Ekiti', 1, NOW(6), NOW(6), 1, 1),
(2595347, 159, 'NG-GO', NULL, NULL, '0', 'NG-GO', 'NG-GO', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'gombe', 'Gombe', 'Gombe', 'Gombe State', 'Gombe', 1, NOW(6), NOW(6), 1, 1),
(2595348, 159, 'NG-NA', NULL, NULL, '0', 'NG-NA', 'NG-NA', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'nasarawa', 'Nasarawa', 'Nasarawa', 'Nasarawa State', 'Nasarawa', 1, NOW(6), NOW(6), 1, 1),
(2595349, 159, 'NG-ZA', NULL, NULL, '0', 'NG-ZA', 'NG-ZA', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'zamfara', 'Zamfara', 'Zamfara', 'Zamfara State', 'Zamfara', 1, NOW(6), NOW(6), 1, 1),
(2597363, 159, 'NG-KE', NULL, NULL, '0', 'NG-KE', 'NG-KE', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'kebbi', 'Kebbi', 'Kebbi', 'Kebbi State', 'Kebbi', 1, NOW(6), NOW(6), 1, 1),
(2597364, 159, 'NG-KO', NULL, NULL, '0', 'NG-KO', 'NG-KO', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'kogi', 'Kogi', 'Kogi', 'Kogi State', 'Kogi', 1, NOW(6), NOW(6), 1, 1),
(2597365, 159, 'NG-OS', NULL, NULL, '0', 'NG-OS', 'NG-OS', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'osun', 'Osun', 'Osun', 'Osun State', 'Osun', 1, NOW(6), NOW(6), 1, 1),
(2597366, 159, 'NG-TA', NULL, NULL, '0', 'NG-TA', 'NG-TA', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'taraba', 'Taraba', 'Taraba', 'Taraba State', 'Taraba', 1, NOW(6), NOW(6), 1, 1),
(2597367, 159, 'NG-YO', NULL, NULL, '0', 'NG-YO', 'NG-YO', '+234', (SELECT id FROM t075t_division_types WHERE code = 'estado_ng' AND id_country = 159), 'yobe', 'Yobe', 'Yobe', 'Yobe State', 'Yobe', 1, NOW(6), NOW(6), 1, 1);