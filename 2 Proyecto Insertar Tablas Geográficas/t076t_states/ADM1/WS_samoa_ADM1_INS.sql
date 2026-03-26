-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SAMOA (WS)
-- Archivo: WS_samoa_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SAMOA: Distrito
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_ws', 192, 8, 'Distrito', 'District',
    'District', 'District', 'District', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SAMOA (Distritos)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(4034910, 192, 'vaisigano', NULL, NULL, '000', 'WS-000', 'WS-000', '+685', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ws' AND id_country = 192), 'Vaisigano', 'Vaisigano', 'Vaisigano', 'Vaisigano', 'Vaisigano', 1, NOW(6), NOW(6), 1, 1),
(4034943, 192, 'vaao_fonoti', NULL, NULL, '000', 'WS-000', 'WS-000', '+685', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ws' AND id_country = 192), 'Va‘a-o-Fonoti', 'Va‘a-o-Fonoti', 'Va‘a-o-Fonoti', 'Va‘a-o-Fonoti', 'Va‘a-o-Fonoti', 1, NOW(6), NOW(6), 1, 1),
(4034977, 192, 'tuamasaga', NULL, NULL, '000', 'WS-000', 'WS-000', '+685', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ws' AND id_country = 192), 'Tuamasaga', 'Tuamasaga', 'Tuamasaga', 'Tuamasaga', 'Tuamasaga', 1, NOW(6), NOW(6), 1, 1),
(4035046, 192, 'satupaitea', NULL, NULL, '000', 'WS-000', 'WS-000', '+685', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ws' AND id_country = 192), 'Satupa‘itea', 'Satupa‘itea', 'Satupa‘itea', 'Satupa‘itea', 'Satupa‘itea', 1, NOW(6), NOW(6), 1, 1),
(4035154, 192, 'palauli', NULL, NULL, '000', 'WS-000', 'WS-000', '+685', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ws' AND id_country = 192), 'Palauli', 'Palauli', 'Palauli', 'Palauli', 'Palauli', 1, NOW(6), NOW(6), 1, 1),
(4035313, 192, 'gagaifomauga', NULL, NULL, '000', 'WS-000', 'WS-000', '+685', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ws' AND id_country = 192), 'Gagaifomauga', 'Gagaifomauga', 'Gagaifomauga', 'Gagaifomauga', 'Gagaifomauga', 1, NOW(6), NOW(6), 1, 1),
(4035314, 192, 'gagaemauga', NULL, NULL, '000', 'WS-000', 'WS-000', '+685', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ws' AND id_country = 192), 'Gaga‘emauga', 'Gaga‘emauga', 'Gaga‘emauga', 'Gaga‘emauga', 'Gaga‘emauga', 1, NOW(6), NOW(6), 1, 1),
(4035383, 192, 'faasaleleaga', NULL, NULL, '000', 'WS-000', 'WS-000', '+685', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ws' AND id_country = 192), 'Fa‘asaleleaga', 'Fa‘asaleleaga', 'Fa‘asaleleaga', 'Fa‘asaleleaga', 'Fa‘asaleleaga', 1, NOW(6), NOW(6), 1, 1),
(4035402, 192, 'atua', NULL, NULL, '000', 'WS-000', 'WS-000', '+685', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ws' AND id_country = 192), 'Atua', 'Atua', 'Atua', 'Atua', 'Atua', 1, NOW(6), NOW(6), 1, 1),
(4035425, 192, 'aigai_letai', NULL, NULL, '000', 'WS-000', 'WS-000', '+685', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ws' AND id_country = 192), 'Aiga-i-le-Tai', 'Aiga-i-le-Tai', 'Aiga-i-le-Tai', 'Aiga-i-le-Tai', 'Aiga-i-le-Tai', 1, NOW(6), NOW(6), 1, 1),
(4035434, 192, 'aana', NULL, NULL, '000', 'WS-000', 'WS-000', '+685', (SELECT id FROM t075t_division_types WHERE code = 'distrito_ws' AND id_country = 192), 'A‘ana', 'A‘ana', 'A‘ana', 'A‘ana', 'A‘ana', 1, NOW(6), NOW(6), 1, 1);