-- Insertar tipo de división geográfica ADM1 para Mongolia: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_mn', 146, 8, 'provincia', 'province', 
    'Province', 'Аймаг', 'Aimag', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Mongolia (Provincias y Municipio Capital)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(1514967, 146, 'MN-073', NULL, NULL, '0', 'MN-073', 'MN-073', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'uvs', 'Uvs Province', 'Uvs', 'Uvs Aymag', 'Uvs', 1, NOW(6), NOW(6), 1, 1),
(1515696, 146, 'MN-043', NULL, NULL, '0', 'MN-043', 'MN-043', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'hovd', 'Khovd Province', 'Khovd', 'Hovd', 'Khovd', 1, NOW(6), NOW(6), 1, 1),
(1515917, 146, 'MN-065', NULL, NULL, '0', 'MN-065', 'MN-065', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'govi-altay', 'Govi-Altai Province', 'Govi-Altai', 'Govĭ-Altay Aymag', 'Govi-Altai', 1, NOW(6), NOW(6), 1, 1),
(1516012, 146, 'MN-057', NULL, NULL, '0', 'MN-057', 'MN-057', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'zavkhan', 'Zavkhan Province', 'Zavkhan', 'Dzavhan Aymag', 'Zavkhan', 1, NOW(6), NOW(6), 1, 1),
(1516278, 146, 'MN-071', NULL, NULL, '0', 'MN-071', 'MN-071', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'bayan-ölgiy', 'Bayan-Ölgii Province', 'Bayan-Ölgii', 'Bayan-Ölgiy Aymag', 'Bayan-Ölgii', 1, NOW(6), NOW(6), 1, 1),
(1516290, 146, 'MN-069', NULL, NULL, '0', 'MN-069', 'MN-069', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'bayankhongor', 'Bayankhongor Province', 'Bayankhongor', 'Bayanhongor Aymag', 'Bayankhongor', 1, NOW(6), NOW(6), 1, 1),
(2028461, 146, 'MN-1', NULL, NULL, '0', 'MN-1', 'MN-1', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'ulán bator', 'Ulaanbaatar', 'Ulaanbaatar', 'Ulaanbaatar Hot', 'Ulaanbaatar', 1, NOW(6), NOW(6), 1, 1),
(2028849, 146, 'MN-047', NULL, NULL, '0', 'MN-047', 'MN-047', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'töv', 'Töv Province', 'Töv', 'Central Aymag', 'Töv', 1, NOW(6), NOW(6), 1, 1),
(2029155, 146, 'MN-051', NULL, NULL, '0', 'MN-051', 'MN-051', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'sükhbaatar', 'Sükhbaatar Province', 'Sükhbaatar', 'Sühbaatar Aymag', 'Sükhbaatar', 1, NOW(6), NOW(6), 1, 1),
(2029432, 146, 'MN-049', NULL, NULL, '0', 'MN-049', 'MN-049', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'selenge', 'Selenge Province', 'Selenge', 'Selenge Aymag', 'Selenge', 1, NOW(6), NOW(6), 1, 1),
(2029546, 146, 'MN-055', NULL, NULL, '0', 'MN-055', 'MN-055', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'övörkhangai', 'Övörkhangai Province', 'Övörkhangai', 'South Khangay', 'Övörkhangai', 1, NOW(6), NOW(6), 1, 1),
(2029669, 146, 'MN-053', NULL, NULL, '0', 'MN-053', 'MN-053', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'ömnögovi', 'Ömnögovi Province', 'Ömnögovi', 'Ömnögovi Province', 'Ömnögovi', 1, NOW(6), NOW(6), 1, 1),
(2030469, 146, 'MN-041', NULL, NULL, '0', 'MN-041', 'MN-041', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'khövsgöl', 'Khövsgöl Province', 'Khövsgöl', 'Hövsgöl Aymag', 'Khövsgöl', 1, NOW(6), NOW(6), 1, 1),
(2030783, 146, 'MN-039', NULL, NULL, '0', 'MN-039', 'MN-039', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'khentii', 'Khentii Province', 'Khentii', 'Hentiy Aymag', 'Khentii', 1, NOW(6), NOW(6), 1, 1),
(2031740, 146, 'MN-059', NULL, NULL, '0', 'MN-059', 'MN-059', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'dundgovi', 'Dundgovi Province', 'Dundgovi', 'Dundgovĭ Aymag', 'Dundgovi', 1, NOW(6), NOW(6), 1, 1),
(2031798, 146, 'MN-061', NULL, NULL, '0', 'MN-061', 'MN-061', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'dornogovi', 'Dornogovi Province', 'Dornogovi', 'East Gobi Aymag', 'Dornogovi', 1, NOW(6), NOW(6), 1, 1),
(2031799, 146, 'MN-063', NULL, NULL, '0', 'MN-063', 'MN-063', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'dornod', 'Dornod Province', 'Dornod', 'Dornod Aymag', 'Dornod', 1, NOW(6), NOW(6), 1, 1),
(2032199, 146, 'MN-067', NULL, NULL, '0', 'MN-067', 'MN-067', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'bulgan', 'Bulgan Province', 'Bulgan', 'Bulgan', 'Bulgan', 1, NOW(6), NOW(6), 1, 1),
(2032855, 146, 'MN-035', NULL, NULL, '0', 'MN-035', 'MN-035', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'arkhangai', 'Arkhangai Province', 'Arkhangai', 'Arhangay Aymag', 'Arkhangai', 1, NOW(6), NOW(6), 1, 1),
(2055111, 146, 'MN-037', NULL, NULL, '0', 'MN-037', 'MN-037', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'darhan-uul', 'Darkhan-Uul Province', 'Darkhan-Uul', 'Darhan-Uul Aymag', 'Darkhan-Uul', 1, NOW(6), NOW(6), 1, 1),
(2055112, 146, 'MN-064', NULL, NULL, '0', 'MN-064', 'MN-064', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'govĭ-sumber', 'Govisümber Province', 'Govisümber', 'Govĭ-Sumber', 'Govisümber', 1, NOW(6), NOW(6), 1, 1),
(2055113, 146, 'MN-035', NULL, NULL, '0', 'MN-035', 'MN-035', '+976', (SELECT id FROM t075t_division_types WHERE code = 'provincia_mn' AND id_country = 146), 'orkhon', 'Orkhon Province', 'Orkhon', 'Orhon Aymag', 'Orkhon', 1, NOW(6), NOW(6), 1, 1);