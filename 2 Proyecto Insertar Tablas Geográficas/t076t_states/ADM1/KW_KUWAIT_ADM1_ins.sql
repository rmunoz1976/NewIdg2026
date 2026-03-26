-- Insertar tipo de división geográfica ADM1 para KUWAIT: Gobernación
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'gobernacion_kw', 119, 8, 'Gobernación', 'Governorate', 
    'Muhafazah', 'محافظة', 'muhafazah', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de KUWAIT (Gobernaciones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (285628, 119, 'KW-HA', NULL, NULL, '08', 'KW-HA', 'KW-HA', '+965', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_kw' AND id_country = 119), 'Hawalli', 'Hawalli', 'Hawalli', 'Muḩāfaz̧at Ḩawallī', 'Muhafazat Hawalli', 1, NOW(6), NOW(6), 1, 1),
    (285788, 119, 'KW-KU', NULL, NULL, '02', 'KW-KU', 'KW-KU', '+965', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_kw' AND id_country = 119), 'Al Asimah', 'Al Asimah', 'Al Asimah', 'Al Asimah Governorate', 'Al Asimah Governorate', 1, NOW(6), NOW(6), 1, 1),
    (285798, 119, 'KW-JA', NULL, NULL, '05', 'KW-JA', 'KW-JA', '+965', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_kw' AND id_country = 119), 'Al Jahra', 'Al Jahra', 'Al Jahra', 'Muḩāfaz̧at al Jahrā’', 'Muhafazat al Jahra''', 1, NOW(6), NOW(6), 1, 1),
    (285816, 119, 'KW-FA', NULL, NULL, '07', 'KW-FA', 'KW-FA', '+965', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_kw' AND id_country = 119), 'Al Farwaniyah', 'Al Farwaniyah', 'Al Farwaniyah', 'Muḩāfaz̧at al Farwānīyah', 'Muhafazat al Farwaniyah', 1, NOW(6), NOW(6), 1, 1),
    (285841, 119, 'KW-AH', NULL, NULL, '04', 'KW-AH', 'KW-AH', '+965', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_kw' AND id_country = 119), 'Al Ahmadi', 'Al Ahmadi', 'Al Ahmadi', 'Muḩāfaz̧at al Aḩmadī', 'Muhafazat al Ahmadi', 1, NOW(6), NOW(6), 1, 1),
    (7733358, 119, 'KW-MU', NULL, NULL, '09', 'KW-MU', 'KW-MU', '+965', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_kw' AND id_country = 119), 'Mubarak Al-Kabeer', 'Mubarak Al-Kabeer', 'Mubarak Al-Kabeer', 'Muḩāfaz̧at Mubārak al Kabīr', 'Muhafazat Mubarak al Kabir', 1, NOW(6), NOW(6), 1, 1);