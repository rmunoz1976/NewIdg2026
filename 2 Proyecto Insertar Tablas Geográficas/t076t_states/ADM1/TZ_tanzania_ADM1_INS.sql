-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para TANZANIA (TZ)
-- Archivo: TZ_tanzania_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para TANZANIA: Región
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_tz', 220, 8, 'Región', 'Region',
    'Mkoa', 'Mkoa', 'Mkoa', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de TANZANIA (Regiones)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(148679, 220, 'kagera', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Kagera', 'Kagera Region', 'Kagera Region', 'Kagera Region', 'Kagera Region', 1, NOW(6), NOW(6), 1, 1),
(148724, 220, 'zanzibar_urban_west', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Zanzibar Urbano/Oeste', 'Zanzibar Urban/West Region', 'Zanzibar Urban/West Region', 'Zanzibar Urban/West Region', 'Zanzibar Urban/West Region', 1, NOW(6), NOW(6), 1, 1),
(148725, 220, 'zanzibar_north', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Zanzibar Norte', 'Zanzibar North Region', 'Zanzibar North Region', 'Zanzibar North Region', 'Zanzibar North Region', 1, NOW(6), NOW(6), 1, 1),
(148728, 220, 'zanzibar_central_south', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Zanzibar Central/Sur', 'Zanzibar Central/South Region', 'Zanzibar Central/South Region', 'Zanzibar Central/South Region', 'Zanzibar Central/South Region', 1, NOW(6), NOW(6), 1, 1),
(149595, 220, 'tanga', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Tanga', 'Tanga Region', 'Tanga Region', 'Tanga Region', 'Tanga Region', 1, NOW(6), NOW(6), 1, 1),
(149653, 220, 'tabora', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Tabora', 'Tabora Region', 'Tabora Region', 'Tabora Region', 'Tabora Region', 1, NOW(6), NOW(6), 1, 1),
(149876, 220, 'singida', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Singida', 'Singida Region', 'Singida Region', 'Singida Region', 'Singida Region', 1, NOW(6), NOW(6), 1, 1),
(150004, 220, 'shinyanga', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Shinyanga', 'Shinyanga Region', 'Shinyanga Region', 'Shinyanga Region', 'Shinyanga Region', 1, NOW(6), NOW(6), 1, 1),
(150442, 220, 'rukwa', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Rukwa', 'Rukwa Region', 'Rukwa Region', 'Rukwa Region', 'Rukwa Region', 1, NOW(6), NOW(6), 1, 1),
(150602, 220, 'pwani', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Pwani', 'Coast Region', 'Coast Region', 'Coast Region', 'Coast Region', 1, NOW(6), NOW(6), 1, 1),
(150732, 220, 'pemba_south', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Pemba Sur', 'Pemba South Region', 'Pemba South Region', 'Pemba South Region', 'Pemba South Region', 1, NOW(6), NOW(6), 1, 1),
(150733, 220, 'pemba_north', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Pemba Norte', 'Pemba North Region', 'Pemba North Region', 'Pemba North Region', 'Pemba North Region', 1, NOW(6), NOW(6), 1, 1),
(152219, 220, 'mwanza', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Mwanza', 'Mwanza Region', 'Mwanza Region', 'Mwanza Region', 'Mwanza Region', 1, NOW(6), NOW(6), 1, 1),
(153214, 220, 'morogoro', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Morogoro', 'Morogoro Region', 'Morogoro Region', 'Morogoro Region', 'Morogoro Region', 1, NOW(6), NOW(6), 1, 1),
(154375, 220, 'mbeya', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Mbeya', 'Mbeya Region', 'Mbeya Region', 'Mbeya Region', 'Mbeya Region', 1, NOW(6), NOW(6), 1, 1),
(154775, 220, 'mara', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Mara', 'Mara Region', 'Mara Region', 'Mara Region', 'Mara Region', 1, NOW(6), NOW(6), 1, 1),
(155946, 220, 'lindi', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Lindi', 'Lindi Region', 'Lindi Region', 'Lindi Region', 'Lindi Region', 1, NOW(6), NOW(6), 1, 1),
(157449, 220, 'kilimanjaro', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Kilimanjaro', 'Kilimanjaro Region', 'Kilimanjaro Region', 'Kilimanjaro Region', 'Kilimanjaro Region', 1, NOW(6), NOW(6), 1, 1),
(157732, 220, 'kigoma', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Kigoma', 'Kigoma Region', 'Kigoma Region', 'Kigoma Region', 'Kigoma Region', 1, NOW(6), NOW(6), 1, 1),
(159067, 220, 'iringa', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Iringa', 'Iringa Region', 'Iringa Region', 'Iringa Region', 'Iringa Region', 1, NOW(6), NOW(6), 1, 1),
(160192, 220, 'dodoma', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Dodoma', 'Dodoma Region', 'Dodoma Region', 'Dodoma Region', 'Dodoma Region', 1, NOW(6), NOW(6), 1, 1),
(160260, 220, 'dar_es_salaam', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Dar es Salaam', 'Dar es Salaam Region', 'Dar es Salaam Region', 'Dar es Salaam Region', 'Dar es Salaam Region', 1, NOW(6), NOW(6), 1, 1),
(161322, 220, 'arusha', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Arusha', 'Arusha Region', 'Arusha Region', 'Arusha Region', 'Arusha Region', 1, NOW(6), NOW(6), 1, 1),
(435764, 220, 'manyara', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Manyara', 'Manyara Region', 'Manyara Region', 'Manyara Region', 'Manyara Region', 1, NOW(6), NOW(6), 1, 1),
(877416, 220, 'ruvuma', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Ruvuma', 'Ruvuma Region', 'Ruvuma Region', 'Ruvuma Region', 'Ruvuma Region', 1, NOW(6), NOW(6), 1, 1),
(877744, 220, 'mtwara', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Mtwara', 'Mtwara Region', 'Mtwara Region', 'Mtwara Region', 'Mtwara Region', 1, NOW(6), NOW(6), 1, 1),
(8469238, 220, 'simiyu', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Simiyu', 'Simiyu Region', 'Simiyu Region', 'Simiyu Region', 'Simiyu Region', 1, NOW(6), NOW(6), 1, 1),
(8469239, 220, 'geita', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Geita', 'Geita Region', 'Geita Region', 'Geita Region', 'Geita Region', 1, NOW(6), NOW(6), 1, 1),
(8469240, 220, 'katavi', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Katavi', 'Katavi Region', 'Katavi Region', 'Katavi Region', 'Katavi Region', 1, NOW(6), NOW(6), 1, 1),
(8469241, 220, 'njombe', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Njombe', 'Njombe Region', 'Njombe Region', 'Njombe Region', 'Njombe Region', 1, NOW(6), NOW(6), 1, 1),
(11124984, 220, 'songwe', NULL, NULL, '000', 'TZ-000', 'TZ-000', '+255', (SELECT id FROM t075t_division_types WHERE code = 'region_tz' AND id_country = 220), 'Songwe', 'Songwe', 'Songwe', 'Songwe', 'Songwe', 1, NOW(6), NOW(6), 1, 1);