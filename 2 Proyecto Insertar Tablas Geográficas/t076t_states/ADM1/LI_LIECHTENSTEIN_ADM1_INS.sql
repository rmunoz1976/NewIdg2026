-- Insertar tipo de división geográfica ADM1 para Liechtenstein: Municipio
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'municipio_li', 127, 8, 'municipio', 'municipality', 
    'Municipality', 'Gemeinde', 'Gemeinde', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Liechtenstein (Municipios)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(3042031, 127, 'LI-11', NULL, NULL, '0', 'LI-11', 'LI-11', '+423', (SELECT id FROM t075t_division_types WHERE code = 'municipio_li' AND id_country = 127), 'vaduz', 'Vaduz', 'Vaduz', 'Gemeinde Vaduz', 'Vaduz', 1, NOW(6), NOW(6), 1, 1),
(3042034, 127, 'LI-10', NULL, NULL, '0', 'LI-10', 'LI-10', '+423', (SELECT id FROM t075t_division_types WHERE code = 'municipio_li' AND id_country = 127), 'triesenberg', 'Triesenberg', 'Triesenberg', 'Gemeinde Triesenberg', 'Triesenberg', 1, NOW(6), NOW(6), 1, 1),
(3042036, 127, 'LI-09', NULL, NULL, '0', 'LI-09', 'LI-09', '+423', (SELECT id FROM t075t_division_types WHERE code = 'municipio_li' AND id_country = 127), 'triesen', 'Triesen', 'Triesen', 'Gemeinde Triesen', 'Triesen', 1, NOW(6), NOW(6), 1, 1),
(3042038, 127, 'LI-08', NULL, NULL, '0', 'LI-08', 'LI-08', '+423', (SELECT id FROM t075t_division_types WHERE code = 'municipio_li' AND id_country = 127), 'schellenberg', 'Schellenberg', 'Schellenberg', 'Gemeinde Schellenberg', 'Schellenberg', 1, NOW(6), NOW(6), 1, 1),
(3042042, 127, 'LI-07', NULL, NULL, '0', 'LI-07', 'LI-07', '+423', (SELECT id FROM t075t_division_types WHERE code = 'municipio_li' AND id_country = 127), 'schaan', 'Schaan', 'Schaan', 'Gemeinde Schaan', 'Schaan', 1, NOW(6), NOW(6), 1, 1),
(3042047, 127, 'LI-06', NULL, NULL, '0', 'LI-06', 'LI-06', '+423', (SELECT id FROM t075t_division_types WHERE code = 'municipio_li' AND id_country = 127), 'ruggell', 'Ruggell', 'Ruggell', 'Gemeinde Ruggell', 'Ruggell', 1, NOW(6), NOW(6), 1, 1),
(3042050, 127, 'LI-05', NULL, NULL, '0', 'LI-05', 'LI-05', '+423', (SELECT id FROM t075t_division_types WHERE code = 'municipio_li' AND id_country = 127), 'planken', 'Planken', 'Planken', 'Gemeinde Planken', 'Planken', 1, NOW(6), NOW(6), 1, 1),
(3042056, 127, 'LI-04', NULL, NULL, '0', 'LI-04', 'LI-04', '+423', (SELECT id FROM t075t_division_types WHERE code = 'municipio_li' AND id_country = 127), 'mauren', 'Mauren', 'Mauren', 'Gemeinde Mauren', 'Mauren', 1, NOW(6), NOW(6), 1, 1),
(3042063, 127, 'LI-03', NULL, NULL, '0', 'LI-03', 'LI-03', '+423', (SELECT id FROM t075t_division_types WHERE code = 'municipio_li' AND id_country = 127), 'gamprin', 'Gamprin', 'Gamprin', 'Gemeinde Gamprin', 'Gamprin', 1, NOW(6), NOW(6), 1, 1),
(3042069, 127, 'LI-02', NULL, NULL, '0', 'LI-02', 'LI-02', '+423', (SELECT id FROM t075t_division_types WHERE code = 'municipio_li' AND id_country = 127), 'eschen', 'Eschen', 'Eschen', 'Gemeinde Eschen', 'Eschen', 1, NOW(6), NOW(6), 1, 1),
(3042074, 127, 'LI-01', NULL, NULL, '0', 'LI-01', 'LI-01', '+423', (SELECT id FROM t075t_division_types WHERE code = 'municipio_li' AND id_country = 127), 'balzers', 'Balzers', 'Balzers', 'Gemeinde Balzers', 'Balzers', 1, NOW(6), NOW(6), 1, 1);