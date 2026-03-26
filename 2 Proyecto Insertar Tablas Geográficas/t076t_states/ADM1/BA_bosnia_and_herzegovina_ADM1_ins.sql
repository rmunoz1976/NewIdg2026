-- =============================================
-- Script de inserción para BOSNIA Y HERZEGOVINA (BA)
-- Archivo: BA_bosnia_and_herzegovina_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BOSNIA Y HERZEGOVINA: Entidad
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'entidad_ba', 29, 8, 'Entidad', 'Entity',
    'Entity', 'Entitet', 'Entitet', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BOSNIA Y HERZEGOVINA (Entidades y Distrito)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3276814, 29, 'BRC', NULL, NULL, '0', 'BA-BRC', 'BA-BRC', '+387', (SELECT id FROM t075t_division_types WHERE code = 'entidad_ba' AND id_country = 29), 'distrito de brčko', 'Brčko District', 'Brčko District', 'Brčko distrikt', 'brčko distrikt', 1, NOW(6), NOW(6), 1, 1),
(3278205, 29, 'FBIH', NULL, NULL, '0', 'BA-BIH', 'BA-BIH', '+387', (SELECT id FROM t075t_division_types WHERE code = 'entidad_ba' AND id_country = 29), 'federación de bosnia y herzegovina', 'Federation of Bosnia and Herzegovina', 'Federation of Bosnia and Herzegovina', 'Federacija Bosne i Hercegovine', 'federacija bosne i hercegovine', 1, NOW(6), NOW(6), 1, 1),
(3294903, 29, 'SRP', NULL, NULL, '0', 'BA-SRP', 'BA-SRP', '+387', (SELECT id FROM t075t_division_types WHERE code = 'entidad_ba' AND id_country = 29), 'república srpska', 'Republika Srpska', 'Republika Srpska', 'Republika Srpska', 'republika srpska', 1, NOW(6), NOW(6), 1, 1);