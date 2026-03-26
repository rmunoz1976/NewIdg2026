-- =============================================
-- Script de inserción para CAMERÚN (CM)
-- Archivo: CM_camerun_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para CAMERÚN: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_cm', 40, 8, 'Región', 'Region',
    'Region', 'Région', 'region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de CAMERÚN (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2221788, 40, 'SW', NULL, NULL, '0', 'CM-SW', 'CM-SW', '+237', (SELECT id FROM t075t_division_types WHERE code = 'region_cm' AND id_country = 40), 'suroeste', 'South-West', 'South-West Region', 'South-West Region', 'south west', 1, NOW(6), NOW(6), 1, 1),
(2221789, 40, 'S', NULL, NULL, '0', 'CM-S', 'CM-S', '+237', (SELECT id FROM t075t_division_types WHERE code = 'region_cm' AND id_country = 40), 'sur', 'South', 'South Region', 'South Region', 'south', 1, NOW(6), NOW(6), 1, 1),
(2222934, 40, 'W', NULL, NULL, '0', 'CM-W', 'CM-W', '+237', (SELECT id FROM t075t_division_types WHERE code = 'region_cm' AND id_country = 40), 'oeste', 'West', 'West Region', 'West Region', 'west', 1, NOW(6), NOW(6), 1, 1),
(2223602, 40, 'NW', NULL, NULL, '0', 'CM-NW', 'CM-NW', '+237', (SELECT id FROM t075t_division_types WHERE code = 'region_cm' AND id_country = 40), 'noroeste', 'North-West', 'North-West Region', 'North-West Region', 'north west', 1, NOW(6), NOW(6), 1, 1),
(2223603, 40, 'N', NULL, NULL, '0', 'CM-N', 'CM-N', '+237', (SELECT id FROM t075t_division_types WHERE code = 'region_cm' AND id_country = 40), 'norte', 'North', 'North Region', 'North Region', 'north', 1, NOW(6), NOW(6), 1, 1),
(2229336, 40, 'L', NULL, NULL, '0', 'CM-L', 'CM-L', '+237', (SELECT id FROM t075t_division_types WHERE code = 'region_cm' AND id_country = 40), 'litoral', 'Littoral', 'Littoral Region', 'Littoral Region', 'littoral', 1, NOW(6), NOW(6), 1, 1),
(2231755, 40, 'EN', NULL, NULL, '0', 'CM-EN', 'CM-EN', '+237', (SELECT id FROM t075t_division_types WHERE code = 'region_cm' AND id_country = 40), 'extremonorte', 'Far North', 'Far North Region', 'Far North Region', 'far north', 1, NOW(6), NOW(6), 1, 1),
(2231835, 40, 'E', NULL, NULL, '0', 'CM-E', 'CM-E', '+237', (SELECT id FROM t075t_division_types WHERE code = 'region_cm' AND id_country = 40), 'este', 'East', 'East Region', 'East Region', 'east', 1, NOW(6), NOW(6), 1, 1),
(2233376, 40, 'C', NULL, NULL, '0', 'CM-C', 'CM-C', '+237', (SELECT id FROM t075t_division_types WHERE code = 'region_cm' AND id_country = 40), 'centro', 'Centre', 'Centre Region', 'Centre Region', 'centre', 1, NOW(6), NOW(6), 1, 1),
(2236015, 40, 'AD', NULL, NULL, '0', 'CM-AD', 'CM-AD', '+237', (SELECT id FROM t075t_division_types WHERE code = 'region_cm' AND id_country = 40), 'adamawa', 'Adamaoua', 'Adamaoua Region', 'Adamaoua Region', 'adamaoua', 1, NOW(6), NOW(6), 1, 1);