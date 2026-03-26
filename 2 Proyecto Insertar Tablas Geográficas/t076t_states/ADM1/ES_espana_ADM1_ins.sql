-- =============================================
-- Script de inserción para ESPAÑA (ES)
-- Archivo: ES_espana_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para ESPAÑA: Comunidad Autónoma / Ciudad Autónoma
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'comunidad_autonoma_es', 210, 8, 'Comunidad Autónoma', 'Autonomous Community',
    'Autonomous Community', 'Comunidad Autónoma', 'comunidad autonoma', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ESPAÑA (Comunidades Autónomas y Ciudades Autónomas)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(2513413, 210, 'MC', NULL, NULL, '0', 'ES-MC', 'ES-MC', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'murcia', 'Murcia', 'Region of Murcia', 'Región de Murcia', 'murcia', 1, NOW(6), NOW(6), 1, 1),
(2519582, 210, 'CE', NULL, NULL, '0', 'ES-CE', 'ES-CE', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'ceuta', 'Ceuta', 'Ceuta', 'Ceuta', 'ceuta', 1, NOW(6), NOW(6), 1, 1),
(2521383, 210, 'IB', NULL, NULL, '0', 'ES-IB', 'ES-IB', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'islas baleares', 'Balearic Islands', 'Balearic Islands', 'Illes Balears', 'illes balears', 1, NOW(6), NOW(6), 1, 1),
(2593109, 210, 'AN', NULL, NULL, '0', 'ES-AN', 'ES-AN', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'andalucía', 'Andalusia', 'Andalusia', 'Andalucía', 'andalucia', 1, NOW(6), NOW(6), 1, 1),
(2593110, 210, 'CN', NULL, NULL, '0', 'ES-CN', 'ES-CN', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'canarias', 'Canary Islands', 'Canary Islands', 'Canarias', 'canarias', 1, NOW(6), NOW(6), 1, 1),
(2593111, 210, 'CM', NULL, NULL, '0', 'ES-CM', 'ES-CM', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'castilla-la mancha', 'Castile-La Mancha', 'Castile-La Mancha', 'Castilla-La Mancha', 'castilla la mancha', 1, NOW(6), NOW(6), 1, 1),
(2593112, 210, 'EX', NULL, NULL, '0', 'ES-EX', 'ES-EX', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'extremadura', 'Extremadura', 'Extremadura', 'Extremadura', 'extremadura', 1, NOW(6), NOW(6), 1, 1),
(2593113, 210, 'VC', NULL, NULL, '0', 'ES-VC', 'ES-VC', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'valencia', 'Valencia', 'Valencian Community', 'Comunitat Valenciana', 'comunitat valenciana', 1, NOW(6), NOW(6), 1, 1),
(3114710, 210, 'AS', NULL, NULL, '0', 'ES-AS', 'ES-AS', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'asturias', 'Asturias', 'Principality of Asturias', 'Principado de Asturias', 'principado de asturias', 1, NOW(6), NOW(6), 1, 1),
(3115609, 210, 'NC', NULL, NULL, '0', 'ES-NC', 'ES-NC', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'navarra', 'Navarre', 'Navarre', 'Navarra', 'navarra', 1, NOW(6), NOW(6), 1, 1),
(3117732, 210, 'MD', NULL, NULL, '0', 'ES-MD', 'ES-MD', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'madrid', 'Madrid', 'Community of Madrid', 'Comunidad de Madrid', 'comunidad de madrid', 1, NOW(6), NOW(6), 1, 1),
(3336897, 210, 'RI', NULL, NULL, '0', 'ES-RI', 'ES-RI', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'la rioja', 'La Rioja', 'La Rioja', 'La Rioja', 'la rioja', 1, NOW(6), NOW(6), 1, 1),
(3336898, 210, 'CB', NULL, NULL, '0', 'ES-CB', 'ES-CB', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'cantabria', 'Cantabria', 'Cantabria', 'Cantabria', 'cantabria', 1, NOW(6), NOW(6), 1, 1),
(3336899, 210, 'AR', NULL, NULL, '0', 'ES-AR', 'ES-AR', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'aragón', 'Aragon', 'Aragon', 'Aragón', 'aragon', 1, NOW(6), NOW(6), 1, 1),
(3336900, 210, 'CL', NULL, NULL, '0', 'ES-CL', 'ES-CL', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'castilla y león', 'Castile and León', 'Castile and León', 'Castilla y León', 'castilla y leon', 1, NOW(6), NOW(6), 1, 1),
(3336901, 210, 'CT', NULL, NULL, '0', 'ES-CT', 'ES-CT', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'cataluña', 'Catalonia', 'Catalonia', 'Catalunya', 'catalunya', 1, NOW(6), NOW(6), 1, 1),
(3336902, 210, 'GA', NULL, NULL, '0', 'ES-GA', 'ES-GA', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'galicia', 'Galicia', 'Galicia', 'Galicia', 'galicia', 1, NOW(6), NOW(6), 1, 1),
(3336903, 210, 'PV', NULL, NULL, '0', 'ES-PV', 'ES-PV', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'país vasco', 'Basque Country', 'Basque Country', 'Euskadi', 'euskadi', 1, NOW(6), NOW(6), 1, 1),
(6362988, 210, 'ML', NULL, NULL, '0', 'ES-ML', 'ES-ML', '+34', (SELECT id FROM t075t_division_types WHERE code = 'comunidad_autonoma_es' AND id_country = 210), 'melilla', 'Melilla', 'Melilla', 'Melilla', 'melilla', 1, NOW(6), NOW(6), 1, 1);