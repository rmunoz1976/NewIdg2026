-- Insertar tipo de división geográfica ADM1 para Santa Lucía: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_lc', 188, 8, 'distrito', 'district', 
    'Quarter', 'Quarter', 'Quarter', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Santa Lucía (Distritos/Quarters)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(3576413, 188, 'LC-10', NULL, NULL, '0', 'LC-10', 'LC-10', '+1-758', (SELECT id FROM t075t_division_types WHERE code = 'distrito_lc' AND id_country = 188), 'vieux-fort', 'Vieux-Fort', 'Vieux-Fort', 'Vieux-Fort', 'Vieux-Fort', 1, NOW(6), NOW(6), 1, 1),
(3576441, 188, 'LC-09', NULL, NULL, '0', 'LC-09', 'LC-09', '+1-758', (SELECT id FROM t075t_division_types WHERE code = 'distrito_lc' AND id_country = 188), 'soufrière', 'Soufrière', 'Soufrière', 'Soufrière', 'Soufrière', 1, NOW(6), NOW(6), 1, 1),
(3576567, 188, 'LC-08', NULL, NULL, '0', 'LC-08', 'LC-08', '+1-758', (SELECT id FROM t075t_division_types WHERE code = 'distrito_lc' AND id_country = 188), 'micoud', 'Micoud', 'Micoud', 'Micoud', 'Micoud', 1, NOW(6), NOW(6), 1, 1),
(3576662, 188, 'LC-07', NULL, NULL, '0', 'LC-07', 'LC-07', '+1-758', (SELECT id FROM t075t_division_types WHERE code = 'distrito_lc' AND id_country = 188), 'laborie', 'Laborie', 'Laborie', 'Laborie', 'Laborie', 1, NOW(6), NOW(6), 1, 1),
(3576685, 188, 'LC-06', NULL, NULL, '0', 'LC-06', 'LC-06', '+1-758', (SELECT id FROM t075t_division_types WHERE code = 'distrito_lc' AND id_country = 188), 'gros-islet', 'Gros-Islet', 'Gros-Islet', 'Gros-Islet', 'Gros-Islet', 1, NOW(6), NOW(6), 1, 1),
(3576764, 188, 'LC-05', NULL, NULL, '0', 'LC-05', 'LC-05', '+1-758', (SELECT id FROM t075t_division_types WHERE code = 'distrito_lc' AND id_country = 188), 'dennery', 'Dennery', 'Dennery', 'Dennery', 'Dennery', 1, NOW(6), NOW(6), 1, 1),
(3576794, 188, 'LC-04', NULL, NULL, '0', 'LC-04', 'LC-04', '+1-758', (SELECT id FROM t075t_division_types WHERE code = 'distrito_lc' AND id_country = 188), 'choiseul', 'Choiseul', 'Choiseul', 'Choiseul', 'Choiseul', 1, NOW(6), NOW(6), 1, 1),
(3576810, 188, 'LC-03', NULL, NULL, '0', 'LC-03', 'LC-03', '+1-758', (SELECT id FROM t075t_division_types WHERE code = 'distrito_lc' AND id_country = 188), 'castries', 'Castries', 'Castries', 'Castries', 'Castries', 1, NOW(6), NOW(6), 1, 1),
(3576891, 188, 'LC-01', NULL, NULL, '0', 'LC-01', 'LC-01', '+1-758', (SELECT id FROM t075t_division_types WHERE code = 'distrito_lc' AND id_country = 188), 'anse-la-raye', 'Anse-la-Raye', 'Anse-la-Raye', 'Anse-la-Raye', 'Anse-la-Raye', 1, NOW(6), NOW(6), 1, 1),
(11351387, 188, 'LC-12', NULL, NULL, '0', 'LC-12', 'LC-12', '+1-758', (SELECT id FROM t075t_division_types WHERE code = 'distrito_lc' AND id_country = 188), 'canaries', 'Canaries', 'Canaries', 'Canaries', 'Canaries', 1, NOW(6), NOW(6), 1, 1);