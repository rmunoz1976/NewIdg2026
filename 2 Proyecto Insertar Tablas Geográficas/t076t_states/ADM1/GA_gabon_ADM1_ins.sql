-- =============================================
-- Script de inserción para GABÓN (GA)
-- Archivo: GA_gabon_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GABÓN: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_ga', 80, 8, 'Provincia', 'Province',
    'Province', 'Province', 'province', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GABÓN (Provincias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2396076, 80, 'WN', NULL, NULL, '0', 'GA-WN', 'GA-WN', '+241', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ga' AND id_country = 80), 'woleu-ntem', 'Woleu-Ntem', 'Woleu-Ntem Province', 'Province du Woleu-Ntem', 'woleu ntem', 1, NOW(6), NOW(6), 1, 1),
(2396924, 80, 'OM', NULL, NULL, '0', 'GA-OM', 'GA-OM', '+241', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ga' AND id_country = 80), 'ogooué marítimo', 'Ogooué-Maritime', 'Ogooué-Maritime Province', 'Province de l''Ogooué-Maritime', 'ogooue maritime', 1, NOW(6), NOW(6), 1, 1),
(2396925, 80, 'OL', NULL, NULL, '0', 'GA-OL', 'GA-OL', '+241', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ga' AND id_country = 80), 'ogooué-lolo', 'Ogooué-Lolo', 'Ogooué-Lolo Province', 'Province de l''Ogooué-Lolo', 'ogooue lolo', 1, NOW(6), NOW(6), 1, 1),
(2396926, 80, 'OI', NULL, NULL, '0', 'GA-OI', 'GA-OI', '+241', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ga' AND id_country = 80), 'ogooué-ivindo', 'Ogooué-Ivindo', 'Ogooué-Ivindo Province', 'Province de l''Ogooué-Ivindo', 'ogooue ivindo', 1, NOW(6), NOW(6), 1, 1),
(2397141, 80, 'NY', NULL, NULL, '0', 'GA-NY', 'GA-NY', '+241', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ga' AND id_country = 80), 'nyanga', 'Nyanga', 'Nyanga Province', 'Province de la Nyanga', 'nyanga', 1, NOW(6), NOW(6), 1, 1),
(2397466, 80, 'NG', NULL, NULL, '0', 'GA-NG', 'GA-NG', '+241', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ga' AND id_country = 80), 'ngounié', 'Ngounié', 'Ngounié Province', 'Province de la Ngounié', 'ngounie', 1, NOW(6), NOW(6), 1, 1),
(2397842, 80, 'MO', NULL, NULL, '0', 'GA-MO', 'GA-MO', '+241', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ga' AND id_country = 80), 'medio ogooué', 'Moyen-Ogooué', 'Moyen-Ogooué Province', 'Province du Moyen-Ogooué', 'moyen ogooue', 1, NOW(6), NOW(6), 1, 1),
(2400454, 80, 'HO', NULL, NULL, '0', 'GA-HO', 'GA-HO', '+241', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ga' AND id_country = 80), 'alto ogooué', 'Haut-Ogooué', 'Haut-Ogooué Province', 'Province du Haut-Ogooué', 'haut ogooue', 1, NOW(6), NOW(6), 1, 1),
(2400682, 80, 'ES', NULL, NULL, '0', 'GA-ES', 'GA-ES', '+241', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ga' AND id_country = 80), 'estuario', 'Estuaire', 'Estuaire Province', 'Estuaire', 'estuaire', 1, NOW(6), NOW(6), 1, 1);