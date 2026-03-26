-- Insertar tipo de división geográfica ADM1 para KENIA: Condado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'condado_ke', 116, 8, 'Condado', 'County', 
    'Kaunti', 'Kaunti', 'kaunti', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de KENIA (Condados)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (178145, 116, 'KE-12', NULL, NULL, '55', 'KE-12', 'KE-12', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'West Pokot', 'West Pokot', 'West Pokot', 'West Pokot', 'West Pokot', 1, NOW(6), NOW(6), 1, 1),
    (178440, 116, 'KE-48', NULL, NULL, '54', 'KE-48', 'KE-48', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Wajir', 'Wajir', 'Wajir', 'Wajir', 'Wajir', 1, NOW(6), NOW(6), 1, 1),
    (178837, 116, 'KE-44', NULL, NULL, '52', 'KE-44', 'KE-44', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Uasin Gishu', 'Uasin Gishu', 'Uasin Gishu', 'Uasin Gishu', 'Uasin Gishu', 1, NOW(6), NOW(6), 1, 1),
    (178914, 116, 'KE-43', NULL, NULL, '51', 'KE-43', 'KE-43', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Turkana', 'Turkana', 'Turkana', 'Turkana', 'Turkana', 1, NOW(6), NOW(6), 1, 1),
    (179068, 116, 'KE-42', NULL, NULL, '50', 'KE-42', 'KE-42', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Trans Nzoia', 'Trans Nzoia', 'Trans Nzoia', 'Trans Nzoia', 'Trans Nzoia', 1, NOW(6), NOW(6), 1, 1),
    (179380, 116, 'KE-41', NULL, NULL, '49', 'KE-41', 'KE-41', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Tharaka-Nithi', 'Tharaka-Nithi', 'Tharaka-Nithi', 'Tharaka - Nithi', 'Tharaka - Nithi', 1, NOW(6), NOW(6), 1, 1),
    (179585, 116, 'KE-40', NULL, NULL, '48', 'KE-40', 'KE-40', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Tana River', 'Tana River', 'Tana River', 'Tana River District', 'Tana River District', 1, NOW(6), NOW(6), 1, 1),
    (180320, 116, 'KE-38', NULL, NULL, '46', 'KE-38', 'KE-38', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Siaya', 'Siaya', 'Siaya', 'Siaya', 'Siaya', 1, NOW(6), NOW(6), 1, 1),
    (180782, 116, 'KE-37', NULL, NULL, '45', 'KE-37', 'KE-37', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Samburu', 'Samburu', 'Samburu', 'Samburu', 'Samburu', 1, NOW(6), NOW(6), 1, 1),
    (184742, 116, 'KE-30', NULL, NULL, '05', 'KE-30', 'KE-30', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Nairobi', 'Nairobi', 'Nairobi', 'Nairobi', 'Nairobi', 1, NOW(6), NOW(6), 1, 1),
    (185578, 116, 'KE-29', NULL, NULL, '38', 'KE-29', 'KE-29', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Murang''a', 'Murang''a', 'Murang''a', 'Murang''A', 'Murang''A', 1, NOW(6), NOW(6), 1, 1),
    (186298, 116, 'KE-28', NULL, NULL, '37', 'KE-28', 'KE-28', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Mombasa', 'Mombasa', 'Mombasa', 'Mombasa', 'Mombasa', 1, NOW(6), NOW(6), 1, 1),
    (186824, 116, 'KE-26', NULL, NULL, '35', 'KE-26', 'KE-26', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Meru', 'Meru', 'Meru', 'Meru', 'Meru', 1, NOW(6), NOW(6), 1, 1),
    (187583, 116, 'KE-25', NULL, NULL, '34', 'KE-25', 'KE-25', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Marsabit', 'Marsabit', 'Marsabit', 'Marsabit', 'Marsabit', 1, NOW(6), NOW(6), 1, 1),
    (187895, 116, 'KE-24', NULL, NULL, '33', 'KE-24', 'KE-24', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Mandera', 'Mandera', 'Mandera', 'Mandera District', 'Mandera District', 1, NOW(6), NOW(6), 1, 1),
    (189794, 116, 'KE-20', NULL, NULL, '29', 'KE-20', 'KE-20', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Laikipia', 'Laikipia', 'Laikipia', 'Laikipia', 'Laikipia', 1, NOW(6), NOW(6), 1, 1),
    (190106, 116, 'KE-19', NULL, NULL, '28', 'KE-19', 'KE-19', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Kwale', 'Kwale', 'Kwale', 'Kwale', 'Kwale', 1, NOW(6), NOW(6), 1, 1),
    (191037, 116, 'KE-18', NULL, NULL, '27', 'KE-18', 'KE-18', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Kitui', 'Kitui', 'Kitui', 'Kitui', 'Kitui', 1, NOW(6), NOW(6), 1, 1),
    (191242, 116, 'KE-17', NULL, NULL, '26', 'KE-17', 'KE-17', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Kisumu', 'Kisumu', 'Kisumu', 'Kisumu', 'Kisumu', 1, NOW(6), NOW(6), 1, 1),
    (191298, 116, 'KE-16', NULL, NULL, '25', 'KE-16', 'KE-16', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Kisii', 'Kisii', 'Kisii', 'Kisii', 'Kisii', 1, NOW(6), NOW(6), 1, 1),
    (191420, 116, 'KE-15', NULL, NULL, '24', 'KE-15', 'KE-15', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Kirinyaga', 'Kirinyaga', 'Kirinyaga', 'Kirinyaga', 'Kirinyaga', 1, NOW(6), NOW(6), 1, 1),
    (192064, 116, 'KE-14', NULL, NULL, '23', 'KE-14', 'KE-14', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Kilifi', 'Kilifi', 'Kilifi', 'Kilifi', 'Kilifi', 1, NOW(6), NOW(6), 1, 1),
    (192709, 116, 'KE-13', NULL, NULL, '22', 'KE-13', 'KE-13', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Kiambu', 'Kiambu', 'Kiambu', 'Kiambu', 'Kiambu', 1, NOW(6), NOW(6), 1, 1),
    (192898, 116, 'KE-12', NULL, NULL, '21', 'KE-12', 'KE-12', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Kericho', 'Kericho', 'Kericho', 'Kericho', 'Kericho', 1, NOW(6), NOW(6), 1, 1),
    (195271, 116, 'KE-11', NULL, NULL, '20', 'KE-11', 'KE-11', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Kakamega', 'Kakamega', 'Kakamega', 'Kakamega', 'Kakamega', 1, NOW(6), NOW(6), 1, 1),
    (196228, 116, 'KE-09', NULL, NULL, '18', 'KE-09', 'KE-09', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Isiolo', 'Isiolo', 'Isiolo', 'Isiolo', 'Isiolo', 1, NOW(6), NOW(6), 1, 1),
    (197744, 116, 'KE-07', NULL, NULL, '16', 'KE-07', 'KE-07', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Garissa', 'Garissa', 'Garissa', 'Garissa', 'Garissa', 1, NOW(6), NOW(6), 1, 1),
    (198474, 116, 'KE-06', NULL, NULL, '15', 'KE-06', 'KE-06', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Embu', 'Embu', 'Embu', 'Embu', 'Embu', 1, NOW(6), NOW(6), 1, 1),
    (199987, 116, 'KE-04', NULL, NULL, '13', 'KE-04', 'KE-04', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Busia', 'Busia', 'Busia', 'Busia', 'Busia', 1, NOW(6), NOW(6), 1, 1),
    (200066, 116, 'KE-03', NULL, NULL, '12', 'KE-03', 'KE-03', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Bungoma', 'Bungoma', 'Bungoma', 'Bungoma', 'Bungoma', 1, NOW(6), NOW(6), 1, 1),
    (200573, 116, 'KE-01', NULL, NULL, '10', 'KE-01', 'KE-01', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Baringo', 'Baringo', 'Baringo', 'Baringo', 'Baringo', 1, NOW(6), NOW(6), 1, 1),
    (7603036, 116, 'KE-35', NULL, NULL, '43', 'KE-35', 'KE-35', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Nyandarua', 'Nyandarua', 'Nyandarua', 'Nyandarua', 'Nyandarua', 1, NOW(6), NOW(6), 1, 1),
    (7667638, 116, 'KE-45', NULL, NULL, '53', 'KE-45', 'KE-45', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Vihiga', 'Vihiga', 'Vihiga', 'Vihiga', 'Vihiga', 1, NOW(6), NOW(6), 1, 1),
    (7667643, 116, 'KE-21', NULL, NULL, '30', 'KE-21', 'KE-21', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Lamu', 'Lamu', 'Lamu', 'Lamu', 'Lamu', 1, NOW(6), NOW(6), 1, 1),
    (7667644, 116, 'KE-22', NULL, NULL, '31', 'KE-22', 'KE-22', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Machakos', 'Machakos', 'Machakos', 'Machakos', 'Machakos', 1, NOW(6), NOW(6), 1, 1),
    (7667645, 116, 'KE-23', NULL, NULL, '32', 'KE-23', 'KE-23', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Makueni', 'Makueni', 'Makueni', 'Makueni', 'Makueni', 1, NOW(6), NOW(6), 1, 1),
    (7667646, 116, 'KE-05', NULL, NULL, '14', 'KE-05', 'KE-05', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Elgeyo-Marakwet', 'Elgeyo-Marakwet', 'Elgeyo-Marakwet', 'Marakwet District', 'Marakwet District', 1, NOW(6), NOW(6), 1, 1),
    (7667652, 116, 'KE-39', NULL, NULL, '47', 'KE-39', 'KE-39', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Taita Taveta', 'Taita Taveta', 'Taita Taveta', 'Taita Taveta', 'Taita Taveta', 1, NOW(6), NOW(6), 1, 1),
    (7667657, 116, 'KE-10', NULL, NULL, '19', 'KE-10', 'KE-10', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Kajiado', 'Kajiado', 'Kajiado', 'Kajiado', 'Kajiado', 1, NOW(6), NOW(6), 1, 1),
    (7667661, 116, 'KE-36', NULL, NULL, '44', 'KE-36', 'KE-36', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Nyeri', 'Nyeri', 'Nyeri', 'Nyeri', 'Nyeri', 1, NOW(6), NOW(6), 1, 1),
    (7667665, 116, 'KE-08', NULL, NULL, '17', 'KE-08', 'KE-08', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Homa Bay', 'Homa Bay', 'Homa Bay', 'Homa Bay', 'Homa Bay', 1, NOW(6), NOW(6), 1, 1),
    (7667666, 116, 'KE-02', NULL, NULL, '11', 'KE-02', 'KE-02', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Bomet', 'Bomet', 'Bomet', 'Bomet', 'Bomet', 1, NOW(6), NOW(6), 1, 1),
    (7667678, 116, 'KE-27', NULL, NULL, '36', 'KE-27', 'KE-27', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Migori', 'Migori', 'Migori', 'Migori', 'Migori', 1, NOW(6), NOW(6), 1, 1),
    (7668902, 116, 'KE-31', NULL, NULL, '39', 'KE-31', 'KE-31', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Nakuru', 'Nakuru', 'Nakuru', 'Nakuru', 'Nakuru', 1, NOW(6), NOW(6), 1, 1),
    (7668904, 116, 'KE-32', NULL, NULL, '41', 'KE-32', 'KE-32', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Narok', 'Narok', 'Narok', 'Narok', 'Narok', 1, NOW(6), NOW(6), 1, 1),
    (7806857, 116, 'KE-34', NULL, NULL, '42', 'KE-34', 'KE-34', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Nyamira', 'Nyamira', 'Nyamira', 'Nyamira', 'Nyamira', 1, NOW(6), NOW(6), 1, 1),
    (8051212, 116, 'KE-33', NULL, NULL, '40', 'KE-33', 'KE-33', '+254', (SELECT id FROM t075t_division_types WHERE code = 'condado_ke' AND id_country = 116), 'Nandi', 'Nandi', 'Nandi', 'Nandi', 'Nandi', 1, NOW(6), NOW(6), 1, 1);