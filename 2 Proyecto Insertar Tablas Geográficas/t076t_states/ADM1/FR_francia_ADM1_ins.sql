-- =============================================
-- Script de inserción para FRANCIA (FR)
-- Archivo: FR_francia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para FRANCIA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_fr', 76, 8, 'Región', 'Region',
    'Region', 'Région', 'region', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de FRANCIA (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2985244, 76, 'PAC', NULL, NULL, '0', 'FR-PAC', 'FR-PAC', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'provenza-alpes-costa azul', 'Provence-Alpes-Côte d''Azur', 'Provence-Alpes-Côte d''Azur', 'Provence-Alpes-Côte d''Azur', 'provence alpes cote dazur', 1, NOW(6), NOW(6), 1, 1),
(2988289, 76, 'PDL', NULL, NULL, '0', 'FR-PDL', 'FR-PDL', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'países del loira', 'Pays de la Loire', 'Pays de la Loire', 'Pays de la Loire', 'pays de la loire', 1, NOW(6), NOW(6), 1, 1),
(3012874, 76, 'IDF', NULL, NULL, '0', 'FR-IDF', 'FR-IDF', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'isla de francia', 'Île-de-France', 'Île-de-France', 'Île-de-France', 'ile de france', 1, NOW(6), NOW(6), 1, 1),
(3023519, 76, 'COR', NULL, NULL, '0', 'FR-COR', 'FR-COR', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'córcega', 'Corsica', 'Corsica', 'Corse', 'corse', 1, NOW(6), NOW(6), 1, 1),
(3027939, 76, 'CVL', NULL, NULL, '0', 'FR-CVL', 'FR-CVL', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'centro-valle del loira', 'Centre-Val de Loire', 'Centre-Val de Loire', 'Centre-Val de Loire', 'centre val de loire', 1, NOW(6), NOW(6), 1, 1),
(3030293, 76, 'BRE', NULL, NULL, '0', 'FR-BRE', 'FR-BRE', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'bretaña', 'Brittany', 'Brittany', 'Bretagne', 'bretagne', 1, NOW(6), NOW(6), 1, 1),
(11071619, 76, 'BFC', NULL, NULL, '0', 'FR-BFC', 'FR-BFC', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'borgoña-franco condado', 'Bourgogne-Franche-Comté', 'Bourgogne-Franche-Comté', 'Bourgogne-Franche-Comté', 'bourgogne franche comte', 1, NOW(6), NOW(6), 1, 1),
(11071620, 76, 'NAQ', NULL, NULL, '0', 'FR-NAQ', 'FR-NAQ', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'nueva aquitania', 'Nouvelle-Aquitaine', 'Nouvelle-Aquitaine', 'Nouvelle-Aquitaine', 'nouvelle aquitaine', 1, NOW(6), NOW(6), 1, 1),
(11071621, 76, 'NOR', NULL, NULL, '0', 'FR-NOR', 'FR-NOR', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'normandía', 'Normandy', 'Normandy', 'Normandie', 'normandie', 1, NOW(6), NOW(6), 1, 1),
(11071622, 76, 'GES', NULL, NULL, '0', 'FR-GES', 'FR-GES', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'gran este', 'Grand Est', 'Grand Est', 'Grand Est', 'grand est', 1, NOW(6), NOW(6), 1, 1),
(11071623, 76, 'OCC', NULL, NULL, '0', 'FR-OCC', 'FR-OCC', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'occitania', 'Occitania', 'Occitania', 'Occitanie', 'occitanie', 1, NOW(6), NOW(6), 1, 1),
(11071624, 76, 'HDF', NULL, NULL, '0', 'FR-HDF', 'FR-HDF', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'altos de francia', 'Hauts-de-France', 'Hauts-de-France', 'Hauts-de-France', 'hauts de france', 1, NOW(6), NOW(6), 1, 1),
(11071625, 76, 'ARA', NULL, NULL, '0', 'FR-ARA', 'FR-ARA', '+33', (SELECT id FROM t075t_division_types WHERE code = 'region_fr' AND id_country = 76), 'auvernia-ródano-alpes', 'Auvergne-Rhône-Alpes', 'Auvergne-Rhône-Alpes', 'Auvergne-Rhône-Alpes', 'auvergne rhone alpes', 1, NOW(6), NOW(6), 1, 1);