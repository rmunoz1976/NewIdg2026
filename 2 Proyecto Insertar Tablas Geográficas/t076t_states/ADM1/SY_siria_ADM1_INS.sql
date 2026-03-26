-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SIRIA (SY)
-- Archivo: SY_siria_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SIRIA: Gobernación
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'gobernacion_sy', 217, 8, 'Gobernación', 'Governorate',
    'Muḩāfaz̧ah', 'محافظة', 'Muhafazah', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SIRIA (Gobernaciones)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(163342, 217, 'tartus', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Tartus', 'Tartus Governorate', 'Tartus Governorate', 'Tartus Governorate', 'Tartus Governorate', 1, NOW(6), NOW(6), 1, 1),
(167541, 217, 'damascus', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Damasco', 'Damascus Governorate', 'Damascus Governorate', 'Damascus Governorate', 'Damascus Governorate', 1, NOW(6), NOW(6), 1, 1),
(169387, 217, 'idlib', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Idlib', 'Idlib Governorate', 'Idlib Governorate', 'Idlib Governorate', 'Idlib Governorate', 1, NOW(6), NOW(6), 1, 1),
(169575, 217, 'homs', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Homs', 'Homs Governorate', 'Homs Governorate', 'Homs Governorate', 'Homs Governorate', 1, NOW(6), NOW(6), 1, 1),
(170015, 217, 'hama', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Hama', 'Hama Governorate', 'Hama Governorate', 'Hama Governorate', 'Hama Governorate', 1, NOW(6), NOW(6), 1, 1),
(170062, 217, 'aleppo', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Alepo', 'Aleppo Governorate', 'Aleppo Governorate', 'Aleppo Governorate', 'Aleppo Governorate', 1, NOW(6), NOW(6), 1, 1),
(170652, 217, 'damascus_countryside', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Campo de Damasco', 'Damascus Countryside', 'Damascus Countryside', 'Damascus Countryside', 'Damascus Countryside', 1, NOW(6), NOW(6), 1, 1),
(170792, 217, 'deir_ez_zor', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Deir ez-Zor', 'Deir ez-Zor Governorate', 'Deir ez-Zor Governorate', 'Deir ez-Zor Governorate', 'Deir ez-Zor Governorate', 1, NOW(6), NOW(6), 1, 1),
(170903, 217, 'daraa', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Daraa', 'Daraa Governorate', 'Daraa Governorate', 'Daraa Governorate', 'Daraa Governorate', 1, NOW(6), NOW(6), 1, 1),
(172410, 217, 'as_suwayda', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'As-Suwayda', 'As-Suwayda Governorate', 'As-Suwayda Governorate', 'As-Suwayda Governorate', 'As-Suwayda Governorate', 1, NOW(6), NOW(6), 1, 1),
(172957, 217, 'ar_raqqah', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Ar-Raqqah', 'Ar-Raqqah Governorate', 'Ar-Raqqah Governorate', 'Ar-Raqqah Governorate', 'Ar-Raqqah Governorate', 1, NOW(6), NOW(6), 1, 1),
(173336, 217, 'quneitra', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Quneitra', 'Quneitra Governorate', 'Quneitra Governorate', 'Quneitra Governorate', 'Quneitra Governorate', 1, NOW(6), NOW(6), 1, 1),
(173578, 217, 'latakia', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Latakia', 'Latakia Governorate', 'Latakia Governorate', 'Latakia Governorate', 'Latakia Governorate', 1, NOW(6), NOW(6), 1, 1),
(173813, 217, 'al_hasakah', NULL, NULL, '000', 'SY-000', 'SY-000', '+963', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_sy' AND id_country = 217), 'Al-Hasakah', 'Al-Hasakah Governorate', 'Al-Hasakah Governorate', 'Al-Hasakah Governorate', 'Al-Hasakah Governorate', 1, NOW(6), NOW(6), 1, 1);