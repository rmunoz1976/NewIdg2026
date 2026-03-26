-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para TIMOR ORIENTAL (TL)
-- Archivo: TL_timor_oriental_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para TIMOR ORIENTAL: Municipio
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'municipio_tl', 223, 8, 'Municipio', 'Municipality',
    'Município', 'Município', 'Municipio', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de TIMOR ORIENTAL (Municipios)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(1622470, 223, 'viqueque', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Viqueque', 'Viqueque', 'Viqueque', 'Viqueque', 'Viqueque', 1, NOW(6), NOW(6), 1, 1),
(1636309, 223, 'manufahi', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Manufahi', 'Manufahi', 'Manufahi', 'Manufahi', 'Manufahi', 1, NOW(6), NOW(6), 1, 1),
(1636525, 223, 'manatuto', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Manatuto', 'Manatuto', 'Manatuto', 'Manatuto', 'Manatuto', 1, NOW(6), NOW(6), 1, 1),
(1637729, 223, 'liquica', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Liquiçá', 'Liquiçá', 'Liquiçá', 'Liquiçá', 'Liquiçá', 1, NOW(6), NOW(6), 1, 1),
(1638294, 223, 'lautem', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Lautém', 'Lautém', 'Lautém', 'Lautém', 'Lautém', 1, NOW(6), NOW(6), 1, 1),
(1639462, 223, 'cova_lima', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Cova Lima', 'Cova Lima', 'Cova Lima', 'Cova Lima', 'Cova Lima', 1, NOW(6), NOW(6), 1, 1),
(1644865, 223, 'ermera', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Ermera', 'Ermera', 'Ermera', 'Ermera', 'Ermera', 1, NOW(6), NOW(6), 1, 1),
(1645456, 223, 'dili', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Dili', 'Díli', 'Díli', 'Díli', 'Díli', 1, NOW(6), NOW(6), 1, 1),
(1648513, 223, 'bobonaro', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Bobonaro', 'Bobonaro', 'Bobonaro', 'Bobonaro', 'Bobonaro', 1, NOW(6), NOW(6), 1, 1),
(1649538, 223, 'baucau', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Baucau', 'Baucau', 'Baucau', 'Baucau', 'Baucau', 1, NOW(6), NOW(6), 1, 1),
(1651539, 223, 'oecusse', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Oecusse', 'Oecusse', 'Oecusse', 'Oecusse', 'Oecusse', 1, NOW(6), NOW(6), 1, 1),
(1651809, 223, 'ainaro', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Ainaro', 'Ainaro', 'Ainaro', 'Ainaro', 'Ainaro', 1, NOW(6), NOW(6), 1, 1),
(1651815, 223, 'aileu', NULL, NULL, '000', 'TL-000', 'TL-000', '+670', (SELECT id FROM t075t_division_types WHERE code = 'municipio_tl' AND id_country = 223), 'Aileu', 'Aileu', 'Aileu', 'Aileu', 'Aileu', 1, NOW(6), NOW(6), 1, 1);