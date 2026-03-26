-- =============================================
-- Script de inserción para ESTONIA (EE)
-- Archivo: EE_estonia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para ESTONIA: Condado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'condado_ee', 69, 8, 'Condado', 'County',
    'County', 'Maakond', 'maakond', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ESTONIA (Condados)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(587448, 69, '86', NULL, NULL, '0', 'EE-86', 'EE-86', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'võru', 'Võru', 'Võru County', 'Võrumaa', 'voru', 1, NOW(6), NOW(6), 1, 1),
(587590, 69, '84', NULL, NULL, '0', 'EE-84', 'EE-84', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'viljandi', 'Viljandi', 'Viljandi County', 'Viljandimaa', 'viljandi', 1, NOW(6), NOW(6), 1, 1),
(587875, 69, '82', NULL, NULL, '0', 'EE-82', 'EE-82', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'valga', 'Valga', 'Valga County', 'Valgamaa', 'valga', 1, NOW(6), NOW(6), 1, 1),
(588334, 69, '78', NULL, NULL, '0', 'EE-78', 'EE-78', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'tartu', 'Tartu', 'Tartu County', 'Tartumaa', 'tartu', 1, NOW(6), NOW(6), 1, 1),
(588879, 69, '74', NULL, NULL, '0', 'EE-74', 'EE-74', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'saare', 'Saare', 'Saare County', 'Saaremaa', 'saare', 1, NOW(6), NOW(6), 1, 1),
(589115, 69, '70', NULL, NULL, '0', 'EE-70', 'EE-70', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'rapla', 'Rapla', 'Rapla County', 'Raplamaa', 'rapla', 1, NOW(6), NOW(6), 1, 1),
(589373, 69, '65', NULL, NULL, '0', 'EE-65', 'EE-65', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'põlva', 'Põlva', 'Põlva County', 'Põlvamaa', 'polva', 1, NOW(6), NOW(6), 1, 1),
(589576, 69, '67', NULL, NULL, '0', 'EE-67', 'EE-67', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'pärnu', 'Pärnu', 'Pärnu County', 'Pärnumaa', 'parnu', 1, NOW(6), NOW(6), 1, 1),
(590854, 69, '59', NULL, NULL, '0', 'EE-59', 'EE-59', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'laane viru', 'Lääne-Viru', 'Lääne-Viru County', 'Lääne-Virumaa', 'laane viru', 1, NOW(6), NOW(6), 1, 1),
(590856, 69, '57', NULL, NULL, '0', 'EE-57', 'EE-57', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'laane', 'Lääne', 'Lääne County', 'Läänemaa', 'laane', 1, NOW(6), NOW(6), 1, 1),
(591901, 69, '49', NULL, NULL, '0', 'EE-49', 'EE-49', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'jõgeva', 'Jõgeva', 'Jõgeva County', 'Jõgevamaa', 'jogeva', 1, NOW(6), NOW(6), 1, 1),
(591961, 69, '51', NULL, NULL, '0', 'EE-51', 'EE-51', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'järva', 'Järva', 'Järva County', 'Järvamaa', 'jarva', 1, NOW(6), NOW(6), 1, 1),
(592075, 69, '44', NULL, NULL, '0', 'EE-44', 'EE-44', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'ida viru', 'Ida-Viru', 'Ida-Viru County', 'Ida-Virumaa', 'ida viru', 1, NOW(6), NOW(6), 1, 1),
(592133, 69, '39', NULL, NULL, '0', 'EE-39', 'EE-39', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'hiiumaa', 'Hiiumaa', 'Hiiumaa County', 'Hiiumaa', 'hiiumaa', 1, NOW(6), NOW(6), 1, 1),
(592170, 69, '37', NULL, NULL, '0', 'EE-37', 'EE-37', '+372', (SELECT id FROM t075t_division_types WHERE code = 'condado_ee' AND id_country = 69), 'harju', 'Harju', 'Harju County', 'Harjumaa', 'harju', 1, NOW(6), NOW(6), 1, 1);