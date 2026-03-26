-- Insertar tipo de división geográfica ADM1 para JAPÓN: Prefectura
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'prefectura_jp', 107, 8, 'Prefectura', 'Prefecture', 
    '都道府県', '都道府県', 'todofuken', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de JAPÓN (Prefecturas)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (1848649, 112, 'JP-19', NULL, NULL, '46', 'JP-19', 'JP-19', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Yamanashi', 'Yamanashi', 'Yamanashi', 'Yamanashi', 'Yamanashi', 1, NOW(6), NOW(6), 1, 1),
    (1848681, 112, 'JP-35', NULL, NULL, '45', 'JP-35', 'JP-35', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Yamaguchi', 'Yamaguchi', 'Yamaguchi', 'Yamaguchi', 'Yamaguchi', 1, NOW(6), NOW(6), 1, 1),
    (1848938, 112, 'JP-30', NULL, NULL, '43', 'JP-30', 'JP-30', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Wakayama', 'Wakayama', 'Wakayama', 'Wakayama', 'Wakayama', 1, NOW(6), NOW(6), 1, 1),
    (1849872, 112, 'JP-16', NULL, NULL, '42', 'JP-16', 'JP-16', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Toyama', 'Toyama', 'Toyama', 'Toyama-ken', 'Toyama-ken', 1, NOW(6), NOW(6), 1, 1),
    (1849890, 112, 'JP-31', NULL, NULL, '41', 'JP-31', 'JP-31', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Tottori', 'Tottori', 'Tottori', 'Tottori', 'Tottori', 1, NOW(6), NOW(6), 1, 1),
    (1850144, 112, 'JP-13', NULL, NULL, '40', 'JP-13', 'JP-13', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Tokio', 'Tokyo', 'Tokyo', 'Tokyo Prefecture', 'Tokyo Prefecture', 1, NOW(6), NOW(6), 1, 1),
    (1850157, 112, 'JP-36', NULL, NULL, '39', 'JP-36', 'JP-36', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Tokushima', 'Tokushima', 'Tokushima', 'Tokushima-ken', 'Tokushima-ken', 1, NOW(6), NOW(6), 1, 1),
    (1850310, 112, 'JP-09', NULL, NULL, '38', 'JP-09', 'JP-09', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Tochigi', 'Tochigi', 'Tochigi', 'Tochigi', 'Tochigi', 1, NOW(6), NOW(6), 1, 1),
    (1851715, 112, 'JP-22', NULL, NULL, '37', 'JP-22', 'JP-22', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Shizuoka', 'Shizuoka', 'Shizuoka', 'Shizuoka', 'Shizuoka', 1, NOW(6), NOW(6), 1, 1),
    (1852442, 112, 'JP-32', NULL, NULL, '36', 'JP-32', 'JP-32', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Shimane', 'Shimane', 'Shimane', 'Shimane-ken', 'Shimane-ken', 1, NOW(6), NOW(6), 1, 1),
    (1852553, 112, 'JP-25', NULL, NULL, '35', 'JP-25', 'JP-25', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Shiga', 'Shiga', 'Shiga', 'Shiga', 'Shiga', 1, NOW(6), NOW(6), 1, 1),
    (1853226, 112, 'JP-11', NULL, NULL, '34', 'JP-11', 'JP-11', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Saitama', 'Saitama', 'Saitama', 'Saitama-ken', 'Saitama-ken', 1, NOW(6), NOW(6), 1, 1),
    (1853299, 112, 'JP-41', NULL, NULL, '33', 'JP-41', 'JP-41', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Saga', 'Saga', 'Saga', 'Saga-ken', 'Saga-ken', 1, NOW(6), NOW(6), 1, 1),
    (1853904, 112, 'JP-27', NULL, NULL, '32', 'JP-27', 'JP-27', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Osaka', 'Osaka', 'Osaka', 'Ōsaka-fu', 'Osaka-fu', 1, NOW(6), NOW(6), 1, 1),
    (1854345, 112, 'JP-47', NULL, NULL, '47', 'JP-47', 'JP-47', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Okinawa', 'Okinawa', 'Okinawa', 'Okinawa', 'Okinawa', 1, NOW(6), NOW(6), 1, 1),
    (1854381, 112, 'JP-33', NULL, NULL, '31', 'JP-33', 'JP-33', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Okayama', 'Okayama', 'Okayama', 'Okayama-ken', 'Okayama-ken', 1, NOW(6), NOW(6), 1, 1),
    (1854484, 112, 'JP-44', NULL, NULL, '30', 'JP-44', 'JP-44', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Oita', 'Oita', 'Oita', 'Oita Prefecture', 'Oita Prefecture', 1, NOW(6), NOW(6), 1, 1),
    (1855429, 112, 'JP-15', NULL, NULL, '29', 'JP-15', 'JP-15', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Niigata', 'Niigata', 'Niigata', 'Niigata-ken', 'Niigata-ken', 1, NOW(6), NOW(6), 1, 1),
    (1855608, 112, 'JP-29', NULL, NULL, '28', 'JP-29', 'JP-29', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Nara', 'Nara', 'Nara', 'Nara-ken', 'Nara-ken', 1, NOW(6), NOW(6), 1, 1),
    (1856156, 112, 'JP-42', NULL, NULL, '27', 'JP-42', 'JP-42', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Nagasaki', 'Nagasaki', 'Nagasaki', 'Nagasaki Prefecture', 'Nagasaki Prefecture', 1, NOW(6), NOW(6), 1, 1),
    (1856210, 112, 'JP-20', NULL, NULL, '26', 'JP-20', 'JP-20', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Nagano', 'Nagano', 'Nagano', 'Nagano-ken', 'Nagano-ken', 1, NOW(6), NOW(6), 1, 1),
    (1856710, 112, 'JP-45', NULL, NULL, '25', 'JP-45', 'JP-45', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Miyazaki', 'Miyazaki', 'Miyazaki', 'Miyazaki', 'Miyazaki', 1, NOW(6), NOW(6), 1, 1),
    (1857352, 112, 'JP-24', NULL, NULL, '23', 'JP-24', 'JP-24', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Mie', 'Mie', 'Mie', 'Mie-ken', 'Mie-ken', 1, NOW(6), NOW(6), 1, 1),
    (1857907, 112, 'JP-26', NULL, NULL, '22', 'JP-26', 'JP-26', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Kioto', 'Kyoto', 'Kyoto', 'Kyoto Prefecture', 'Kyoto Prefecture', 1, NOW(6), NOW(6), 1, 1),
    (1858419, 112, 'JP-43', NULL, NULL, '21', 'JP-43', 'JP-43', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Kumamoto', 'Kumamoto', 'Kumamoto', 'Kumamoto', 'Kumamoto', 1, NOW(6), NOW(6), 1, 1),
    (1859133, 112, 'JP-39', NULL, NULL, '20', 'JP-39', 'JP-39', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Kochi', 'Kochi', 'Kochi', 'Kochi Prefecture', 'Kochi Prefecture', 1, NOW(6), NOW(6), 1, 1),
    (1860291, 112, 'JP-14', NULL, NULL, '19', 'JP-14', 'JP-14', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Kanagawa', 'Kanagawa', 'Kanagawa', 'Kanagawa', 'Kanagawa', 1, NOW(6), NOW(6), 1, 1),
    (1860825, 112, 'JP-46', NULL, NULL, '18', 'JP-46', 'JP-46', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Kagoshima', 'Kagoshima', 'Kagoshima', 'Kagoshima-ken', 'Kagoshima-ken', 1, NOW(6), NOW(6), 1, 1),
    (1860834, 112, 'JP-37', NULL, NULL, '17', 'JP-37', 'JP-37', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Kagawa', 'Kagawa', 'Kagawa', 'Kagawa-ken', 'Kagawa-ken', 1, NOW(6), NOW(6), 1, 1),
    (1861387, 112, 'JP-17', NULL, NULL, '15', 'JP-17', 'JP-17', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Ishikawa', 'Ishikawa', 'Ishikawa', 'Ishikawa-ken', 'Ishikawa-ken', 1, NOW(6), NOW(6), 1, 1),
    (1862047, 112, 'JP-28', NULL, NULL, '13', 'JP-28', 'JP-28', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Hyogo', 'Hyogo', 'Hyogo', 'Hyōgo', 'Hyogo', 1, NOW(6), NOW(6), 1, 1),
    (1862413, 112, 'JP-34', NULL, NULL, '11', 'JP-34', 'JP-34', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Hiroshima', 'Hiroshima', 'Hiroshima', 'Hiroshima-ken', 'Hiroshima-ken', 1, NOW(6), NOW(6), 1, 1),
    (1863501, 112, 'JP-10', NULL, NULL, '10', 'JP-10', 'JP-10', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Gunma', 'Gunma', 'Gunma', 'Gunma-ken', 'Gunma-ken', 1, NOW(6), NOW(6), 1, 1),
    (1863640, 112, 'JP-21', NULL, NULL, '09', 'JP-21', 'JP-21', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Gifu', 'Gifu', 'Gifu', 'Gifu', 'Gifu', 1, NOW(6), NOW(6), 1, 1),
    (1863958, 112, 'JP-40', NULL, NULL, '07', 'JP-40', 'JP-40', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Fukuoka', 'Fukuoka', 'Fukuoka', 'Fukuoka Prefecture', 'Fukuoka Prefecture', 1, NOW(6), NOW(6), 1, 1),
    (1863983, 112, 'JP-18', NULL, NULL, '06', 'JP-18', 'JP-18', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Fukui', 'Fukui', 'Fukui', 'Fukui', 'Fukui', 1, NOW(6), NOW(6), 1, 1),
    (1864226, 112, 'JP-38', NULL, NULL, '05', 'JP-38', 'JP-38', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Ehime', 'Ehime', 'Ehime', 'Ehime', 'Ehime', 1, NOW(6), NOW(6), 1, 1),
    (1865694, 112, 'JP-23', NULL, NULL, '01', 'JP-23', 'JP-23', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Aichi', 'Aichi', 'Aichi', 'Aichi-ken', 'Aichi-ken', 1, NOW(6), NOW(6), 1, 1),
    (2110554, 112, 'JP-06', NULL, NULL, '44', 'JP-06', 'JP-06', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Yamagata', 'Yamagata', 'Yamagata', 'Yamagata-ken', 'Yamagata-ken', 1, NOW(6), NOW(6), 1, 1),
    (2111888, 112, 'JP-04', NULL, NULL, '24', 'JP-04', 'JP-04', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Miyagi', 'Miyagi', 'Miyagi', 'Miyagi-ken', 'Miyagi-ken', 1, NOW(6), NOW(6), 1, 1),
    (2112518, 112, 'JP-03', NULL, NULL, '16', 'JP-03', 'JP-03', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Iwate', 'Iwate', 'Iwate', 'Iwate', 'Iwate', 1, NOW(6), NOW(6), 1, 1),
    (2112669, 112, 'JP-08', NULL, NULL, '14', 'JP-08', 'JP-08', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Ibaraki', 'Ibaraki', 'Ibaraki', 'Ibaraki', 'Ibaraki', 1, NOW(6), NOW(6), 1, 1),
    (2112922, 112, 'JP-07', NULL, NULL, '08', 'JP-07', 'JP-07', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Fukushima', 'Fukushima', 'Fukushima', 'Fukushima-ken', 'Fukushima-ken', 1, NOW(6), NOW(6), 1, 1),
    (2113014, 112, 'JP-12', NULL, NULL, '04', 'JP-12', 'JP-12', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Chiba', 'Chiba', 'Chiba', 'Chiba-ken', 'Chiba-ken', 1, NOW(6), NOW(6), 1, 1),
    (2113124, 112, 'JP-05', NULL, NULL, '02', 'JP-05', 'JP-05', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Akita', 'Akita', 'Akita', 'Akita', 'Akita', 1, NOW(6), NOW(6), 1, 1),
    (2130037, 112, 'JP-01', NULL, NULL, '12', 'JP-01', 'JP-01', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Hokkaido', 'Hokkaido', 'Hokkaido', 'Hokkaido', 'Hokkaido', 1, NOW(6), NOW(6), 1, 1),
    (2130656, 112, 'JP-02', NULL, NULL, '03', 'JP-02', 'JP-02', '+81', (SELECT id FROM t075t_division_types WHERE code = 'prefectura_jp' AND id_country = 107), 'Aomori', 'Aomori', 'Aomori', 'Aomori-ken', 'Aomori-ken', 1, NOW(6), NOW(6), 1, 1);