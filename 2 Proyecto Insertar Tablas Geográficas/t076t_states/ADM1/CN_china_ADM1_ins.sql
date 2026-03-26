-- =============================================
-- Script de inserción para CHINA (CN)
-- Archivo: CN_china_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para CHINA: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_cn', 47, 8, 'Provincia', 'Province',
    'Province', '省', 'sheng', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de CHINA (Provincias, Regiones Autónomas y Municipalidades)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(1279685, 47, 'XZ', NULL, NULL, '0', 'CN-XZ', 'CN-XZ', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'tíbet', 'Tibet', 'Tibet Autonomous Region', 'Tibet Autonomous Region', 'tibet', 1, NOW(6), NOW(6), 1, 1),
(1280239, 47, 'QH', NULL, NULL, '0', 'CN-QH', 'CN-QH', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'qinghai', 'Qinghai', 'Qinghai Province', 'Qinghai', 'qinghai', 1, NOW(6), NOW(6), 1, 1),
(1529047, 47, 'XJ', NULL, NULL, '0', 'CN-XJ', 'CN-XJ', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'xinjiang', 'Xinjiang', 'Xinjiang Uyghur Autonomous Region', 'Xinjiang Uyghur Autonomous Region', 'xinjiang', 1, NOW(6), NOW(6), 1, 1),
(1784764, 47, 'ZJ', NULL, NULL, '0', 'CN-ZJ', 'CN-ZJ', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'zhejiang', 'Zhejiang', 'Zhejiang Province', 'Zhejiang', 'zhejiang', 1, NOW(6), NOW(6), 1, 1),
(1785694, 47, 'YN', NULL, NULL, '0', 'CN-YN', 'CN-YN', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'yunnan', 'Yunnan', 'Yunnan Province', 'Yunnan', 'yunnan', 1, NOW(6), NOW(6), 1, 1),
(1792943, 47, 'TJ', NULL, NULL, '0', 'CN-TJ', 'CN-TJ', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'tianjin', 'Tianjin', 'Tianjin Municipality', 'Tianjin Shi', 'tianjin', 1, NOW(6), NOW(6), 1, 1),
(1794299, 47, 'SC', NULL, NULL, '0', 'CN-SC', 'CN-SC', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'sichuan', 'Sichuan', 'Sichuan Province', 'Sichuan', 'sichuan', 1, NOW(6), NOW(6), 1, 1),
(1795912, 47, 'SX', NULL, NULL, '0', 'CN-SX', 'CN-SX', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'shanxi', 'Shanxi', 'Shanxi Province', 'Shanxi', 'shanxi', 1, NOW(6), NOW(6), 1, 1),
(1796231, 47, 'SH', NULL, NULL, '0', 'CN-SH', 'CN-SH', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'shanghái', 'Shanghai', 'Shanghai Municipality', 'Shanghai Shi', 'shanghai', 1, NOW(6), NOW(6), 1, 1),
(1796328, 47, 'SD', NULL, NULL, '0', 'CN-SD', 'CN-SD', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'shandong', 'Shandong', 'Shandong Province', 'Shandong', 'shandong', 1, NOW(6), NOW(6), 1, 1),
(1796480, 47, 'SN', NULL, NULL, '0', 'CN-SN', 'CN-SN', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'shaanxi', 'Shaanxi', 'Shaanxi Province', 'Shaanxi', 'shaanxi', 1, NOW(6), NOW(6), 1, 1),
(1799355, 47, 'NX', NULL, NULL, '0', 'CN-NX', 'CN-NX', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'ningxia', 'Ningxia', 'Ningxia Hui Autonomous Region', 'Ningxia Hui Autonomous Region', 'ningxia', 1, NOW(6), NOW(6), 1, 1),
(1806222, 47, 'JX', NULL, NULL, '0', 'CN-JX', 'CN-JX', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'jiangxi', 'Jiangxi', 'Jiangxi Province', 'Jiangxi', 'jiangxi', 1, NOW(6), NOW(6), 1, 1),
(1806260, 47, 'JS', NULL, NULL, '0', 'CN-JS', 'CN-JS', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'jiangsu', 'Jiangsu', 'Jiangsu Province', 'Jiangsu', 'jiangsu', 1, NOW(6), NOW(6), 1, 1),
(1806691, 47, 'HN', NULL, NULL, '0', 'CN-HN', 'CN-HN', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'hunan', 'Hunan', 'Hunan Province', 'Hunan', 'hunan', 1, NOW(6), NOW(6), 1, 1),
(1806949, 47, 'HB', NULL, NULL, '0', 'CN-HB', 'CN-HB', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'hubei', 'Hubei', 'Hubei Province', 'Hubei', 'hubei', 1, NOW(6), NOW(6), 1, 1),
(1808520, 47, 'HA', NULL, NULL, '0', 'CN-HA', 'CN-HA', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'henan', 'Henan', 'Henan Province', 'Henan', 'henan', 1, NOW(6), NOW(6), 1, 1),
(1808773, 47, 'HE', NULL, NULL, '0', 'CN-HE', 'CN-HE', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'hebei', 'Hebei', 'Hebei Province', 'Hebei Sheng', 'hebei', 1, NOW(6), NOW(6), 1, 1),
(1809054, 47, 'HI', NULL, NULL, '0', 'CN-HI', 'CN-HI', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'hainan', 'Hainan', 'Hainan Province', 'Hainan', 'hainan', 1, NOW(6), NOW(6), 1, 1),
(1809445, 47, 'GZ', NULL, NULL, '0', 'CN-GZ', 'CN-GZ', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'guizhou', 'Guizhou', 'Guizhou Province', 'Guizhou', 'guizhou', 1, NOW(6), NOW(6), 1, 1),
(1809867, 47, 'GX', NULL, NULL, '0', 'CN-GX', 'CN-GX', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'guangxi', 'Guangxi', 'Guangxi Zhuang Autonomous Region', 'Guangxi Zhuang Autonomous Region', 'guangxi', 1, NOW(6), NOW(6), 1, 1),
(1809935, 47, 'GD', NULL, NULL, '0', 'CN-GD', 'CN-GD', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'guangdong', 'Guangdong', 'Guangdong Province', 'Guangdong', 'guangdong', 1, NOW(6), NOW(6), 1, 1),
(1810676, 47, 'GS', NULL, NULL, '0', 'CN-GS', 'CN-GS', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'gansu', 'Gansu', 'Gansu Province', 'Gansu', 'gansu', 1, NOW(6), NOW(6), 1, 1),
(1811017, 47, 'FJ', NULL, NULL, '0', 'CN-FJ', 'CN-FJ', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'fujian', 'Fujian', 'Fujian Province', 'Fujian', 'fujian', 1, NOW(6), NOW(6), 1, 1),
(1814905, 47, 'CQ', NULL, NULL, '0', 'CN-CQ', 'CN-CQ', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'chongqing', 'Chongqing', 'Chongqing Municipality', 'Chongqing Shi', 'chongqing', 1, NOW(6), NOW(6), 1, 1),
(1818058, 47, 'AH', NULL, NULL, '0', 'CN-AH', 'CN-AH', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'anhui', 'Anhui', 'Anhui Province', 'Anhui', 'anhui', 1, NOW(6), NOW(6), 1, 1),
(2035607, 47, 'NM', NULL, NULL, '0', 'CN-NM', 'CN-NM', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'mongolia interior', 'Inner Mongolia', 'Inner Mongolia Autonomous Region', 'Inner Mongolia Autonomous Region', 'inner mongolia', 1, NOW(6), NOW(6), 1, 1),
(2036115, 47, 'LN', NULL, NULL, '0', 'CN-LN', 'CN-LN', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'liaoning', 'Liaoning', 'Liaoning Province', 'Liaoning', 'liaoning', 1, NOW(6), NOW(6), 1, 1),
(2036500, 47, 'JL', NULL, NULL, '0', 'CN-JL', 'CN-JL', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'jilin', 'Jilin', 'Jilin Province', 'Jilin', 'jilin', 1, NOW(6), NOW(6), 1, 1),
(2036965, 47, 'HL', NULL, NULL, '0', 'CN-HL', 'CN-HL', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'heilongjiang', 'Heilongjiang', 'Heilongjiang Province', 'Heilongjiang', 'heilongjiang', 1, NOW(6), NOW(6), 1, 1),
(2038349, 47, 'BJ', NULL, NULL, '0', 'CN-BJ', 'CN-BJ', '+86', (SELECT id FROM t075t_division_types WHERE code = 'provincia_cn' AND id_country = 47), 'pekin', 'Beijing', 'Beijing Municipality', 'Beijing Shi', 'beijing', 1, NOW(6), NOW(6), 1, 1);