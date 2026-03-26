-- =============================================
-- Script de inserción para GRECIA (GR)
-- Archivo: GR_grecia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para GRECIA: Región
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'region_gr', 86, 8, 'Región', 'Region',
    'Region', 'Περιφέρεια', 'perifereia', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de GRECIA (Regiones y Región Autónoma)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(736572, 86, '69', NULL, NULL, '0', 'GR-69', 'GR-69', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'monte atos', 'Mount Athos', 'Mount Athos', 'Mount Athos', 'mount athos', 1, NOW(6), NOW(6), 1, 1),
(6692632, 86, 'I', NULL, NULL, '0', 'GR-I', 'GR-I', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'ática', 'Attica', 'Attica', 'Attica', 'attica', 1, NOW(6), NOW(6), 1, 1),
(6697800, 86, 'H', NULL, NULL, '0', 'GR-H', 'GR-H', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'grecia central', 'Central Greece', 'Central Greece', 'Central Greece', 'central greece', 1, NOW(6), NOW(6), 1, 1),
(6697801, 86, 'B', NULL, NULL, '0', 'GR-B', 'GR-B', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'macedonia central', 'Central Macedonia', 'Central Macedonia', 'Central Macedonia', 'central macedonia', 1, NOW(6), NOW(6), 1, 1),
(6697802, 86, 'M', NULL, NULL, '0', 'GR-M', 'GR-M', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'creta', 'Crete', 'Crete', 'Crete', 'crete', 1, NOW(6), NOW(6), 1, 1),
(6697803, 86, 'A', NULL, NULL, '0', 'GR-A', 'GR-A', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'macedonia oriental y tracia', 'Eastern Macedonia and Thrace', 'Eastern Macedonia and Thrace', 'Eastern Macedonia and Thrace', 'eastern macedonia and thrace', 1, NOW(6), NOW(6), 1, 1),
(6697804, 86, 'D', NULL, NULL, '0', 'GR-D', 'GR-D', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'épirus', 'Epirus', 'Epirus', 'Epirus', 'epirus', 1, NOW(6), NOW(6), 1, 1),
(6697805, 86, 'F', NULL, NULL, '0', 'GR-F', 'GR-F', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'islas jónicas', 'Ionian Islands', 'Ionian Islands', 'Ionian Islands', 'ionian islands', 1, NOW(6), NOW(6), 1, 1),
(6697806, 86, 'K', NULL, NULL, '0', 'GR-K', 'GR-K', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'egeo septentrional', 'North Aegean', 'North Aegean', 'North Aegean', 'north aegean', 1, NOW(6), NOW(6), 1, 1),
(6697807, 86, 'J', NULL, NULL, '0', 'GR-J', 'GR-J', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'peloponeso', 'Peloponnese', 'Peloponnese', 'Peloponnese', 'peloponnese', 1, NOW(6), NOW(6), 1, 1),
(6697808, 86, 'L', NULL, NULL, '0', 'GR-L', 'GR-L', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'egeo meridional', 'South Aegean', 'South Aegean', 'South Aegean', 'south aegean', 1, NOW(6), NOW(6), 1, 1),
(6697809, 86, 'E', NULL, NULL, '0', 'GR-E', 'GR-E', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'tesalia', 'Thessaly', 'Thessaly', 'Thessaly', 'thessaly', 1, NOW(6), NOW(6), 1, 1),
(6697810, 86, 'G', NULL, NULL, '0', 'GR-G', 'GR-G', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'grecia occidental', 'Western Greece', 'Western Greece', 'Western Greece', 'western greece', 1, NOW(6), NOW(6), 1, 1),
(6697811, 86, 'C', NULL, NULL, '0', 'GR-C', 'GR-C', '+30', (SELECT id FROM t075t_division_types WHERE code = 'region_gr' AND id_country = 86), 'macedonia occidental', 'Western Macedonia', 'Western Macedonia', 'Western Macedonia', 'western macedonia', 1, NOW(6), NOW(6), 1, 1);