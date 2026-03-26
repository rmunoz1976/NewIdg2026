-- =============================================
-- Script de inserción para GUINEA-BISÁU (GW)
-- Archivo: GW_guinea_bisau_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GUINEA-BISÁU: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_gw', 94, 8, 'Región', 'Region',
    'Region', 'Região', 'regiao', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GUINEA-BISÁU (Regiones y Sector Autónomo)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2368955, 94, 'TO', NULL, NULL, '0', 'GW-TO', 'GW-TO', '+245', (SELECT id FROM t075t_division_types WHERE code = 'region_gw' AND id_country = 94), 'tombali', 'Tombali', 'Tombali Region', 'Tombali', 'tombali', 1, NOW(6), NOW(6), 1, 1),
(2370360, 94, 'QU', NULL, NULL, '0', 'GW-QU', 'GW-QU', '+245', (SELECT id FROM t075t_division_types WHERE code = 'region_gw' AND id_country = 94), 'quinara', 'Quinara', 'Quinara Region', 'Quinara', 'quinara', 1, NOW(6), NOW(6), 1, 1),
(2371071, 94, 'OI', NULL, NULL, '0', 'GW-OI', 'GW-OI', '+245', (SELECT id FROM t075t_division_types WHERE code = 'region_gw' AND id_country = 94), 'oio', 'Oio', 'Oio Region', 'Oio', 'oio', 1, NOW(6), NOW(6), 1, 1),
(2372533, 94, 'GA', NULL, NULL, '0', 'GW-GA', 'GW-GA', '+245', (SELECT id FROM t075t_division_types WHERE code = 'region_gw' AND id_country = 94), 'gabú', 'Gabú', 'Gabú Region', 'Gabú', 'gabu', 1, NOW(6), NOW(6), 1, 1),
(2374312, 94, 'CA', NULL, NULL, '0', 'GW-CA', 'GW-CA', '+245', (SELECT id FROM t075t_division_types WHERE code = 'region_gw' AND id_country = 94), 'cacheu', 'Cacheu', 'Cacheu Region', 'Cacheu', 'cacheu', 1, NOW(6), NOW(6), 1, 1),
(2374689, 94, 'BL', NULL, NULL, '0', 'GW-BL', 'GW-BL', '+245', (SELECT id FROM t075t_division_types WHERE code = 'region_gw' AND id_country = 94), 'bolama', 'Bolama', 'Bolama Region', 'Bolama', 'bolama', 1, NOW(6), NOW(6), 1, 1),
(2374776, 94, 'BS', NULL, NULL, '0', 'GW-BS', 'GW-BS', '+245', (SELECT id FROM t075t_division_types WHERE code = 'region_gw' AND id_country = 94), 'bisáu', 'Bissau', 'Bissau Autonomous Region', 'Bissau Region', 'bissau', 1, NOW(6), NOW(6), 1, 1),
(2374820, 94, 'BM', NULL, NULL, '0', 'GW-BM', 'GW-BM', '+245', (SELECT id FROM t075t_division_types WHERE code = 'region_gw' AND id_country = 94), 'biombo', 'Biombo', 'Biombo Region', 'Biombo', 'biombo', 1, NOW(6), NOW(6), 1, 1),
(2375255, 94, 'BA', NULL, NULL, '0', 'GW-BA', 'GW-BA', '+245', (SELECT id FROM t075t_division_types WHERE code = 'region_gw' AND id_country = 94), 'bafatá', 'Bafatá', 'Bafatá Region', 'Bafatá', 'bafata', 1, NOW(6), NOW(6), 1, 1);