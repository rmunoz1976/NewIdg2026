-- =============================================
-- Script de inserción para EGIPTO (EG)
-- Archivo: EG_egipto_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para EGIPTO: Gobernación
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'gobernacion_eg', 65, 8, 'Gobernación', 'Governorate',
    'Governorate', 'محافظة', 'muhafazah', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de EGIPTO (Gobernaciones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(347794, 65, 'SHG', NULL, NULL, '0', 'EG-SHG', 'EG-SHG', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'suhaj', 'Sohag', 'Sohag Governorate', 'Muḩāfaz̧at Sūhāj', 'sohag', 1, NOW(6), NOW(6), 1, 1),
(349401, 65, 'SIN', NULL, NULL, '0', 'EG-SIN', 'EG-SIN', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'norte del sinaí', 'North Sinai', 'North Sinai Governorate', 'North Sinai', 'north sinai', 1, NOW(6), NOW(6), 1, 1),
(350546, 65, 'KN', NULL, NULL, '0', 'EG-KN', 'EG-KN', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'qina', 'Qena', 'Qena Governorate', 'Muḩāfaz̧at Qinā', 'qena', 1, NOW(6), NOW(6), 1, 1),
(352603, 65, 'MT', NULL, NULL, '0', 'EG-MT', 'EG-MT', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'matrú', 'Matrouh', 'Matrouh Governorate', 'Muḩāfaz̧at Maţrūḩ', 'matrouh', 1, NOW(6), NOW(6), 1, 1),
(354500, 65, 'KFS', NULL, NULL, '0', 'EG-KFS', 'EG-KFS', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'kafr el sheikh', 'Kafr el Sheikh', 'Kafr el Sheikh Governorate', 'Kafr ash Shaykh', 'kafr el sheikh', 1, NOW(6), NOW(6), 1, 1),
(355182, 65, 'JS', NULL, NULL, '0', 'EG-JS', 'EG-JS', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'sur del sinaí', 'South Sinai', 'South Sinai Governorate', 'South Sinai Governorate', 'south sinai', 1, NOW(6), NOW(6), 1, 1),
(358044, 65, 'DT', NULL, NULL, '0', 'EG-DT', 'EG-DT', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'damieta', 'Damietta', 'Damietta Governorate', 'Damietta Governorate', 'damietta', 1, NOW(6), NOW(6), 1, 1),
(358617, 65, 'PTS', NULL, NULL, '0', 'EG-PTS', 'EG-PTS', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'puerto said', 'Port Said', 'Port Said Governorate', 'Port Said', 'port said', 1, NOW(6), NOW(6), 1, 1),
(359171, 65, 'BNS', NULL, NULL, '0', 'EG-BNS', 'EG-BNS', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'bani suef', 'Beni Suef', 'Beni Suef Governorate', 'Muḩāfaz̧at Banī Suwayf', 'beni suef', 1, NOW(6), NOW(6), 1, 1),
(359781, 65, 'AST', NULL, NULL, '0', 'EG-AST', 'EG-AST', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'asiut', 'Asyut', 'Asyut Governorate', 'Muḩāfaz̧at Asyūţ', 'asyut', 1, NOW(6), NOW(6), 1, 1),
(359787, 65, 'ASN', NULL, NULL, '0', 'EG-ASN', 'EG-ASN', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'aswan', 'Aswan', 'Aswan Governorate', 'Muḩāfaz̧at Aswān', 'aswan', 1, NOW(6), NOW(6), 1, 1),
(359797, 65, 'SUZ', NULL, NULL, '0', 'EG-SUZ', 'EG-SUZ', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'suez', 'Suez', 'Suez Governorate', 'Suez', 'suez', 1, NOW(6), NOW(6), 1, 1),
(360016, 65, 'SHR', NULL, NULL, '0', 'EG-SHR', 'EG-SHR', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'sharkia', 'Sharqia', 'Sharqia Governorate', 'Muḩāfaz̧at ash Sharqīyah', 'sharqia', 1, NOW(6), NOW(6), 1, 1),
(360483, 65, 'WAD', NULL, NULL, '0', 'EG-WAD', 'EG-WAD', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'nuevo valle', 'New Valley', 'New Valley Governorate', 'New Valley', 'new valley', 1, NOW(6), NOW(6), 1, 1),
(360621, 65, 'KB', NULL, NULL, '0', 'EG-KB', 'EG-KB', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'qalyubia', 'Qalyubia', 'Qalyubia Governorate', 'Muḩāfaz̧at al Qalyūbīyah', 'qalyubia', 1, NOW(6), NOW(6), 1, 1),
(360631, 65, 'C', NULL, NULL, '0', 'EG-C', 'EG-C', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'el cairo', 'Cairo', 'Cairo Governorate', 'Cairo Governorate', 'cairo', 1, NOW(6), NOW(6), 1, 1),
(360688, 65, 'MN', NULL, NULL, '0', 'EG-MN', 'EG-MN', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'minya', 'Minya', 'Minya Governorate', 'Muḩāfaz̧at al Minyā', 'minya', 1, NOW(6), NOW(6), 1, 1),
(360689, 65, 'MF', NULL, NULL, '0', 'EG-MF', 'EG-MF', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'menufia', 'Monufia', 'Monufia Governorate', 'Muḩāfaz̧at al Minūfīyah', 'monufia', 1, NOW(6), NOW(6), 1, 1),
(360997, 65, 'GZ', NULL, NULL, '0', 'EG-GZ', 'EG-GZ', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'giza', 'Giza', 'Giza Governorate', 'Muḩāfaz̧at al Jīzah', 'giza', 1, NOW(6), NOW(6), 1, 1),
(361056, 65, 'IS', NULL, NULL, '0', 'EG-IS', 'EG-IS', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'ismailia', 'Ismailia', 'Ismailia Governorate', 'Ismailia Governorate', 'ismailia', 1, NOW(6), NOW(6), 1, 1),
(361059, 65, 'ALX', NULL, NULL, '0', 'EG-ALX', 'EG-ALX', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'alejandría', 'Alexandria', 'Alexandria Governorate', 'Alexandria', 'alexandria', 1, NOW(6), NOW(6), 1, 1),
(361294, 65, 'GH', NULL, NULL, '0', 'EG-GH', 'EG-GH', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'gharbia', 'Gharbia', 'Gharbia Governorate', 'Muḩāfaz̧at al Gharbīyah', 'gharbia', 1, NOW(6), NOW(6), 1, 1),
(361323, 65, 'FYM', NULL, NULL, '0', 'EG-FYM', 'EG-FYM', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'fayum', 'Faiyum', 'Faiyum Governorate', 'Muḩāfaz̧at al Fayyūm', 'faiyum', 1, NOW(6), NOW(6), 1, 1),
(361370, 65, 'BH', NULL, NULL, '0', 'EG-BH', 'EG-BH', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'behera', 'Beheira', 'Beheira Governorate', 'Beheira Governorate', 'beheira', 1, NOW(6), NOW(6), 1, 1),
(361468, 65, 'BA', NULL, NULL, '0', 'EG-BA', 'EG-BA', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'mar rojo', 'Red Sea', 'Red Sea Governorate', 'Red Sea Governorate', 'red sea', 1, NOW(6), NOW(6), 1, 1),
(361849, 65, 'DK', NULL, NULL, '0', 'EG-DK', 'EG-DK', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'daqahlia', 'Dakahlia', 'Dakahlia Governorate', 'Muḩāfaz̧at ad Daqahlīyah', 'dakahlia', 1, NOW(6), NOW(6), 1, 1),
(7603259, 65, 'LX', NULL, NULL, '0', 'EG-LX', 'EG-LX', '+20', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_eg' AND id_country = 65), 'luxor', 'Luxor', 'Luxor Governorate', 'Luxor', 'luxor', 1, NOW(6), NOW(6), 1, 1);