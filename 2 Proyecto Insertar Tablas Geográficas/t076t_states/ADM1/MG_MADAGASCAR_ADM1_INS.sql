-- Insertar tipo de división geográfica ADM1 para Madagascar: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_mg', 131, 8, 'región', 'region', 
    'Region', 'Faritra', 'Faritra', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Madagascar (Regiones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(7670842, 131, 'MG-D', NULL, NULL, '0', 'MG-D', 'MG-D', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'diana', 'Diana Region', 'Diana Region', 'Diana Region', 'Diana', 1, NOW(6), NOW(6), 1, 1),
(7670846, 131, 'MG-S', NULL, NULL, '0', 'MG-S', 'MG-S', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'sava', 'Sava Region', 'Sava Region', 'Sava Region', 'Sava', 1, NOW(6), NOW(6), 1, 1),
(7670847, 131, 'MG-SO', NULL, NULL, '0', 'MG-SO', 'MG-SO', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'sofía', 'Sofia Region', 'Sofia Region', 'Sofia Region', 'Sofia', 1, NOW(6), NOW(6), 1, 1),
(7670848, 131, 'MG-A', NULL, NULL, '0', 'MG-A', 'MG-A', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'analanjirofo', 'Analanjirofo Region', 'Analanjirofo Region', 'Analanjirofo Region', 'Analanjirofo', 1, NOW(6), NOW(6), 1, 1),
(7670849, 131, 'MG-B', NULL, NULL, '0', 'MG-B', 'MG-B', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'boeny', 'Boeny Region', 'Boeny Region', 'Boeny Region', 'Boeny', 1, NOW(6), NOW(6), 1, 1),
(7670850, 131, 'MG-C', NULL, NULL, '0', 'MG-C', 'MG-C', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'betsiboka', 'Betsiboka Region', 'Betsiboka Region', 'Betsiboka Region', 'Betsiboka', 1, NOW(6), NOW(6), 1, 1),
(7670851, 131, 'MG-T', NULL, NULL, '0', 'MG-T', 'MG-T', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'alaotra mangoro', 'Alaotra Mangoro Region', 'Alaotra Mangoro Region', 'Alaotra Mangoro Region', 'Alaotra Mangoro', 1, NOW(6), NOW(6), 1, 1),
(7670852, 131, 'MG-M', NULL, NULL, '0', 'MG-M', 'MG-M', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'melaky', 'Melaky Region', 'Melaky Region', 'Melaky Region', 'Melaky', 1, NOW(6), NOW(6), 1, 1),
(7670853, 131, 'MG-O', NULL, NULL, '0', 'MG-O', 'MG-O', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'bongolava', 'Bongolava Region', 'Bongolava Region', 'Bongolava Region', 'Bongolava', 1, NOW(6), NOW(6), 1, 1),
(7670854, 131, 'MG-V', NULL, NULL, '0', 'MG-V', 'MG-V', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'vakinankaratra', 'Vakinankaratra Region', 'Vakinankaratra Region', 'Vakinankaratra Region', 'Vakinankaratra', 1, NOW(6), NOW(6), 1, 1),
(7670855, 131, 'MG-I', NULL, NULL, '0', 'MG-I', 'MG-I', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'itasy', 'Itasy Region', 'Itasy Region', 'Itasy Region', 'Itasy', 1, NOW(6), NOW(6), 1, 1),
(7670856, 131, 'MG-TA', NULL, NULL, '0', 'MG-TA', 'MG-TA', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'analamanga', 'Analamanga Region', 'Analamanga Region', 'Analamanga Region', 'Analamanga', 1, NOW(6), NOW(6), 1, 1),
(7670857, 131, 'MG-AI', NULL, NULL, '0', 'MG-AI', 'MG-AI', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'atsinanana', 'Atsinanana Region', 'Atsinanana Region', 'Atsinanana Region', 'Atsinanana', 1, NOW(6), NOW(6), 1, 1),
(7670902, 131, 'MG-ME', NULL, NULL, '0', 'MG-ME', 'MG-ME', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'menabe', 'Menabe Region', 'Menabe Region', 'Menabe Region', 'Menabe', 1, NOW(6), NOW(6), 1, 1),
(7670904, 131, 'MG-AI', NULL, NULL, '0', 'MG-AI', 'MG-AI', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'amoron''i mania', 'Amoron''i Mania Region', 'Amoron''i Mania Region', 'Amoron''i Mania Region', 'Amoron''i Mania', 1, NOW(6), NOW(6), 1, 1),
(7670905, 131, 'MG-H', NULL, NULL, '0', 'MG-H', 'MG-H', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'haute matsiatra', 'Haute Matsiatra Region', 'Haute Matsiatra Region', 'Haute Matsiatra Region', 'Haute Matsiatra', 1, NOW(6), NOW(6), 1, 1),
(7670907, 131, 'MG-HI', NULL, NULL, '0', 'MG-HI', 'MG-HI', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'ihorombe', 'Ihorombe Region', 'Ihorombe Region', 'Ihorombe Region', 'Ihorombe', 1, NOW(6), NOW(6), 1, 1),
(7670908, 131, 'MG-AI', NULL, NULL, '0', 'MG-AI', 'MG-AI', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'atsimo-atsinanana', 'Atsimo-Atsinanana Region', 'Atsimo-Atsinanana Region', 'Atsimo-Atsinanana Region', 'Atsimo-Atsinanana', 1, NOW(6), NOW(6), 1, 1),
(7670910, 131, 'MG-AN', NULL, NULL, '0', 'MG-AN', 'MG-AN', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'anosy', 'Anosy Region', 'Anosy Region', 'Anosy Region', 'Anosy', 1, NOW(6), NOW(6), 1, 1),
(7670911, 131, 'MG-AI', NULL, NULL, '0', 'MG-AI', 'MG-AI', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'androy', 'Androy Region', 'Androy Region', 'Androy Region', 'Androy', 1, NOW(6), NOW(6), 1, 1),
(7670913, 131, 'MG-AI', NULL, NULL, '0', 'MG-AI', 'MG-AI', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'atsimo-andrefana', 'Atsimo-Andrefana Region', 'Atsimo-Andrefana Region', 'Atsimo-Andrefana Region', 'Atsimo-Andrefana', 1, NOW(6), NOW(6), 1, 1),
(12494965, 131, 'MG-AI', NULL, NULL, '0', 'MG-AI', 'MG-AI', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'fitovinany', 'Fitovinany Region', 'Fitovinany Region', 'Fitovinany Region', 'Fitovinany', 1, NOW(6), NOW(6), 1, 1),
(12494968, 131, 'MG-AI', NULL, NULL, '0', 'MG-AI', 'MG-AI', '+261', (SELECT id FROM t075t_division_types WHERE code = 'region_mg' AND id_country = 131), 'vatovavy', 'Vatovavy Region', 'Vatovavy Region', 'Vatovavy Region', 'Vatovavy', 1, NOW(6), NOW(6), 1, 1);