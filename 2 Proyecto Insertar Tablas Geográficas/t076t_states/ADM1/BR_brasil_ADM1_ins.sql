-- =============================================
-- Script de inserción para BRASIL (BR)
-- Archivo: BR_brasil_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para BRASIL: Estado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'estado_br', 32, 8, 'Estado', 'State',
    'State', 'Estado', 'estado', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de BRASIL (Estados y Distrito Federal)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3390290, 32, 'RN', NULL, NULL, '0', 'BR-RN', 'BR-RN', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'rio grande do norte', 'Rio Grande do Norte', 'Rio Grande do Norte', 'Rio Grande do Norte', 'rio grande do norte', 1, NOW(6), NOW(6), 1, 1),
(3392213, 32, 'PI', NULL, NULL, '0', 'BR-PI', 'BR-PI', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'piauí', 'Piauí', 'Piauí', 'Piauí', 'piaui', 1, NOW(6), NOW(6), 1, 1),
(3392268, 32, 'PE', NULL, NULL, '0', 'BR-PE', 'BR-PE', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'pernambuco', 'Pernambuco', 'Pernambuco', 'Pernambuco', 'pernambuco', 1, NOW(6), NOW(6), 1, 1),
(3393098, 32, 'PB', NULL, NULL, '0', 'BR-PB', 'BR-PB', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'paraíba', 'Paraíba', 'Paraíba', 'Paraíba', 'paraiba', 1, NOW(6), NOW(6), 1, 1),
(3393129, 32, 'PA', NULL, NULL, '0', 'BR-PA', 'BR-PA', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'pará', 'Pará', 'Pará', 'Pará', 'para', 1, NOW(6), NOW(6), 1, 1),
(3395443, 32, 'MA', NULL, NULL, '0', 'BR-MA', 'BR-MA', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'maranhão', 'Maranhão', 'Maranhão', 'Maranhão', 'maranhao', 1, NOW(6), NOW(6), 1, 1),
(3402362, 32, 'CE', NULL, NULL, '0', 'BR-CE', 'BR-CE', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'ceará', 'Ceará', 'Ceará', 'Ceará', 'ceara', 1, NOW(6), NOW(6), 1, 1),
(3407762, 32, 'AP', NULL, NULL, '0', 'BR-AP', 'BR-AP', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'amapá', 'Amapá', 'Amapá', 'Amapá', 'amapa', 1, NOW(6), NOW(6), 1, 1),
(3408096, 32, 'AL', NULL, NULL, '0', 'BR-AL', 'BR-AL', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'alagoas', 'Alagoas', 'Alagoas', 'Alagoas', 'alagoas', 1, NOW(6), NOW(6), 1, 1),
(3447799, 32, 'SE', NULL, NULL, '0', 'BR-SE', 'BR-SE', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'sergipe', 'Sergipe', 'Sergipe', 'Sergipe', 'sergipe', 1, NOW(6), NOW(6), 1, 1),
(3448433, 32, 'SP', NULL, NULL, '0', 'BR-SP', 'BR-SP', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'são paulo', 'São Paulo', 'São Paulo', 'São Paulo', 'sao paulo', 1, NOW(6), NOW(6), 1, 1),
(3450387, 32, 'SC', NULL, NULL, '0', 'BR-SC', 'BR-SC', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'santa catarina', 'Santa Catarina', 'Santa Catarina', 'Santa Catarina', 'santa catarina', 1, NOW(6), NOW(6), 1, 1),
(3451133, 32, 'RS', NULL, NULL, '0', 'BR-RS', 'BR-RS', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'rio grande do sul', 'Rio Grande do Sul', 'Rio Grande do Sul', 'Rio Grande do Sul', 'rio grande do sul', 1, NOW(6), NOW(6), 1, 1),
(3451189, 32, 'RJ', NULL, NULL, '0', 'BR-RJ', 'BR-RJ', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'rio de janeiro', 'Rio de Janeiro', 'Rio de Janeiro', 'Rio de Janeiro', 'rio de janeiro', 1, NOW(6), NOW(6), 1, 1),
(3455077, 32, 'PR', NULL, NULL, '0', 'BR-PR', 'BR-PR', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'paraná', 'Paraná', 'Paraná', 'Paraná', 'parana', 1, NOW(6), NOW(6), 1, 1),
(3457153, 32, 'MG', NULL, NULL, '0', 'BR-MG', 'BR-MG', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'minas gerais', 'Minas Gerais', 'Minas Gerais', 'Minas Gerais', 'minas gerais', 1, NOW(6), NOW(6), 1, 1),
(3457415, 32, 'MS', NULL, NULL, '0', 'BR-MS', 'BR-MS', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'mato grosso do sul', 'Mato Grosso do Sul', 'Mato Grosso do Sul', 'Mato Grosso do Sul', 'mato grosso do sul', 1, NOW(6), NOW(6), 1, 1),
(3457419, 32, 'MT', NULL, NULL, '0', 'BR-MT', 'BR-MT', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'mato grosso', 'Mato Grosso', 'Mato Grosso', 'Mato Grosso', 'mato grosso', 1, NOW(6), NOW(6), 1, 1),
(3462372, 32, 'GO', NULL, NULL, '0', 'BR-GO', 'BR-GO', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'goiás', 'Goiás', 'Goiás', 'Goiás', 'goias', 1, NOW(6), NOW(6), 1, 1),
(3463504, 32, 'DF', NULL, NULL, '0', 'BR-DF', 'BR-DF', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'distrito federal', 'Federal District', 'Federal District', 'Distrito Federal', 'distrito federal', 1, NOW(6), NOW(6), 1, 1),
(3463930, 32, 'ES', NULL, NULL, '0', 'BR-ES', 'BR-ES', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'espírito santo', 'Espírito Santo', 'Espírito Santo', 'Espírito Santo', 'espirito santo', 1, NOW(6), NOW(6), 1, 1),
(3471168, 32, 'BA', NULL, NULL, '0', 'BR-BA', 'BR-BA', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'bahia', 'Bahia', 'Bahia', 'Bahia', 'bahia', 1, NOW(6), NOW(6), 1, 1),
(3474575, 32, 'TO', NULL, NULL, '0', 'BR-TO', 'BR-TO', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'tocantins', 'Tocantins', 'Tocantins', 'Tocantins', 'tocantins', 1, NOW(6), NOW(6), 1, 1),
(3662560, 32, 'RR', NULL, NULL, '0', 'BR-RR', 'BR-RR', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'roraima', 'Roraima', 'Roraima', 'Roraima', 'roraima', 1, NOW(6), NOW(6), 1, 1),
(3665361, 32, 'AM', NULL, NULL, '0', 'BR-AM', 'BR-AM', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'amazonas', 'Amazonas', 'Amazonas', 'Amazonas', 'amazonas', 1, NOW(6), NOW(6), 1, 1),
(3665474, 32, 'AC', NULL, NULL, '0', 'BR-AC', 'BR-AC', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'acre', 'Acre', 'Acre', 'Acre', 'acre', 1, NOW(6), NOW(6), 1, 1),
(3924825, 32, 'RO', NULL, NULL, '0', 'BR-RO', 'BR-RO', '+55', (SELECT id FROM t075t_division_types WHERE code = 'estado_br' AND id_country = 32), 'rondônia', 'Rondônia', 'Rondônia', 'Rondônia', 'rondonia', 1, NOW(6), NOW(6), 1, 1);