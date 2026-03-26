-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SAN VICENTE Y LAS GRANADINAS (VC)
-- Archivo: VC_san_vicente_y_las_granadinas_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SAN VICENTE Y LAS GRANADINAS: Parroquia
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'parroquia_vc', 191, 8, 'Parroquia', 'Parish',
    'Parish', 'Parish', 'Parish', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SAN VICENTE Y LAS GRANADINAS (Parroquias)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3577818, 191, 'saint_patrick', NULL, NULL, '000', 'VC-000', 'VC-000', '+1-784', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_vc' AND id_country = 191), 'Saint Patrick', 'Parish of Saint Patrick', 'Parish of Saint Patrick', 'Parish of Saint Patrick', 'Parish of Saint Patrick', 1, NOW(6), NOW(6), 1, 1),
(3577819, 191, 'saint_george', NULL, NULL, '000', 'VC-000', 'VC-000', '+1-784', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_vc' AND id_country = 191), 'Saint George', 'Parish of Saint George', 'Parish of Saint George', 'Parish of Saint George', 'Parish of Saint George', 1, NOW(6), NOW(6), 1, 1),
(3577821, 191, 'saint_david', NULL, NULL, '000', 'VC-000', 'VC-000', '+1-784', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_vc' AND id_country = 191), 'Saint David', 'Parish of Saint David', 'Parish of Saint David', 'Parish of Saint David', 'Parish of Saint David', 1, NOW(6), NOW(6), 1, 1),
(3577822, 191, 'saint_andrew', NULL, NULL, '000', 'VC-000', 'VC-000', '+1-784', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_vc' AND id_country = 191), 'Saint Andrew', 'Parish of Saint Andrew', 'Parish of Saint Andrew', 'Parish of Saint Andrew', 'Parish of Saint Andrew', 1, NOW(6), NOW(6), 1, 1),
(3577892, 191, 'grenadines', NULL, NULL, '000', 'VC-000', 'VC-000', '+1-784', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_vc' AND id_country = 191), 'Grenadinas', 'Grenadines', 'Grenadines', 'Grenadines', 'Grenadines', 1, NOW(6), NOW(6), 1, 1),
(3577934, 191, 'charlotte', NULL, NULL, '000', 'VC-000', 'VC-000', '+1-784', (SELECT id FROM t075t_division_types WHERE code = 'parroquia_vc' AND id_country = 191), 'Charlotte', 'Parish of Charlotte', 'Parish of Charlotte', 'Parish of Charlotte', 'Parish of Charlotte', 1, NOW(6), NOW(6), 1, 1);