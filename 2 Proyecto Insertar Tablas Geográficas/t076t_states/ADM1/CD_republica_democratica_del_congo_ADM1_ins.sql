-- =============================================
-- Script de inserción para REPÚBLICA DEMOCRÁTICA DEL CONGO (CD)
-- Archivo: CD_republica_democratica_del_congo_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para REPÚBLICA DEMOCRÁTICA DEL CONGO: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_cd', 59, 8, 'Provincia', 'Province',
    'Province', 'Province', 'province', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de REPÚBLICA DEMOCRÁTICA DEL CONGO (Provincias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(204697, 59, 'TU', NULL, NULL, '0', 'CD-TU', 'CD-TU', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'tshuapa', 'Tshuapa', 'Tshuapa Province', 'Tshuapa', 'tshuapa', 1, NOW(6), NOW(6), 1, 1),
(204704, 59, 'TO', NULL, NULL, '0', 'CD-TO', 'CD-TO', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'tshopo', 'Tshopo', 'Tshopo Province', 'Tshopo', 'tshopo', 1, NOW(6), NOW(6), 1, 1),
(205253, 59, 'TA', NULL, NULL, '0', 'CD-TA', 'CD-TA', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'tanganyika', 'Tanganyika', 'Tanganyika Province', 'Tanganyika', 'tanganyika', 1, NOW(6), NOW(6), 1, 1),
(205413, 59, 'SK', NULL, NULL, '0', 'CD-SK', 'CD-SK', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'kivu del sur', 'South Kivu', 'South Kivu Province', 'South Kivu Province', 'south kivu', 1, NOW(6), NOW(6), 1, 1),
(205828, 59, 'SA', NULL, NULL, '0', 'CD-SA', 'CD-SA', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'sankuru', 'Sankuru', 'Sankuru Province', 'Sankuru', 'sankuru', 1, NOW(6), NOW(6), 1, 1),
(206938, 59, 'NK', NULL, NULL, '0', 'CD-NK', 'CD-NK', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'kivu del norte', 'North Kivu', 'North Kivu Province', 'North Kivu Province', 'north kivu', 1, NOW(6), NOW(6), 1, 1),
(208741, 59, 'MO', NULL, NULL, '0', 'CD-MO', 'CD-MO', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'mongala', 'Mongala', 'Mongala Province', 'Mongala', 'mongala', 1, NOW(6), NOW(6), 1, 1),
(209610, 59, 'MA', NULL, NULL, '0', 'CD-MA', 'CD-MA', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'maniema', 'Maniema', 'Maniema Province', 'Maniema', 'maniema', 1, NOW(6), NOW(6), 1, 1),
(210596, 59, 'KC', NULL, NULL, '0', 'CD-KC', 'CD-KC', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'kasai central', 'Kasaï-Central', 'Kasaï-Central Province', 'Kasaï-Central', 'kasai central', 1, NOW(6), NOW(6), 1, 1),
(214138, 59, 'KE', NULL, NULL, '0', 'CD-KE', 'CD-KE', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'kasai oriental', 'East Kasai', 'East Kasai Province', 'East Kasai', 'east kasai', 1, NOW(6), NOW(6), 1, 1),
(214140, 59, 'KS', NULL, NULL, '0', 'CD-KS', 'CD-KS', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'kasai', 'Kasai', 'Kasai Province', 'Kasai Province', 'kasai', 1, NOW(6), NOW(6), 1, 1),
(215709, 59, 'IT', NULL, NULL, '0', 'CD-IT', 'CD-IT', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'ituri', 'Ituri', 'Ituri Province', 'Ituri', 'ituri', 1, NOW(6), NOW(6), 1, 1),
(216140, 59, 'HU', NULL, NULL, '0', 'CD-HU', 'CD-HU', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'alto uele', 'Haut Uele', 'Haut Uele Province', 'Haut Uele', 'haut uele', 1, NOW(6), NOW(6), 1, 1),
(216141, 59, 'HL', NULL, NULL, '0', 'CD-HL', 'CD-HL', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'alto lomani', 'Haut-Lomani', 'Haut-Lomani Province', 'Haut-Lomani', 'haut lomani', 1, NOW(6), NOW(6), 1, 1),
(216661, 59, 'EQ', NULL, NULL, '0', 'CD-EQ', 'CD-EQ', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'ecuador', 'Équateur', 'Équateur Province', 'Province de l''Équateur', 'equateur', 1, NOW(6), NOW(6), 1, 1),
(219402, 59, 'BU', NULL, NULL, '0', 'CD-BU', 'CD-BU', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'bajo uele', 'Bas Uele', 'Bas Uele Province', 'Bas Uele', 'bas uele', 1, NOW(6), NOW(6), 1, 1),
(922727, 59, 'LU', NULL, NULL, '0', 'CD-LU', 'CD-LU', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'lualaba', 'Lualaba', 'Lualaba Province', 'Lualaba', 'lualaba', 1, NOW(6), NOW(6), 1, 1),
(2313191, 59, 'MN', NULL, NULL, '0', 'CD-MN', 'CD-MN', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'mai ndombe', 'Mai Ndombe', 'Mai Ndombe Province', 'Mai Ndombe', 'mai ndombe', 1, NOW(6), NOW(6), 1, 1),
(2313847, 59, 'KW', NULL, NULL, '0', 'CD-KW', 'CD-KW', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'kwilu', 'Kwilu', 'Kwilu Province', 'Kwilu', 'kwilu', 1, NOW(6), NOW(6), 1, 1),
(2313860, 59, 'KG', NULL, NULL, '0', 'CD-KG', 'CD-KG', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'kwango', 'Kwango', 'Kwango Province', 'Kwango', 'kwango', 1, NOW(6), NOW(6), 1, 1),
(2314300, 59, 'KN', NULL, NULL, '0', 'CD-KN', 'CD-KN', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'kinshasa', 'Kinshasa', 'Kinshasa City', 'Kinshasa City', 'kinshasa', 1, NOW(6), NOW(6), 1, 1),
(2317277, 59, 'KC', NULL, NULL, '0', 'CD-KC', 'CD-KC', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'congo central', 'Kongo Central', 'Kongo Central Province', 'Kongo Central', 'kongo central', 1, NOW(6), NOW(6), 1, 1),
(11288213, 59, 'HK', NULL, NULL, '0', 'CD-HK', 'CD-HK', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'alto katanga', 'Haut-Katanga', 'Haut-Katanga Province', 'Haut-Katanga', 'haut katanga', 1, NOW(6), NOW(6), 1, 1),
(11288214, 59, 'LO', NULL, NULL, '0', 'CD-LO', 'CD-LO', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'lomami', 'Lomami', 'Lomami Province', 'Lomami', 'lomami', 1, NOW(6), NOW(6), 1, 1),
(11288215, 59, 'NU', NULL, NULL, '0', 'CD-NU', 'CD-NU', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'ubangi del norte', 'Nord-Ubangi', 'Nord-Ubangi Province', 'Nord-Ubangi', 'nord ubangi', 1, NOW(6), NOW(6), 1, 1),
(11288216, 59, 'SU', NULL, NULL, '0', 'CD-SU', 'CD-SU', '+243', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cd' AND id_country = 59), 'ubangi del sur', 'Sud-Ubangi', 'Sud-Ubangi Province', 'Sud-Ubangi', 'sud ubangi', 1, NOW(6), NOW(6), 1, 1);