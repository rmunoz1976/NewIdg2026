-- Insertar tipo de división geográfica ADM1 para Polonia: Voivodato
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'voivodato_pl', 176, 8, 'voivodato', 'voivodeship', 
    'Voivodeship', 'Województwo', 'Województwo', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Polonia (Voivodatos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(858785, 176, 'PL-LU', NULL, NULL, '0', 'PL-LU', 'PL-LU', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'lublin', 'Lublin', 'Lublin', 'Lublin Voivodeship', 'Lublin', 1, NOW(6), NOW(6), 1, 1),
(858786, 176, 'PL-MA', NULL, NULL, '0', 'PL-MA', 'PL-MA', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'pequeña polonia', 'Lesser Poland', 'Lesser Poland', 'Lesser Poland Voivodeship', 'Małopolska', 1, NOW(6), NOW(6), 1, 1),
(858787, 176, 'PL-MZ', NULL, NULL, '0', 'PL-MZ', 'PL-MZ', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'mazovia', 'Masovia', 'Masovia', 'Masovian Voivodeship', 'Mazowsze', 1, NOW(6), NOW(6), 1, 1),
(858788, 176, 'PL-PK', NULL, NULL, '0', 'PL-PK', 'PL-PK', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'subcarpacia', 'Subcarpathia', 'Subcarpathia', 'Podkarpackie Voivodeship', 'Podkarpacie', 1, NOW(6), NOW(6), 1, 1),
(858789, 176, 'PL-PD', NULL, NULL, '0', 'PL-PD', 'PL-PD', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'podlaquia', 'Podlaskie', 'Podlaskie', 'Podlaskie Voivodeship', 'Podlaskie', 1, NOW(6), NOW(6), 1, 1),
(858790, 176, 'PL-SK', NULL, NULL, '0', 'PL-SK', 'PL-SK', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'santa cruz', 'Świętokrzyskie', 'Świętokrzyskie', 'Świętokrzyskie Voivodeship', 'Świętokrzyskie', 1, NOW(6), NOW(6), 1, 1),
(858791, 176, 'PL-WN', NULL, NULL, '0', 'PL-WN', 'PL-WN', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'varmia-masuria', 'Warmia-Masuria', 'Warmia-Masuria', 'Warmian-Masurian Voivodeship', 'Warmia-Masuria', 1, NOW(6), NOW(6), 1, 1),
(3337492, 176, 'PL-DS', NULL, NULL, '0', 'PL-DS', 'PL-DS', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'baja silesia', 'Lower Silesia', 'Lower Silesia', 'Lower Silesian Voivodeship', 'Dolny Śląsk', 1, NOW(6), NOW(6), 1, 1),
(3337493, 176, 'PL-LD', NULL, NULL, '0', 'PL-LD', 'PL-LD', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'łódź', 'Łódź', 'Łódź', 'Łódź Voivodeship', 'Łódź', 1, NOW(6), NOW(6), 1, 1),
(3337494, 176, 'PL-LB', NULL, NULL, '0', 'PL-LB', 'PL-LB', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'lubusz', 'Lubusz', 'Lubusz', 'Lubusz Voivodeship', 'Lubuskie', 1, NOW(6), NOW(6), 1, 1),
(3337495, 176, 'PL-OP', NULL, NULL, '0', 'PL-OP', 'PL-OP', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'opolskie', 'Opole', 'Opole', 'Opole Voivodeship', 'Opolskie', 1, NOW(6), NOW(6), 1, 1),
(3337496, 176, 'PL-PM', NULL, NULL, '0', 'PL-PM', 'PL-PM', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'pomerania', 'Pomerania', 'Pomerania', 'Pomeranian Voivodeship', 'Pomorze', 1, NOW(6), NOW(6), 1, 1),
(3337497, 176, 'PL-SL', NULL, NULL, '0', 'PL-SL', 'PL-SL', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'silesia', 'Silesia', 'Silesia', 'Silesian Voivodeship', 'Śląskie', 1, NOW(6), NOW(6), 1, 1),
(3337498, 176, 'PL-WP', NULL, NULL, '0', 'PL-WP', 'PL-WP', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'gran polonia', 'Greater Poland', 'Greater Poland', 'Greater Poland Voivodeship', 'Wielkopolska', 1, NOW(6), NOW(6), 1, 1),
(3337499, 176, 'PL-ZP', NULL, NULL, '0', 'PL-ZP', 'PL-ZP', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'pomerania occidental', 'West Pomerania', 'West Pomerania', 'West Pomeranian Voivodeship', 'Zachodniopomorskie', 1, NOW(6), NOW(6), 1, 1),
(3337500, 176, 'PL-KP', NULL, NULL, '0', 'PL-KP', 'PL-KP', '+48', (SELECT id FROM t075t_division_types WHERE code = 'voivodato_pl' AND id_country = 176), 'cuyavia-pomerania', 'Kuyavia-Pomerania', 'Kuyavia-Pomerania', 'Kuyavian-Pomeranian Voivodeship', 'Kujawsko-Pomorskie', 1, NOW(6), NOW(6), 1, 1);