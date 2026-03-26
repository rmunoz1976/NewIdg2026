-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SUDÁN DEL SUR (SS)
-- Archivo: SS_sudan_del_sur_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SUDÁN DEL SUR: Estado
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'estado_ss', 209, 8, 'Estado', 'State',
    'State', 'State', 'State', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SUDÁN DEL SUR (Estados)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(381229, 209, 'upper_nile', NULL, NULL, '000', 'SS-000', 'SS-000', '+211', (SELECT id FROM t075t_division_types WHERE code = 'estado_ss' AND id_country = 209), 'Nilo Superior', 'Upper Nile', 'Upper Nile', 'Upper Nile', 'Upper Nile', 1, NOW(6), NOW(6), 1, 1),
(408647, 209, 'lakes', NULL, NULL, '000', 'SS-000', 'SS-000', '+211', (SELECT id FROM t075t_division_types WHERE code = 'estado_ss' AND id_country = 209), 'Lagos', 'Lakes', 'Lakes', 'Lakes', 'Lakes', 1, NOW(6), NOW(6), 1, 1),
(408650, 209, 'unity', NULL, NULL, '000', 'SS-000', 'SS-000', '+211', (SELECT id FROM t075t_division_types WHERE code = 'estado_ss' AND id_country = 209), 'Unidad', 'Unity', 'Unity', 'Unity', 'Unity', 1, NOW(6), NOW(6), 1, 1),
(408655, 209, 'central_equatoria', NULL, NULL, '000', 'SS-000', 'SS-000', '+211', (SELECT id FROM t075t_division_types WHERE code = 'estado_ss' AND id_country = 209), 'Equatoria Central', 'Central Equatoria State', 'Central Equatoria State', 'Central Equatoria State', 'Central Equatoria State', 1, NOW(6), NOW(6), 1, 1),
(408656, 209, 'western_equatoria', NULL, NULL, '000', 'SS-000', 'SS-000', '+211', (SELECT id FROM t075t_division_types WHERE code = 'estado_ss' AND id_country = 209), 'Equatoria Occidental', 'Western Equatoria', 'Western Equatoria', 'Western Equatoria', 'Western Equatoria', 1, NOW(6), NOW(6), 1, 1),
(408657, 209, 'western_bahr_el_ghazal', NULL, NULL, '000', 'SS-000', 'SS-000', '+211', (SELECT id FROM t075t_division_types WHERE code = 'estado_ss' AND id_country = 209), 'Bahr el Ghazal Occidental', 'Western Bahr el Ghazal State', 'Western Bahr el Ghazal State', 'Western Bahr el Ghazal State', 'Western Bahr el Ghazal State', 1, NOW(6), NOW(6), 1, 1),
(408662, 209, 'jonglei', NULL, NULL, '000', 'SS-000', 'SS-000', '+211', (SELECT id FROM t075t_division_types WHERE code = 'estado_ss' AND id_country = 209), 'Jonglei', 'Jonglei', 'Jonglei', 'Jonglei', 'Jonglei', 1, NOW(6), NOW(6), 1, 1),
(408665, 209, 'northern_bahr_el_ghazal', NULL, NULL, '000', 'SS-000', 'SS-000', '+211', (SELECT id FROM t075t_division_types WHERE code = 'estado_ss' AND id_country = 209), 'Bahr el Ghazal Septentrional', 'Northern Bahr el Ghazal', 'Northern Bahr el Ghazal', 'Northern Bahr el Ghazal', 'Northern Bahr el Ghazal', 1, NOW(6), NOW(6), 1, 1),
(408668, 209, 'eastern_equatoria', NULL, NULL, '000', 'SS-000', 'SS-000', '+211', (SELECT id FROM t075t_division_types WHERE code = 'estado_ss' AND id_country = 209), 'Equatoria Oriental', 'Eastern Equatoria', 'Eastern Equatoria', 'Eastern Equatoria', 'Eastern Equatoria', 1, NOW(6), NOW(6), 1, 1),
(408670, 209, 'warrap', NULL, NULL, '000', 'SS-000', 'SS-000', '+211', (SELECT id FROM t075t_division_types WHERE code = 'estado_ss' AND id_country = 209), 'Warrap', 'Warrap State', 'Warrap State', 'Warrap State', 'Warrap State', 1, NOW(6), NOW(6), 1, 1);