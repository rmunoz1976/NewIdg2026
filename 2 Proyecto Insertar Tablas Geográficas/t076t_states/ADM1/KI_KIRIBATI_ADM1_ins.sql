-- Insertar tipo de división geográfica ADM1 para KIRIBATI: Grupo de Islas
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'grupo_islas_ki', 117, 8, 'Grupo de Islas', 'Island Group', 
    'Island Group', 'Island Group', 'island group', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de KIRIBATI (Grupos de Islas)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (2110215, 117, 'KI-G', NULL, NULL, '01', 'KI-G', 'KI-G', '+686', (SELECT id FROM t075t_division_types WHERE code = 'grupo_islas_ki' AND id_country = 117), 'Islas Gilbert', 'Gilbert Islands', 'Gilbert Islands', 'Gilbert Islands', 'Gilbert Islands', 1, NOW(6), NOW(6), 1, 1),
    (4030940, 117, 'KI-L', NULL, NULL, '02', 'KI-L', 'KI-L', '+686', (SELECT id FROM t075t_division_types WHERE code = 'grupo_islas_ki' AND id_country = 117), 'Islas de la Línea', 'Line Islands', 'Line Islands', 'Line Islands', 'Line Islands', 1, NOW(6), NOW(6), 1, 1),
    (7521379, 117, 'KI-P', NULL, NULL, '03', 'KI-P', 'KI-P', '+686', (SELECT id FROM t075t_division_types WHERE code = 'grupo_islas_ki' AND id_country = 117), 'Islas Fénix', 'Phoenix Islands', 'Phoenix Islands', 'Phoenix Islands', 'Phoenix Islands', 1, NOW(6), NOW(6), 1, 1);