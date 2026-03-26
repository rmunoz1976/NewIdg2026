-- =============================================
-- Script de inserción para REPÚBLICA CENTROAFRICANA (CF)
-- Archivo: CF_republica_centroafricana_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para REPÚBLICA CENTROAFRICANA: Prefectura
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'prefectura_cf', 44, 8, 'Prefectura', 'Prefecture',
    'Prefecture', 'Préfecture', 'prefecture', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de REPÚBLICA CENTROAFRICANA (Prefecturas, Comuna)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(236178, 44, 'VK', NULL, NULL, '0', 'CF-VK', 'CF-VK', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'vakaga', 'Vakaga', 'Vakaga Prefecture', 'Vakaga', 'vakaga', 1, NOW(6), NOW(6), 1, 1),
(236887, 44, 'UK', NULL, NULL, '0', 'CF-UK', 'CF-UK', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'ouaka', 'Ouaka', 'Ouaka Prefecture', 'Ouaka', 'ouaka', 1, NOW(6), NOW(6), 1, 1),
(237556, 44, 'MB', NULL, NULL, '0', 'CF-MB', 'CF-MB', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'mbomou', 'Mbomou', 'Mbomou Prefecture', 'Mbomou', 'mbomou', 1, NOW(6), NOW(6), 1, 1),
(238639, 44, 'HM', NULL, NULL, '0', 'CF-HM', 'CF-HM', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'alto mbomou', 'Haut-Mbomou', 'Haut-Mbomou Prefecture', 'Haut-Mbomou', 'haut mbomou', 1, NOW(6), NOW(6), 1, 1),
(238640, 44, 'HK', NULL, NULL, '0', 'CF-HK', 'CF-HK', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'alto kotto', 'Haute-Kotto', 'Haute-Kotto Prefecture', 'Haute-Kotto', 'haute kotto', 1, NOW(6), NOW(6), 1, 1),
(240396, 44, 'BK', NULL, NULL, '0', 'CF-BK', 'CF-BK', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'bajo kotto', 'Basse-Kotto', 'Basse-Kotto Prefecture', 'Basse-Kotto', 'basse kotto', 1, NOW(6), NOW(6), 1, 1),
(240591, 44, 'BB', NULL, NULL, '0', 'CF-BB', 'CF-BB', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'bamingui bangoran', 'Bamingui-Bangoran', 'Bamingui-Bangoran Prefecture', 'Bamingui-Bangoran', 'bamingui bangoran', 1, NOW(6), NOW(6), 1, 1),
(2383204, 44, 'SE', NULL, NULL, '0', 'CF-SE', 'CF-SE', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'sangha mbaéré', 'Sangha-Mbaéré', 'Sangha-Mbaéré Prefecture', 'Sangha-Mbaéré', 'sangha mbaere', 1, NOW(6), NOW(6), 1, 1),
(2383650, 44, 'OP', NULL, NULL, '0', 'CF-OP', 'CF-OP', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'ouham pendé', 'Ouham-Pendé', 'Ouham-Pendé Prefecture', 'Ouham-Pendé', 'ouham pende', 1, NOW(6), NOW(6), 1, 1),
(2383653, 44, 'OH', NULL, NULL, '0', 'CF-OH', 'CF-OH', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'ouham', 'Ouham', 'Ouham Prefecture', 'Ouham', 'ouham', 1, NOW(6), NOW(6), 1, 1),
(2383765, 44, 'MP', NULL, NULL, '0', 'CF-MP', 'CF-MP', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'ombella mpoko', 'Ombella-Mpoko', 'Ombella-Mpoko Prefecture', 'Ombella-Mpoko', 'ombella mpoko', 1, NOW(6), NOW(6), 1, 1),
(2384205, 44, 'NM', NULL, NULL, '0', 'CF-NM', 'CF-NM', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'nana mambéré', 'Nana-Mambéré', 'Nana-Mambéré Prefecture', 'Nana-Mambéré', 'nana mambere', 1, NOW(6), NOW(6), 1, 1),
(2385105, 44, 'LB', NULL, NULL, '0', 'CF-LB', 'CF-LB', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'lobaye', 'Lobaye', 'Lobaye Prefecture', 'Lobaye', 'lobaye', 1, NOW(6), NOW(6), 1, 1),
(2385836, 44, 'KG', NULL, NULL, '0', 'CF-KG', 'CF-KG', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'kémo', 'Kémo', 'Kémo Prefecture', 'Kémo', 'kemo', 1, NOW(6), NOW(6), 1, 1),
(2386161, 44, 'MK', NULL, NULL, '0', 'CF-MK', 'CF-MK', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'mambéré kadéï', 'Mambéré-Kadéï', 'Mambéré-Kadéï Prefecture', 'Mambéré-Kadéï', 'mambere kadei', 1, NOW(6), NOW(6), 1, 1),
(2386243, 44, 'NG', NULL, NULL, '0', 'CF-NG', 'CF-NG', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'nana grébizi', 'Nana-Grébizi', 'Nana-Grébizi Prefecture', 'Nana-Grébizi', 'nana grebizi', 1, NOW(6), NOW(6), 1, 1),
(2596686, 44, 'BG', NULL, NULL, '0', 'CF-BG', 'CF-BG', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'bangui', 'Bangui', 'Commune de Bangui', 'Commune de Bangui', 'bangui', 1, NOW(6), NOW(6), 1, 1),
(12902745, 44, 'MM', NULL, NULL, '0', 'CF-MM', 'CF-MM', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'mambéré', 'Mambéré', 'Mambéré', 'Mambéré', 'mambere', 1, NOW(6), NOW(6), 1, 1),
(12902746, 44, 'OF', NULL, NULL, '0', 'CF-OF', 'CF-OF', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'ouham fafa', 'Ouham-Fafa', 'Ouham-Fafa', 'Ouham-Fafa', 'ouham fafa', 1, NOW(6), NOW(6), 1, 1),
(12902747, 44, 'LP', NULL, NULL, '0', 'CF-LP', 'CF-LP', '+236', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_cf' AND id_country = 44), 'lim pendé', 'Lim-Pendé', 'Lim-Pendé', 'Lim-Pendé', 'lim pende', 1, NOW(6), NOW(6), 1, 1);