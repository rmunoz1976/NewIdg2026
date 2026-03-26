-- Insertar tipo de división geográfica ADM1 para HUNGARY: Condado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'condado_hu', 100, 8, 'Condado', 'County', 
    'Megye', 'Megye', 'megye', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de HUNGARY (Condados)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (715593, 100, 'HU-SZ', NULL, NULL, 'HU323', 'HU-SZ', 'HU-SZ', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Szabolcs-Szatmár-Bereg', 'Szabolcs-Szatmar-Bereg', 'Szabolcs-Szatmár-Bereg', 'Szabolcs-Szatmár-Bereg', 'Szabolcs-Szatmár-Bereg', 1, NOW(6), NOW(6), 1, 1),
    (719637, 100, 'HU-JN', NULL, NULL, 'HU322', 'HU-JN', 'HU-JN', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Jász-Nagykun-Szolnok', 'Jasz-Nagykun-Szolnok', 'Jász-Nagykun-Szolnok', 'Jász-Nagykun-Szolnok', 'Jász-Nagykun-Szolnok', 1, NOW(6), NOW(6), 1, 1),
    (720002, 100, 'HU-HE', NULL, NULL, 'HU312', 'HU-HE', 'HU-HE', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Heves', 'Heves', 'Heves megye', 'Heves megye', 'Heves megye', 1, NOW(6), NOW(6), 1, 1),
    (720293, 100, 'HU-HB', NULL, NULL, 'HU321', 'HU-HB', 'HU-HB', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Hajdú-Bihar', 'Hajdu-Bihar', 'Hajdú-Bihar', 'Hajdú-Bihar', 'Hajdú-Bihar', 1, NOW(6), NOW(6), 1, 1),
    (721589, 100, 'HU-CS', NULL, NULL, 'HU333', 'HU-CS', 'HU-CS', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Csongrád', 'Csongrad', 'Csongrád megye', 'Csongrád megye', 'Csongrád megye', 1, NOW(6), NOW(6), 1, 1),
    (722064, 100, 'HU-BZ', NULL, NULL, 'HU311', 'HU-BZ', 'HU-BZ', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Borsod-Abaúj-Zemplén', 'Borsod-Abauj Zemplen', 'Borsod-Abaúj-Zemplén', 'Borsod-Abaúj-Zemplén', 'Borsod-Abaúj-Zemplén', 1, NOW(6), NOW(6), 1, 1),
    (722433, 100, 'HU-BE', NULL, NULL, 'HU332', 'HU-BE', 'HU-BE', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Békés', 'Bekes', 'Békés megye', 'Békés megye', 'Békés megye', 1, NOW(6), NOW(6), 1, 1),
    (3042613, 100, 'HU-ZA', NULL, NULL, 'HU223', 'HU-ZA', 'HU-ZA', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Zala', 'Zala', 'Zala megye', 'Zala megye', 'Zala megye', 1, NOW(6), NOW(6), 1, 1),
    (3042925, 100, 'HU-VE', NULL, NULL, 'HU213', 'HU-VE', 'HU-VE', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Veszprém', 'Veszprem', 'Veszprém megye', 'Veszprém megye', 'Veszprém megye', 1, NOW(6), NOW(6), 1, 1),
    (3043047, 100, 'HU-VA', NULL, NULL, 'HU222', 'HU-VA', 'HU-VA', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Vas', 'Vas', 'Vas megye', 'Vas megye', 'Vas megye', 1, NOW(6), NOW(6), 1, 1),
    (3043845, 100, 'HU-TO', NULL, NULL, 'HU233', 'HU-TO', 'HU-TO', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Tolna', 'Tolna', 'Tolna megye', 'Tolna megye', 'Tolna megye', 1, NOW(6), NOW(6), 1, 1),
    (3045226, 100, 'HU-SO', NULL, NULL, 'HU232', 'HU-SO', 'HU-SO', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Somogy', 'Somogy', 'Somogy megye', 'Somogy megye', 'Somogy megye', 1, NOW(6), NOW(6), 1, 1),
    (3046431, 100, 'HU-PE', NULL, NULL, 'HU120', 'HU-PE', 'HU-PE', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Pest', 'Pest', 'Pest megye', 'Pest megye', 'Pest megye', 1, NOW(6), NOW(6), 1, 1),
    (3047348, 100, 'HU-NO', NULL, NULL, 'HU313', 'HU-NO', 'HU-NO', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Nógrád', 'Nograd', 'Nógrád megye', 'Nógrád megye', 'Nógrád megye', 1, NOW(6), NOW(6), 1, 1),
    (3049518, 100, 'HU-KE', NULL, NULL, 'HU212', 'HU-KE', 'HU-KE', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Komárom-Esztergom', 'Komarom-Esztergom', 'Komárom-Esztergom', 'Komárom-Esztergom', 'Komárom-Esztergom', 1, NOW(6), NOW(6), 1, 1),
    (3051977, 100, 'HU-GS', NULL, NULL, 'HU221', 'HU-GS', 'HU-GS', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Győr-Moson-Sopron', 'Gyor-Moson-Sopron', 'Győr-Moson-Sopron megye', 'Győr-Moson-Sopron megye', 'Győr-Moson-Sopron megye', 1, NOW(6), NOW(6), 1, 1),
    (3053028, 100, 'HU-FE', NULL, NULL, 'HU211', 'HU-FE', 'HU-FE', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Fejér', 'Fejer', 'Fejér megye', 'Fejér megye', 'Fejér megye', 1, NOW(6), NOW(6), 1, 1),
    (3054638, 100, 'HU-BU', NULL, NULL, 'HU110', 'HU-BU', 'HU-BU', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Budapest', 'Budapest', 'Budapest', 'Budapest', 'Budapest', 1, NOW(6), NOW(6), 1, 1),
    (3055399, 100, 'HU-BA', NULL, NULL, 'HU231', 'HU-BA', 'HU-BA', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Baranya', 'Baranya', 'Baranya megye', 'Baranya megye', 'Baranya megye', 1, NOW(6), NOW(6), 1, 1),
    (3055744, 100, 'HU-BK', NULL, NULL, 'HU331', 'HU-BK', 'HU-BK', '+36', (SELECT id FROM t075t_division_types WHERE code = 'condado_hu' AND id_country = 100), 'Bács-Kiskun', 'Bacs-Kiskun', 'Bács-Kiskun', 'Bács-Kiskun', 'Bács-Kiskun', 1, NOW(6), NOW(6), 1, 1);