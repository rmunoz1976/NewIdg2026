-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SOMALIA (SO)
-- Archivo: SO_somalia_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SOMALIA: Región
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_so', 205, 8, 'Región', 'Region',
    'Gobolka', 'Gobolka', 'Gobolka', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SOMALIA (Regiones)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(50360, 205, 'woqooyi_galbeed', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Woqooyi Galbeed', 'Gobolka Woqooyi Galbeed', 'Gobolka Woqooyi Galbeed', 'Gobolka Woqooyi Galbeed', 'Gobolka Woqooyi Galbeed', 1, NOW(6), NOW(6), 1, 1),
(51230, 205, 'togdheer', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Togdheer', 'Gobolka Togdheer', 'Gobolka Togdheer', 'Gobolka Togdheer', 'Gobolka Togdheer', 1, NOW(6), NOW(6), 1, 1),
(51966, 205, 'shabeellaha_hoose', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Shabeellaha Hoose', 'Gobolka Shabeellaha Hoose', 'Gobolka Shabeellaha Hoose', 'Gobolka Shabeellaha Hoose', 'Gobolka Shabeellaha Hoose', 1, NOW(6), NOW(6), 1, 1),
(51967, 205, 'shabeellaha_dhexe', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Shabeellaha Dhexe', 'Gobolka Shabeellaha Dhexe', 'Gobolka Shabeellaha Dhexe', 'Gobolka Shabeellaha Dhexe', 'Gobolka Shabeellaha Dhexe', 1, NOW(6), NOW(6), 1, 1),
(52187, 205, 'sanaag', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Sanaag', 'Gobolka Sanaag', 'Gobolka Sanaag', 'Gobolka Sanaag', 'Gobolka Sanaag', 1, NOW(6), NOW(6), 1, 1),
(53477, 205, 'nugaal', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Nugaal', 'Gobolka Nugaal', 'Gobolka Nugaal', 'Gobolka Nugaal', 'Gobolka Nugaal', 1, NOW(6), NOW(6), 1, 1),
(53707, 205, 'mudug', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Mudug', 'Gobolka Mudug', 'Gobolka Mudug', 'Gobolka Mudug', 'Gobolka Mudug', 1, NOW(6), NOW(6), 1, 1),
(56083, 205, 'jubbada_hoose', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Jubbada Hoose', 'Gobolka Jubbada Hoose', 'Gobolka Jubbada Hoose', 'Gobolka Jubbada Hoose', 'Gobolka Jubbada Hoose', 1, NOW(6), NOW(6), 1, 1),
(56084, 205, 'jubbada_dhexe', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Jubbada Dhexe', 'Gobolka Jubbada Dhexe', 'Gobolka Jubbada Dhexe', 'Gobolka Jubbada Dhexe', 'Gobolka Jubbada Dhexe', 1, NOW(6), NOW(6), 1, 1),
(57060, 205, 'hiiraan', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Hiiraan', 'Gobolka Hiiraan', 'Gobolka Hiiraan', 'Gobolka Hiiraan', 'Gobolka Hiiraan', 1, NOW(6), NOW(6), 1, 1),
(58802, 205, 'gedo', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Gedo', 'Gobolka Gedo', 'Gobolka Gedo', 'Gobolka Gedo', 'Gobolka Gedo', 1, NOW(6), NOW(6), 1, 1),
(59362, 205, 'galguduud', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Galguduud', 'Gobolka Galguduud', 'Gobolka Galguduud', 'Gobolka Galguduud', 'Gobolka Galguduud', 1, NOW(6), NOW(6), 1, 1),
(64538, 205, 'bay', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Bay', 'Gobolka Bay', 'Gobolka Bay', 'Gobolka Bay', 'Gobolka Bay', 1, NOW(6), NOW(6), 1, 1),
(64661, 205, 'bari', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Bari', 'Gobolka Bari', 'Gobolka Bari', 'Gobolka Bari', 'Gobolka Bari', 1, NOW(6), NOW(6), 1, 1),
(64833, 205, 'banaadir', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Banaadir', 'Gobolka Banaadir', 'Gobolka Banaadir', 'Gobolka Banaadir', 'Gobolka Banaadir', 1, NOW(6), NOW(6), 1, 1),
(64982, 205, 'bakool', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Bakool', 'Gobolka Bakool', 'Gobolka Bakool', 'Gobolka Bakool', 'Gobolka Bakool', 1, NOW(6), NOW(6), 1, 1),
(6268943, 205, 'awdal', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Awdal', 'Gobolka Awdal', 'Gobolka Awdal', 'Gobolka Awdal', 'Gobolka Awdal', 1, NOW(6), NOW(6), 1, 1),
(6268947, 205, 'sool', NULL, NULL, '000', 'SO-000', 'SO-000', '+252', (SELECT id FROM t075t_division_types WHERE code = 'region_so' AND id_country = 205), 'Sool', 'Gobolka Sool', 'Gobolka Sool', 'Gobolka Sool', 'Gobolka Sool', 1, NOW(6), NOW(6), 1, 1);