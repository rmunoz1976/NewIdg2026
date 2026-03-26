-- =============================================
-- Script de inserción para HONDURAS (HN)
-- Archivo: HN_honduras_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para HONDURAS: Departamento
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'departamento_hn', 98, 8, 'Departamento', 'Department',
    'Department', 'Departamento', 'departamento', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de HONDURAS (Departamentos)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3600193, 98, 'YO', NULL, NULL, '0', 'HN-YO', 'HN-YO', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'yoro', 'Yoro', 'Yoro Department', 'Departamento de Yoro', 'yoro', 1, NOW(6), NOW(6), 1, 1),
(3600456, 98, 'VA', NULL, NULL, '0', 'HN-VA', 'HN-VA', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'valle', 'Valle', 'Valle Department', 'Departamento de Valle', 'valle', 1, NOW(6), NOW(6), 1, 1),
(3601689, 98, 'SB', NULL, NULL, '0', 'HN-SB', 'HN-SB', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'santa bárbara', 'Santa Bárbara', 'Santa Bárbara Department', 'Departamento de Santa Bárbara', 'santa barbara', 1, NOW(6), NOW(6), 1, 1),
(3604249, 98, 'OL', NULL, NULL, '0', 'HN-OL', 'HN-OL', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'olancho', 'Olancho', 'Olancho Department', 'Departamento de Olancho', 'olancho', 1, NOW(6), NOW(6), 1, 1),
(3604318, 98, 'OC', NULL, NULL, '0', 'HN-OC', 'HN-OC', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'ocotepeque', 'Ocotepeque', 'Ocotepeque Department', 'Departamento de Ocotepeque', 'ocotepeque', 1, NOW(6), NOW(6), 1, 1),
(3606066, 98, 'LE', NULL, NULL, '0', 'HN-LE', 'HN-LE', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'lempira', 'Lempira', 'Lempira Department', 'Departamento de Lempira', 'lempira', 1, NOW(6), NOW(6), 1, 1),
(3607251, 98, 'LP', NULL, NULL, '0', 'HN-LP', 'HN-LP', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'la paz', 'La Paz', 'La Paz Department', 'Departamento de La Paz', 'la paz', 1, NOW(6), NOW(6), 1, 1),
(3608814, 98, 'IB', NULL, NULL, '0', 'HN-IB', 'HN-IB', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'islas de la bahía', 'Bay Islands', 'Bay Islands Department', 'Departamento de Islas de la Bahía', 'islas de la bahia', 1, NOW(6), NOW(6), 1, 1),
(3608833, 98, 'IN', NULL, NULL, '0', 'HN-IN', 'HN-IN', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'intibucá', 'Intibucá', 'Intibucá Department', 'Departamento de Intibucá', 'intibuca', 1, NOW(6), NOW(6), 1, 1),
(3609583, 98, 'GD', NULL, NULL, '0', 'HN-GD', 'HN-GD', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'gracias a dios', 'Gracias a Dios', 'Gracias a Dios Department', 'Departamento de Gracias a Dios', 'gracias a dios', 1, NOW(6), NOW(6), 1, 1),
(3609672, 98, 'FM', NULL, NULL, '0', 'HN-FM', 'HN-FM', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'francisco morazán', 'Francisco Morazán', 'Francisco Morazán Department', 'Departamento de Francisco Morazán', 'francisco morazan', 1, NOW(6), NOW(6), 1, 1),
(3610942, 98, 'EP', NULL, NULL, '0', 'HN-EP', 'HN-EP', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'el paraíso', 'El Paraíso', 'El Paraíso Department', 'Departamento de El Paraíso', 'el paraiso', 1, NOW(6), NOW(6), 1, 1),
(3613140, 98, 'CR', NULL, NULL, '0', 'HN-CR', 'HN-CR', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'cortés', 'Cortés', 'Cortés Department', 'Departamento de Cortés', 'cortes', 1, NOW(6), NOW(6), 1, 1),
(3613229, 98, 'CP', NULL, NULL, '0', 'HN-CP', 'HN-CP', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'copán', 'Copán', 'Copán Department', 'Departamento de Copán', 'copan', 1, NOW(6), NOW(6), 1, 1),
(3613319, 98, 'CM', NULL, NULL, '0', 'HN-CM', 'HN-CM', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'comayagua', 'Comayagua', 'Comayagua Department', 'Departamento de Comayagua', 'comayagua', 1, NOW(6), NOW(6), 1, 1),
(3613358, 98, 'CL', NULL, NULL, '0', 'HN-CL', 'HN-CL', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'colón', 'Colón', 'Colón Department', 'Departamento de Colón', 'colon', 1, NOW(6), NOW(6), 1, 1),
(3613527, 98, 'CH', NULL, NULL, '0', 'HN-CH', 'HN-CH', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'choluteca', 'Choluteca', 'Choluteca Department', 'Departamento de Choluteca', 'choluteca', 1, NOW(6), NOW(6), 1, 1),
(3615027, 98, 'AT', NULL, NULL, '0', 'HN-AT', 'HN-AT', '+504', (SELECT id FROM t075t_division_types WHERE code = 'departamento_hn' AND id_country = 98), 'atlántida', 'Atlántida', 'Atlántida Department', 'Departamento de Atlántida', 'atlantida', 1, NOW(6), NOW(6), 1, 1);