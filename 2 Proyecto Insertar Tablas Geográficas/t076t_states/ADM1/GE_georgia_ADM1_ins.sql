-- =============================================
-- Script de inserción para GEORGIA (GE)
-- Archivo: GE_georgia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GEORGIA: Región / República Autónoma / Ciudad
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_ge', 82, 8, 'Región', 'Region',
    'Region', 'მხარე', 'mkhare', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GEORGIA (Regiones, Repúblicas Autónomas y Ciudad Capital)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(611716, 82, 'TB', NULL, NULL, '0', 'GE-TB', 'GE-TB', '+995', (SELECT id FROM t075t_division_types WHERE code = 'region_ge' AND id_country = 82), 'tiflis', 'Tbilisi', 'Tbilisi', 'K''alak''i T''bilisi', 'tbilisi', 1, NOW(6), NOW(6), 1, 1),
(615929, 82, 'AJ', NULL, NULL, '0', 'GE-AJ', 'GE-AJ', '+995', (SELECT id FROM t075t_division_types WHERE code = 'region_ge' AND id_country = 82), 'adyaria', 'Adjara', 'Adjara', 'Adjara', 'adjara', 1, NOW(6), NOW(6), 1, 1),
(865536, 82, 'KK', NULL, NULL, '0', 'GE-KK', 'GE-KK', '+995', (SELECT id FROM t075t_division_types WHERE code = 'region_ge' AND id_country = 82), 'kvemo kartli', 'Kvemo Kartli', 'Kvemo Kartli', 'Kvemo Kartli', 'kvemo kartli', 1, NOW(6), NOW(6), 1, 1),
(865537, 82, 'KA', NULL, NULL, '0', 'GE-KA', 'GE-KA', '+995', (SELECT id FROM t075t_division_types WHERE code = 'region_ge' AND id_country = 82), 'kajetia', 'Kakheti', 'Kakheti', 'Kakheti', 'kakheti', 1, NOW(6), NOW(6), 1, 1),
(865538, 82, 'GU', NULL, NULL, '0', 'GE-GU', 'GE-GU', '+995', (SELECT id FROM t075t_division_types WHERE code = 'region_ge' AND id_country = 82), 'guria', 'Guria', 'Guria', 'Guria', 'guria', 1, NOW(6), NOW(6), 1, 1),
(865539, 82, 'IM', NULL, NULL, '0', 'GE-IM', 'GE-IM', '+995', (SELECT id FROM t075t_division_types WHERE code = 'region_ge' AND id_country = 82), 'imereti', 'Imereti', 'Imereti', 'Imereti', 'imereti', 1, NOW(6), NOW(6), 1, 1),
(865540, 82, 'SK', NULL, NULL, '0', 'GE-SK', 'GE-SK', '+995', (SELECT id FROM t075t_division_types WHERE code = 'region_ge' AND id_country = 82), 'shida kartli', 'Shida Kartli', 'Shida Kartli', 'Shida Kartli', 'shida kartli', 1, NOW(6), NOW(6), 1, 1),
(865541, 82, 'MM', NULL, NULL, '0', 'GE-MM', 'GE-MM', '+995', (SELECT id FROM t075t_division_types WHERE code = 'region_ge' AND id_country = 82), 'mtsjeta-mtianeti', 'Mtskheta-Mtianeti', 'Mtskheta-Mtianeti', 'Mtskheta-Mtianeti', 'mtskheta mtianeti', 1, NOW(6), NOW(6), 1, 1),
(865542, 82, 'RL', NULL, NULL, '0', 'GE-RL', 'GE-RL', '+995', (SELECT id FROM t075t_division_types WHERE code = 'region_ge' AND id_country = 82), 'racha lechkhumi y kvemo svaneti', 'Racha-Lechkhumi and Kvemo Svaneti', 'Racha-Lechkhumi and Kvemo Svaneti', 'Racha-Lechkhumi and Kvemo Svaneti', 'racha lechkhumi and kvemo svaneti', 1, NOW(6), NOW(6), 1, 1),
(865543, 82, 'SZ', NULL, NULL, '0', 'GE-SZ', 'GE-SZ', '+995', (SELECT id FROM t075t_division_types WHERE code = 'region_ge' AND id_country = 82), 'samegrelo-zemo svaneti', 'Samegrelo-Zemo Svaneti', 'Samegrelo-Zemo Svaneti', 'Samegrelo-Zemo Svanetis Mkhare', 'samegrelo zemo svaneti', 1, NOW(6), NOW(6), 1, 1),
(865544, 82, 'SJ', NULL, NULL, '0', 'GE-SJ', 'GE-SJ', '+995', (SELECT id FROM t075t_division_types WHERE code = 'region_ge' AND id_country = 82), 'samtsje-yavajeti', 'Samtskhe-Javakheti', 'Samtskhe-Javakheti', 'Samtskhe-Javakheti', 'samtskhe javakheti', 1, NOW(6), NOW(6), 1, 1),
(6643410, 82, 'AB', NULL, NULL, '0', 'GE-AB', 'GE-AB', '+995', (SELECT id FROM t075t_division_types WHERE code = 'region_ge' AND id_country = 82), 'abjasia', 'Abkhazia', 'Abkhazia', 'Abkhazia', 'abkhazia', 1, NOW(6), NOW(6), 1, 1);