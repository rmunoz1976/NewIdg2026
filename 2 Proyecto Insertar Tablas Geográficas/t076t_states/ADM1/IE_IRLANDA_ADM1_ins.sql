-- Insertar tipo de división geográfica ADM1 para IRLANDA: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_ie', 106, 8, 'Provincia', 'Province', 
    'Cúige', 'Cúige', 'cuige', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de IRLANDA (Provincias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (7521313, 106, 'IE-C', NULL, NULL, 'C', 'IE-C', 'IE-C', '+353', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ie' AND id_country = 106), 'Connacht', 'Connacht', 'Connacht', 'Connacht', 'Connacht', 1, NOW(6), NOW(6), 1, 1),
    (7521314, 106, 'IE-L', NULL, NULL, 'L', 'IE-L', 'IE-L', '+353', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ie' AND id_country = 106), 'Leinster', 'Leinster', 'Leinster', 'Leinster', 'Leinster', 1, NOW(6), NOW(6), 1, 1),
    (7521315, 106, 'IE-M', NULL, NULL, 'M', 'IE-M', 'IE-M', '+353', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ie' AND id_country = 106), 'Munster', 'Munster', 'Munster', 'Munster', 'Munster', 1, NOW(6), NOW(6), 1, 1),
    (7521316, 106, 'IE-U', NULL, NULL, 'U', 'IE-U', 'IE-U', '+353', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ie' AND id_country = 106), 'Ulster', 'Ulster', 'Ulster', 'Ulster', 'Ulster', 1, NOW(6), NOW(6), 1, 1);