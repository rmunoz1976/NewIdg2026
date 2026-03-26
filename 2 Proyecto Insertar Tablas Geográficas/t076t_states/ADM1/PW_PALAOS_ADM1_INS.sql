-- Insertar tipo de división geográfica ADM1 para Palaos: Estado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'estado_pw', 168, 8, 'estado', 'state', 
    'State', 'State', 'State', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Palaos (Estados)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(1559532, 168, 'PW-350', NULL, NULL, '0', 'PW-350', 'PW-350', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'ngatpang', 'Ngatpang', 'Ngatpang', 'State of Ngatpang', 'Ngatpang', 1, NOW(6), NOW(6), 1, 1),
(1559630, 168, 'PW-370', NULL, NULL, '0', 'PW-370', 'PW-370', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'sonsorol', 'Sonsorol', 'Sonsorol', 'State of Sonsorol', 'Sonsorol', 1, NOW(6), NOW(6), 1, 1),
(1559774, 168, 'PW-100', NULL, NULL, '0', 'PW-100', 'PW-100', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'kayangel', 'Kayangel', 'Kayangel', 'State of Kayangel', 'Kayangel', 1, NOW(6), NOW(6), 1, 1),
(1559776, 168, 'PW-050', NULL, NULL, '0', 'PW-050', 'PW-050', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'hatohobei', 'Hatohobei', 'Hatohobei', 'State of Hatohobei', 'Hatohobei', 1, NOW(6), NOW(6), 1, 1),
(1559964, 168, 'PW-010', NULL, NULL, '0', 'PW-010', 'PW-010', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'aimeliik', 'Aimeliik', 'Aimeliik', 'State of Aimeliik', 'Aimeliik', 1, NOW(6), NOW(6), 1, 1),
(4037645, 168, 'PW-020', NULL, NULL, '0', 'PW-020', 'PW-020', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'airai', 'Airai', 'Airai', 'State of Airai', 'Airai', 1, NOW(6), NOW(6), 1, 1),
(4037653, 168, 'PW-030', NULL, NULL, '0', 'PW-030', 'PW-030', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'angaur', 'Angaur', 'Angaur', 'State of Angaur', 'Angaur', 1, NOW(6), NOW(6), 1, 1),
(4037892, 168, 'PW-150', NULL, NULL, '0', 'PW-150', 'PW-150', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'koror', 'Koror', 'Koror', 'State of Koror', 'Koror', 1, NOW(6), NOW(6), 1, 1),
(4037930, 168, 'PW-210', NULL, NULL, '0', 'PW-210', 'PW-210', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'melekeok', 'Melekeok', 'Melekeok', 'State of Melekeok', 'Melekeok', 1, NOW(6), NOW(6), 1, 1),
(4037962, 168, 'PW-220', NULL, NULL, '0', 'PW-220', 'PW-220', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'ngaraard', 'Ngaraard', 'Ngaraard', 'State of Ngaraard', 'Ngaraard', 1, NOW(6), NOW(6), 1, 1),
(4037976, 168, 'PW-230', NULL, NULL, '0', 'PW-230', 'PW-230', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'ngchesar', 'Ngchesar', 'Ngchesar', 'State of Ngchesar', 'Ngchesar', 1, NOW(6), NOW(6), 1, 1),
(4038037, 168, 'PW-250', NULL, NULL, '0', 'PW-250', 'PW-250', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'ngarchelong', 'Ngarchelong', 'Ngarchelong', 'State of Ngarchelong', 'Ngarchelong', 1, NOW(6), NOW(6), 1, 1),
(4038043, 168, 'PW-260', NULL, NULL, '0', 'PW-260', 'PW-260', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'ngardmau', 'Ngardmau', 'Ngardmau', 'State of Ngardmau', 'Ngardmau', 1, NOW(6), NOW(6), 1, 1),
(4038068, 168, 'PW-270', NULL, NULL, '0', 'PW-270', 'PW-270', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'ngeremlengui', 'Ngeremlengui', 'Ngeremlengui', 'State of Ngeremlengui', 'Ngeremlengui', 1, NOW(6), NOW(6), 1, 1),
(4038179, 168, 'PW-310', NULL, NULL, '0', 'PW-310', 'PW-310', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'ngiwai', 'Ngiwal', 'Ngiwal', 'State of Ngiwal', 'Ngiwal', 1, NOW(6), NOW(6), 1, 1),
(4038261, 168, 'PW-330', NULL, NULL, '0', 'PW-330', 'PW-330', '+680', (SELECT id FROM t075t_division_types WHERE code = 'estado_pw' AND id_country = 168), 'peleliu', 'Peleliu', 'Peleliu', 'State of Peleliu', 'Peleliu', 1, NOW(6), NOW(6), 1, 1);