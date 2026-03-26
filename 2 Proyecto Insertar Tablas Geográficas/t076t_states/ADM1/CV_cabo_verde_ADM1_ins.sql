-- =============================================================================
-- Insertar tipo de división geográfica ADM1 para CABO VERDE: Concelho
-- =============================================================================
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) SELECT
    'concelho_cv', 42, 8, 'concelho', 'Municipality',
    'Concelho', 'Concelho', 'Concelho', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
    SELECT 1 FROM `t075t_division_types`
    WHERE `code` = 'concelho_cv' AND `id_country` = 42
);

-- =============================================================================
-- Insertar las divisiones ADM1 de CABO VERDE (Concelhos)
-- =============================================================================
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
-- 01: Boa Vista
(3374855, 42, 'CV-BV', NULL, NULL, '0', 'CV-BV', 'CV-BV', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'boa vista', 'Boa Vista', 'Boa Vista', 'Concelho da Boa Vista', 'Boa Vista',
 1, NOW(6), NOW(6), 1, 1),

-- 02: Brava
(3374832, 42, 'CV-BR', NULL, NULL, '0', 'CV-BR', 'CV-BR', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'brava', 'Brava', 'Brava', 'Concelho da Brava', 'Brava',
 1, NOW(6), NOW(6), 1, 1),

-- 04: Maio
(3374487, 42, 'CV-MA', NULL, NULL, '0', 'CV-MA', 'CV-MA', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'maio', 'Maio', 'Maio', 'Concelho do Maio', 'Maio',
 1, NOW(6), NOW(6), 1, 1),

-- 05: Paul
(3374391, 42, 'CV-PA', NULL, NULL, '0', 'CV-PA', 'CV-PA', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'paul', 'Paul', 'Paul', 'Concelho do Paul', 'Paul',
 1, NOW(6), NOW(6), 1, 1),

-- 07: Ribeira Grande
(3374274, 42, 'CV-RG', NULL, NULL, '0', 'CV-RG', 'CV-RG', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'ribeira grande', 'Ribeira Grande', 'Ribeira Grande', 'Concelho da Ribeira Grande', 'Ribeira Grande',
 1, NOW(6), NOW(6), 1, 1),

-- 08: Sal
(3374249, 42, 'CV-SL', NULL, NULL, '0', 'CV-SL', 'CV-SL', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'sal', 'Sal', 'Sal', 'Concelho do Sal', 'Sal',
 1, NOW(6), NOW(6), 1, 1),

-- 11: São Vicente
(3374198, 42, 'CV-SV', NULL, NULL, '0', 'CV-SV', 'CV-SV', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'são vicente', 'São Vicente', 'São Vicente', 'Concelho de São Vicente', 'Sao Vicente',
 1, NOW(6), NOW(6), 1, 1),

-- 13: Mosteiros
(3411924, 42, 'CV-MO', NULL, NULL, '0', 'CV-MO', 'CV-MO', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'mosteiros', 'Mosteiros', 'Mosteiros', 'Concelho dos Mosteiros', 'Mosteiros',
 1, NOW(6), NOW(6), 1, 1),

-- 14: Praia
(3374332, 42, 'CV-PR', NULL, NULL, '0', 'CV-PR', 'CV-PR', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'praia', 'Praia', 'Praia', 'Concelho da Praia', 'Praia',
 1, NOW(6), NOW(6), 1, 1),

-- 15: Santa Catarina (Santiago)
(3374226, 42, 'CV-CA', NULL, NULL, '0', 'CV-CA', 'CV-CA', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'santa catarina', 'Santa Catarina', 'Santa Catarina', 'Concelho de Santa Catarina', 'Santa Catarina',
 1, NOW(6), NOW(6), 1, 1),

-- 16: Santa Cruz
(3411925, 42, 'CV-CR', NULL, NULL, '0', 'CV-CR', 'CV-CR', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'santa cruz', 'Santa Cruz', 'Santa Cruz', 'Concelho de Santa Cruz', 'Santa Cruz',
 1, NOW(6), NOW(6), 1, 1),

