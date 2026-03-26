-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SAN MARINO (SM)
-- Archivo: SM_san_marino_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SAN MARINO: Castillo
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'castillo_sm', 193, 8, 'Castillo', 'Castle',
    'Castello', 'Castello', 'Castello', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SAN MARINO (Castillos)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3166650, 193, 'serravalle', NULL, NULL, '000', 'SM-000', 'SM-000', '+378', (SELECT id FROM t075t_division_types WHERE code = 'castillo_sm' AND id_country = 193), 'Serravalle', 'Serravalle', 'Serravalle', 'Serravalle', 'Serravalle', 1, NOW(6), NOW(6), 1, 1),
(3178807, 193, 'chiesanuova', NULL, NULL, '000', 'SM-000', 'SM-000', '+378', (SELECT id FROM t075t_division_types WHERE code = 'castillo_sm' AND id_country = 193), 'Chiesanuova', 'Chiesanuova', 'Chiesanuova', 'Chiesanuova', 'Chiesanuova', 1, NOW(6), NOW(6), 1, 1),
(3345302, 193, 'san_marino_citta', NULL, NULL, '000', 'SM-000', 'SM-000', '+378', (SELECT id FROM t075t_division_types WHERE code = 'castillo_sm' AND id_country = 193), 'San Marino', 'Castello di San Marino Città', 'Castello di San Marino Città', 'Castello di San Marino Città', 'Castello di San Marino Città', 1, NOW(6), NOW(6), 1, 1),
(3345303, 193, 'acquaviva', NULL, NULL, '000', 'SM-000', 'SM-000', '+378', (SELECT id FROM t075t_division_types WHERE code = 'castillo_sm' AND id_country = 193), 'Acquaviva', 'Castello di Acquaviva', 'Castello di Acquaviva', 'Castello di Acquaviva', 'Castello di Acquaviva', 1, NOW(6), NOW(6), 1, 1),
(3345304, 193, 'borgo_maggiore', NULL, NULL, '000', 'SM-000', 'SM-000', '+378', (SELECT id FROM t075t_division_types WHERE code = 'castillo_sm' AND id_country = 193), 'Borgo Maggiore', 'Castello di Borgo Maggiore', 'Castello di Borgo Maggiore', 'Castello di Borgo Maggiore', 'Castello di Borgo Maggiore', 1, NOW(6), NOW(6), 1, 1),
(3345305, 193, 'domagnano', NULL, NULL, '000', 'SM-000', 'SM-000', '+378', (SELECT id FROM t075t_division_types WHERE code = 'castillo_sm' AND id_country = 193), 'Domagnano', 'Castello di Domagnano', 'Castello di Domagnano', 'Castello di Domagnano', 'Castello di Domagnano', 1, NOW(6), NOW(6), 1, 1),
(3345306, 193, 'faetano', NULL, NULL, '000', 'SM-000', 'SM-000', '+378', (SELECT id FROM t075t_division_types WHERE code = 'castillo_sm' AND id_country = 193), 'Faetano', 'Castello di Faetano', 'Castello di Faetano', 'Castello di Faetano', 'Castello di Faetano', 1, NOW(6), NOW(6), 1, 1),
(3345307, 193, 'fiorentino', NULL, NULL, '000', 'SM-000', 'SM-000', '+378', (SELECT id FROM t075t_division_types WHERE code = 'castillo_sm' AND id_country = 193), 'Fiorentino', 'Castello di Fiorentino', 'Castello di Fiorentino', 'Castello di Fiorentino', 'Castello di Fiorentino', 1, NOW(6), NOW(6), 1, 1),
(3345308, 193, 'montegiardino', NULL, NULL, '000', 'SM-000', 'SM-000', '+378', (SELECT id FROM t075t_division_types WHERE code = 'castillo_sm' AND id_country = 193), 'Montegiardino', 'Castello di Montegiardino', 'Castello di Montegiardino', 'Castello di Montegiardino', 'Castello di Montegiardino', 1, NOW(6), NOW(6), 1, 1);