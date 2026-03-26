-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SUDÁFRICA (ZA)
-- Archivo: ZA_sudafrica_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SUDÁFRICA: Provincia
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_za', 206, 8, 'Provincia', 'Province',
    'Province', 'Province', 'Province', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SUDÁFRICA (Provincias)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(967573, 206, 'free_state', NULL, NULL, '000', 'ZA-000', 'ZA-000', '+27', (SELECT id FROM t075t_division_types WHERE code = 'provincia_za' AND id_country = 206), 'Estado Libre', 'Free State', 'Free State', 'Free State', 'Free State', 1, NOW(6), NOW(6), 1, 1),
(972062, 206, 'kwazulu_natal', NULL, NULL, '000', 'ZA-000', 'ZA-000', '+27', (SELECT id FROM t075t_division_types WHERE code = 'provincia_za' AND id_country = 206), 'KwaZulu-Natal', 'KwaZulu-Natal', 'KwaZulu-Natal', 'KwaZulu-Natal', 'KwaZulu-Natal', 1, NOW(6), NOW(6), 1, 1),
(1085593, 206, 'eastern_cape', NULL, NULL, '000', 'ZA-000', 'ZA-000', '+27', (SELECT id FROM t075t_division_types WHERE code = 'provincia_za' AND id_country = 206), 'Cabo Oriental', 'Eastern Cape', 'Eastern Cape', 'Eastern Cape', 'Eastern Cape', 1, NOW(6), NOW(6), 1, 1),
(1085594, 206, 'gauteng', NULL, NULL, '000', 'ZA-000', 'ZA-000', '+27', (SELECT id FROM t075t_division_types WHERE code = 'provincia_za' AND id_country = 206), 'Gauteng', 'Gauteng', 'Gauteng', 'Gauteng', 'Gauteng', 1, NOW(6), NOW(6), 1, 1),
(1085595, 206, 'mpumalanga', NULL, NULL, '000', 'ZA-000', 'ZA-000', '+27', (SELECT id FROM t075t_division_types WHERE code = 'provincia_za' AND id_country = 206), 'Mpumalanga', 'Mpumalanga', 'Mpumalanga', 'Mpumalanga', 'Mpumalanga', 1, NOW(6), NOW(6), 1, 1),
(1085596, 206, 'northern_cape', NULL, NULL, '000', 'ZA-000', 'ZA-000', '+27', (SELECT id FROM t075t_division_types WHERE code = 'provincia_za' AND id_country = 206), 'Cabo Septentrional', 'Northern Cape', 'Northern Cape', 'Northern Cape', 'Northern Cape', 1, NOW(6), NOW(6), 1, 1),
(1085597, 206, 'limpopo', NULL, NULL, '000', 'ZA-000', 'ZA-000', '+27', (SELECT id FROM t075t_division_types WHERE code = 'provincia_za' AND id_country = 206), 'Limpopo', 'Limpopo', 'Limpopo', 'Limpopo', 'Limpopo', 1, NOW(6), NOW(6), 1, 1),
(1085598, 206, 'north_west', NULL, NULL, '000', 'ZA-000', 'ZA-000', '+27', (SELECT id FROM t075t_division_types WHERE code = 'provincia_za' AND id_country = 206), 'Noroeste', 'North West', 'North West', 'North West', 'North West', 1, NOW(6), NOW(6), 1, 1),
(1085599, 206, 'western_cape', NULL, NULL, '000', 'ZA-000', 'ZA-000', '+27', (SELECT id FROM t075t_division_types WHERE code = 'provincia_za' AND id_country = 206), 'Cabo Occidental', 'Western Cape', 'Western Cape', 'Western Cape', 'Western Cape', 1, NOW(6), NOW(6), 1, 1);