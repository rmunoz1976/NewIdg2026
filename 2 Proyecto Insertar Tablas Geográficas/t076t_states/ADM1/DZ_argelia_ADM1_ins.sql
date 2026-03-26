-- =============================================
-- Script de inserción para ARGELIA (DZ)
-- Archivo: DZ_argelia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para ARGELIA: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_dz', 4, 8, 'Provincia', 'Province',
    'Province', 'ولاية', 'wilaya', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ARGELIA (Provincias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2475683, 4, '13', NULL, NULL, '0', 'DZ-13', 'DZ-13', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'tlemcen', 'Tlemcen', 'Tlemcen Province', 'Wilaya de Tlemcen', 'tlemcen', 1, NOW(6), NOW(6), 1, 1),
(2475741, 4, '15', NULL, NULL, '0', 'DZ-15', 'DZ-15', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'tizi ouzou', 'Tizi Ouzou', 'Tizi Ouzou Province', 'Wilaya de Tizi Ouzou', 'tizi ouzou', 1, NOW(6), NOW(6), 1, 1),
(2475858, 4, '38', NULL, NULL, '0', 'DZ-38', 'DZ-38', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'tissemsilt', 'Tissemsilt', 'Tissemsilt Province', 'Wilaya de Tissemsilt', 'tissemsilt', 1, NOW(6), NOW(6), 1, 1),
(2476027, 4, '42', NULL, NULL, '0', 'DZ-42', 'DZ-42', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'tipaza', 'Tipaza', 'Tipaza Province', 'Wilaya de Tipaza', 'tipaza', 1, NOW(6), NOW(6), 1, 1),
(2476302, 4, '37', NULL, NULL, '0', 'DZ-37', 'DZ-37', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'tinduf', 'Tindouf', 'Tindouf Province', 'Wilaya de Tindouf', 'tindouf', 1, NOW(6), NOW(6), 1, 1),
(2476893, 4, '14', NULL, NULL, '0', 'DZ-14', 'DZ-14', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'tiaret', 'Tiaret', 'Tiaret Province', 'Wilaya de Tiaret', 'tiaret', 1, NOW(6), NOW(6), 1, 1),
(2477457, 4, '12', NULL, NULL, '0', 'DZ-12', 'DZ-12', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'tébessa', 'Tébessa', 'Tébessa Province', 'Wilaya de Tébessa', 'tebessa', 1, NOW(6), NOW(6), 1, 1),
(2478217, 4, '11', NULL, NULL, '0', 'DZ-11', 'DZ-11', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'tamanrasset', 'Tamanrasset', 'Tamanrasset Province', 'Wilaya de Tamanrasset', 'tamanrasset', 1, NOW(6), NOW(6), 1, 1),
(2479213, 4, '41', NULL, NULL, '0', 'DZ-41', 'DZ-41', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'souk ahras', 'Souk Ahras', 'Souk Ahras Province', 'Wilaya de Souk Ahras', 'souk ahras', 1, NOW(6), NOW(6), 1, 1),
(2479532, 4, '21', NULL, NULL, '0', 'DZ-21', 'DZ-21', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'skikda', 'Skikda', 'Skikda Province', 'Wilaya de Skikda', 'skikda', 1, NOW(6), NOW(6), 1, 1),
(2481001, 4, '22', NULL, NULL, '0', 'DZ-22', 'DZ-22', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'sidi bel abbes', 'Sidi Bel Abbès', 'Sidi Bel Abbès Province', 'Wilaya de Sidi Bel Abbès', 'sidi bel abbes', 1, NOW(6), NOW(6), 1, 1),
(2481696, 4, '19', NULL, NULL, '0', 'DZ-19', 'DZ-19', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'sétif', 'Sétif', 'Sétif Province', 'Wilaya de Sétif', 'setif', 1, NOW(6), NOW(6), 1, 1),
(2482557, 4, '20', NULL, NULL, '0', 'DZ-20', 'DZ-20', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'saida', 'Saïda', 'Saïda Province', 'Wilaya de Saïda', 'saida', 1, NOW(6), NOW(6), 1, 1),
(2483666, 4, '48', NULL, NULL, '0', 'DZ-48', 'DZ-48', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'relizane', 'Relizane', 'Relizane Province', 'Wilaya de Relizane', 'relizane', 1, NOW(6), NOW(6), 1, 1),
(2484618, 4, '04', NULL, NULL, '0', 'DZ-04', 'DZ-04', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'um el bouaghi', 'Oum el Bouaghi', 'Oum el Bouaghi Province', 'Oum el Bouaghi', 'oum el bouaghi', 1, NOW(6), NOW(6), 1, 1),
(2485794, 4, '30', NULL, NULL, '0', 'DZ-30', 'DZ-30', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'uargla', 'Ouargla', 'Ouargla Province', 'Wilaya de Ouargla', 'ouargla', 1, NOW(6), NOW(6), 1, 1),
(2485920, 4, '31', NULL, NULL, '0', 'DZ-31', 'DZ-31', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'orán', 'Oran', 'Oran Province', 'Oran', 'oran', 1, NOW(6), NOW(6), 1, 1),
(2486512, 4, '45', NULL, NULL, '0', 'DZ-45', 'DZ-45', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'naama', 'Naama', 'Naama Province', 'Wilaya de Naama', 'naama', 1, NOW(6), NOW(6), 1, 1),
(2486682, 4, '28', NULL, NULL, '0', 'DZ-28', 'DZ-28', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'm''sila', 'M''sila', 'M''sila Province', 'M''sila', 'msila', 1, NOW(6), NOW(6), 1, 1),
(2487130, 4, '27', NULL, NULL, '0', 'DZ-27', 'DZ-27', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'mostaganem', 'Mostaganem', 'Mostaganem Province', 'Wilaya de Mostaganem', 'mostaganem', 1, NOW(6), NOW(6), 1, 1),
(2487449, 4, '43', NULL, NULL, '0', 'DZ-43', 'DZ-43', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'mila', 'Mila', 'Mila Province', 'Wilaya de Mila', 'mila', 1, NOW(6), NOW(6), 1, 1),
(2488831, 4, '26', NULL, NULL, '0', 'DZ-26', 'DZ-26', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'médéa', 'Médéa', 'Médéa Province', 'Wilaya de Médéa', 'medea', 1, NOW(6), NOW(6), 1, 1),
(2490095, 4, '29', NULL, NULL, '0', 'DZ-29', 'DZ-29', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'mascara', 'Mascara', 'Mascara Province', 'Wilaya de Mascara', 'mascara', 1, NOW(6), NOW(6), 1, 1),
(2491188, 4, '03', NULL, NULL, '0', 'DZ-03', 'DZ-03', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'laghouat', 'Laghouat', 'Laghouat Province', 'Wilaya de Laghouat', 'laghouat', 1, NOW(6), NOW(6), 1, 1),
(2491887, 4, '40', NULL, NULL, '0', 'DZ-40', 'DZ-40', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'khenchela', 'Khenchela', 'Khenchela Province', 'Wilaya de Khenchela', 'khenchela', 1, NOW(6), NOW(6), 1, 1),
(2492910, 4, '18', NULL, NULL, '0', 'DZ-18', 'DZ-18', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'jijel', 'Jijel', 'Jijel Province', 'Wilaya de Jijel', 'jijel', 1, NOW(6), NOW(6), 1, 1),
(2493455, 4, '33', NULL, NULL, '0', 'DZ-33', 'DZ-33', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'illizi', 'Illizi', 'Illizi Province', 'Illizi', 'illizi', 1, NOW(6), NOW(6), 1, 1),
(2495659, 4, '24', NULL, NULL, '0', 'DZ-24', 'DZ-24', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'guelma', 'Guelma', 'Guelma Province', 'Wilaya de Guelma', 'guelma', 1, NOW(6), NOW(6), 1, 1),
(2496045, 4, '47', NULL, NULL, '0', 'DZ-47', 'DZ-47', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'ghardaïa', 'Ghardaïa', 'Ghardaïa Province', 'Wilaya de Ghardaïa', 'ghardaia', 1, NOW(6), NOW(6), 1, 1),
(2497322, 4, '36', NULL, NULL, '0', 'DZ-36', 'DZ-36', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'el tarf', 'El Tarf', 'El Tarf Province', 'El Tarf', 'el tarf', 1, NOW(6), NOW(6), 1, 1),
(2497406, 4, '39', NULL, NULL, '0', 'DZ-39', 'DZ-39', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'el oued', 'El Oued', 'El Oued Province', 'El Oued', 'el oued', 1, NOW(6), NOW(6), 1, 1),
(2498541, 4, '32', NULL, NULL, '0', 'DZ-32', 'DZ-32', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'el bayadh', 'El Bayadh', 'El Bayadh Province', 'El Bayadh', 'el bayadh', 1, NOW(6), NOW(6), 1, 1),
(2500013, 4, '17', NULL, NULL, '0', 'DZ-17', 'DZ-17', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'djelfa', 'Djelfa', 'Djelfa Province', 'Wilaya de Djelfa', 'djelfa', 1, NOW(6), NOW(6), 1, 1),
(2501147, 4, '25', NULL, NULL, '0', 'DZ-25', 'DZ-25', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'constantina', 'Constantine', 'Constantine Province', 'Wilaya de Constantine', 'constantine', 1, NOW(6), NOW(6), 1, 1),
(2501296, 4, '02', NULL, NULL, '0', 'DZ-02', 'DZ-02', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'chlef', 'Chlef', 'Chlef Province', 'Wilaya de Chlef', 'chlef', 1, NOW(6), NOW(6), 1, 1),
(2502638, 4, '35', NULL, NULL, '0', 'DZ-35', 'DZ-35', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'bumerdes', 'Boumerdes', 'Boumerdes Province', 'Wilaya de Boumerdes', 'boumerdes', 1, NOW(6), NOW(6), 1, 1),
(2502951, 4, '10', NULL, NULL, '0', 'DZ-10', 'DZ-10', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'buira', 'Bouira', 'Bouira Province', 'Wilaya de Bouira', 'bouira', 1, NOW(6), NOW(6), 1, 1),
(2503699, 4, '34', NULL, NULL, '0', 'DZ-34', 'DZ-34', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'bordj bou arreridj', 'Bordj Bou Arréridj', 'Bordj Bou Arréridj Province', 'Wilaya de Bordj Bou Arréridj', 'bordj bou arreridj', 1, NOW(6), NOW(6), 1, 1),
(2503765, 4, '09', NULL, NULL, '0', 'DZ-09', 'DZ-09', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'blida', 'Blida', 'Blida Province', 'Wilaya de Blida', 'blida', 1, NOW(6), NOW(6), 1, 1),
(2503822, 4, '07', NULL, NULL, '0', 'DZ-07', 'DZ-07', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'biskra', 'Biskra', 'Biskra Province', 'Wilaya de Biskra', 'biskra', 1, NOW(6), NOW(6), 1, 1),
(2505325, 4, '06', NULL, NULL, '0', 'DZ-06', 'DZ-06', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'bejaia', 'Bejaïa', 'Bejaïa Province', 'Wilaya de Bejaïa', 'bejaia', 1, NOW(6), NOW(6), 1, 1),
(2505525, 4, '08', NULL, NULL, '0', 'DZ-08', 'DZ-08', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'béchar', 'Béchar', 'Béchar Province', 'Wilaya de Béchar', 'bechar', 1, NOW(6), NOW(6), 1, 1),
(2505569, 4, '05', NULL, NULL, '0', 'DZ-05', 'DZ-05', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'batna', 'Batna', 'Batna Province', 'Wilaya de Batna', 'batna', 1, NOW(6), NOW(6), 1, 1),
(2506994, 4, '23', NULL, NULL, '0', 'DZ-23', 'DZ-23', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'anaba', 'Annaba', 'Annaba Province', 'Annaba', 'annaba', 1, NOW(6), NOW(6), 1, 1),
(2507475, 4, '16', NULL, NULL, '0', 'DZ-16', 'DZ-16', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'argel', 'Algiers', 'Algiers Province', 'Wilaya d''Alger', 'algiers', 1, NOW(6), NOW(6), 1, 1),
(2507899, 4, '46', NULL, NULL, '0', 'DZ-46', 'DZ-46', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'ain temouchent', 'Aïn Témouchent', 'Aïn Témouchent Province', 'Wilaya de Aïn Temouchent', 'ain temouchent', 1, NOW(6), NOW(6), 1, 1),
(2508226, 4, '44', NULL, NULL, '0', 'DZ-44', 'DZ-44', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'ain defla', 'Aïn Defla', 'Aïn Defla Province', 'Wilaya de Aïn Defla', 'ain defla', 1, NOW(6), NOW(6), 1, 1),
(2508807, 4, '01', NULL, NULL, '0', 'DZ-01', 'DZ-01', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'adrar', 'Adrar', 'Adrar Province', 'Adrar', 'adrar', 1, NOW(6), NOW(6), 1, 1),
(12226383, 4, '52', NULL, NULL, '0', 'DZ-52', 'DZ-52', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'bordj badji mokhtar', 'Bordj Badji Mokhtar', 'Bordj Badji Mokhtar Province', 'Bordj Badji Mokhtar', 'bordj badji mokhtar', 1, NOW(6), NOW(6), 1, 1),
(12226384, 4, '49', NULL, NULL, '0', 'DZ-49', 'DZ-49', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'timimoun', 'Timimoun', 'Timimoun Province', 'Timimoun', 'timimoun', 1, NOW(6), NOW(6), 1, 1),
(12226385, 4, '53', NULL, NULL, '0', 'DZ-53', 'DZ-53', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'beni abbes', 'Beni Abbes', 'Beni Abbes Province', 'Beni Abbes', 'beni abbes', 1, NOW(6), NOW(6), 1, 1),
(12226386, 4, '54', NULL, NULL, '0', 'DZ-54', 'DZ-54', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'in guezzam', 'In Guezzam', 'In Guezzam Province', 'In Guezzam', 'in guezzam', 1, NOW(6), NOW(6), 1, 1),
(12226387, 4, '50', NULL, NULL, '0', 'DZ-50', 'DZ-50', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'in salah', 'In Salah', 'In Salah Province', 'In Salah', 'in salah', 1, NOW(6), NOW(6), 1, 1),
(12226388, 4, '51', NULL, NULL, '0', 'DZ-51', 'DZ-51', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'djanet', 'Djanet', 'Djanet Province', 'Djanet', 'djanet', 1, NOW(6), NOW(6), 1, 1),
(12226389, 4, '55', NULL, NULL, '0', 'DZ-55', 'DZ-55', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'el menia', 'El Menia', 'El Menia Province', 'El Menia', 'el menia', 1, NOW(6), NOW(6), 1, 1),
(12226390, 4, '56', NULL, NULL, '0', 'DZ-56', 'DZ-56', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'touggourt', 'Touggourt', 'Touggourt Province', 'Touggourt', 'touggourt', 1, NOW(6), NOW(6), 1, 1),
(12226391, 4, '57', NULL, NULL, '0', 'DZ-57', 'DZ-57', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'el mghair', 'El Mghair', 'El Mghair Province', 'El Mghair', 'el mghair', 1, NOW(6), NOW(6), 1, 1),
(12226392, 4, '58', NULL, NULL, '0', 'DZ-58', 'DZ-58', '+213', (SELECT id FROM t075t_division_types WHERE code = 'provincia_dz' AND id_country = 4), 'ouled djellal', 'Ouled Djellal', 'Ouled Djellal Province', 'Ouled Djellal', 'ouled djellal', 1, NOW(6), NOW(6), 1, 1);