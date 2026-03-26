-- Insertar tipo de división geográfica ADM1 para Mónaco: Comuna
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'comuna_mc', 145, 8, 'comuna', 'commune', 
    'Commune', 'Commune', 'Commune', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Mónaco (Comuna)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    3319178, 145, 'MC-00', NULL, NULL, '0', 'MC-00', 'MC-00', '+377', 
    (SELECT id FROM t075t_division_types WHERE code = 'comuna_mc' AND id_country = 145),
    'mónaco', 'Monaco', 'Monaco', 'Commune de Monaco', 'Monaco', 1, NOW(6), NOW(6), 1, 1
);