-- Insertar tipo de división geográfica ADM1 para ITALIA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_it', 109, 8, 'Región', 'Region', 
    'Regione', 'Regione', 'regione', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ITALIA (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (2523119, 109, 'IT-SI', NULL, NULL, '15', 'IT-SI', 'IT-SI', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Sicilia', 'Sicily', 'Sicilia', 'Sicilia', 'Sicilia', 1, NOW(6), NOW(6), 1, 1),
    (2523228, 109, 'IT-SA', NULL, NULL, '14', 'IT-SA', 'IT-SA', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Cerdeña', 'Sardinia', 'Sardegna', 'Sardegna', 'Sardegna', 1, NOW(6), NOW(6), 1, 1),
    (2525468, 109, 'IT-CA', NULL, NULL, '03', 'IT-CA', 'IT-CA', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Calabria', 'Calabria', 'Calabria', 'Calabria', 'Calabria', 1, NOW(6), NOW(6), 1, 1),
    (3164604, 109, 'IT-VE', NULL, NULL, '20', 'IT-VE', 'IT-VE', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Véneto', 'Veneto', 'Veneto', 'Veneto', 'Veneto', 1, NOW(6), NOW(6), 1, 1),
    (3164857, 109, 'IT-AO', NULL, NULL, '19', 'IT-AO', 'IT-AO', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Valle de Aosta', 'Aosta Valley', 'Valle d''Aosta', 'Regione Autonoma Valle d''Aosta', 'Regione Autonoma Valle d''Aosta', 1, NOW(6), NOW(6), 1, 1),
    (3165048, 109, 'IT-UM', NULL, NULL, '18', 'IT-UM', 'IT-UM', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Umbría', 'Umbria', 'Umbria', 'Umbria', 'Umbria', 1, NOW(6), NOW(6), 1, 1),
    (3165244, 109, 'IT-TA', NULL, NULL, '17', 'IT-TA', 'IT-TA', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Trentino-Alto Adigio', 'Trentino-Alto Adige', 'Trentino-Alto Adige', 'Trentino-Alto Adige', 'Trentino-Alto Adige', 1, NOW(6), NOW(6), 1, 1),
    (3165361, 109, 'IT-TO', NULL, NULL, '16', 'IT-TO', 'IT-TO', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Toscana', 'Tuscany', 'Toscana', 'Toscana', 'Toscana', 1, NOW(6), NOW(6), 1, 1),
    (3169778, 109, 'IT-PU', NULL, NULL, '13', 'IT-PU', 'IT-PU', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Apulia', 'Apulia', 'Puglia', 'Puglia', 'Puglia', 1, NOW(6), NOW(6), 1, 1),
    (3170831, 109, 'IT-PI', NULL, NULL, '12', 'IT-PI', 'IT-PI', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Piamonte', 'Piedmont', 'Piemonte', 'Piemonte', 'Piemonte', 1, NOW(6), NOW(6), 1, 1),
    (3173222, 109, 'IT-MO', NULL, NULL, '11', 'IT-MO', 'IT-MO', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Molise', 'Molise', 'Molise', 'Molise', 'Molise', 1, NOW(6), NOW(6), 1, 1),
    (3174004, 109, 'IT-MA', NULL, NULL, '10', 'IT-MA', 'IT-MA', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Marcas', 'Marche', 'Marche', 'Marche', 'Marche', 1, NOW(6), NOW(6), 1, 1),
    (3174618, 109, 'IT-LO', NULL, NULL, '09', 'IT-LO', 'IT-LO', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Lombardía', 'Lombardy', 'Lombardia', 'Lombardia', 'Lombardia', 1, NOW(6), NOW(6), 1, 1),
    (3174725, 109, 'IT-LI', NULL, NULL, '08', 'IT-LI', 'IT-LI', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Liguria', 'Liguria', 'Liguria', 'Liguria', 'Liguria', 1, NOW(6), NOW(6), 1, 1),
    (3174976, 109, 'IT-LA', NULL, NULL, '07', 'IT-LA', 'IT-LA', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Lacio', 'Lazio', 'Lazio', 'Lazio', 'Lazio', 1, NOW(6), NOW(6), 1, 1),
    (3176525, 109, 'IT-FV', NULL, NULL, '06', 'IT-FV', 'IT-FV', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Friuli-Venecia Julia', 'Friuli-Venezia Giulia', 'Friuli-Venezia Giulia', 'Friuli Venezia Giulia', 'Friuli Venezia Giulia', 1, NOW(6), NOW(6), 1, 1),
    (3177401, 109, 'IT-ER', NULL, NULL, '05', 'IT-ER', 'IT-ER', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Emilia-Romaña', 'Emilia-Romagna', 'Emilia-Romagna', 'Emilia-Romagna', 'Emilia-Romagna', 1, NOW(6), NOW(6), 1, 1),
    (3181042, 109, 'IT-CA', NULL, NULL, '04', 'IT-CA', 'IT-CA', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Campania', 'Campania', 'Campania', 'Campania', 'Campania', 1, NOW(6), NOW(6), 1, 1),
    (3182306, 109, 'IT-BA', NULL, NULL, '02', 'IT-BA', 'IT-BA', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Basilicata', 'Basilicata', 'Basilicata', 'Basilicata', 'Basilicata', 1, NOW(6), NOW(6), 1, 1),
    (3183560, 109, 'IT-AB', NULL, NULL, '01', 'IT-AB', 'IT-AB', '+39', (SELECT id FROM t075t_division_types WHERE code = 'region_it' AND id_country = 109), 'Abruzos', 'Abruzzo', 'Abruzzo', 'Abruzzo', 'Abruzzo', 1, NOW(6), NOW(6), 1, 1);