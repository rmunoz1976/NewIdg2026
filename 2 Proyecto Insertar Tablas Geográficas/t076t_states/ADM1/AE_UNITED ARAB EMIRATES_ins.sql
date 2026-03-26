-- Insertar tipo de división geográfica ADM1 para EMIRATOS ÁRABES UNIDOS: Emirato
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'emirato_ae', 236, 8, 'Emirato', 'Emirate', 
    'Imārah', 'إمارة', 'Emirato', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de EMIRATOS ÁRABES UNIDOS (Emiratos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    290595, 236, '07', NULL, NULL, '0', 
    'AE-UQ', 'AE-UQ', '+971', 
    (SELECT id FROM t075t_division_types WHERE code = 'emirato_ae' AND id_country = 236),
    'Umm al Qaywayn', 'Umm al Qaywayn', 'Umm al Qaywayn', 'Umm al Qaywayn', 
    'Umm al Qaywayn', 1, NOW(6), NOW(6), 1, 1
);

INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    291075, 236, '05', NULL, NULL, '0', 
    'AE-RK', 'AE-RK', '+971', 
    (SELECT id FROM t075t_division_types WHERE code = 'emirato_ae' AND id_country = 236),
    'Ras Al Khaimah', 'Ras Al Khaimah', 'Ra’s al Khaymah', 'Emirate of Ras Al Khaimah', 
    'Ras Al Khaimah', 1, NOW(6), NOW(6), 1, 1
);

INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    292224, 236, '03', NULL, NULL, '0', 
    'AE-DU', 'AE-DU', '+971', 
    (SELECT id FROM t075t_division_types WHERE code = 'emirato_ae' AND id_country = 236),
    'Dubai', 'Dubai', 'Dubayy', 'Dubai', 
    'Dubai', 1, NOW(6), NOW(6), 1, 1
);

INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    292673, 236, '06', NULL, NULL, '0', 
    'AE-SH', 'AE-SH', '+971', 
    (SELECT id FROM t075t_division_types WHERE code = 'emirato_ae' AND id_country = 236),
    'Sharjah', 'Sharjah', 'Ash Shāriqah', 'Emirate of Sharjah', 
    'Sharjah', 1, NOW(6), NOW(6), 1, 1
);

INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    292879, 236, '04', NULL, NULL, '0', 
    'AE-FU', 'AE-FU', '+971', 
    (SELECT id FROM t075t_division_types WHERE code = 'emirato_ae' AND id_country = 236),
    'Fujairah', 'Fujairah', 'Al Fujayrah', 'Emirate of Fujairah', 
    'Fujairah', 1, NOW(6), NOW(6), 1, 1
);

INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    292933, 236, '02', NULL, NULL, '0', 
    'AE-AJ', 'AE-AJ', '+971', 
    (SELECT id FROM t075t_division_types WHERE code = 'emirato_ae' AND id_country = 236),
    'Ajman', 'Ajman', '‘Ajmān', 'Emirate of Ajman', 
    'Ajman', 1, NOW(6), NOW(6), 1, 1
);

INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    292969, 236, '01', NULL, NULL, '0', 
    'AE-AZ', 'AE-AZ', '+971', 
    (SELECT id FROM t075t_division_types WHERE code = 'emirato_ae' AND id_country = 236),
    'Abu Dhabi', 'Abu Dhabi', 'Abū Z̧aby', 'Abu Dhabi', 
    'Abu Dhabi', 1, NOW(6), NOW(6), 1, 1
);