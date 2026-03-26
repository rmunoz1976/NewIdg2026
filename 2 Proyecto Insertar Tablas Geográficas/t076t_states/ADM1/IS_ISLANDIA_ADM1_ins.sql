-- Insertar tipo de división geográfica ADM1 para ISLANDIA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_is', 101, 8, 'Región', 'Region', 
    'Landshluti', 'Landshluti', 'landshluti', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ISLANDIA (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (3337403, 101, 'IS-NW', NULL, NULL, '41', 'IS-NW', 'IS-NW', '+354', (SELECT id FROM t075t_division_types WHERE code = 'region_is' AND id_country = 101), 'Norðurland Vestra', 'Northwest', 'Norðurland Vestra', 'Norðurland Vestra', 'Norðurland Vestra', 1, NOW(6), NOW(6), 1, 1),
    (3337404, 101, 'IS-NE', NULL, NULL, '40', 'IS-NE', 'IS-NE', '+354', (SELECT id FROM t075t_division_types WHERE code = 'region_is' AND id_country = 101), 'Norðurland Eystra', 'Northeast', 'Norðurland Eystra', 'Norðurland Eystra', 'Norðurland Eystra', 1, NOW(6), NOW(6), 1, 1),
    (3337405, 101, 'IS-EA', NULL, NULL, '38', 'IS-EA', 'IS-EA', '+354', (SELECT id FROM t075t_division_types WHERE code = 'region_is' AND id_country = 101), 'Austurland', 'East', 'Austurland', 'Austurland', 'Austurland', 1, NOW(6), NOW(6), 1, 1),
    (3337406, 101, 'IS-SO', NULL, NULL, '42', 'IS-SO', 'IS-SO', '+354', (SELECT id FROM t075t_division_types WHERE code = 'region_is' AND id_country = 101), 'Suðurland', 'South', 'Suðurland', 'Suðurland', 'Suðurland', 1, NOW(6), NOW(6), 1, 1),
    (3426182, 101, 'IS-CA', NULL, NULL, '39', 'IS-CA', 'IS-CA', '+354', (SELECT id FROM t075t_division_types WHERE code = 'region_is' AND id_country = 101), 'Höfuðborgarsvæði', 'Capital Region', 'Höfuðborgarsvæði', 'Höfuðborgarsvæði', 'Höfuðborgarsvæði', 1, NOW(6), NOW(6), 1, 1),
    (3426183, 101, 'IS-SU', NULL, NULL, '43', 'IS-SU', 'IS-SU', '+354', (SELECT id FROM t075t_division_types WHERE code = 'region_is' AND id_country = 101), 'Suðurnes', 'Southern Peninsula', 'Suðurnes', 'Suðurnes', 'Suðurnes', 1, NOW(6), NOW(6), 1, 1),
    (3426184, 101, 'IS-WE', NULL, NULL, '45', 'IS-WE', 'IS-WE', '+354', (SELECT id FROM t075t_division_types WHERE code = 'region_is' AND id_country = 101), 'Vesturland', 'West', 'Vesturland', 'Vesturland', 'Vesturland', 1, NOW(6), NOW(6), 1, 1),
    (3426185, 101, 'IS-WF', NULL, NULL, '44', 'IS-WF', 'IS-WF', '+354', (SELECT id FROM t075t_division_types WHERE code = 'region_is' AND id_country = 101), 'Vestfirðir', 'Westfjords', 'Vestfirðir', 'Vestfirðir', 'Vestfirðir', 1, NOW(6), NOW(6), 1, 1);