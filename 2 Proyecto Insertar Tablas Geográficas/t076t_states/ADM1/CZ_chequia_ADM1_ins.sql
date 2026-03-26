-- =============================================================================
-- Insertar tipo de división geográfica ADM1 para CHEQUIA: Región
-- =============================================================================
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) SELECT
    'region_cz', 58, 8, 'región', 'Region',
    'Region', 'Kraj', 'Kraj', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
    SELECT 1 FROM `t075t_division_types`
    WHERE `code` = 'region_cz' AND `id_country` = 58
);

-- =============================================================================
-- Insertar las divisiones ADM1 de CHEQUIA (Regiones / Kraje)
-- =============================================================================
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
-- CZ-10: Praha (Ciudad Capital)
(3067695, 58, 'CZ-10', NULL, NULL, '0', 'CZ-10', 'CZ-10', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'praga', 'Prague', 'Praha', 'Hlavní město Praha', 'Hlavni mesto Praha',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-20: Středočeský kraj
(3339576, 58, 'CZ-20', NULL, NULL, '0', 'CZ-20', 'CZ-20', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'bohemia central', 'Central Bohemian Region', 'Středočeský kraj', 'Středočeský kraj', 'Stredocesky kraj',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-31: Jihočeský kraj
(3339537, 58, 'CZ-31', NULL, NULL, '0', 'CZ-31', 'CZ-31', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'bohemia del sur', 'South Bohemian Region', 'Jihočeský kraj', 'Jihočeský kraj', 'Jihocesky kraj',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-32: Plzeňský kraj
(3339575, 58, 'CZ-32', NULL, NULL, '0', 'CZ-32', 'CZ-32', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'plzen', 'Plzeň Region', 'Plzeňský kraj', 'Plzeňský kraj', 'Plzensky kraj',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-41: Karlovarský kraj
(3339539, 58, 'CZ-41', NULL, NULL, '0', 'CZ-41', 'CZ-41', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'karlovy vary', 'Karlovy Vary Region', 'Karlovarský kraj', 'Karlovarský kraj', 'Karlovarsky kraj',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-42: Ústecký kraj
(3339577, 58, 'CZ-42', NULL, NULL, '0', 'CZ-42', 'CZ-42', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'usti nad labem', 'Ústí nad Labem Region', 'Ústecký kraj', 'Ústecký kraj', 'Ustecky kraj',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-51: Liberecký kraj
(3339541, 58, 'CZ-51', NULL, NULL, '0', 'CZ-51', 'CZ-51', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'liberec', 'Liberec Region', 'Liberecký kraj', 'Liberecký kraj', 'Liberecky kraj',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-52: Královéhradecký kraj
(3339540, 58, 'CZ-52', NULL, NULL, '0', 'CZ-52', 'CZ-52', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'hradec králové', 'Hradec Králové Region', 'Královéhradecký kraj', 'Královéhradecký kraj', 'Kralovehradecky kraj',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-53: Pardubický kraj
(3339574, 58, 'CZ-53', NULL, NULL, '0', 'CZ-53', 'CZ-53', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'pardubice', 'Pardubice Region', 'Pardubický kraj', 'Pardubický kraj', 'Pardubicky kraj',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-63: Kraj Vysočina
(3339538, 58, 'CZ-63', NULL, NULL, '0', 'CZ-63', 'CZ-63', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'vysočina', 'Vysočina Region', 'Kraj Vysočina', 'Kraj Vysočina', 'Kraj Vysocina',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-64: Jihomoravský kraj
(3339536, 58, 'CZ-64', NULL, NULL, '0', 'CZ-64', 'CZ-64', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'moravia del sur', 'South Moravian Region', 'Jihomoravský kraj', 'Jihomoravský kraj', 'Jihomoravsky kraj',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-71: Olomoucký kraj
(3339542, 58, 'CZ-71', NULL, NULL, '0', 'CZ-71', 'CZ-71', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'olomouc', 'Olomouc Region', 'Olomoucký kraj', 'Olomoucký kraj', 'Olomoucky kraj',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-72: Zlínský kraj
(3339578, 58, 'CZ-72', NULL, NULL, '0', 'CZ-72', 'CZ-72', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'zlín', 'Zlín Region', 'Zlínský kraj', 'Zlínský kraj', 'Zlinsky kraj',
 1, NOW(6), NOW(6), 1, 1),

-- CZ-80: Moravskoslezský kraj
(3339573, 58, 'CZ-80', NULL, NULL, '0', 'CZ-80', 'CZ-80', '+420',
 (SELECT id FROM t075t_division_types WHERE code = 'region_cz' AND id_country = 58),
 'moravia-silesia', 'Moravian-Silesian Region', 'Moravskoslezský kraj', 'Moravskoslezský kraj', 'Moravskoslezsky kraj',
 1, NOW(6), NOW(6), 1, 1);
