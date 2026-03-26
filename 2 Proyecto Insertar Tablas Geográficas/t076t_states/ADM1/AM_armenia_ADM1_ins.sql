-- Insertar tipo de división geográfica ADM1 para ARMENIA: Marz
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'marz_am', 12, 8, 'Marz', 'Marz', 
    'Marz', 'Մարզ', 'Marz', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ARMENIA (Marzes y Ciudad de Ereván)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(409313, 12, 'AM-AR', NULL, NULL, '0', 'AM-AR', 'AM-AR', '+374', 
    (SELECT id FROM t075t_division_types WHERE code = 'marz_am' AND id_country = 12),
    'Ararat', 'Ararat', 'Ararat', 'Ararat', 
    'Ararat', 1, NOW(6), NOW(6), 1, 1),
(409314, 12, 'AM-SU', NULL, NULL, '0', 'AM-SU', 'AM-SU', '+374', 
    (SELECT id FROM t075t_division_types WHERE code = 'marz_am' AND id_country = 12),
    'Syunik', 'Syunik', 'Syunik', 'Syunik', 
    'Syunik', 1, NOW(6), NOW(6), 1, 1),
(409315, 12, 'AM-VD', NULL, NULL, '0', 'AM-VD', 'AM-VD', '+374', 
    (SELECT id FROM t075t_division_types WHERE code = 'marz_am' AND id_country = 12),
    'Vayots Dzor', 'Vayots Dzor', 'Vayots Dzor', 'Vayots Dzor', 
    'Vayots Dzor', 1, NOW(6), NOW(6), 1, 1),
(616051, 12, 'AM-ER', NULL, NULL, '0', 'AM-ER', 'AM-ER', '+374', 
    (SELECT id FROM t075t_division_types WHERE code = 'marz_am' AND id_country = 12),
    'Ereván', 'Yerevan', 'Yerevan', 'Yerevan', 
    'Ereván', 1, NOW(6), NOW(6), 1, 1),
(828259, 12, 'AM-AG', NULL, NULL, '0', 'AM-AG', 'AM-AG', '+374', 
    (SELECT id FROM t075t_division_types WHERE code = 'marz_am' AND id_country = 12),
    'Aragatsotn', 'Aragatsotn', 'Aragatsotn', 'Aragatsotn', 
    'Aragatsotn', 1, NOW(6), NOW(6), 1, 1),
(828260, 12, 'AM-AV', NULL, NULL, '0', 'AM-AV', 'AM-AV', '+374', 
    (SELECT id FROM t075t_division_types WHERE code = 'marz_am' AND id_country = 12),
    'Armavir', 'Armavir', 'Armavir', 'Armavir', 
    'Armavir', 1, NOW(6), NOW(6), 1, 1),
(828261, 12, 'AM-GR', NULL, NULL, '0', 'AM-GR', 'AM-GR', '+374', 
    (SELECT id FROM t075t_division_types WHERE code = 'marz_am' AND id_country = 12),
    'Gegharkunik', 'Gegharkunik', 'Gegharkunik', 'Gegharkunik', 
    'Gegharkunik', 1, NOW(6), NOW(6), 1, 1),
(828262, 12, 'AM-KT', NULL, NULL, '0', 'AM-KT', 'AM-KT', '+374', 
    (SELECT id FROM t075t_division_types WHERE code = 'marz_am' AND id_country = 12),
    'Kotayk', 'Kotayk', 'Kotayk', 'Kotayk', 
    'Kotayk', 1, NOW(6), NOW(6), 1, 1),
(828263, 12, 'AM-LO', NULL, NULL, '0', 'AM-LO', 'AM-LO', '+374', 
    (SELECT id FROM t075t_division_types WHERE code = 'marz_am' AND id_country = 12),
    'Lori', 'Lori', 'Lori', 'Lori', 
    'Lori', 1, NOW(6), NOW(6), 1, 1),
(828264, 12, 'AM-SH', NULL, NULL, '0', 'AM-SH', 'AM-SH', '+374', 
    (SELECT id FROM t075t_division_types WHERE code = 'marz_am' AND id_country = 12),
    'Shirak', 'Shirak', 'Shirak', 'Shirak', 
    'Shirak', 1, NOW(6), NOW(6), 1, 1),
(828265, 12, 'AM-TV', NULL, NULL, '0', 'AM-TV', 'AM-TV', '+374', 
    (SELECT id FROM t075t_division_types WHERE code = 'marz_am' AND id_country = 12),
    'Tavush', 'Tavush', 'Tavush', 'Tavush', 
    'Tavush', 1, NOW(6), NOW(6), 1, 1);