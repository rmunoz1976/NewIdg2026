-- =============================================
-- Script de inserción para CANADÁ (CA)
-- Archivo: CA_canada_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para CANADÁ: Provincia / Territorio
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_ca', 41, 8, 'Provincia', 'Province',
    'Province', 'Province', 'province', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de CANADÁ (Provincias y Territorios)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(5883102, 41, 'AB', NULL, NULL, '0', 'CA-AB', 'CA-AB', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'alberta', 'Alberta', 'Alberta', 'Alberta', 'alberta', 1, NOW(6), NOW(6), 1, 1),
(5909050, 41, 'BC', NULL, NULL, '0', 'CA-BC', 'CA-BC', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'columbia británica', 'British Columbia', 'British Columbia', 'British Columbia', 'british columbia', 1, NOW(6), NOW(6), 1, 1),
(6065171, 41, 'MB', NULL, NULL, '0', 'CA-MB', 'CA-MB', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'manitoba', 'Manitoba', 'Manitoba', 'Manitoba', 'manitoba', 1, NOW(6), NOW(6), 1, 1),
(6087430, 41, 'NB', NULL, NULL, '0', 'CA-NB', 'CA-NB', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'nuevo brunswick', 'New Brunswick', 'New Brunswick', 'New Brunswick', 'new brunswick', 1, NOW(6), NOW(6), 1, 1),
(6091069, 41, 'NT', NULL, NULL, '0', 'CA-NT', 'CA-NT', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'territorios del noroeste', 'Northwest Territories', 'Northwest Territories', 'Northwest Territories', 'northwest territories', 1, NOW(6), NOW(6), 1, 1),
(6091530, 41, 'NS', NULL, NULL, '0', 'CA-NS', 'CA-NS', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'nueva escocia', 'Nova Scotia', 'Nova Scotia', 'Nova Scotia', 'nova scotia', 1, NOW(6), NOW(6), 1, 1),
(6091732, 41, 'NU', NULL, NULL, '0', 'CA-NU', 'CA-NU', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'nunavut', 'Nunavut', 'Nunavut', 'Nunavut', 'nunavut', 1, NOW(6), NOW(6), 1, 1),
(6093943, 41, 'ON', NULL, NULL, '0', 'CA-ON', 'CA-ON', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'ontario', 'Ontario', 'Ontario', 'Ontario', 'ontario', 1, NOW(6), NOW(6), 1, 1),
(6113358, 41, 'PE', NULL, NULL, '0', 'CA-PE', 'CA-PE', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'isla del príncipe eduardo', 'Prince Edward Island', 'Prince Edward Island', 'Prince Edward Island', 'prince edward island', 1, NOW(6), NOW(6), 1, 1),
(6115047, 41, 'QC', NULL, NULL, '0', 'CA-QC', 'CA-QC', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'quebec', 'Quebec', 'Quebec', 'Québec', 'quebec', 1, NOW(6), NOW(6), 1, 1),
(6141242, 41, 'SK', NULL, NULL, '0', 'CA-SK', 'CA-SK', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'saskatchewan', 'Saskatchewan', 'Saskatchewan', 'Saskatchewan', 'saskatchewan', 1, NOW(6), NOW(6), 1, 1),
(6185811, 41, 'YT', NULL, NULL, '0', 'CA-YT', 'CA-YT', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'yukón', 'Yukon', 'Yukon', 'Yukon', 'yukon', 1, NOW(6), NOW(6), 1, 1),
(6354959, 41, 'NL', NULL, NULL, '0', 'CA-NL', 'CA-NL', '+1', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ca' AND id_country = 41), 'terranova y labrador', 'Newfoundland and Labrador', 'Newfoundland and Labrador', 'Newfoundland and Labrador', 'newfoundland and labrador', 1, NOW(6), NOW(6), 1, 1);