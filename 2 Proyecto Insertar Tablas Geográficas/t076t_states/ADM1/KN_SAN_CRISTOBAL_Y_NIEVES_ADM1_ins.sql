-- Insertar tipo de división geográfica ADM1 para SAN CRISTÓBAL Y NIEVES: Parroquia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'parroquia_kn', 187, 8, 'Parroquia', 'Parish', 
    'Parish', 'Parish', 'parish', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de SAN CRISTÓBAL Y NIEVES (Parroquias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (3575114, 187, 'KN-15', NULL, NULL, '15', 'KN-15', 'KN-15', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Trinity Palmetto Point', 'Trinity Palmetto Point', 'Trinity Palmetto Point', 'Trinity Palmetto Point', 'Trinity Palmetto Point', 1, NOW(6), NOW(6), 1, 1),
    (3575164, 187, 'KN-13', NULL, NULL, '13', 'KN-13', 'KN-13', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Saint Thomas Middle Island', 'Saint Thomas Middle Island', 'Saint Thomas Middle Island', 'Saint Thomas Middle Island', 'Saint Thomas Middle Island', 1, NOW(6), NOW(6), 1, 1),
    (3575165, 187, 'KN-12', NULL, NULL, '12', 'KN-12', 'KN-12', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Saint Thomas Lowland', 'Saint Thomas Lowland', 'Saint Thomas Lowland', 'Saint Thomas Lowland', 'Saint Thomas Lowland', 1, NOW(6), NOW(6), 1, 1),
    (3575168, 187, 'KN-11', NULL, NULL, '11', 'KN-11', 'KN-11', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Saint Peter Basseterre', 'Saint Peter Basseterre', 'Saint Peter Basseterre', 'Saint Peter Basseterre', 'Saint Peter Basseterre', 1, NOW(6), NOW(6), 1, 1),
    (3575171, 187, 'KN-10', NULL, NULL, '10', 'KN-10', 'KN-10', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Saint Paul Charlestown', 'Saint Paul Charlestown', 'Saint Paul Charlestown', 'Saint Paul Charlestown', 'Saint Paul Charlestown', 1, NOW(6), NOW(6), 1, 1),
    (3575172, 187, 'KN-09', NULL, NULL, '09', 'KN-09', 'KN-09', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Saint Paul Capesterre', 'Saint Paul Capesterre', 'Saint Paul Capesterre', 'Saint Paul Capesterre', 'Saint Paul Capesterre', 1, NOW(6), NOW(6), 1, 1),
    (3575173, 187, 'KN-08', NULL, NULL, '08', 'KN-08', 'KN-08', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Saint Mary Cayon', 'Saint Mary Cayon', 'Saint Mary Cayon', 'Saint Mary Cayon', 'Saint Mary Cayon', 1, NOW(6), NOW(6), 1, 1),
    (3575175, 187, 'KN-07', NULL, NULL, '07', 'KN-07', 'KN-07', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Saint John Figtree', 'Saint John Figtree', 'Saint John Figtree', 'Saint John Figtree', 'Saint John Figtree', 1, NOW(6), NOW(6), 1, 1),
    (3575176, 187, 'KN-06', NULL, NULL, '06', 'KN-06', 'KN-06', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Saint John Capesterre', 'Saint John Capesterre', 'Saint John Capesterre', 'Saint John Capesterre', 'Saint John Capesterre', 1, NOW(6), NOW(6), 1, 1),
    (3575177, 187, 'KN-05', NULL, NULL, '05', 'KN-05', 'KN-05', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Saint James Windward', 'Saint James Windward', 'Saint James Windward', 'Saint James Windward', 'Saint James Windward', 1, NOW(6), NOW(6), 1, 1),
    (3575179, 187, 'KN-04', NULL, NULL, '04', 'KN-04', 'KN-04', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Saint George Gingerland', 'Saint George Gingerland', 'Saint George Gingerland', 'Saint George Gingerland', 'Saint George Gingerland', 1, NOW(6), NOW(6), 1, 1),
    (3575180, 187, 'KN-03', NULL, NULL, '03', 'KN-03', 'KN-03', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Saint George Basseterre', 'Saint George Basseterre', 'Saint George Basseterre', 'Saint George Basseterre', 'Saint George Basseterre', 1, NOW(6), NOW(6), 1, 1),
    (3575183, 187, 'KN-02', NULL, NULL, '02', 'KN-02', 'KN-02', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Saint Anne Sandy Point', 'Saint Anne Sandy Point', 'Saint Anne Sandy Point', 'Saint Anne Sandy Point', 'Saint Anne Sandy Point', 1, NOW(6), NOW(6), 1, 1),
    (3575476, 187, 'KN-01', NULL, NULL, '01', 'KN-01', 'KN-01', '+1-869', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_kn' AND id_country = 187), 'Christ Church Nichola Town', 'Christ Church Nichola Town', 'Christ Church Nichola Town', 'Christ Church Nichola Town', 'Christ Church Nichola Town', 1, NOW(6), NOW(6), 1, 1);