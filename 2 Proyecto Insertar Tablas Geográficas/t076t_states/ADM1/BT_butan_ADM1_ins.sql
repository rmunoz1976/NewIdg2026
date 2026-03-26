-- =============================================
-- Script de inserción para BUTÁN (BT)
-- Archivo: BT_butan_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BUTÁN: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_bt', 26, 8, 'Distrito', 'District',
    'District', 'རྫོང་ཁག', 'dzongkhag', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BUTÁN (Dzongkhags)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(1337278, 26, 'BU', NULL, NULL, '0', 'BT-BU', 'BT-BU', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'bumthang', 'Bumthang', 'Bumthang District', 'Bumthang Dzongkhag', 'bumthang', 1, NOW(6), NOW(6), 1, 1),
(1337279, 26, 'CH', NULL, NULL, '0', 'BT-CH', 'BT-CH', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'chhukha', 'Chhukha', 'Chhukha District', 'Chhukha Dzongkhag', 'chhukha', 1, NOW(6), NOW(6), 1, 1),
(1337280, 26, 'DA', NULL, NULL, '0', 'BT-DA', 'BT-DA', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'dagana', 'Dagana', 'Dagana District', 'Dagana Dzongkhag', 'dagana', 1, NOW(6), NOW(6), 1, 1),
(1337281, 26, 'TS', NULL, NULL, '0', 'BT-TS', 'BT-TS', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'tsirang', 'Tsirang', 'Tsirang District', 'Tsirang Dzongkhag', 'tsirang', 1, NOW(6), NOW(6), 1, 1),
(1337282, 26, 'SA', NULL, NULL, '0', 'BT-SA', 'BT-SA', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'sarpang', 'Sarpang', 'Sarpang District', 'Sarpang Dzongkhag', 'sarpang', 1, NOW(6), NOW(6), 1, 1),
(1337283, 26, 'HA', NULL, NULL, '0', 'BT-HA', 'BT-HA', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'haa', 'Haa', 'Haa District', 'Haa Dzongkhag', 'haa', 1, NOW(6), NOW(6), 1, 1),
(1337284, 26, 'LH', NULL, NULL, '0', 'BT-LH', 'BT-LH', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'lhuentse', 'Lhuentse', 'Lhuentse District', 'Lhuentse Dzongkhag', 'lhuentse', 1, NOW(6), NOW(6), 1, 1),
(1337285, 26, 'MO', NULL, NULL, '0', 'BT-MO', 'BT-MO', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'mongar', 'Mongar', 'Mongar District', 'Mongar Dzongkhag', 'mongar', 1, NOW(6), NOW(6), 1, 1),
(1337286, 26, 'PA', NULL, NULL, '0', 'BT-PA', 'BT-PA', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'paro', 'Paro', 'Paro District', 'Paro Dzongkhag', 'paro', 1, NOW(6), NOW(6), 1, 1),
(1337287, 26, 'PE', NULL, NULL, '0', 'BT-PE', 'BT-PE', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'pemagatshel', 'Pemagatshel', 'Pemagatshel District', 'Pemagatshel Dzongkhag', 'pemagatshel', 1, NOW(6), NOW(6), 1, 1),
(1337288, 26, 'PU', NULL, NULL, '0', 'BT-PU', 'BT-PU', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'punakha', 'Punakha', 'Punakha District', 'Punakha Dzongkhag', 'punakha', 1, NOW(6), NOW(6), 1, 1),
(1337289, 26, 'SM', NULL, NULL, '0', 'BT-SM', 'BT-SM', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'samtse', 'Samtse', 'Samtse District', 'Samtse Dzongkhag', 'samtse', 1, NOW(6), NOW(6), 1, 1),
(1337290, 26, 'SJ', NULL, NULL, '0', 'BT-SJ', 'BT-SJ', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'samdrup jongkhar', 'Samdrup Jongkhar', 'Samdrup Jongkhar District', 'Samdrup Jongkhar Dzongkhag', 'samdrup jongkhar', 1, NOW(6), NOW(6), 1, 1),
(1337291, 26, 'ZH', NULL, NULL, '0', 'BT-ZH', 'BT-ZH', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'zhemgang', 'Zhemgang', 'Zhemgang District', 'Zhemgang Dzongkhag', 'zhemgang', 1, NOW(6), NOW(6), 1, 1),
(1337292, 26, 'TA', NULL, NULL, '0', 'BT-TA', 'BT-TA', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'trashigang', 'Trashigang', 'Trashigang District', 'Trashigang Dzongkhag', 'trashigang', 1, NOW(6), NOW(6), 1, 1),
(1337293, 26, 'TH', NULL, NULL, '0', 'BT-TH', 'BT-TH', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'thimphu', 'Thimphu', 'Thimphu District', 'Thimphu Dzongkhag', 'thimphu', 1, NOW(6), NOW(6), 1, 1),
(1337294, 26, 'TO', NULL, NULL, '0', 'BT-TO', 'BT-TO', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'trongsa', 'Trongsa', 'Trongsa District', 'Trongsa Dzongkhag', 'trongsa', 1, NOW(6), NOW(6), 1, 1),
(1337295, 26, 'WA', NULL, NULL, '0', 'BT-WA', 'BT-WA', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'wangdue phodrang', 'Wangdue Phodrang', 'Wangdue Phodrang District', 'Wangdue Phodrang Dzongkhag', 'wangdue phodrang', 1, NOW(6), NOW(6), 1, 1),
(7303651, 26, 'GA', NULL, NULL, '0', 'BT-GA', 'BT-GA', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'gasa', 'Gasa', 'Gasa District', 'Gasa', 'gasa', 1, NOW(6), NOW(6), 1, 1),
(7303653, 26, 'TY', NULL, NULL, '0', 'BT-TY', 'BT-TY', '+975', (SELECT id FROM t075t_division_types WHERE code = 'distrito_bt' AND id_country = 26), 'trashi yangste', 'Trashi Yangste', 'Trashi Yangste District', 'Trashi Yangste', 'trashi yangste', 1, NOW(6), NOW(6), 1, 1);