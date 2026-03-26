-- Insertar tipo de división geográfica ADM1 para Portugal: Distrito / Región Autónoma
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_pt', 177, 8, 'distrito', 'district', 
    'District', 'Distrito', 'Distrito', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Portugal (Distritos y Regiones Autónomas)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2262961, 177, 'PT-15', NULL, NULL, '0', 'PT-15', 'PT-15', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'setúbal', 'Setúbal', 'Setúbal', 'Distrito de Setúbal', 'Setúbal', 1, NOW(6), NOW(6), 1, 1),
(2263478, 177, 'PT-14', NULL, NULL, '0', 'PT-14', 'PT-14', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'santarém', 'Santarém', 'Santarém', 'Distrito de Santarém', 'Santarém', 1, NOW(6), NOW(6), 1, 1),
(2264507, 177, 'PT-12', NULL, NULL, '0', 'PT-12', 'PT-12', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'portalegre', 'Portalegre', 'Portalegre', 'Distrito de Portalegre', 'Portalegre', 1, NOW(6), NOW(6), 1, 1),
(2267056, 177, 'PT-11', NULL, NULL, '0', 'PT-11', 'PT-11', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'lisboa', 'Lisbon', 'Lisbon', 'Distrito de Lisboa', 'Lisbon', 1, NOW(6), NOW(6), 1, 1),
(2267094, 177, 'PT-10', NULL, NULL, '0', 'PT-10', 'PT-10', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'leiria', 'Leiria', 'Leiria', 'Distrito de Leiria', 'Leiria', 1, NOW(6), NOW(6), 1, 1),
(2268337, 177, 'PT-08', NULL, NULL, '0', 'PT-08', 'PT-08', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'faro', 'Faro', 'Faro', 'Distrito de Faro', 'Faro', 1, NOW(6), NOW(6), 1, 1),
(2268404, 177, 'PT-07', NULL, NULL, '0', 'PT-07', 'PT-07', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'évora', 'Évora', 'Évora', 'Distrito de Évora', 'Évora', 1, NOW(6), NOW(6), 1, 1),
(2269513, 177, 'PT-05', NULL, NULL, '0', 'PT-05', 'PT-05', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'castelo branco', 'Castelo Branco', 'Castelo Branco', 'Distrito de Castelo Branco', 'Castelo Branco', 1, NOW(6), NOW(6), 1, 1),
(2270984, 177, 'PT-02', NULL, NULL, '0', 'PT-02', 'PT-02', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'beja', 'Beja', 'Beja', 'Distrito de Beja', 'Beja', 1, NOW(6), NOW(6), 1, 1),
(2593105, 177, 'PT-30', NULL, NULL, '0', 'PT-30', 'PT-30', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'madeira', 'Madeira', 'Madeira', 'Madeira', 'Madeira', 1, NOW(6), NOW(6), 1, 1),
(2732264, 177, 'PT-18', NULL, NULL, '0', 'PT-18', 'PT-18', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'viseu', 'Viseu', 'Viseu', 'Distrito de Viseu', 'Viseu', 1, NOW(6), NOW(6), 1, 1),
(2732437, 177, 'PT-17', NULL, NULL, '0', 'PT-17', 'PT-17', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'vila real', 'Vila Real', 'Vila Real', 'Distrito de Vila Real', 'Vila Real', 1, NOW(6), NOW(6), 1, 1),
(2732772, 177, 'PT-16', NULL, NULL, '0', 'PT-16', 'PT-16', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'viana do castelo', 'Viana do Castelo', 'Viana do Castelo', 'Distrito de Viana do Castelo', 'Viana do Castelo', 1, NOW(6), NOW(6), 1, 1),
(2735941, 177, 'PT-13', NULL, NULL, '0', 'PT-13', 'PT-13', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'porto', 'Porto', 'Porto', 'Distrito do Porto', 'Porto', 1, NOW(6), NOW(6), 1, 1),
(2738782, 177, 'PT-09', NULL, NULL, '0', 'PT-09', 'PT-09', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'guarda', 'Guarda', 'Guarda', 'Distrito da Guarda', 'Guarda', 1, NOW(6), NOW(6), 1, 1),
(2740636, 177, 'PT-06', NULL, NULL, '0', 'PT-06', 'PT-06', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'coimbra', 'Coimbra', 'Coimbra', 'Distrito de Coimbra', 'Coimbra', 1, NOW(6), NOW(6), 1, 1),
(2742026, 177, 'PT-04', NULL, NULL, '0', 'PT-04', 'PT-04', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'bragança', 'Bragança', 'Bragança', 'Distrito de Bragança', 'Bragança', 1, NOW(6), NOW(6), 1, 1),
(2742031, 177, 'PT-03', NULL, NULL, '0', 'PT-03', 'PT-03', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'braga', 'Braga', 'Braga', 'Distrito de Braga', 'Braga', 1, NOW(6), NOW(6), 1, 1),
(2742610, 177, 'PT-01', NULL, NULL, '0', 'PT-01', 'PT-01', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'aveiro', 'Aveiro', 'Aveiro', 'Distrito de Aveiro', 'Aveiro', 1, NOW(6), NOW(6), 1, 1),
(3411865, 177, 'PT-20', NULL, NULL, '0', 'PT-20', 'PT-20', '+351', (SELECT id FROM t075t_division_types WHERE code = 'distrito_pt' AND id_country = 177), 'azores', 'Azores', 'Azores', 'Azores', 'Azores', 1, NOW(6), NOW(6), 1, 1);