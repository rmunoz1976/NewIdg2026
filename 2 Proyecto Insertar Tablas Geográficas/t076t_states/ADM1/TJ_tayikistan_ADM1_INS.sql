-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para TAYIKISTÁN (TJ)
-- Archivo: TJ_tayikistan_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para TAYIKISTÁN: Provincia
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_tj', 219, 8, 'Provincia', 'Province',
    'Viloyati', 'Вилояти', 'Viloyati', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de TAYIKISTÁN (Provincias y Regiones)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(1221092, 219, 'sughd', NULL, NULL, '000', 'TJ-000', 'TJ-000', '+992', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tj' AND id_country = 219), 'Sughd', 'Viloyati Sughd', 'Viloyati Sughd', 'Viloyati Sughd', 'Viloyati Sughd', 1, NOW(6), NOW(6), 1, 1),
(1221692, 219, 'gorno_badakhshan', NULL, NULL, '000', 'TJ-000', 'TJ-000', '+992', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tj' AND id_country = 219), 'Gorno-Badakhshan', 'Gorno-Badakhshan', 'Gorno-Badakhshan', 'Gorno-Badakhshan', 'Gorno-Badakhshan', 1, NOW(6), NOW(6), 1, 1),
(1347488, 219, 'khatlon', NULL, NULL, '000', 'TJ-000', 'TJ-000', '+992', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tj' AND id_country = 219), 'Khatlon', 'Viloyati Khatlon', 'Viloyati Khatlon', 'Viloyati Khatlon', 'Viloyati Khatlon', 1, NOW(6), NOW(6), 1, 1),
(6452615, 219, 'districts_republican_subordination', NULL, NULL, '000', 'TJ-000', 'TJ-000', '+992', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tj' AND id_country = 219), 'Distritos de Subordinación Republicana', 'Districts of Republican Subordination', 'Districts of Republican Subordination', 'Districts of Republican Subordination', 'Districts of Republican Subordination', 1, NOW(6), NOW(6), 1, 1),
(7280679, 219, 'dushanbe', NULL, NULL, '000', 'TJ-000', 'TJ-000', '+992', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tj' AND id_country = 219), 'Dusambé', 'Dushanbe', 'Dushanbe', 'Dushanbe', 'Dushanbe', 1, NOW(6), NOW(6), 1, 1);