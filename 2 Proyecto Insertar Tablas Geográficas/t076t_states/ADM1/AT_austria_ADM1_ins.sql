-- Insertar tipo de división geográfica ADM1 para AUSTRIA: Estado Federal
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'estado_at', 15, 8, 'Estado', 'State', 
    'Bundesland', 'Bundesland', 'Estado', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de AUSTRIA (Estados Federales)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2761367, 15, 'AT-9', NULL, NULL, '0', 'AT-9', 'AT-9', '+43', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_at' AND id_country = 15),
    'Viena', 'Vienna', 'Vienna', 'Wien', 'Viena', 1, NOW(6), NOW(6), 1, 1),
(2762300, 15, 'AT-8', NULL, NULL, '0', 'AT-8', 'AT-8', '+43', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_at' AND id_country = 15),
    'Vorarlberg', 'Vorarlberg', 'Vorarlberg', 'Vorarlberg', 'Vorarlberg', 1, NOW(6), NOW(6), 1, 1),
(2763586, 15, 'AT-7', NULL, NULL, '0', 'AT-7', 'AT-7', '+43', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_at' AND id_country = 15),
    'Tirol', 'Tyrol', 'Tyrol', 'Tirol', 'Tirol', 1, NOW(6), NOW(6), 1, 1),
(2764581, 15, 'AT-6', NULL, NULL, '0', 'AT-6', 'AT-6', '+43', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_at' AND id_country = 15),
    'Estiria', 'Styria', 'Styria', 'Steiermark', 'Estiria', 1, NOW(6), NOW(6), 1, 1),
(2766823, 15, 'AT-5', NULL, NULL, '0', 'AT-5', 'AT-5', '+43', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_at' AND id_country = 15),
    'Salzburgo', 'Salzburg', 'Salzburg', 'Salzburg', 'Salzburgo', 1, NOW(6), NOW(6), 1, 1),
(2769848, 15, 'AT-4', NULL, NULL, '0', 'AT-4', 'AT-4', '+43', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_at' AND id_country = 15),
    'Alta Austria', 'Upper Austria', 'Upper Austria', 'Oberösterreich', 'Alta Austria', 1, NOW(6), NOW(6), 1, 1),
(2770542, 15, 'AT-3', NULL, NULL, '0', 'AT-3', 'AT-3', '+43', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_at' AND id_country = 15),
    'Baja Austria', 'Lower Austria', 'Lower Austria', 'Niederösterreich', 'Baja Austria', 1, NOW(6), NOW(6), 1, 1),
(2774686, 15, 'AT-2', NULL, NULL, '0', 'AT-2', 'AT-2', '+43', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_at' AND id_country = 15),
    'Carintia', 'Carinthia', 'Carinthia', 'Kärnten', 'Carintia', 1, NOW(6), NOW(6), 1, 1),
(2781194, 15, 'AT-1', NULL, NULL, '0', 'AT-1', 'AT-1', '+43', 
    (SELECT id FROM t075t_division_types WHERE code = 'estado_at' AND id_country = 15),
    'Burgenland', 'Burgenland', 'Burgenland', 'Burgenland', 'Burgenland', 1, NOW(6), NOW(6), 1, 1);