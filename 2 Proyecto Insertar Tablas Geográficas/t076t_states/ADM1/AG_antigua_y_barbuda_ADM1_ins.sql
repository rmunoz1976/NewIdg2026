-- Insertar tipo de división geográfica ADM1 para ANTIGUA Y BARBUDA: Parroquia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'parroquia_ag', 10, 8, 'Parroquia', 'Parish', 
    'Parish', 'Parish', 'Parroquia', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ANTIGUA Y BARBUDA (Parroquias y dependencias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(3576015, 10, 'AG-08', NULL, NULL, '0', 'AG-08', 'AG-08', '+1-268', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ag' AND id_country = 10),
    'Saint Philip', 'Saint Philip', 'Saint Philip', 'Parish of Saint Philip', 
    'Saint Philip', 1, NOW(6), NOW(6), 1, 1),
(3576016, 10, 'AG-07', NULL, NULL, '0', 'AG-07', 'AG-07', '+1-268', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ag' AND id_country = 10),
    'Saint Peter', 'Saint Peter', 'Saint Peter', 'Parish of Saint Peter', 
    'Saint Peter', 1, NOW(6), NOW(6), 1, 1),
(3576017, 10, 'AG-06', NULL, NULL, '0', 'AG-06', 'AG-06', '+1-268', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ag' AND id_country = 10),
    'Saint Paul', 'Saint Paul', 'Saint Paul', 'Parish of Saint Paul', 
    'Saint Paul', 1, NOW(6), NOW(6), 1, 1),
(3576018, 10, 'AG-05', NULL, NULL, '0', 'AG-05', 'AG-05', '+1-268', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ag' AND id_country = 10),
    'Saint Mary', 'Saint Mary', 'Saint Mary', 'Parish of Saint Mary', 
    'Saint Mary', 1, NOW(6), NOW(6), 1, 1),
(3576023, 10, 'AG-04', NULL, NULL, '0', 'AG-04', 'AG-04', '+1-268', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ag' AND id_country = 10),
    'Saint John', 'Saint John', 'Saint John', 'Parish of Saint John', 
    'Saint John', 1, NOW(6), NOW(6), 1, 1),
(3576024, 10, 'AG-03', NULL, NULL, '0', 'AG-03', 'AG-03', '+1-268', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ag' AND id_country = 10),
    'Saint George', 'Saint George', 'Saint George', 'Parish of Saint George', 
    'Saint George', 1, NOW(6), NOW(6), 1, 1),
(3576037, 10, 'AG-11', NULL, NULL, '0', 'AG-11', 'AG-11', '+1-268', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ag' AND id_country = 10),
    'Redonda', 'Redonda', 'Redonda', 'Redonda', 
    'Redonda', 1, NOW(6), NOW(6), 1, 1),
(3576390, 10, 'AG-10', NULL, NULL, '0', 'AG-10', 'AG-10', '+1-268', 
    (SELECT id FROM t075t_division_types WHERE code = 'parroquia_ag' AND id_country = 10),
    'Barbuda', 'Barbuda', 'Barbuda', 'Barbuda', 
    'Barbuda', 1, NOW(6), NOW(6), 1, 1);