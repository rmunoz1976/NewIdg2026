-- Insertar tipo de división geográfica ADM1 para Liberia: Condado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'condado_lr', 125, 8, 'condado', 'county', 
    'County', 'County', 'County', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Liberia (Condados)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(2273898, 125, 'LR-SI', NULL, NULL, '0', 'LR-SI', 'LR-SI', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'sinoe', 'Sinoe County', 'Sinoe County', 'Sinoe County', 'Sinoe County', 1, NOW(6), NOW(6), 1, 1),
(2274688, 125, 'LR-NI', NULL, NULL, '0', 'LR-NI', 'LR-NI', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'nimba', 'Nimba County', 'Nimba County', 'Nimba County', 'Nimba County', 1, NOW(6), NOW(6), 1, 1),
(2274890, 125, 'LR-MO', NULL, NULL, '0', 'LR-MO', 'LR-MO', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'montserrado', 'Montserrado County', 'Montserrado County', 'Montserrado County', 'Montserrado County', 1, NOW(6), NOW(6), 1, 1),
(2275099, 125, 'LR-MY', NULL, NULL, '0', 'LR-MY', 'LR-MY', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'maryland', 'Maryland County', 'Maryland County', 'Maryland County', 'Maryland County', 1, NOW(6), NOW(6), 1, 1),
(2275344, 125, 'LR-LO', NULL, NULL, '0', 'LR-LO', 'LR-LO', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'lofa', 'Lofa County', 'Lofa County', 'Lofa County', 'Lofa County', 1, NOW(6), NOW(6), 1, 1),
(2276622, 125, 'LR-GG', NULL, NULL, '0', 'LR-GG', 'LR-GG', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'grand gedeh', 'Grand Gedeh County', 'Grand Gedeh County', 'Grand Gedeh County', 'Grand Gedeh County', 1, NOW(6), NOW(6), 1, 1),
(2276627, 125, 'LR-CM', NULL, NULL, '0', 'LR-CM', 'LR-CM', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'grand cape mount', 'Grand Cape Mount County', 'Grand Cape Mount County', 'Grand Cape Mount County', 'Grand Cape Mount County', 1, NOW(6), NOW(6), 1, 1),
(2276630, 125, 'LR-GB', NULL, NULL, '0', 'LR-GB', 'LR-GB', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'grand bassa', 'Grand Bassa County', 'Grand Bassa County', 'Grand Bassa County', 'Grand Bassa County', 1, NOW(6), NOW(6), 1, 1),
(2278292, 125, 'LR-BG', NULL, NULL, '0', 'LR-BG', 'LR-BG', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'bong', 'Bong County', 'Bong County', 'Bong County', 'Bong County', 1, NOW(6), NOW(6), 1, 1),
(2278324, 125, 'LR-BM', NULL, NULL, '0', 'LR-BM', 'LR-BM', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'bomi', 'Bomi County', 'Bomi County', 'Bomi County', 'Bomi County', 1, NOW(6), NOW(6), 1, 1),
(2588490, 125, 'LR-GK', NULL, NULL, '0', 'LR-GK', 'LR-GK', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'grand kru', 'Grand Kru County', 'Grand Kru County', 'Grand Kru County', 'Grand Kru County', 1, NOW(6), NOW(6), 1, 1),
(2588491, 125, 'LR-MG', NULL, NULL, '0', 'LR-MG', 'LR-MG', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'margibi', 'Margibi County', 'Margibi County', 'Margibi County', 'Margibi County', 1, NOW(6), NOW(6), 1, 1),
(2588492, 125, 'LR-RI', NULL, NULL, '0', 'LR-RI', 'LR-RI', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'river cess', 'River Cess County', 'River Cess County', 'River Cess County', 'River Cess County', 1, NOW(6), NOW(6), 1, 1),
(2593119, 125, 'LR-GP', NULL, NULL, '0', 'LR-GP', 'LR-GP', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'gbarpolu', 'Gbarpolu County', 'Gbarpolu County', 'Gbarpolu County', 'Gbarpolu County', 1, NOW(6), NOW(6), 1, 1),
(2593120, 125, 'LR-RG', NULL, NULL, '0', 'LR-RG', 'LR-RG', '+231', (SELECT id FROM t075t_division_types WHERE code = 'condado_lr' AND id_country = 125), 'river gee', 'River Gee County', 'River Gee County', 'River Gee County', 'River Gee County', 1, NOW(6), NOW(6), 1, 1);