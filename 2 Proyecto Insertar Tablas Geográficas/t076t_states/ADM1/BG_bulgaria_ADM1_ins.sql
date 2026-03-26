-- =============================================
-- Script de inserción para BULGARIA (BG)
-- Archivo: BG_bulgaria_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BULGARIA: Óblast
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'oblast_bg', 36, 8, 'Óblast', 'Oblast',
    'Oblast', 'Област', 'Oblast', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BULGARIA (Óblasts)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(453751, 36, 'RAZ', NULL, NULL, '0', 'BG-RAZ', 'BG-RAZ', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'razgrad', 'Razgrad', 'Razgrad Oblast', 'Oblast Razgrad', 'razgrad', 1, NOW(6), NOW(6), 1, 1),
(453753, 36, 'MON', NULL, NULL, '0', 'BG-MON', 'BG-MON', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'montana', 'Montana', 'Montana Oblast', 'Oblast Montana', 'montana', 1, NOW(6), NOW(6), 1, 1),
(725713, 36, 'VRC', NULL, NULL, '0', 'BG-VRC', 'BG-VRC', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'vratsa', 'Vratsa', 'Vratsa Oblast', 'Oblast Vratsa', 'vratsa', 1, NOW(6), NOW(6), 1, 1),
(726051, 36, 'VAR', NULL, NULL, '0', 'BG-VAR', 'BG-VAR', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'varna', 'Varna', 'Varna Oblast', 'Varna', 'varna', 1, NOW(6), NOW(6), 1, 1),
(726419, 36, 'DOB', NULL, NULL, '0', 'BG-DOB', 'BG-DOB', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'dobrich', 'Dobrich', 'Dobrich Oblast', 'Oblast Dobrich', 'dobrich', 1, NOW(6), NOW(6), 1, 1),
(727012, 36, 'SOF', NULL, NULL, '0', 'BG-SOF', 'BG-SOF', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'sofía', 'Sofia', 'Sofia Province', 'Sofia', 'sofia', 1, NOW(6), NOW(6), 1, 1),
(727524, 36, 'RUS', NULL, NULL, '0', 'BG-RUS', 'BG-RUS', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'ruse', 'Ruse', 'Ruse Oblast', 'Oblast Ruse', 'ruse', 1, NOW(6), NOW(6), 1, 1),
(728194, 36, 'PDV', NULL, NULL, '0', 'BG-PDV', 'BG-PDV', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'plovdiv', 'Plovdiv', 'Plovdiv Oblast', 'Plovdiv', 'plovdiv', 1, NOW(6), NOW(6), 1, 1),
(728204, 36, 'PVN', NULL, NULL, '0', 'BG-PVN', 'BG-PVN', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'pleven', 'Pleven', 'Pleven Oblast', 'Oblast Pleven', 'pleven', 1, NOW(6), NOW(6), 1, 1),
(728331, 36, 'PER', NULL, NULL, '0', 'BG-PER', 'BG-PER', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'pernik', 'Pernik', 'Pernik Oblast', 'Pernik', 'pernik', 1, NOW(6), NOW(6), 1, 1),
(728379, 36, 'PAZ', NULL, NULL, '0', 'BG-PAZ', 'BG-PAZ', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'pazardzhik', 'Pazardzhik', 'Pazardzhik Oblast', 'Pazardzhik', 'pazardzhik', 1, NOW(6), NOW(6), 1, 1),
(729560, 36, 'LOV', NULL, NULL, '0', 'BG-LOV', 'BG-LOV', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'lovech', 'Lovech', 'Lovech Oblast', 'Lovech', 'lovech', 1, NOW(6), NOW(6), 1, 1),
(730436, 36, 'HAS', NULL, NULL, '0', 'BG-HAS', 'BG-HAS', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'haskovo', 'Haskovo', 'Haskovo Oblast', 'Haskovo', 'haskovo', 1, NOW(6), NOW(6), 1, 1),
(731061, 36, 'SOF-G', NULL, NULL, '0', 'BG-SOF-G', 'BG-SOF-G', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'sofía ciudad', 'Sofia City', 'Sofia City', 'Sofia-Grad', 'sofia-grad', 1, NOW(6), NOW(6), 1, 1),
(732771, 36, 'BUR', NULL, NULL, '0', 'BG-BUR', 'BG-BUR', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'burgas', 'Burgas', 'Burgas Oblast', 'Burgas', 'burgas', 1, NOW(6), NOW(6), 1, 1),
(733192, 36, 'BLA', NULL, NULL, '0', 'BG-BLA', 'BG-BLA', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'blagoevgrad', 'Blagoevgrad', 'Blagoevgrad Oblast', 'Blagoevgrad', 'blagoevgrad', 1, NOW(6), NOW(6), 1, 1),
(864552, 36, 'GAB', NULL, NULL, '0', 'BG-GAB', 'BG-GAB', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'gabrovo', 'Gabrovo', 'Gabrovo Oblast', 'Gabrovo', 'gabrovo', 1, NOW(6), NOW(6), 1, 1),
(864553, 36, 'KRZ', NULL, NULL, '0', 'BG-KRZ', 'BG-KRZ', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'kardzhali', 'Kardzhali', 'Kardzhali Oblast', 'Oblast Kardzhali', 'kardzhali', 1, NOW(6), NOW(6), 1, 1),
(864554, 36, 'KYU', NULL, NULL, '0', 'BG-KYU', 'BG-KYU', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'kyustendil', 'Kyustendil', 'Kyustendil Oblast', 'Oblast Kyustendil', 'kyustendil', 1, NOW(6), NOW(6), 1, 1),
(864555, 36, 'SHU', NULL, NULL, '0', 'BG-SHU', 'BG-SHU', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'shumen', 'Shumen', 'Shumen Oblast', 'Oblast Shumen', 'shumen', 1, NOW(6), NOW(6), 1, 1),
(864556, 36, 'SIL', NULL, NULL, '0', 'BG-SIL', 'BG-SIL', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'silistra', 'Silistra', 'Silistra Oblast', 'Oblast Silistra', 'silistra', 1, NOW(6), NOW(6), 1, 1),
(864557, 36, 'SLV', NULL, NULL, '0', 'BG-SLV', 'BG-SLV', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'sliven', 'Sliven', 'Sliven Oblast', 'Oblast Sliven', 'sliven', 1, NOW(6), NOW(6), 1, 1),
(864558, 36, 'SML', NULL, NULL, '0', 'BG-SML', 'BG-SML', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'smolyan', 'Smolyan', 'Smolyan Oblast', 'Oblast Smolyan', 'smolyan', 1, NOW(6), NOW(6), 1, 1),
(864559, 36, 'SZR', NULL, NULL, '0', 'BG-SZR', 'BG-SZR', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'stara zagora', 'Stara Zagora', 'Stara Zagora Oblast', 'Oblast Stara Zagora', 'stara zagora', 1, NOW(6), NOW(6), 1, 1),
(864560, 36, 'TGV', NULL, NULL, '0', 'BG-TGV', 'BG-TGV', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'targovishte', 'Targovishte', 'Targovishte Oblast', 'Oblast Targovishte', 'targovishte', 1, NOW(6), NOW(6), 1, 1),
(864561, 36, 'VTR', NULL, NULL, '0', 'BG-VTR', 'BG-VTR', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'veliko tarnovo', 'Veliko Tarnovo', 'Veliko Tarnovo Oblast', 'Oblast Veliko Tarnovo', 'veliko tarnovo', 1, NOW(6), NOW(6), 1, 1),
(864562, 36, 'VID', NULL, NULL, '0', 'BG-VID', 'BG-VID', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'vidin', 'Vidin', 'Vidin Oblast', 'Oblast Vidin', 'vidin', 1, NOW(6), NOW(6), 1, 1),
(864563, 36, 'YAM', NULL, NULL, '0', 'BG-YAM', 'BG-YAM', '+359', (SELECT id FROM t075t_division_types WHERE code = 'oblast_bg' AND id_country = 36), 'yambol', 'Yambol', 'Yambol Oblast', 'Oblast Yambol', 'yambol', 1, NOW(6), NOW(6), 1, 1);