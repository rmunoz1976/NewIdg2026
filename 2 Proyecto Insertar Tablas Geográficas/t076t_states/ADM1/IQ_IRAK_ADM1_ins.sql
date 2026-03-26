-- Insertar tipo de división geográfica ADM1 para IRAK: Gobernación
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'gobernacion_iq', 105, 8, 'Gobernación', 'Governorate', 
    'Muhafazah', 'محافظة', 'muhafazah', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de IRAK (Gobernaciones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (89341, 105, 'IQ-BA', NULL, NULL, '02', 'IQ-BA', 'IQ-BA', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Basora', 'Basra', 'Basra', 'Basra Governorate', 'Basra Governorate', 1, NOW(6), NOW(6), 1, 1),
    (89693, 105, 'IQ-WA', NULL, NULL, '16', 'IQ-WA', 'IQ-WA', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Wasit', 'Wasit', 'Wasit', 'Wasit Governorate', 'Wasit Governorate', 1, NOW(6), NOW(6), 1, 1),
    (91695, 105, 'IQ-SD', NULL, NULL, '18', 'IQ-SD', 'IQ-SD', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Salah ad Din', 'Salah ad Din', 'Salah ad Din', 'Muhafazat Salah ad Din', 'Muhafazat Salah ad Din', 1, NOW(6), NOW(6), 1, 1),
    (92877, 105, 'IQ-NI', NULL, NULL, '15', 'IQ-NI', 'IQ-NI', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Nínive', 'Nineveh', 'Nineveh', 'Nineveh Governorate', 'Nineveh Governorate', 1, NOW(6), NOW(6), 1, 1),
    (93540, 105, 'IQ-MA', NULL, NULL, '14', 'IQ-MA', 'IQ-MA', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Maysan', 'Maysan', 'Maysan', 'Maysan Governorate', 'Maysan Governorate', 1, NOW(6), NOW(6), 1, 1),
    (94823, 105, 'IQ-KA', NULL, NULL, '12', 'IQ-KA', 'IQ-KA', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Karbala', 'Karbala', 'Karbala', 'Karbala Governorate', 'Karbala Governorate', 1, NOW(6), NOW(6), 1, 1),
    (95445, 105, 'IQ-AR', NULL, NULL, '11', 'IQ-AR', 'IQ-AR', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Erbil', 'Erbil', 'Erbil', 'Erbil Governorate', 'Erbil Governorate', 1, NOW(6), NOW(6), 1, 1),
    (96965, 105, 'IQ-DI', NULL, NULL, '10', 'IQ-DI', 'IQ-DI', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Diyala', 'Diyala', 'Diyala', 'Diyala Governorate', 'Diyala Governorate', 1, NOW(6), NOW(6), 1, 1),
    (97019, 105, 'IQ-DQ', NULL, NULL, '09', 'IQ-DQ', 'IQ-DQ', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Dhi Qar', 'Dhi Qar', 'Dhi Qar', 'Muhafazat Dhi Qar', 'Muhafazat Dhi Qar', 1, NOW(6), NOW(6), 1, 1),
    (97270, 105, 'IQ-DA', NULL, NULL, '08', 'IQ-DA', 'IQ-DA', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Duhok', 'Duhok', 'Duhok', 'Duhok Governorate', 'Duhok Governorate', 1, NOW(6), NOW(6), 1, 1),
    (98180, 105, 'IQ-BG', NULL, NULL, '07', 'IQ-BG', 'IQ-BG', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Bagdad', 'Baghdad', 'Baghdad', 'Baghdad Governorate', 'Baghdad Governorate', 1, NOW(6), NOW(6), 1, 1),
    (98227, 105, 'IQ-BB', NULL, NULL, '06', 'IQ-BB', 'IQ-BB', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Babil', 'Babil', 'Babil', 'Babil Governorate', 'Babil Governorate', 1, NOW(6), NOW(6), 1, 1),
    (98410, 105, 'IQ-KI', NULL, NULL, '13', 'IQ-KI', 'IQ-KI', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Kirkuk', 'Kirkuk', 'Kirkuk', 'Kirkuk Governorate', 'Kirkuk Governorate', 1, NOW(6), NOW(6), 1, 1),
    (98465, 105, 'IQ-SU', NULL, NULL, '05', 'IQ-SU', 'IQ-SU', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Sulaymaniyah', 'Sulaymaniyah', 'Sulaymaniyah', 'Sulaymaniyah Governorate', 'Sulaymaniyah Governorate', 1, NOW(6), NOW(6), 1, 1),
    (98862, 105, 'IQ-NA', NULL, NULL, '17', 'IQ-NA', 'IQ-NA', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Nayaf', 'Najaf', 'Najaf', 'An Najaf', 'An Najaf', 1, NOW(6), NOW(6), 1, 1),
    (99022, 105, 'IQ-QA', NULL, NULL, '04', 'IQ-QA', 'IQ-QA', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Al-Qadisiyah', 'Al-Qadisiyah', 'Al-Qadisiyah', 'Al-Qadisiyah Governorate', 'Al-Qadisiyah Governorate', 1, NOW(6), NOW(6), 1, 1),
    (99032, 105, 'IQ-MU', NULL, NULL, '03', 'IQ-MU', 'IQ-MU', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Muthanna', 'Muthanna', 'Muthanna', 'Muthanna Governorate', 'Muthanna Governorate', 1, NOW(6), NOW(6), 1, 1),
    (99592, 105, 'IQ-AN', NULL, NULL, '01', 'IQ-AN', 'IQ-AN', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Al-Anbar', 'Al-Anbar', 'Al-Anbar', 'Al-Anbar Governorate', 'Al-Anbar Governorate', 1, NOW(6), NOW(6), 1, 1),
    (12218240, 105, 'IQ-HA', NULL, NULL, '19', 'IQ-HA', 'IQ-HA', '+964', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_iq' AND id_country = 105), 'Halabja', 'Halabja', 'Halabja', 'Halabja Governorate', 'Halabja Governorate', 1, NOW(6), NOW(6), 1, 1);