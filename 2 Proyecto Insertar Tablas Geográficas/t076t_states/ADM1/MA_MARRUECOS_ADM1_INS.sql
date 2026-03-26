-- Insertar tipo de división geográfica ADM1 para Marruecos: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_ma', 149, 8, 'región', 'region', 
    'Region', 'جهة', 'jihah', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Marruecos (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(11281874, 149, 'MA-01', NULL, NULL, '0', 'MA-01', 'MA-01', '+212', (SELECT id FROM t075t_division_types WHERE code = 'region_ma' AND id_country = 149), 'tánger-tetuán-alhucemas', 'Tangier-Tetouan-Al Hoceima', 'Tangier-Tetouan-Al Hoceima', 'Tanger-Tetouan-Al Hoceima', 'Tanger-Tetouan-Al Hoceima', 1, NOW(6), NOW(6), 1, 1),
(11281875, 149, 'MA-02', NULL, NULL, '0', 'MA-02', 'MA-02', '+212', (SELECT id FROM t075t_division_types WHERE code = 'region_ma' AND id_country = 149), 'oriental', 'Oriental', 'Oriental', 'Oriental', 'Oriental', 1, NOW(6), NOW(6), 1, 1),
(11281876, 149, 'MA-03', NULL, NULL, '0', 'MA-03', 'MA-03', '+212', (SELECT id FROM t075t_division_types WHERE code = 'region_ma' AND id_country = 149), 'fez-mequínez', 'Fez-Meknes', 'Fez-Meknes', 'Fès-Meknès', 'Fès-Meknès', 1, NOW(6), NOW(6), 1, 1),
(11281877, 149, 'MA-04', NULL, NULL, '0', 'MA-04', 'MA-04', '+212', (SELECT id FROM t075t_division_types WHERE code = 'region_ma' AND id_country = 149), 'rabat-salé-kenitra', 'Rabat-Salé-Kenitra', 'Rabat-Salé-Kenitra', 'Rabat-Salé-Kénitra', 'Rabat-Salé-Kénitra', 1, NOW(6), NOW(6), 1, 1),
(11281878, 149, 'MA-05', NULL, NULL, '0', 'MA-05', 'MA-05', '+212', (SELECT id FROM t075t_division_types WHERE code = 'region_ma' AND id_country = 149), 'beni melal-jenifra', 'Beni Mellal-Khenifra', 'Beni Mellal-Khenifra', 'Béni Mellal-Khénifra', 'Béni Mellal-Khénifra', 1, NOW(6), NOW(6), 1, 1),
(11281879, 149, 'MA-06', NULL, NULL, '0', 'MA-06', 'MA-06', '+212', (SELECT id FROM t075t_division_types WHERE code = 'region_ma' AND id_country = 149), 'casablanca-settat', 'Casablanca-Settat', 'Casablanca-Settat', 'Casablanca-Settat', 'Casablanca-Settat', 1, NOW(6), NOW(6), 1, 1),
(11281880, 149, 'MA-07', NULL, NULL, '0', 'MA-07', 'MA-07', '+212', (SELECT id FROM t075t_division_types WHERE code = 'region_ma' AND id_country = 149), 'marrakech-safi', 'Marrakesh-Safi', 'Marrakesh-Safi', 'Marrakesh-Safi', 'Marrakesh-Safi', 1, NOW(6), NOW(6), 1, 1),
(11281881, 149, 'MA-08', NULL, NULL, '0', 'MA-08', 'MA-08', '+212', (SELECT id FROM t075t_division_types WHERE code = 'region_ma' AND id_country = 149), 'draa-tafilalet', 'Drâa-Tafilalet', 'Drâa-Tafilalet', 'Drâa-Tafilalet', 'Drâa-Tafilalet', 1, NOW(6), NOW(6), 1, 1),
(11281882, 149, 'MA-09', NULL, NULL, '0', 'MA-09', 'MA-09', '+212', (SELECT id FROM t075t_division_types WHERE code = 'region_ma' AND id_country = 149), 'souss-massa', 'Souss-Massa', 'Souss-Massa', 'Souss-Massa', 'Souss-Massa', 1, NOW(6), NOW(6), 1, 1),
(11281884, 149, 'MA-10', NULL, NULL, '0', 'MA-10', 'MA-10', '+212', (SELECT id FROM t075t_division_types WHERE code = 'region_ma' AND id_country = 149), 'guelmim-oued noun', 'Guelmim-Oued Noun', 'Guelmim-Oued Noun', 'Guelmim-Oued Noun', 'Guelmim-Oued Noun', 1, NOW(6), NOW(6), 1, 1),
(11281885, 149, 'MA-11', NULL, NULL, '0', 'MA-11', 'MA-11', '+212', (SELECT id FROM t075t_division_types WHERE code = 'region_ma' AND id_country = 149), 'laayún-saguía el hamra', 'Laâyoune-Sakia El Hamra', 'Laâyoune-Sakia El Hamra', 'Laâyoune-Sakia El Hamra', 'Laâyoune-Sakia El Hamra', 1, NOW(6), NOW(6), 1, 1),
(11281886, 149, 'MA-12', NULL, NULL, '0', 'MA-12', 'MA-12', '+212', (SELECT id FROM t075t_division_types WHERE code = 'region_ma' AND id_country = 149), 'dajla-oued ed-dahab', 'Dakhla-Oued Ed-Dahab', 'Dakhla-Oued Ed-Dahab', 'Dakhla-Oued Ed-Dahab', 'Dakhla-Oued Ed-Dahab', 1, NOW(6), NOW(6), 1, 1);