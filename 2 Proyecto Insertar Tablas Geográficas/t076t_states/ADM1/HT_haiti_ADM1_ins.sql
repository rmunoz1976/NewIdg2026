-- Insertar tipo de división geográfica ADM1 para HAITÍ: Departamento
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'departamento_ht', 96, 8, 'Departamento', 'Department', 
    'Département', 'Département', 'departement', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de HAITÍ (Departamentos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (3716950, 96, 'HT-SE', NULL, NULL, '13', 'HT-SE', 'HT-SE', '+509', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ht' AND id_country = 96), 'Sud-Est', 'Sud-Est', 'Sud-Est', 'Sud-Est', 'Sud-Est', 1, NOW(6), NOW(6), 1, 1),
    (3716952, 96, 'HT-SU', NULL, NULL, '12', 'HT-SU', 'HT-SU', '+509', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ht' AND id_country = 96), 'Sud', 'Sud', 'Sud', 'Sud', 'Sud', 1, NOW(6), NOW(6), 1, 1),
    (3719432, 96, 'HT-OU', NULL, NULL, '11', 'HT-OU', 'HT-OU', '+509', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ht' AND id_country = 96), 'Ouest', 'Ouest', 'Ouest', 'Département de l''Ouest', 'Departement de l''Ouest', 1, NOW(6), NOW(6), 1, 1),
    (3719536, 96, 'HT-NO', NULL, NULL, '03', 'HT-NO', 'HT-NO', '+509', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ht' AND id_country = 96), 'Nord-Ouest', 'Nord-Ouest', 'Nord-Ouest', 'Nord-Ouest', 'Nord-Ouest', 1, NOW(6), NOW(6), 1, 1),
    (3719540, 96, 'HT-NE', NULL, NULL, '10', 'HT-NE', 'HT-NE', '+509', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ht' AND id_country = 96), 'Nord-Est', 'Nord-Est', 'Nord-Est', 'Département du Nord-Est', 'Departement du Nord-Est', 1, NOW(6), NOW(6), 1, 1),
    (3719543, 96, 'HT-ND', NULL, NULL, '09', 'HT-ND', 'HT-ND', '+509', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ht' AND id_country = 96), 'Nord', 'Nord', 'Nord', 'Nord', 'Nord', 1, NOW(6), NOW(6), 1, 1),
    (3724613, 96, 'HT-GA', NULL, NULL, '14', 'HT-GA', 'HT-GA', '+509', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ht' AND id_country = 96), 'Grand''Anse', 'Grand''Anse', 'Grand''Anse', 'Grand''Anse', 'Grand''Anse', 1, NOW(6), NOW(6), 1, 1),
    (3728069, 96, 'HT-CE', NULL, NULL, '07', 'HT-CE', 'HT-CE', '+509', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ht' AND id_country = 96), 'Centre', 'Centre', 'Centre', 'Centre', 'Centre', 1, NOW(6), NOW(6), 1, 1),
    (3731053, 96, 'HT-AR', NULL, NULL, '06', 'HT-AR', 'HT-AR', '+509', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ht' AND id_country = 96), 'Artibonite', 'Artibonite', 'Artibonite', 'Département de l''Artibonite', 'Departement de l''Artibonite', 1, NOW(6), NOW(6), 1, 1),
    (7115999, 96, 'HT-NI', NULL, NULL, '15', 'HT-NI', 'HT-NI', '+509', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ht' AND id_country = 96), 'Nippes', 'Nippes', 'Nippes', 'Département de Nippes', 'Departement de Nippes', 1, NOW(6), NOW(6), 1, 1);