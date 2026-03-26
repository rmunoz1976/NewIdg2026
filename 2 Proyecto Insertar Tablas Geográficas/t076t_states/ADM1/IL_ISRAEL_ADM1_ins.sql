-- Insertar tipo de división geográfica ADM1 para ISRAEL: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_il', 108, 8, 'Distrito', 'District', 
    'Mehoz', 'מחוז', 'mehoz', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ISRAEL (Distritos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (293198, 108, 'IL-JM', NULL, NULL, '06', 'IL-JM', 'IL-JM', '+972', (SELECT id FROM t075t_division_types WHERE code = 'distrito_il' AND id_country = 108), 'Jerusalén', 'Jerusalem', 'Jerusalem', 'Jerusalem', 'Jerusalem', 1, NOW(6), NOW(6), 1, 1),
    (293396, 108, 'IL-TA', NULL, NULL, '05', 'IL-TA', 'IL-TA', '+972', (SELECT id FROM t075t_division_types WHERE code = 'distrito_il' AND id_country = 108), 'Tel Aviv', 'Tel Aviv', 'Tel Aviv', 'Tel Aviv District', 'Tel Aviv District', 1, NOW(6), NOW(6), 1, 1),
    (294800, 108, 'IL-HA', NULL, NULL, '04', 'IL-HA', 'IL-HA', '+972', (SELECT id FROM t075t_division_types WHERE code = 'distrito_il' AND id_country = 108), 'Haifa', 'Haifa', 'Haifa', 'Haifa', 'Haifa', 1, NOW(6), NOW(6), 1, 1),
    (294824, 108, 'IL-Z', NULL, NULL, '03', 'IL-Z', 'IL-Z', '+972', (SELECT id FROM t075t_division_types WHERE code = 'distrito_il' AND id_country = 108), 'Norte', 'Northern', 'Northern', 'Northern District', 'Northern District', 1, NOW(6), NOW(6), 1, 1),
    (294904, 108, 'IL-M', NULL, NULL, '02', 'IL-M', 'IL-M', '+972', (SELECT id FROM t075t_division_types WHERE code = 'distrito_il' AND id_country = 108), 'Central', 'Central', 'Central', 'Central District', 'Central District', 1, NOW(6), NOW(6), 1, 1),
    (294952, 108, 'IL-D', NULL, NULL, '01', 'IL-D', 'IL-D', '+972', (SELECT id FROM t075t_division_types WHERE code = 'distrito_il' AND id_country = 108), 'Sur', 'Southern', 'Southern', 'Southern District', 'Southern District', 1, NOW(6), NOW(6), 1, 1),
    (11821181, 108, 'IL-JS', NULL, NULL, 'WE', 'IL-JS', 'IL-JS', '+972', (SELECT id FROM t075t_division_types WHERE code = 'distrito_il' AND id_country = 108), 'Judea y Samaria', 'Judea and Samaria Area', 'Judea and Samaria Area', 'Judea and Samaria Area', 'Judea and Samaria Area', 1, NOW(6), NOW(6), 1, 1);