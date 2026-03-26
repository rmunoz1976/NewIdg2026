-- Insertar tipo de división geográfica ADM1 para JORDANIA: Gobernación
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'gobernacion_jo', 114, 8, 'Gobernación', 'Governorate', 
    'Muhafazah', 'محافظة', 'muhafazah', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de JORDANIA (Gobernaciones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (248380, 114, 'JO-MN', NULL, NULL, '19', 'JO-MN', 'JO-MN', '+962', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_jo' AND id_country = 114), 'Ma''an', 'Ma''an', 'Ma''an', 'Muḩāfaz̧at Ma‘ān', 'Muhafazat Ma''an', 1, NOW(6), NOW(6), 1, 1),
    (248944, 114, 'JO-IR', NULL, NULL, '18', 'JO-IR', 'JO-IR', '+962', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_jo' AND id_country = 114), 'Irbid', 'Irbid', 'Irbid', 'Irbid', 'Irbid', 1, NOW(6), NOW(6), 1, 1),
    (250092, 114, 'JO-AZ', NULL, NULL, '17', 'JO-AZ', 'JO-AZ', '+962', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_jo' AND id_country = 114), 'Zarqa', 'Zarqa', 'Zarqa', 'Muḩāfaz̧at az Zarqā’', 'Muhafazat az Zarqa''', 1, NOW(6), NOW(6), 1, 1),
    (250199, 114, 'JO-AT', NULL, NULL, '12', 'JO-AT', 'JO-AT', '+962', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_jo' AND id_country = 114), 'Tafila', 'Tafilah', 'Tafilah', 'Muḩāfaz̧at aţ Ţafīlah', 'Muhafazat at Tafilah', 1, NOW(6), NOW(6), 1, 1),
    (250439, 114, 'JO-AM', NULL, NULL, '16', 'JO-AM', 'JO-AM', '+962', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_jo' AND id_country = 114), 'Amán', 'Amman', 'Amman', 'Amman Governorate', 'Amman Governorate', 1, NOW(6), NOW(6), 1, 1),
    (250583, 114, 'JO-MA', NULL, NULL, '15', 'JO-MA', 'JO-MA', '+962', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_jo' AND id_country = 114), 'Mafraq', 'Mafraq', 'Mafraq', 'Al Mafraq', 'Al Mafraq', 1, NOW(6), NOW(6), 1, 1),
    (250625, 114, 'JO-KA', NULL, NULL, '09', 'JO-KA', 'JO-KA', '+962', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_jo' AND id_country = 114), 'Karak', 'Karak', 'Karak', 'Al Karak', 'Al Karak', 1, NOW(6), NOW(6), 1, 1),
    (250751, 114, 'JO-BA', NULL, NULL, '02', 'JO-BA', 'JO-BA', '+962', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_jo' AND id_country = 114), 'Balqa', 'Balqa', 'Balqa', 'Muḩāfaz̧at al Balqā’', 'Muhafazat al Balqa''', 1, NOW(6), NOW(6), 1, 1),
    (443120, 114, 'JO-AJ', NULL, NULL, '20', 'JO-AJ', 'JO-AJ', '+962', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_jo' AND id_country = 114), 'Ajloun', 'Ajloun', 'Ajloun', 'Ajloun', 'Ajloun', 1, NOW(6), NOW(6), 1, 1),
    (443121, 114, 'JO-JA', NULL, NULL, '22', 'JO-JA', 'JO-JA', '+962', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_jo' AND id_country = 114), 'Jerash', 'Jerash', 'Jerash', 'Jerash', 'Jerash', 1, NOW(6), NOW(6), 1, 1),
    (443122, 114, 'JO-AQ', NULL, NULL, '21', 'JO-AQ', 'JO-AQ', '+962', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_jo' AND id_country = 114), 'Aqaba', 'Aqaba', 'Aqaba', 'Muḩāfaz̧at al ‘Aqabah', 'Muhafazat al ''Aqabah', 1, NOW(6), NOW(6), 1, 1),
    (443123, 114, 'JO-MD', NULL, NULL, '23', 'JO-MD', 'JO-MD', '+962', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_jo' AND id_country = 114), 'Madaba', 'Madaba', 'Madaba', 'Muḩāfaz̧at Mādabā', 'Muhafazat Madaba', 1, NOW(6), NOW(6), 1, 1);