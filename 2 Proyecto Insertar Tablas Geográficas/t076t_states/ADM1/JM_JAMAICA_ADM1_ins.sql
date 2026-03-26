-- Insertar tipo de división geográfica ADM1 para JAMAICA: Parroquia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'parroquia_jm', 111, 8, 'Parroquia', 'Parish', 
    'Parish', 'Parish', 'parish', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de JAMAICA (Parroquias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (3488081, 111, 'JM-10', NULL, NULL, '16', 'JM-10', 'JM-10', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Westmoreland', 'Westmoreland', 'Westmoreland', 'Westmoreland', 'Westmoreland', 1, NOW(6), NOW(6), 1, 1),
    (3488222, 111, 'JM-07', NULL, NULL, '15', 'JM-07', 'JM-07', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Trelawny', 'Trelawny', 'Trelawny', 'Trelawny', 'Trelawny', 1, NOW(6), NOW(6), 1, 1),
    (3488688, 111, 'JM-03', NULL, NULL, '14', 'JM-03', 'JM-03', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Saint Thomas', 'Saint Thomas', 'Saint Thomas', 'Saint Thomas', 'Saint Thomas', 1, NOW(6), NOW(6), 1, 1),
    (3488693, 111, 'JM-05', NULL, NULL, '13', 'JM-05', 'JM-05', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Saint Mary', 'Saint Mary', 'Saint Mary', 'Saint Mary', 'Saint Mary', 1, NOW(6), NOW(6), 1, 1),
    (3488700, 111, 'JM-08', NULL, NULL, '12', 'JM-08', 'JM-08', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Saint James', 'Saint James', 'Saint James', 'Saint James', 'Saint James', 1, NOW(6), NOW(6), 1, 1),
    (3488708, 111, 'JM-11', NULL, NULL, '11', 'JM-11', 'JM-11', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Saint Elizabeth', 'Saint Elizabeth', 'Saint Elizabeth', 'Saint Elizabeth', 'Saint Elizabeth', 1, NOW(6), NOW(6), 1, 1),
    (3488711, 111, 'JM-14', NULL, NULL, '10', 'JM-14', 'JM-14', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Saint Catherine', 'Saint Catherine', 'Saint Catherine', 'Saint Catherine', 'Saint Catherine', 1, NOW(6), NOW(6), 1, 1),
    (3488715, 111, 'JM-06', NULL, NULL, '09', 'JM-06', 'JM-06', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Saint Ann', 'Saint Ann', 'Saint Ann', 'Parish of Saint Ann', 'Parish of Saint Ann', 1, NOW(6), NOW(6), 1, 1),
    (3488716, 111, 'JM-02', NULL, NULL, '08', 'JM-02', 'JM-02', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Saint Andrew', 'Saint Andrew', 'Saint Andrew', 'Saint Andrew', 'Saint Andrew', 1, NOW(6), NOW(6), 1, 1),
    (3488997, 111, 'JM-04', NULL, NULL, '07', 'JM-04', 'JM-04', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Portland', 'Portland', 'Portland', 'Portland', 'Portland', 1, NOW(6), NOW(6), 1, 1),
    (3489586, 111, 'JM-12', NULL, NULL, '04', 'JM-12', 'JM-12', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Manchester', 'Manchester', 'Manchester', 'Manchester', 'Manchester', 1, NOW(6), NOW(6), 1, 1),
    (3489853, 111, 'JM-01', NULL, NULL, '17', 'JM-01', 'JM-01', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Kingston', 'Kingston', 'Kingston', 'Kingston', 'Kingston', 1, NOW(6), NOW(6), 1, 1),
    (3490145, 111, 'JM-09', NULL, NULL, '02', 'JM-09', 'JM-09', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Hanover', 'Hanover', 'Hanover', 'Parish of Hanover', 'Parish of Hanover', 1, NOW(6), NOW(6), 1, 1),
    (3490952, 111, 'JM-13', NULL, NULL, '01', 'JM-13', 'JM-13', '+1-876', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_jm' AND id_country = 111), 'Clarendon', 'Clarendon', 'Clarendon', 'Clarendon', 'Clarendon', 1, NOW(6), NOW(6), 1, 1);