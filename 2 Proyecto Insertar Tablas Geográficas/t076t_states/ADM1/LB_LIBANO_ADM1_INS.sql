-- Insertar tipo de división geográfica ADM1 para Líbano: Gobernación
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'gobernacion_lb', 123, 8, 'gobernación', 'governorate', 
    'Governorate', 'محافظة', 'muhafazah', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Líbano (Gobernaciones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(273607, 123, 'LB-JL', NULL, NULL, '0', 'LB-JL', 'LB-JL', '+961', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_lb' AND id_country = 123), 'monte líbano', 'Mount Lebanon', 'Mount Lebanon', 'Mohafazat Mont-Liban', 'Mont-Liban', 1, NOW(6), NOW(6), 1, 1),
(276780, 123, 'LB-BA', NULL, NULL, '0', 'LB-BA', 'LB-BA', '+961', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_lb' AND id_country = 123), 'beirut', 'Beirut', 'Beirut', 'Beyrouth', 'Beirut', 1, NOW(6), NOW(6), 1, 1),
(278297, 123, 'LB-AS', NULL, NULL, '0', 'LB-AS', 'LB-AS', '+961', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_lb' AND id_country = 123), 'norte', 'North', 'North', 'Mohafazat Liban-Nord', 'Liban-Nord', 1, NOW(6), NOW(6), 1, 1),
(279894, 123, 'LB-JA', NULL, NULL, '0', 'LB-JA', 'LB-JA', '+961', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_lb' AND id_country = 123), 'sur', 'South', 'South', 'Mohafazat Liban-Sud', 'Liban-Sud', 1, NOW(6), NOW(6), 1, 1),
(280282, 123, 'LB-BI', NULL, NULL, '0', 'LB-BI', 'LB-BI', '+961', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_lb' AND id_country = 123), 'beca', 'Beqaa', 'Beqaa', 'Mohafazat Béqaa', 'Béqaa', 1, NOW(6), NOW(6), 1, 1),
(444191, 123, 'LB-NA', NULL, NULL, '0', 'LB-NA', 'LB-NA', '+961', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_lb' AND id_country = 123), 'nabatiye', 'Nabatiye', 'Nabatiye', 'Mohafazat Nabatîyé', 'Nabatîyé', 1, NOW(6), NOW(6), 1, 1),
(6201370, 123, 'LB-AK', NULL, NULL, '0', 'LB-AK', 'LB-AK', '+961', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_lb' AND id_country = 123), 'aakkar', 'Aakkar', 'Aakkar', 'Mohafazat Aakkâr', 'Aakkâr', 1, NOW(6), NOW(6), 1, 1),
(6201371, 123, 'LB-BH', NULL, NULL, '0', 'LB-BH', 'LB-BH', '+961', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_lb' AND id_country = 123), 'baalbek-hermel', 'Baalbek-Hermel', 'Baalbek-Hermel', 'Mohafazat Baalbek-Hermel', 'Baalbek-Hermel', 1, NOW(6), NOW(6), 1, 1);