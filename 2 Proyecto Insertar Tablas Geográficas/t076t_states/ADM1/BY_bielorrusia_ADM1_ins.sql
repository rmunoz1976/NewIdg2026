-- =============================================
-- Script de inserción para BIELORRUSIA (BY)
-- Archivo: BY_bielorrusia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BIELORRUSIA: Óblast
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'oblast_by', 21, 8, 'Óblast', 'Oblast',
    'Oblast', 'Вобласць', 'voblasc', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BIELORRUSIA (Óblasts y Ciudad)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(620134, 21, 'VI', NULL, NULL, '0', 'BY-VI', 'BY-VI', '+375', (SELECT id FROM t075t_division_types WHERE code = 'oblast_by' AND id_country = 21), 'vitebsk', 'Vitebsk', 'Vitebsk Oblast', 'Vitebsk Oblast', 'vitebsk', 1, NOW(6), NOW(6), 1, 1),
(625073, 21, 'MA', NULL, NULL, '0', 'BY-MA', 'BY-MA', '+375', (SELECT id FROM t075t_division_types WHERE code = 'oblast_by' AND id_country = 21), 'mogilev', 'Mogilev', 'Mogilyov Oblast', 'Mogilyov Oblast', 'mogilyov', 1, NOW(6), NOW(6), 1, 1),
(625142, 21, 'MI', NULL, NULL, '0', 'BY-MI', 'BY-MI', '+375', (SELECT id FROM t075t_division_types WHERE code = 'oblast_by' AND id_country = 21), 'minsk', 'Minsk', 'Minsk Oblast', 'Minsk Oblast', 'minsk', 1, NOW(6), NOW(6), 1, 1),
(625143, 21, 'HM', NULL, NULL, '0', 'BY-HM', 'BY-HM', '+375', (SELECT id FROM t075t_division_types WHERE code = 'oblast_by' AND id_country = 21), 'minsk ciudad', 'Minsk City', 'Minsk City', 'Horad Minsk', 'horad minsk', 1, NOW(6), NOW(6), 1, 1),
(628035, 21, 'HR', NULL, NULL, '0', 'BY-HR', 'BY-HR', '+375', (SELECT id FROM t075t_division_types WHERE code = 'oblast_by' AND id_country = 21), 'grodno', 'Grodno', 'Grodno Oblast', 'Grodno Oblast', 'grodno', 1, NOW(6), NOW(6), 1, 1),
(628281, 21, 'HO', NULL, NULL, '0', 'BY-HO', 'BY-HO', '+375', (SELECT id FROM t075t_division_types WHERE code = 'oblast_by' AND id_country = 21), 'gomel', 'Gomel', 'Gomel Oblast', 'Homyel'' Voblasc''', 'homyel voblasc', 1, NOW(6), NOW(6), 1, 1),
(629631, 21, 'BR', NULL, NULL, '0', 'BY-BR', 'BY-BR', '+375', (SELECT id FROM t075t_division_types WHERE code = 'oblast_by' AND id_country = 21), 'brest', 'Brest', 'Brest Oblast', 'Brest Oblast', 'brest', 1, NOW(6), NOW(6), 1, 1);