-- Insertar tipo de división geográfica ADM1 para Países Bajos: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_nl', 222, 8, 'provincia', 'province', 
    'Province', 'Provincie', 'Provincie', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Países Bajos (Provincias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2743698, 222, 'NL-ZH', NULL, NULL, '0', 'NL-ZH', 'NL-ZH', '+31', (SELECT id FROM t075t_division_types WHERE code = 'provincia_nl' AND id_country = 222), 'holanda meridional', 'South Holland', 'South Holland', 'Provincie Zuid-Holland', 'Zuid-Holland', 1, NOW(6), NOW(6), 1, 1),
(2744011, 222, 'NL-ZE', NULL, NULL, '0', 'NL-ZE', 'NL-ZE', '+31', (SELECT id FROM t075t_division_types WHERE code = 'provincia_nl' AND id_country = 222), 'zelanda', 'Zeeland', 'Zeeland', 'Provincie Zeeland', 'Zeeland', 1, NOW(6), NOW(6), 1, 1),
(2745909, 222, 'NL-UT', NULL, NULL, '0', 'NL-UT', 'NL-UT', '+31', (SELECT id FROM t075t_division_types WHERE code = 'provincia_nl' AND id_country = 222), 'utrecht', 'Utrecht', 'Utrecht', 'Provincie Utrecht', 'Utrecht', 1, NOW(6), NOW(6), 1, 1),
(2748838, 222, 'NL-OV', NULL, NULL, '0', 'NL-OV', 'NL-OV', '+31', (SELECT id FROM t075t_division_types WHERE code = 'provincia_nl' AND id_country = 222), 'overijssel', 'Overijssel', 'Overijssel', 'Provincie Overijssel', 'Overijssel', 1, NOW(6), NOW(6), 1, 1),
(2749879, 222, 'NL-NH', NULL, NULL, '0', 'NL-NH', 'NL-NH', '+31', (SELECT id FROM t075t_division_types WHERE code = 'provincia_nl' AND id_country = 222), 'holanda septentrional', 'North Holland', 'North Holland', 'Provincie Noord-Holland', 'Noord-Holland', 1, NOW(6), NOW(6), 1, 1),
(2749990, 222, 'NL-NB', NULL, NULL, '0', 'NL-NB', 'NL-NB', '+31', (SELECT id FROM t075t_division_types WHERE code = 'provincia_nl' AND id_country = 222), 'brabante septentrional', 'North Brabant', 'North Brabant', 'Provincie Noord-Brabant', 'Noord-Brabant', 1, NOW(6), NOW(6), 1, 1),
(2751596, 222, 'NL-LI', NULL, NULL, '0', 'NL-LI', 'NL-LI', '+31', (SELECT id FROM t075t_division_types WHERE code = 'provincia_nl' AND id_country = 222), 'limburgo', 'Limburg', 'Limburg', 'Provincie Limburg', 'Limburg', 1, NOW(6), NOW(6), 1, 1),
(2755249, 222, 'NL-GR', NULL, NULL, '0', 'NL-GR', 'NL-GR', '+31', (SELECT id FROM t075t_division_types WHERE code = 'provincia_nl' AND id_country = 222), 'groninga', 'Groningen', 'Groningen', 'Provincie Groningen', 'Groningen', 1, NOW(6), NOW(6), 1, 1),
(2755634, 222, 'NL-GE', NULL, NULL, '0', 'NL-GE', 'NL-GE', '+31', (SELECT id FROM t075t_division_types WHERE code = 'provincia_nl' AND id_country = 222), 'güeldres', 'Gelderland', 'Gelderland', 'Provincie Gelderland', 'Gelderland', 1, NOW(6), NOW(6), 1, 1),
(2755812, 222, 'NL-FR', NULL, NULL, '0', 'NL-FR', 'NL-FR', '+31', (SELECT id FROM t075t_division_types WHERE code = 'provincia_nl' AND id_country = 222), 'frisia', 'Friesland', 'Friesland', 'Provincie Friesland', 'Friesland', 1, NOW(6), NOW(6), 1, 1),
(2756631, 222, 'NL-DR', NULL, NULL, '0', 'NL-DR', 'NL-DR', '+31', (SELECT id FROM t075t_division_types WHERE code = 'provincia_nl' AND id_country = 222), 'drente', 'Drenthe', 'Drenthe', 'Provincie Drenthe', 'Drenthe', 1, NOW(6), NOW(6), 1, 1),
(3319179, 222, 'NL-FL', NULL, NULL, '0', 'NL-FL', 'NL-FL', '+31', (SELECT id FROM t075t_division_types WHERE code = 'provincia_nl' AND id_country = 222), 'flevolanda', 'Flevoland', 'Flevoland', 'Provincie Flevoland', 'Flevoland', 1, NOW(6), NOW(6), 1, 1);