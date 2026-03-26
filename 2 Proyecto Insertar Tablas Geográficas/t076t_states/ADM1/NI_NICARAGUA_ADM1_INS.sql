-- Insertar tipo de división geográfica ADM1 para Nicaragua: Departamento
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'departamento_ni', 157, 8, 'departamento', 'department', 
    'Department', 'Departamento', 'Departamento', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Nicaragua (Departamentos y Regiones Autónomas)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(3617051, 157, 'NI-RI', NULL, NULL, '0', 'NI-RI', 'NI-RI', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'rivas', 'Rivas', 'Rivas', 'Departamento de Rivas', 'Rivas', 1, NOW(6), NOW(6), 1, 1),
(3617056, 157, 'NI-SJ', NULL, NULL, '0', 'NI-SJ', 'NI-SJ', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'río san juan', 'Río San Juan', 'Río San Juan', 'Departamento de Río San Juan', 'Río San Juan', 1, NOW(6), NOW(6), 1, 1),
(3617458, 157, 'NI-NS', NULL, NULL, '0', 'NI-NS', 'NI-NS', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'nueva segovia', 'Nueva Segovia', 'Nueva Segovia', 'Departamento de Nueva Segovia', 'Nueva Segovia', 1, NOW(6), NOW(6), 1, 1),
(3617707, 157, 'NI-MT', NULL, NULL, '0', 'NI-MT', 'NI-MT', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'matagalpa', 'Matagalpa', 'Matagalpa', 'Departamento de Matagalpa', 'Matagalpa', 1, NOW(6), NOW(6), 1, 1),
(3617722, 157, 'NI-MS', NULL, NULL, '0', 'NI-MS', 'NI-MS', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'masaya', 'Masaya', 'Masaya', 'Departamento de Masaya', 'Masaya', 1, NOW(6), NOW(6), 1, 1),
(3617762, 157, 'NI-MN', NULL, NULL, '0', 'NI-MN', 'NI-MN', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'managua', 'Managua', 'Managua', 'Departamento de Managua', 'Managua', 1, NOW(6), NOW(6), 1, 1),
(3617796, 157, 'NI-MD', NULL, NULL, '0', 'NI-MD', 'NI-MD', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'madriz', 'Madriz', 'Madriz', 'Departamento de Madriz', 'Madriz', 1, NOW(6), NOW(6), 1, 1),
(3618029, 157, 'NI-LE', NULL, NULL, '0', 'NI-LE', 'NI-LE', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'león', 'León', 'León', 'Departamento de León', 'León', 1, NOW(6), NOW(6), 1, 1),
(3618928, 157, 'NI-JI', NULL, NULL, '0', 'NI-JI', 'NI-JI', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'jinotega', 'Jinotega', 'Jinotega', 'Departamento de Jinotega', 'Jinotega', 1, NOW(6), NOW(6), 1, 1),
(3619135, 157, 'NI-GR', NULL, NULL, '0', 'NI-GR', 'NI-GR', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'granada', 'Granada', 'Granada', 'Departamento de Granada', 'Granada', 1, NOW(6), NOW(6), 1, 1),
(3619193, 157, 'NI-ES', NULL, NULL, '0', 'NI-ES', 'NI-ES', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'estelí', 'Estelí', 'Estelí', 'Departamento de Estelí', 'Estelí', 1, NOW(6), NOW(6), 1, 1),
(3620368, 157, 'NI-CO', NULL, NULL, '0', 'NI-CO', 'NI-CO', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'chontales', 'Chontales', 'Chontales', 'Departamento de Chontales', 'Chontales', 1, NOW(6), NOW(6), 1, 1),
(3620380, 157, 'NI-CI', NULL, NULL, '0', 'NI-CI', 'NI-CI', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'chinandega', 'Chinandega', 'Chinandega', 'Departamento de Chinandega', 'Chinandega', 1, NOW(6), NOW(6), 1, 1),
(3620481, 157, 'NI-CA', NULL, NULL, '0', 'NI-CA', 'NI-CA', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'carazo', 'Carazo', 'Carazo', 'Departamento de Carazo', 'Carazo', 1, NOW(6), NOW(6), 1, 1),
(3620673, 157, 'NI-BO', NULL, NULL, '0', 'NI-BO', 'NI-BO', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'boaco', 'Boaco', 'Boaco', 'Departamento de Boaco', 'Boaco', 1, NOW(6), NOW(6), 1, 1),
(3830307, 157, 'NI-AN', NULL, NULL, '0', 'NI-AN', 'NI-AN', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'costa caribe norte', 'North Caribbean Coast', 'North Caribbean Coast', 'North Caribbean Coast', 'Costa Caribe Norte', 1, NOW(6), NOW(6), 1, 1),
(3830308, 157, 'NI-AS', NULL, NULL, '0', 'NI-AS', 'NI-AS', '+505', (SELECT id FROM t075t_division_types WHERE code = 'departamento_ni' AND id_country = 157), 'costa caribe sur', 'South Caribbean Coast', 'South Caribbean Coast', 'South Caribbean Coast', 'Costa Caribe Sur', 1, NOW(6), NOW(6), 1, 1);