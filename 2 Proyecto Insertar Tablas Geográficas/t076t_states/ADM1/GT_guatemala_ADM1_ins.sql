-- =============================================
-- Script de inserción para GUATEMALA (GT)
-- Archivo: GT_guatemala_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GUATEMALA: Departamento
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'departamento_gt', 91, 8, 'Departamento', 'Department',
    'Department', 'Departamento', 'departamento', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GUATEMALA (Departamentos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3587586, 91, 'ZA', NULL, NULL, '0', 'GT-ZA', 'GT-ZA', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'zacapa', 'Zacapa', 'Zacapa Department', 'Departamento de Zacapa', 'zacapa', 1, NOW(6), NOW(6), 1, 1),
(3588257, 91, 'TO', NULL, NULL, '0', 'GT-TO', 'GT-TO', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'totonicapán', 'Totonicapán', 'Totonicapán Department', 'Departamento de Totonicapán', 'totonicapan', 1, NOW(6), NOW(6), 1, 1),
(3588668, 91, 'SU', NULL, NULL, '0', 'GT-SU', 'GT-SU', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'suchitepéquez', 'Suchitepéquez', 'Suchitepéquez Department', 'Departamento de Suchitepéquez', 'suchitepequez', 1, NOW(6), NOW(6), 1, 1),
(3588697, 91, 'SO', NULL, NULL, '0', 'GT-SO', 'GT-SO', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'sololá', 'Sololá', 'Sololá Department', 'Departamento de Sololá', 'solola', 1, NOW(6), NOW(6), 1, 1),
(3589172, 91, 'SR', NULL, NULL, '0', 'GT-SR', 'GT-SR', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'santa rosa', 'Santa Rosa', 'Santa Rosa Department', 'Departamento de Santa Rosa', 'santa rosa', 1, NOW(6), NOW(6), 1, 1),
(3589801, 91, 'SM', NULL, NULL, '0', 'GT-SM', 'GT-SM', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'san marcos', 'San Marcos', 'San Marcos Department', 'Departamento de San Marcos', 'san marcos', 1, NOW(6), NOW(6), 1, 1),
(3590686, 91, 'SA', NULL, NULL, '0', 'GT-SA', 'GT-SA', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'sacatepéquez', 'Sacatepéquez', 'Sacatepéquez Department', 'Departamento de Sacatepéquez', 'sacatepequez', 1, NOW(6), NOW(6), 1, 1),
(3590857, 91, 'RE', NULL, NULL, '0', 'GT-RE', 'GT-RE', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'retalhuleu', 'Retalhuleu', 'Retalhuleu Department', 'Departamento de Retalhuleu', 'retalhuleu', 1, NOW(6), NOW(6), 1, 1),
(3590964, 91, 'QC', NULL, NULL, '0', 'GT-QC', 'GT-QC', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'quiché', 'Quiché', 'Quiché Department', 'Departamento del Quiché', 'quiche', 1, NOW(6), NOW(6), 1, 1),
(3590978, 91, 'QZ', NULL, NULL, '0', 'GT-QZ', 'GT-QZ', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'quetzaltenango', 'Quetzaltenango', 'Quetzaltenango Department', 'Departamento de Quetzaltenango', 'quetzaltenango', 1, NOW(6), NOW(6), 1, 1),
(3591410, 91, 'PE', NULL, NULL, '0', 'GT-PE', 'GT-PE', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'petén', 'Petén', 'Petén Department', 'Departamento del Petén', 'peten', 1, NOW(6), NOW(6), 1, 1),
(3595067, 91, 'JU', NULL, NULL, '0', 'GT-JU', 'GT-JU', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'jutiapa', 'Jutiapa', 'Jutiapa Department', 'Departamento de Jutiapa', 'jutiapa', 1, NOW(6), NOW(6), 1, 1),
(3595236, 91, 'JA', NULL, NULL, '0', 'GT-JA', 'GT-JA', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'jalapa', 'Jalapa', 'Jalapa Department', 'Departamento de Jalapa', 'jalapa', 1, NOW(6), NOW(6), 1, 1),
(3595259, 91, 'IZ', NULL, NULL, '0', 'GT-IZ', 'GT-IZ', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'izabal', 'Izabal', 'Izabal Department', 'Departamento de Izabal', 'izabal', 1, NOW(6), NOW(6), 1, 1),
(3595415, 91, 'HU', NULL, NULL, '0', 'GT-HU', 'GT-HU', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'huehuetenango', 'Huehuetenango', 'Huehuetenango Department', 'Departamento de Huehuetenango', 'huehuetenango', 1, NOW(6), NOW(6), 1, 1),
(3595530, 91, 'GU', NULL, NULL, '0', 'GT-GU', 'GT-GU', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'guatemala', 'Guatemala', 'Guatemala Department', 'Departamento de Guatemala', 'guatemala', 1, NOW(6), NOW(6), 1, 1),
(3595802, 91, 'ES', NULL, NULL, '0', 'GT-ES', 'GT-ES', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'escuintla', 'Escuintla', 'Escuintla Department', 'Departamento de Escuintla', 'escuintla', 1, NOW(6), NOW(6), 1, 1),
(3596416, 91, 'PR', NULL, NULL, '0', 'GT-PR', 'GT-PR', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'el progreso', 'El Progreso', 'El Progreso Department', 'Departamento de El Progreso', 'el progreso', 1, NOW(6), NOW(6), 1, 1),
(3598464, 91, 'CQ', NULL, NULL, '0', 'GT-CQ', 'GT-CQ', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'chiquimula', 'Chiquimula', 'Chiquimula Department', 'Departamento de Chiquimula', 'chiquimula', 1, NOW(6), NOW(6), 1, 1),
(3598571, 91, 'CM', NULL, NULL, '0', 'GT-CM', 'GT-CM', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'chimaltenango', 'Chimaltenango', 'Chimaltenango Department', 'Departamento de Chimaltenango', 'chimaltenango', 1, NOW(6), NOW(6), 1, 1),
(3599602, 91, 'BV', NULL, NULL, '0', 'GT-BV', 'GT-BV', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'baja verapaz', 'Baja Verapaz', 'Baja Verapaz Department', 'Departamento de Baja Verapaz', 'baja verapaz', 1, NOW(6), NOW(6), 1, 1),
(3599773, 91, 'AV', NULL, NULL, '0', 'GT-AV', 'GT-AV', '+502', (SELECT id FROM t075t_division_types WHERE code = 'departamento_gt' AND id_country = 91), 'alta verapaz', 'Alta Verapaz', 'Alta Verapaz Department', 'Departamento de Alta Verapaz', 'alta verapaz', 1, NOW(6), NOW(6), 1, 1);