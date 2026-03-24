-- Insertar tipo de división geográfica ADM1 para ANDORRA: Parroquia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'parroquia_ad', 6, 8, 'Parroquia', 'Parish', 
    'Parròquia', 'Parròquia', 'Parroquia', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ANDORRA (Parroquias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    3039162, 6, '06', NULL, NULL, '0', 
    'AD-06', 'AD-06', '376', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ad' AND id_country = 6),
    'Sant Julià de Lòria', 'Sant Julia de Loria', 'Sant Julià de Lòria', 'Sant Julià de Lòria', 
    'Sant Julià de Lòria', 1, NOW(6), NOW(6), 1, 1
);

INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    3039676, 6, '05', NULL, NULL, '0', 
    'AD-05', 'AD-05', '376', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ad' AND id_country = 6),
    'Ordino', 'Ordino', 'Ordino', 'Ordino', 
    'Ordino', 1, NOW(6), NOW(6), 1, 1
);

INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    3040131, 6, '04', NULL, NULL, '0', 
    'AD-04', 'AD-04', '376', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ad' AND id_country = 6),
    'La Massana', 'La Massana', 'La Massana', 'La Massana', 
    'La Massana', 1, NOW(6), NOW(6), 1, 1
);

INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    3040684, 6, '03', NULL, NULL, '0', 
    'AD-03', 'AD-03', '376', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ad' AND id_country = 6),
    'Encamp', 'Encamp', 'Encamp', 'Encamp', 
    'Encamp', 1, NOW(6), NOW(6), 1, 1
);

INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    3041203, 6, '02', NULL, NULL, '0', 
    'AD-02', 'AD-02', '376', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ad' AND id_country = 6),
    'Canillo', 'Canillo', 'Canillo', 'Canillo', 
    'Canillo', 1, NOW(6), NOW(6), 1, 1
);

INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    3041566, 6, '07', NULL, NULL, '0', 
    'AD-07', 'AD-07', '376', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ad' AND id_country = 6),
    'Andorra la Vella', 'Andorra la Vella', 'Andorra la Vella', 'Andorra la Vella', 
    'Andorra la Vella', 1, NOW(6), NOW(6), 1, 1
);

INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    3338529, 6, '08', NULL, NULL, '0', 
    'AD-08', 'AD-08', '376', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ad' AND id_country = 6),
    'Escaldes-Engordany', 'Escaldes-Engordany', 'Escaldes-Engordany', 'Escaldes-Engordany', 
    'Escaldes-Engordany', 1, NOW(6), NOW(6), 1, 1
);