-- =============================================
-- Script de inserción para CHILE (CL)
-- Archivo: CL_chile_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para CHILE: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_cl', 46, 8, 'Región', 'Region',
    'Region', 'Región', 'region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de CHILE (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3868621, 46, 'VS', NULL, NULL, '0', 'CL-VS', 'CL-VS', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'valparaíso', 'Valparaíso', 'Región de Valparaíso', 'Región de Valparaíso', 'valparaiso', 1, NOW(6), NOW(6), 1, 1),
(3870116, 46, 'TA', NULL, NULL, '0', 'CL-TA', 'CL-TA', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'tarapacá', 'Tarapacá', 'Región de Tarapacá', 'Región de Tarapacá', 'tarapaca', 1, NOW(6), NOW(6), 1, 1),
(3873544, 46, 'RM', NULL, NULL, '0', 'CL-RM', 'CL-RM', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'metropolitana de santiago', 'Santiago Metropolitan', 'Región Metropolitana de Santiago', 'Región Metropolitana de Santiago', 'metropolitana', 1, NOW(6), NOW(6), 1, 1),
(3880306, 46, 'ML', NULL, NULL, '0', 'CL-ML', 'CL-ML', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'maule', 'Maule', 'Región del Maule', 'Región del Maule', 'maule', 1, NOW(6), NOW(6), 1, 1),
(3881974, 46, 'LL', NULL, NULL, '0', 'CL-LL', 'CL-LL', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'los lagos', 'Los Lagos', 'Región de los Lagos', 'Región de los Lagos', 'los lagos', 1, NOW(6), NOW(6), 1, 1),
(3883281, 46, 'LI', NULL, NULL, '0', 'CL-LI', 'CL-LI', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'libertador general bernardo o''higgins', 'Libertador General Bernardo O''Higgins', 'Región del Libertador General Bernardo O''Higgins', 'Región del Libertador General Bernardo O''Higgins', 'libertador general bernardo ohiggins', 1, NOW(6), NOW(6), 1, 1),
(3893623, 46, 'CO', NULL, NULL, '0', 'CL-CO', 'CL-CO', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'coquimbo', 'Coquimbo', 'Región de Coquimbo', 'Región de Coquimbo', 'coquimbo', 1, NOW(6), NOW(6), 1, 1),
(3898380, 46, 'BI', NULL, NULL, '0', 'CL-BI', 'CL-BI', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'biobío', 'Biobío', 'Región del Biobío', 'Región del Biobío', 'biobio', 1, NOW(6), NOW(6), 1, 1),
(3899191, 46, 'AT', NULL, NULL, '0', 'CL-AT', 'CL-AT', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'atacama', 'Atacama', 'Región de Atacama', 'Región de Atacama', 'atacama', 1, NOW(6), NOW(6), 1, 1),
(3899463, 46, 'AR', NULL, NULL, '0', 'CL-AR', 'CL-AR', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'araucanía', 'Araucanía', 'Región de la Araucanía', 'Región de la Araucanía', 'araucania', 1, NOW(6), NOW(6), 1, 1),
(3899537, 46, 'AN', NULL, NULL, '0', 'CL-AN', 'CL-AN', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'antofagasta', 'Antofagasta', 'Región de Antofagasta', 'Región de Antofagasta', 'antofagasta', 1, NOW(6), NOW(6), 1, 1),
(3900333, 46, 'AI', NULL, NULL, '0', 'CL-AI', 'CL-AI', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'aysén', 'Aysén', 'Región Aysén del General Carlos Ibáñez del Campo', 'Región Aysén', 'aysen', 1, NOW(6), NOW(6), 1, 1),
(4036650, 46, 'MA', NULL, NULL, '0', 'CL-MA', 'CL-MA', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'magallanes y antártica chilena', 'Magallanes', 'Región de Magallanes y de la Antártica Chilena', 'Región de Magallanes y Antártica Chilena', 'magallanes', 1, NOW(6), NOW(6), 1, 1),
(6693562, 46, 'AP', NULL, NULL, '0', 'CL-AP', 'CL-AP', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'arica y parinacota', 'Arica y Parinacota', 'Región de Arica y Parinacota', 'Región de Arica y Parinacota', 'arica y parinacota', 1, NOW(6), NOW(6), 1, 1),
(6693563, 46, 'LR', NULL, NULL, '0', 'CL-LR', 'CL-LR', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'los ríos', 'Los Ríos', 'Región de los Ríos', 'Región de los Ríos', 'los rios', 1, NOW(6), NOW(6), 1, 1),
(11979367, 46, 'NB', NULL, NULL, '0', 'CL-NB', 'CL-NB', '+56', (SELECT id FROM t075t_division_types WHERE code = 'region_cl' AND id_country = 46), 'ñuble', 'Ñuble', 'Región de Ñuble', 'Región de Ñuble', 'nuble', 1, NOW(6), NOW(6), 1, 1);