-- =============================================
-- Script de inserción para BOLIVIA (BO)
-- Archivo: BO_bolivia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BOLIVIA: Departamento
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'departamento_bo', 27, 8, 'Departamento', 'Department',
    'Department', 'Departamento', 'departamento', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BOLIVIA (Departamentos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3903319, 27, 'T', NULL, NULL, '0', 'BO-T', 'BO-T', '+591', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bo' AND id_country = 27), 'tarija', 'Tarija', 'Tarija Department', 'Departamento de Tarija', 'tarija', 1, NOW(6), NOW(6), 1, 1),
(3904907, 27, 'S', NULL, NULL, '0', 'BO-S', 'BO-S', '+591', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bo' AND id_country = 27), 'santa cruz', 'Santa Cruz', 'Santa Cruz Department', 'Departamento de Santa Cruz', 'santa cruz', 1, NOW(6), NOW(6), 1, 1),
(3907580, 27, 'P', NULL, NULL, '0', 'BO-P', 'BO-P', '+591', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bo' AND id_country = 27), 'potosí', 'Potosí', 'Potosí Department', 'Departamento de Potosí', 'potosi', 1, NOW(6), NOW(6), 1, 1),
(3908600, 27, 'N', NULL, NULL, '0', 'BO-N', 'BO-N', '+591', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bo' AND id_country = 27), 'pando', 'Pando', 'Pando Department', 'Departamento de Pando', 'pando', 1, NOW(6), NOW(6), 1, 1),
(3909233, 27, 'O', NULL, NULL, '0', 'BO-O', 'BO-O', '+591', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bo' AND id_country = 27), 'oruro', 'Oruro', 'Oruro Department', 'Departamento de Oruro', 'oruro', 1, NOW(6), NOW(6), 1, 1),
(3911924, 27, 'L', NULL, NULL, '0', 'BO-L', 'BO-L', '+591', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bo' AND id_country = 27), 'la paz', 'La Paz', 'La Paz Department', 'Departamento de La Paz', 'la paz', 1, NOW(6), NOW(6), 1, 1),
(3919966, 27, 'C', NULL, NULL, '0', 'BO-C', 'BO-C', '+591', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bo' AND id_country = 27), 'cochabamba', 'Cochabamba', 'Cochabamba Department', 'Departamento de Cochabamba', 'cochabamba', 1, NOW(6), NOW(6), 1, 1),
(3920177, 27, 'H', NULL, NULL, '0', 'BO-H', 'BO-H', '+591', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bo' AND id_country = 27), 'chuquisaca', 'Chuquisaca', 'Chuquisaca Department', 'Departamento de Chuquisaca', 'chuquisaca', 1, NOW(6), NOW(6), 1, 1),
(3923172, 27, 'B', NULL, NULL, '0', 'BO-B', 'BO-B', '+591', (SELECT id FROM t075t_division_types WHERE code = 'departamento_bo' AND id_country = 27), 'beni', 'Beni', 'Beni Department', 'El Beni', 'beni', 1, NOW(6), NOW(6), 1, 1);