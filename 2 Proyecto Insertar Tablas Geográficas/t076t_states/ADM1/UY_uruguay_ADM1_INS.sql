-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para URUGUAY (UY)
-- Archivo: UY_uruguay_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para URUGUAY: Departamento
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'departamento_uy', 240, 8, 'Departamento', 'Department',
    'Departamento', 'Departamento', 'Departamento', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de URUGUAY (Departamentos)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3439780, 240, 'treinta_y_tres', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Treinta y Tres', 'Departamento de Treinta y Tres', 'Departamento de Treinta y Tres', 'Departamento de Treinta y Tres', 'Departamento de Treinta y Tres', 1, NOW(6), NOW(6), 1, 1),
(3440033, 240, 'tacuarembo', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Tacuarembó', 'Departamento de Tacuarembó', 'Departamento de Tacuarembó', 'Departamento de Tacuarembó', 'Departamento de Tacuarembó', 1, NOW(6), NOW(6), 1, 1),
(3440054, 240, 'soriano', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Soriano', 'Departamento de Soriano', 'Departamento de Soriano', 'Departamento de Soriano', 'Departamento de Soriano', 1, NOW(6), NOW(6), 1, 1),
(3440645, 240, 'san_jose', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'San José', 'Departamento de San José', 'Departamento de San José', 'Departamento de San José', 'Departamento de San José', 1, NOW(6), NOW(6), 1, 1),
(3440711, 240, 'salto', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Salto', 'Departamento de Salto', 'Departamento de Salto', 'Departamento de Salto', 'Departamento de Salto', 1, NOW(6), NOW(6), 1, 1),
(3440771, 240, 'rocha', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Rocha', 'Departamento de Rocha', 'Departamento de Rocha', 'Departamento de Rocha', 'Departamento de Rocha', 1, NOW(6), NOW(6), 1, 1),
(3440780, 240, 'rivera', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Rivera', 'Departamento de Rivera', 'Departamento de Rivera', 'Departamento de Rivera', 'Departamento de Rivera', 1, NOW(6), NOW(6), 1, 1),
(3440789, 240, 'rio_negro', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Río Negro', 'Departamento de Río Negro', 'Departamento de Río Negro', 'Departamento de Río Negro', 'Departamento de Río Negro', 1, NOW(6), NOW(6), 1, 1),
(3441242, 240, 'paysandu', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Paysandú', 'Departamento de Paysandú', 'Departamento de Paysandú', 'Departamento de Paysandú', 'Departamento de Paysandú', 1, NOW(6), NOW(6), 1, 1),
(3441572, 240, 'montevideo', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Montevideo', 'Departamento de Montevideo', 'Departamento de Montevideo', 'Departamento de Montevideo', 'Departamento de Montevideo', 1, NOW(6), NOW(6), 1, 1),
(3441890, 240, 'maldonado', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Maldonado', 'Departamento de Maldonado', 'Departamento de Maldonado', 'Departamento de Maldonado', 'Departamento de Maldonado', 1, NOW(6), NOW(6), 1, 1),
(3442007, 240, 'lavalleja', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Lavalleja', 'Departamento de Lavalleja', 'Departamento de Lavalleja', 'Departamento de Lavalleja', 'Departamento de Lavalleja', 1, NOW(6), NOW(6), 1, 1),
(3442584, 240, 'florida', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Florida', 'Departamento de Florida', 'Departamento de Florida', 'Departamento de Florida', 'Departamento de Florida', 1, NOW(6), NOW(6), 1, 1),
(3442587, 240, 'flores', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Flores', 'Departamento de Flores', 'Departamento de Flores', 'Departamento de Flores', 'Departamento de Flores', 1, NOW(6), NOW(6), 1, 1),
(3442720, 240, 'durazno', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Durazno', 'Departamento de Durazno', 'Departamento de Durazno', 'Departamento de Durazno', 'Departamento de Durazno', 1, NOW(6), NOW(6), 1, 1),
(3443025, 240, 'colonia', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Colonia', 'Departamento de Colonia', 'Departamento de Colonia', 'Departamento de Colonia', 'Departamento de Colonia', 1, NOW(6), NOW(6), 1, 1),
(3443173, 240, 'cerro_largo', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Cerro Largo', 'Departamento de Cerro Largo', 'Departamento de Cerro Largo', 'Departamento de Cerro Largo', 'Departamento de Cerro Largo', 1, NOW(6), NOW(6), 1, 1),
(3443411, 240, 'canelones', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Canelones', 'Departamento de Canelones', 'Departamento de Canelones', 'Departamento de Canelones', 'Departamento de Canelones', 1, NOW(6), NOW(6), 1, 1),
(3443756, 240, 'artigas', NULL, NULL, '000', 'UY-000', 'UY-000', '+598', (SELECT id FROM t075t_division_types WHERE code = 'departamento_uy' AND id_country = 240), 'Artigas', 'Departamento de Artigas', 'Departamento de Artigas', 'Departamento de Artigas', 'Departamento de Artigas', 1, NOW(6), NOW(6), 1, 1);