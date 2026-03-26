-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para EL SALVADOR (SV)
-- Archivo: SV_el_salvador_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para EL SALVADOR: Departamento
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'departamento_sv', 66, 8, 'Departamento', 'Department',
    'Departamento', 'Departamento', 'Departamento', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de EL SALVADOR (Departamentos)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3582882, 66, 'usulutan', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'Usulután', 'Departamento de Usulután', 'Departamento de Usulután', 'Departamento de Usulután', 'Departamento de Usulután', 1, NOW(6), NOW(6), 1, 1),
(3583101, 66, 'sonsonate', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'Sonsonate', 'Departamento de Sonsonate', 'Departamento de Sonsonate', 'Departamento de Sonsonate', 'Departamento de Sonsonate', 1, NOW(6), NOW(6), 1, 1),
(3583176, 66, 'san_vicente', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'San Vicente', 'Departamento de San Vicente', 'Departamento de San Vicente', 'Departamento de San Vicente', 'Departamento de San Vicente', 1, NOW(6), NOW(6), 1, 1),
(3583332, 66, 'santa_ana', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'Santa Ana', 'Departamento de Santa Ana', 'Departamento de Santa Ana', 'Departamento de Santa Ana', 'Departamento de Santa Ana', 1, NOW(6), NOW(6), 1, 1),
(3583360, 66, 'san_salvador', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'San Salvador', 'Departamento de San Salvador', 'Departamento de San Salvador', 'Departamento de San Salvador', 'Departamento de San Salvador', 1, NOW(6), NOW(6), 1, 1),
(3583462, 66, 'san_miguel', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'San Miguel', 'Departamento de San Miguel', 'Departamento de San Miguel', 'Departamento de San Miguel', 'Departamento de San Miguel', 1, NOW(6), NOW(6), 1, 1),
(3584317, 66, 'morazan', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'Morazán', 'Departamento de Morazán', 'Departamento de Morazán', 'Departamento de Morazán', 'Departamento de Morazán', 1, NOW(6), NOW(6), 1, 1),
(3584767, 66, 'la_union', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'La Unión', 'Departamento de La Unión', 'Departamento de La Unión', 'Departamento de La Unión', 'Departamento de La Unión', 1, NOW(6), NOW(6), 1, 1),
(3585087, 66, 'la_paz', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'La Paz', 'Departamento de La Paz', 'Departamento de La Paz', 'Departamento de La Paz', 'Departamento de La Paz', 1, NOW(6), NOW(6), 1, 1),
(3585155, 66, 'la_libertad', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'La Libertad', 'Departamento de La Libertad', 'Departamento de La Libertad', 'Departamento de La Libertad', 'Departamento de La Libertad', 1, NOW(6), NOW(6), 1, 1),
(3586831, 66, 'cuscatlan', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'Cuscatlán', 'Departamento de Cuscatlán', 'Departamento de Cuscatlán', 'Departamento de Cuscatlán', 'Departamento de Cuscatlán', 1, NOW(6), NOW(6), 1, 1),
(3587090, 66, 'chalatenango', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'Chalatenango', 'Departamento de Chalatenango', 'Departamento de Chalatenango', 'Departamento de Chalatenango', 'Departamento de Chalatenango', 1, NOW(6), NOW(6), 1, 1),
(3587217, 66, 'cabanas', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'Cabañas', 'Departamento de Cabañas', 'Departamento de Cabañas', 'Departamento de Cabañas', 'Departamento de Cabañas', 1, NOW(6), NOW(6), 1, 1),
(3587425, 66, 'ahuachapan', NULL, NULL, '000', 'SV-000', 'SV-000', '+503', (SELECT id FROM t075t_division_types WHERE code = 'departamento_sv' AND id_country = 66), 'Ahuachapán', 'Departamento de Ahuachapán', 'Departamento de Ahuachapán', 'Departamento de Ahuachapán', 'Departamento de Ahuachapán', 1, NOW(6), NOW(6), 1, 1);