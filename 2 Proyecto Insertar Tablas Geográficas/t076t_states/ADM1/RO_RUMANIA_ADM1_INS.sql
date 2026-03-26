-- Insertar tipo de división geográfica ADM1 para Rumania: Condado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'condado_ro', 182, 8, 'condado', 'county', 
    'County', 'Județ', 'Judet', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Rumania (Condados y Municipio de Bucarest)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(662447, 182, 'RO-VN', NULL, NULL, '0', 'RO-VN', 'RO-VN', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'vrancea', 'Vrancea', 'Vrancea', 'Vrancea', 'Vrancea', 1, NOW(6), NOW(6), 1, 1),
(662892, 182, 'RO-VL', NULL, NULL, '0', 'RO-VL', 'RO-VL', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'vâlcea', 'Vâlcea', 'Vâlcea', 'Vâlcea', 'Vâlcea', 1, NOW(6), NOW(6), 1, 1),
(663116, 182, 'RO-VS', NULL, NULL, '0', 'RO-VS', 'RO-VS', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'vaslui', 'Vaslui', 'Vaslui', 'Vaslui', 'Vaslui', 1, NOW(6), NOW(6), 1, 1),
(664517, 182, 'RO-TL', NULL, NULL, '0', 'RO-TL', 'RO-TL', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'tulcea', 'Tulcea', 'Tulcea', 'Tulcea', 'Tulcea', 1, NOW(6), NOW(6), 1, 1),
(665091, 182, 'RO-TM', NULL, NULL, '0', 'RO-TM', 'RO-TM', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'timiș', 'Timiș', 'Timiș', 'Timiș', 'Timiș', 1, NOW(6), NOW(6), 1, 1),
(665283, 182, 'RO-TR', NULL, NULL, '0', 'RO-TR', 'RO-TR', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'teleorman', 'Teleorman', 'Teleorman', 'Teleorman', 'Teleorman', 1, NOW(6), NOW(6), 1, 1),
(665849, 182, 'RO-SV', NULL, NULL, '0', 'RO-SV', 'RO-SV', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'suceava', 'Suceava', 'Suceava', 'Suceava', 'Suceava', 1, NOW(6), NOW(6), 1, 1),
(667267, 182, 'RO-SB', NULL, NULL, '0', 'RO-SB', 'RO-SB', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'sibiu', 'Sibiu', 'Sibiu', 'Sibiu', 'Sibiu', 1, NOW(6), NOW(6), 1, 1),
(667869, 182, 'RO-SM', NULL, NULL, '0', 'RO-SM', 'RO-SM', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'satu mare', 'Satu Mare', 'Satu Mare', 'Satu Mare', 'Satu Mare', 1, NOW(6), NOW(6), 1, 1),
(668248, 182, 'RO-SJ', NULL, NULL, '0', 'RO-SJ', 'RO-SJ', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'sălaj', 'Sălaj', 'Sălaj', 'Sălaj', 'Sălaj', 1, NOW(6), NOW(6), 1, 1),
(669737, 182, 'RO-PH', NULL, NULL, '0', 'RO-PH', 'RO-PH', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'prahova', 'Prahova', 'Prahova', 'Prahova', 'Prahova', 1, NOW(6), NOW(6), 1, 1),
(671857, 182, 'RO-OT', NULL, NULL, '0', 'RO-OT', 'RO-OT', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'olt', 'Olt', 'Olt', 'Olt', 'Olt', 1, NOW(6), NOW(6), 1, 1),
(672460, 182, 'RO-NT', NULL, NULL, '0', 'RO-NT', 'RO-NT', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'neamț', 'Neamț', 'Neamț', 'Neamț', 'Neamț', 1, NOW(6), NOW(6), 1, 1),
(672628, 182, 'RO-MS', NULL, NULL, '0', 'RO-MS', 'RO-MS', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'mureș', 'Mureș', 'Mureș', 'Mureș', 'Mureș', 1, NOW(6), NOW(6), 1, 1),
(673612, 182, 'RO-MH', NULL, NULL, '0', 'RO-MH', 'RO-MH', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'mehedinți', 'Mehedinți', 'Mehedinți', 'Mehedinți', 'Mehedinți', 1, NOW(6), NOW(6), 1, 1),
(673887, 182, 'RO-MM', NULL, NULL, '0', 'RO-MM', 'RO-MM', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'maramureș', 'Maramureș', 'Maramureș', 'Maramureș', 'Maramureș', 1, NOW(6), NOW(6), 1, 1),
(675809, 182, 'RO-IS', NULL, NULL, '0', 'RO-IS', 'RO-IS', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'iași', 'Iași', 'Iași', 'Iași', 'Iași', 1, NOW(6), NOW(6), 1, 1),
(675848, 182, 'RO-IL', NULL, NULL, '0', 'RO-IL', 'RO-IL', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'ialomița', 'Ialomița', 'Ialomița', 'Ialomița', 'Ialomița', 1, NOW(6), NOW(6), 1, 1),
(675917, 182, 'RO-HD', NULL, NULL, '0', 'RO-HD', 'RO-HD', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'hunedoara', 'Hunedoara', 'Hunedoara', 'Hunedoara', 'Hunedoara', 1, NOW(6), NOW(6), 1, 1),
(676309, 182, 'RO-HR', NULL, NULL, '0', 'RO-HR', 'RO-HR', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'harghita', 'Harghita', 'Harghita', 'Harghita', 'Harghita', 1, NOW(6), NOW(6), 1, 1),
(676898, 182, 'RO-GJ', NULL, NULL, '0', 'RO-GJ', 'RO-GJ', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'gorj', 'Gorj', 'Gorj', 'Gorj', 'Gorj', 1, NOW(6), NOW(6), 1, 1),
(677104, 182, 'RO-GR', NULL, NULL, '0', 'RO-GR', 'RO-GR', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'giurgiu', 'Giurgiu', 'Giurgiu', 'Giurgiu', 'Giurgiu', 1, NOW(6), NOW(6), 1, 1),
(677692, 182, 'RO-GL', NULL, NULL, '0', 'RO-GL', 'RO-GL', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'galați', 'Galați', 'Galați', 'Galați', 'Galați', 1, NOW(6), NOW(6), 1, 1),
(679134, 182, 'RO-DJ', NULL, NULL, '0', 'RO-DJ', 'RO-DJ', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'dolj', 'Dolj', 'Dolj', 'Dolj', 'Dolj', 1, NOW(6), NOW(6), 1, 1),
(679385, 182, 'RO-DB', NULL, NULL, '0', 'RO-DB', 'RO-DB', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'dâmbovița', 'Dâmbovița', 'Dâmbovița', 'Dâmbovița', 'Dâmbovița', 1, NOW(6), NOW(6), 1, 1),
(680428, 182, 'RO-CV', NULL, NULL, '0', 'RO-CV', 'RO-CV', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'covasna', 'Covasna', 'Covasna', 'Covasna', 'Covasna', 1, NOW(6), NOW(6), 1, 1),
(680962, 182, 'RO-CT', NULL, NULL, '0', 'RO-CT', 'RO-CT', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'constanța', 'Constanța', 'Constanța', 'Constanța', 'Constanța', 1, NOW(6), NOW(6), 1, 1),
(681291, 182, 'RO-CJ', NULL, NULL, '0', 'RO-CJ', 'RO-CJ', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'cluj', 'Cluj', 'Cluj', 'Cluj', 'Cluj', 1, NOW(6), NOW(6), 1, 1),
(682714, 182, 'RO-CS', NULL, NULL, '0', 'RO-CS', 'RO-CS', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'caraș-severin', 'Caraș-Severin', 'Caraș-Severin', 'Caraș-Severin', 'Caraș-Severin', 1, NOW(6), NOW(6), 1, 1),
(683016, 182, 'RO-CL', NULL, NULL, '0', 'RO-CL', 'RO-CL', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'călărași', 'Călărași', 'Călărași', 'Călărași', 'Călărași', 1, NOW(6), NOW(6), 1, 1),
(683121, 182, 'RO-BZ', NULL, NULL, '0', 'RO-BZ', 'RO-BZ', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'buzău', 'Buzău', 'Buzău', 'Buzău', 'Buzău', 1, NOW(6), NOW(6), 1, 1),
(683504, 182, 'RO-B', NULL, NULL, '0', 'RO-B', 'RO-B', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'bucarest', 'Bucharest', 'Bucharest', 'București', 'Bucharest', 1, NOW(6), NOW(6), 1, 1),
(683843, 182, 'RO-BV', NULL, NULL, '0', 'RO-BV', 'RO-BV', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'brașov', 'Brașov', 'Brașov', 'Brașov', 'Brașov', 1, NOW(6), NOW(6), 1, 1),
(683901, 182, 'RO-BR', NULL, NULL, '0', 'RO-BR', 'RO-BR', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'brăila', 'Brăila', 'Brăila', 'Brăila', 'Brăila', 1, NOW(6), NOW(6), 1, 1),
(684038, 182, 'RO-BT', NULL, NULL, '0', 'RO-BT', 'RO-BT', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'botoșani', 'Botoșani', 'Botoșani', 'Botoșani', 'Botoșani', 1, NOW(6), NOW(6), 1, 1),
(684647, 182, 'RO-BN', NULL, NULL, '0', 'RO-BN', 'RO-BN', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'bistrița-năsăud', 'Bistrița-Năsăud', 'Bistrița-Năsăud', 'Bistrița-Năsăud', 'Bistrița-Năsăud', 1, NOW(6), NOW(6), 1, 1),
(684878, 182, 'RO-BH', NULL, NULL, '0', 'RO-BH', 'RO-BH', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'bihor', 'Bihor', 'Bihor', 'Bihor', 'Bihor', 1, NOW(6), NOW(6), 1, 1),
(685947, 182, 'RO-BC', NULL, NULL, '0', 'RO-BC', 'RO-BC', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'bacău', 'Bacău', 'Bacău', 'Bacău', 'Bacău', 1, NOW(6), NOW(6), 1, 1),
(686192, 182, 'RO-AG', NULL, NULL, '0', 'RO-AG', 'RO-AG', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'argeș', 'Argeș', 'Argeș', 'Argeș', 'Argeș', 1, NOW(6), NOW(6), 1, 1),
(686253, 182, 'RO-AR', NULL, NULL, '0', 'RO-AR', 'RO-AR', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'arad', 'Arad', 'Arad', 'Arad', 'Arad', 1, NOW(6), NOW(6), 1, 1),
(686581, 182, 'RO-AB', NULL, NULL, '0', 'RO-AB', 'RO-AB', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'alba', 'Alba', 'Alba', 'Alba', 'Alba', 1, NOW(6), NOW(6), 1, 1),
(865518, 182, 'RO-IF', NULL, NULL, '0', 'RO-IF', 'RO-IF', '+40', (SELECT id FROM t075t_division_types WHERE code = 'condado_ro' AND id_country = 182), 'ilfov', 'Ilfov', 'Ilfov', 'Ilfov', 'Ilfov', 1, NOW(6), NOW(6), 1, 1);