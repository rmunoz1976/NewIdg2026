-- =============================================================================
-- Insertar tipo de división geográfica ADM1 para ALEMANIA: Estado Federado
-- =============================================================================
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) SELECT
    'estado_de', 83, 8, 'estado federado', 'Federal State',
    'Land', 'Land', 'Land', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
    SELECT 1 FROM `t075t_division_types`
    WHERE `code` = 'estado_de' AND `id_country` = 83
);

-- =============================================================================
-- Insertar las divisiones ADM1 de ALEMANIA (Estados Federados / Länder)
-- =============================================================================
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
-- DE-BB: Brandeburgo
(2945356, 83, 'DE-BB', NULL, NULL, '0', 'DE-BB', 'DE-BB', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'brandeburgo', 'Brandenburg', 'Brandenburg', 'Brandenburg', 'Brandenburg',
 1, NOW(6), NOW(6), 1, 1),

-- DE-BE: Berlín
(2950157, 83, 'DE-BE', NULL, NULL, '0', 'DE-BE', 'DE-BE', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'berlín', 'Berlin', 'Berlin', 'Land Berlin', 'Land Berlin',
 1, NOW(6), NOW(6), 1, 1),

-- DE-BW: Baden-Württemberg
(2953481, 83, 'DE-BW', NULL, NULL, '0', 'DE-BW', 'DE-BW', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'baden-württemberg', 'Baden-Württemberg', 'Baden-Württemberg', 'Baden-Württemberg', 'Baden-Wuerttemberg',
 1, NOW(6), NOW(6), 1, 1),

-- DE-BY: Baviera
(2951839, 83, 'DE-BY', NULL, NULL, '0', 'DE-BY', 'DE-BY', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'baviera', 'Bavaria', 'Bayern', 'Bayern', 'Bayern',
 1, NOW(6), NOW(6), 1, 1),

-- DE-HB: Bremen
(2944387, 83, 'DE-HB', NULL, NULL, '0', 'DE-HB', 'DE-HB', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'bremen', 'Bremen', 'Bremen', 'Freie Hansestadt Bremen', 'Freie Hansestadt Bremen',
 1, NOW(6), NOW(6), 1, 1),

-- DE-HE: Hesse
(2905330, 83, 'DE-HE', NULL, NULL, '0', 'DE-HE', 'DE-HE', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'hesse', 'Hesse', 'Hessen', 'Hessen', 'Hessen',
 1, NOW(6), NOW(6), 1, 1),

-- DE-HH: Hamburgo
(2911297, 83, 'DE-HH', NULL, NULL, '0', 'DE-HH', 'DE-HH', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'hamburgo', 'Hamburg', 'Hamburg', 'Freie und Hansestadt Hamburg', 'Freie und Hansestadt Hamburg',
 1, NOW(6), NOW(6), 1, 1),

-- DE-MV: Mecklemburgo-Pomerania Occidental
(2872567, 83, 'DE-MV', NULL, NULL, '0', 'DE-MV', 'DE-MV', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'mecklemburgo-pomerania occidental', 'Mecklenburg-Western Pomerania', 'Mecklenburg-Vorpommern', 'Mecklenburg-Vorpommern', 'Mecklenburg-Vorpommern',
 1, NOW(6), NOW(6), 1, 1),

-- DE-NI: Baja Sajonia
(2862926, 83, 'DE-NI', NULL, NULL, '0', 'DE-NI', 'DE-NI', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'baja sajonia', 'Lower Saxony', 'Niedersachsen', 'Niedersachsen', 'Niedersachsen',
 1, NOW(6), NOW(6), 1, 1),

-- DE-NW: Renania del Norte-Westfalia
(2861876, 83, 'DE-NW', NULL, NULL, '0', 'DE-NW', 'DE-NW', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'renania del norte-westfalia', 'North Rhine-Westphalia', 'Nordrhein-Westfalen', 'Nordrhein-Westfalen', 'Nordrhein-Westfalen',
 1, NOW(6), NOW(6), 1, 1),

-- DE-RP: Renania-Palatinado
(2847618, 83, 'DE-RP', NULL, NULL, '0', 'DE-RP', 'DE-RP', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'renania-palatinado', 'Rhineland-Palatinate', 'Rheinland-Pfalz', 'Rheinland-Pfalz', 'Rheinland-Pfalz',
 1, NOW(6), NOW(6), 1, 1),

-- DE-SH: Schleswig-Holstein
(2838632, 83, 'DE-SH', NULL, NULL, '0', 'DE-SH', 'DE-SH', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'schleswig-holstein', 'Schleswig-Holstein', 'Schleswig-Holstein', 'Schleswig-Holstein', 'Schleswig-Holstein',
 1, NOW(6), NOW(6), 1, 1),

-- DE-SL: Sarre
(2842635, 83, 'DE-SL', NULL, NULL, '0', 'DE-SL', 'DE-SL', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'sarre', 'Saarland', 'Saarland', 'Saarland', 'Saarland',
 1, NOW(6), NOW(6), 1, 1),

-- DE-SN: Sajonia
(2842566, 83, 'DE-SN', NULL, NULL, '0', 'DE-SN', 'DE-SN', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'sajonia', 'Saxony', 'Sachsen', 'Sachsen', 'Sachsen',
 1, NOW(6), NOW(6), 1, 1),

-- DE-ST: Sajonia-Anhalt
(2842565, 83, 'DE-ST', NULL, NULL, '0', 'DE-ST', 'DE-ST', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'sajonia-anhalt', 'Saxony-Anhalt', 'Sachsen-Anhalt', 'Sachsen-Anhalt', 'Sachsen-Anhalt',
 1, NOW(6), NOW(6), 1, 1),

-- DE-TH: Turingia
(2822542, 83, 'DE-TH', NULL, NULL, '0', 'DE-TH', 'DE-TH', '+49',
 (SELECT id FROM t075t_division_types WHERE code = 'estado_de' AND id_country = 83),
 'turingia', 'Thuringia', 'Thüringen', 'Thüringen', 'Thueringen',
 1, NOW(6), NOW(6), 1, 1);
