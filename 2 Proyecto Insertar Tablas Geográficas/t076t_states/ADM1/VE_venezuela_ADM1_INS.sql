-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para VENEZUELA (VE)
-- Archivo: VE_venezuela_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para VENEZUELA: Estado
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'estado_ve', 244, 8, 'Estado', 'State',
    'Estado', 'Estado', 'Estado', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de VENEZUELA (Estados, Distrito Capital y Dependencias)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3625035, 244, 'zulia', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Zulia', 'Estado Zulia', 'Estado Zulia', 'Estado Zulia', 'Estado Zulia', 1, NOW(6), NOW(6), 1, 1),
(3625210, 244, 'yaracuy', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Yaracuy', 'Estado Yaracuy', 'Estado Yaracuy', 'Estado Yaracuy', 'Estado Yaracuy', 1, NOW(6), NOW(6), 1, 1),
(3625974, 244, 'trujillo', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Trujillo', 'Estado Trujillo', 'Estado Trujillo', 'Estado Trujillo', 'Estado Trujillo', 1, NOW(6), NOW(6), 1, 1),
(3626553, 244, 'tachira', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Táchira', 'Estado Táchira', 'Estado Táchira', 'Estado Táchira', 'Estado Táchira', 1, NOW(6), NOW(6), 1, 1),
(3626655, 244, 'sucre', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Sucre', 'Estado Sucre', 'Estado Sucre', 'Estado Sucre', 'Estado Sucre', 1, NOW(6), NOW(6), 1, 1),
(3629941, 244, 'portuguesa', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Portuguesa', 'Estado Portuguesa', 'Estado Portuguesa', 'Estado Portuguesa', 'Estado Portuguesa', 1, NOW(6), NOW(6), 1, 1),
(3631462, 244, 'nueva_esparta', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Nueva Esparta', 'Estado Nueva Esparta', 'Estado Nueva Esparta', 'Estado Nueva Esparta', 'Estado Nueva Esparta', 1, NOW(6), NOW(6), 1, 1),
(3632100, 244, 'monagas', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Monagas', 'Estado Monagas', 'Estado Monagas', 'Estado Monagas', 'Estado Monagas', 1, NOW(6), NOW(6), 1, 1),
(3632191, 244, 'miranda', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Miranda', 'Miranda', 'Miranda', 'Miranda', 'Miranda', 1, NOW(6), NOW(6), 1, 1),
(3632306, 244, 'merida', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Mérida', 'Estado Mérida', 'Estado Mérida', 'Estado Mérida', 'Estado Mérida', 1, NOW(6), NOW(6), 1, 1),
(3636539, 244, 'lara', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Lara', 'Estado Lara', 'Estado Lara', 'Estado Lara', 'Estado Lara', 1, NOW(6), NOW(6), 1, 1),
(3640017, 244, 'guarico', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Guárico', 'Estado Guárico', 'Estado Guárico', 'Estado Guárico', 'Estado Guárico', 1, NOW(6), NOW(6), 1, 1),
(3640846, 244, 'dependencias_federales', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Dependencias Federales', 'Dependencias Federales', 'Dependencias Federales', 'Dependencias Federales', 'Dependencias Federales', 1, NOW(6), NOW(6), 1, 1),
(3640847, 244, 'distrito_capital', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Distrito Capital', 'Distrito Capital', 'Distrito Capital', 'Distrito Capital', 'Distrito Capital', 1, NOW(6), NOW(6), 1, 1),
(3640873, 244, 'falcon', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Falcón', 'Estado Falcón', 'Estado Falcón', 'Estado Falcón', 'Estado Falcón', 1, NOW(6), NOW(6), 1, 1),
(3644541, 244, 'delta_amacuro', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Delta Amacuro', 'Delta Amacuro', 'Delta Amacuro', 'Delta Amacuro', 'Delta Amacuro', 1, NOW(6), NOW(6), 1, 1),
(3645386, 244, 'cojedes', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Cojedes', 'Estado Cojedes', 'Estado Cojedes', 'Estado Cojedes', 'Estado Cojedes', 1, NOW(6), NOW(6), 1, 1),
(3646751, 244, 'carabobo', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Carabobo', 'Estado Carabobo', 'Estado Carabobo', 'Estado Carabobo', 'Estado Carabobo', 1, NOW(6), NOW(6), 1, 1),
(3648106, 244, 'bolivar', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Bolívar', 'Estado Bolívar', 'Estado Bolívar', 'Estado Bolívar', 'Estado Bolívar', 1, NOW(6), NOW(6), 1, 1),
(3648544, 244, 'barinas', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Barinas', 'Estado Barinas', 'Estado Barinas', 'Estado Barinas', 'Estado Barinas', 1, NOW(6), NOW(6), 1, 1),
(3649110, 244, 'aragua', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Aragua', 'Estado Aragua', 'Estado Aragua', 'Estado Aragua', 'Estado Aragua', 1, NOW(6), NOW(6), 1, 1),
(3649151, 244, 'apure', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Apure', 'Estado Apure', 'Estado Apure', 'Estado Apure', 'Estado Apure', 1, NOW(6), NOW(6), 1, 1),
(3649198, 244, 'anzoategui', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Anzoátegui', 'Estado Anzoátegui', 'Estado Anzoátegui', 'Estado Anzoátegui', 'Estado Anzoátegui', 1, NOW(6), NOW(6), 1, 1),
(3649302, 244, 'amazonas', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'Amazonas', 'Estado Amazonas', 'Estado Amazonas', 'Estado Amazonas', 'Estado Amazonas', 1, NOW(6), NOW(6), 1, 1),
(3830309, 244, 'la_guaira', NULL, NULL, '000', 'VE-000', 'VE-000', '+58', (SELECT id FROM t075t_division_types WHERE code = 'estado_ve' AND id_country = 244), 'La Guaira', 'Estado La Guaira', 'Estado La Guaira', 'Estado La Guaira', 'Estado La Guaira', 1, NOW(6), NOW(6), 1, 1);