-- 17: São Domingos
(3411926, 42, 'CV-SD', NULL, NULL, '0', 'CV-SD', 'CV-SD', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'são domingos', 'São Domingos', 'São Domingos', 'Concelho de São Domingos', 'Sao Domingos',
 1, NOW(6), NOW(6), 1, 1),

-- 18: São Filipe
(3411927, 42, 'CV-SF', NULL, NULL, '0', 'CV-SF', 'CV-SF', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'são filipe', 'São Filipe', 'São Filipe', 'Concelho do São Filipe', 'Sao Filipe',
 1, NOW(6), NOW(6), 1, 1),

-- 19: São Miguel
(3411928, 42, 'CV-SM', NULL, NULL, '0', 'CV-SM', 'CV-SM', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'são miguel', 'São Miguel', 'São Miguel', 'Concelho de São Miguel', 'Sao Miguel',
 1, NOW(6), NOW(6), 1, 1),

-- 20: Tarrafal (Santiago)
(3374161, 42, 'CV-TA', NULL, NULL, '0', 'CV-TA', 'CV-TA', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'tarrafal', 'Tarrafal', 'Tarrafal', 'Concelho do Tarrafal', 'Tarrafal',
 1, NOW(6), NOW(6), 1, 1),

-- 21: Porto Novo
(7602868, 42, 'CV-PN', NULL, NULL, '0', 'CV-PN', 'CV-PN', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'porto novo', 'Porto Novo', 'Porto Novo', 'Concelho do Porto Novo', 'Porto Novo',
 1, NOW(6), NOW(6), 1, 1),

-- 22: Ribeira Brava
(7602869, 42, 'CV-RB', NULL, NULL, '0', 'CV-RB', 'CV-RB', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'ribeira brava', 'Ribeira Brava', 'Ribeira Brava', 'Concelho da Ribeira Brava', 'Ribeira Brava',
 1, NOW(6), NOW(6), 1, 1),

-- 23: Ribeira Grande de Santiago
(7603281, 42, 'CV-RS', NULL, NULL, '0', 'CV-RS', 'CV-RS', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'ribeira grande de santiago', 'Ribeira Grande de Santiago', 'Ribeira Grande de Santiago', 'Concelho de Ribeira Grande de Santiago', 'Ribeira Grande de Santiago',
 1, NOW(6), NOW(6), 1, 1),

-- 24: Santa Catarina do Fogo
(7602870, 42, 'CV-CF', NULL, NULL, '0', 'CV-CF', 'CV-CF', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'santa catarina do fogo', 'Santa Catarina do Fogo', 'Santa Catarina do Fogo', 'Concelho de Santa Catarina do Fogo', 'Santa Catarina do Fogo',
 1, NOW(6), NOW(6), 1, 1),

-- 25: São Lourenço dos Órgãos
(7602873, 42, 'CV-SO', NULL, NULL, '0', 'CV-SO', 'CV-SO', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'são lourenço dos órgãos', 'São Lourenço dos Órgãos', 'São Lourenço dos Órgãos', 'Concelho de São Lourenço dos Órgãos', 'Sao Lourenco dos Orgaos',
 1, NOW(6), NOW(6), 1, 1),

-- 26: São Salvador do Mundo
(7602871, 42, 'CV-SS', NULL, NULL, '0', 'CV-SS', 'CV-SS', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'são salvador do mundo', 'São Salvador do Mundo', 'São Salvador do Mundo', 'Concelho de São Salvador do Mundo', 'Sao Salvador do Mundo',
 1, NOW(6), NOW(6), 1, 1),

-- 27: Tarrafal de São Nicolau
(7602872, 42, 'CV-TN', NULL, NULL, '0', 'CV-TN', 'CV-TN', '+238',
 (SELECT id FROM t075t_division_types WHERE code = 'concelho_cv' AND id_country = 42),
 'tarrafal de são nicolau', 'Tarrafal de São Nicolau', 'Tarrafal de São Nicolau', 'Concelho do Tarrafal de São Nicolau', 'Tarrafal de Sao Nicolau',
 1, NOW(6), NOW(6), 1, 1);
