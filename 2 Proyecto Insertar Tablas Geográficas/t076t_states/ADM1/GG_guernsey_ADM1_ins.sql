-- =============================================
-- Script de inserción para GUERNSEY (GG)
-- Archivo: GG_guernsey_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GUERNSEY: Parroquia / Dependencia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'parroquia_gg', 92, 8, 'Parroquia', 'Parish',
    'Parish', 'Parish', 'parish', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GUERNSEY (Parroquias y Dependencias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(6417213, 92, 'SPD', NULL, NULL, '0', 'GG-SPD', 'GG-SPD', '+44-1481', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gg' AND id_country = 92), 'saint pierre du bois', 'Saint Pierre du Bois', 'Saint Pierre du Bois', 'Saint Pierre du Bois', 'saint pierre du bois', 1, NOW(6), NOW(6), 1, 1),
(6417214, 92, 'TOR', NULL, NULL, '0', 'GG-TOR', 'GG-TOR', '+44-1481', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gg' AND id_country = 92), 'torteval', 'Torteval', 'Torteval', 'Torteval', 'torteval', 1, NOW(6), NOW(6), 1, 1),
(6417215, 92, 'SSV', NULL, NULL, '0', 'GG-SSV', 'GG-SSV', '+44-1481', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gg' AND id_country = 92), 'saint sauveur', 'Saint Saviour', 'Saint Saviour', 'Saint Saviour', 'saint saviour', 1, NOW(6), NOW(6), 1, 1),
(6417223, 92, 'FOR', NULL, NULL, '0', 'GG-FOR', 'GG-FOR', '+44-1481', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gg' AND id_country = 92), 'forest', 'Forest', 'Forest', 'Forest', 'forest', 1, NOW(6), NOW(6), 1, 1),
(6417224, 92, 'SMA', NULL, NULL, '0', 'GG-SMA', 'GG-SMA', '+44-1481', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gg' AND id_country = 92), 'saint martin', 'Saint Martin', 'Saint Martin', 'Saint Martin', 'saint martin', 1, NOW(6), NOW(6), 1, 1),
(6417226, 92, 'SAN', NULL, NULL, '0', 'GG-SAN', 'GG-SAN', '+44-1481', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gg' AND id_country = 92), 'saint andrew', 'Saint Andrew', 'Saint Andrew', 'Saint Andrew', 'saint andrew', 1, NOW(6), NOW(6), 1, 1),
(6417228, 92, 'SPP', NULL, NULL, '0', 'GG-SPP', 'GG-SPP', '+44-1481', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gg' AND id_country = 92), 'saint peter port', 'Saint Peter Port', 'Saint Peter Port', 'Saint Peter Port', 'saint peter port', 1, NOW(6), NOW(6), 1, 1),
(6417229, 92, 'CAS', NULL, NULL, '0', 'GG-CAS', 'GG-CAS', '+44-1481', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gg' AND id_country = 92), 'castel', 'Castel', 'Castel', 'Castel', 'castel', 1, NOW(6), NOW(6), 1, 1),
(6417230, 92, 'VAL', NULL, NULL, '0', 'GG-VAL', 'GG-VAL', '+44-1481', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gg' AND id_country = 92), 'vale', 'Vale', 'Vale', 'Vale', 'vale', 1, NOW(6), NOW(6), 1, 1),
(6417233, 92, 'SSA', NULL, NULL, '0', 'GG-SSA', 'GG-SSA', '+44-1481', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gg' AND id_country = 92), 'saint sampson', 'Saint Sampson', 'Saint Sampson', 'Saint Sampson', 'saint sampson', 1, NOW(6), NOW(6), 1, 1),
(8989934, 92, 'ALD', NULL, NULL, '0', 'GG-ALD', 'GG-ALD', '+44-1481', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_gg' AND id_country = 92), 'alderney', 'Alderney', 'Alderney', 'Alderney', 'alderney', 1, NOW(6), NOW(6), 1, 1);