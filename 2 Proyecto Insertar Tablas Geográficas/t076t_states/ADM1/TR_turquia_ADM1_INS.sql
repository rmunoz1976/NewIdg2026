-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para TURQUÍA (TR)
-- Archivo: TR_turquia_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para TURQUÍA: Provincia
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_tr', 229, 8, 'Provincia', 'Province',
    'İl', 'İl', 'Il', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de TURQUÍA (Provincias)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(296560, 229, 'yozgat', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Yozgat', 'Yozgat', 'Yozgat', 'Yozgat', 'Yozgat', 1, NOW(6), NOW(6), 1, 1),
(298113, 229, 'van', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Van', 'Van', 'Van', 'Van', 'Van', 1, NOW(6), NOW(6), 1, 1),
(298298, 229, 'usak', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Uşak', 'Uşak', 'Uşak', 'Uşak', 'Uşak', 1, NOW(6), NOW(6), 1, 1),
(298332, 229, 'sanliurfa', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Şanlıurfa', 'Şanlıurfa', 'Şanlıurfa', 'Şanlıurfa', 'Şanlıurfa', 1, NOW(6), NOW(6), 1, 1),
(298845, 229, 'tunceli', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Tunceli', 'Tunceli', 'Tunceli', 'Tunceli', 'Tunceli', 1, NOW(6), NOW(6), 1, 1),
(300617, 229, 'sivas', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Sivas', 'Sivas', 'Sivas', 'Sivas', 'Sivas', 1, NOW(6), NOW(6), 1, 1),
(300821, 229, 'siirt', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Siirt', 'Siirt', 'Siirt', 'Siirt', 'Siirt', 1, NOW(6), NOW(6), 1, 1),
(303826, 229, 'nigde', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Niğde', 'Niğde', 'Niğde', 'Niğde', 'Niğde', 1, NOW(6), NOW(6), 1, 1),
(303830, 229, 'nevsehir', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Nevşehir', 'Nevşehir', 'Nevşehir', 'Nevşehir', 'Nevşehir', 1, NOW(6), NOW(6), 1, 1),
(304041, 229, 'mus', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Muş', 'Muş', 'Muş', 'Muş', 'Muş', 1, NOW(6), NOW(6), 1, 1),
(304183, 229, 'mugla', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Muğla', 'Muğla', 'Muğla', 'Muğla', 'Muğla', 1, NOW(6), NOW(6), 1, 1),
(304794, 229, 'mardin', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Mardin', 'Mardin', 'Mardin', 'Mardin', 'Mardin', 1, NOW(6), NOW(6), 1, 1),
(304825, 229, 'manisa', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Manisa', 'Manisa', 'Manisa', 'Manisa', 'Manisa', 1, NOW(6), NOW(6), 1, 1),
(304919, 229, 'malatya', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Malatya', 'Malatya', 'Malatya', 'Malatya', 'Malatya', 1, NOW(6), NOW(6), 1, 1),
(305267, 229, 'kutahya', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Kütahya', 'Kütahya', 'Kütahya', 'Kütahya', 'Kütahya', 1, NOW(6), NOW(6), 1, 1),
(306569, 229, 'konya', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Konya', 'Konya', 'Konya', 'Konya', 'Konya', 1, NOW(6), NOW(6), 1, 1),
(307513, 229, 'kirsehir', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Kırşehir', 'Kırşehir', 'Kırşehir', 'Kırşehir', 'Kırşehir', 1, NOW(6), NOW(6), 1, 1),
(308463, 229, 'kayseri', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Kayseri', 'Kayseri', 'Kayseri', 'Kayseri', 'Kayseri', 1, NOW(6), NOW(6), 1, 1),
(310858, 229, 'kahramanmaras', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Kahramanmaraş', 'Kahramanmaraş', 'Kahramanmaraş', 'Kahramanmaraş', 'Kahramanmaraş', 1, NOW(6), NOW(6), 1, 1),
(311044, 229, 'izmir', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'İzmir', 'İzmir', 'İzmir', 'İzmir', 'İzmir', 1, NOW(6), NOW(6), 1, 1),
(311071, 229, 'isparta', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Isparta', 'Isparta', 'Isparta', 'Isparta', 'Isparta', 1, NOW(6), NOW(6), 1, 1),
(311728, 229, 'mersin', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Mersin', 'Mersin', 'Mersin', 'Mersin', 'Mersin', 1, NOW(6), NOW(6), 1, 1),
(312394, 229, 'hatay', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Hatay', 'Hatay', 'Hatay', 'Hatay', 'Hatay', 1, NOW(6), NOW(6), 1, 1),
(312888, 229, 'hakkari', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Hakkâri', 'Hakkâri', 'Hakkâri', 'Hakkâri', 'Hakkâri', 1, NOW(6), NOW(6), 1, 1),
(314829, 229, 'gaziantep', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Gaziantep', 'Gaziantep', 'Gaziantep', 'Gaziantep', 'Gaziantep', 1, NOW(6), NOW(6), 1, 1),
(315201, 229, 'eskisehir', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Eskişehir', 'Eskişehir', 'Eskişehir', 'Eskişehir', 'Eskişehir', 1, NOW(6), NOW(6), 1, 1),
(315367, 229, 'erzurum', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Erzurum', 'Erzurum', 'Erzurum', 'Erzurum', 'Erzurum', 1, NOW(6), NOW(6), 1, 1),
(315372, 229, 'erzincan', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Erzincan', 'Erzincan', 'Erzincan', 'Erzincan', 'Erzincan', 1, NOW(6), NOW(6), 1, 1),
(315807, 229, 'elazig', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Elâzığ', 'Elâzığ', 'Elâzığ', 'Elâzığ', 'Elâzığ', 1, NOW(6), NOW(6), 1, 1),
(316540, 229, 'diyarbakir', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Diyarbakır', 'Diyarbakır', 'Diyarbakır', 'Diyarbakır', 'Diyarbakır', 1, NOW(6), NOW(6), 1, 1),
(317106, 229, 'denizli', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Denizli', 'Denizli', 'Denizli', 'Denizli', 'Denizli', 1, NOW(6), NOW(6), 1, 1),
(320390, 229, 'burdur', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Burdur', 'Burdur', 'Burdur', 'Burdur', 'Burdur', 1, NOW(6), NOW(6), 1, 1),
(321022, 229, 'bitlis', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Bitlis', 'Bitlis', 'Bitlis', 'Bitlis', 'Bitlis', 1, NOW(6), NOW(6), 1, 1),
(321079, 229, 'bingol', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Bingöl', 'Bingöl', 'Bingöl', 'Bingöl', 'Bingöl', 1, NOW(6), NOW(6), 1, 1),
(321122, 229, 'bilecik', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Bilecik', 'Bilecik', 'Bilecik', 'Bilecik', 'Bilecik', 1, NOW(6), NOW(6), 1, 1),
(322164, 229, 'balikesir', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Balıkesir', 'Balıkesir', 'Balıkesir', 'Balıkesir', 'Balıkesir', 1, NOW(6), NOW(6), 1, 1),
(322819, 229, 'aydin', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Aydın', 'Aydın', 'Aydın', 'Aydın', 'Aydın', 1, NOW(6), NOW(6), 1, 1),
(323776, 229, 'antalya', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Antalya', 'Antalya', 'Antalya', 'Antalya', 'Antalya', 1, NOW(6), NOW(6), 1, 1),
(323784, 229, 'ankara', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Ankara', 'Ankara', 'Ankara', 'Ankara', 'Ankara', 1, NOW(6), NOW(6), 1, 1),
(325163, 229, 'agri', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Ağrı', 'Ağrı', 'Ağrı', 'Ağrı', 'Ağrı', 1, NOW(6), NOW(6), 1, 1),
(325302, 229, 'afyonkarahisar', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Afyonkarahisar', 'Afyonkarahisar', 'Afyonkarahisar', 'Afyonkarahisar', 'Afyonkarahisar', 1, NOW(6), NOW(6), 1, 1),
(325329, 229, 'adiyaman', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Adıyaman', 'Adıyaman', 'Adıyaman', 'Adıyaman', 'Adıyaman', 1, NOW(6), NOW(6), 1, 1),
(325361, 229, 'adana', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Adana', 'Adana', 'Adana', 'Adana', 'Adana', 1, NOW(6), NOW(6), 1, 1),
(443183, 229, 'osmaniye', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Osmaniye', 'Osmaniye', 'Osmaniye', 'Osmaniye', 'Osmaniye', 1, NOW(6), NOW(6), 1, 1),
(443184, 229, 'igdir', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Iğdır', 'Iğdır', 'Iğdır', 'Iğdır', 'Iğdır', 1, NOW(6), NOW(6), 1, 1),
(443185, 229, 'aksaray', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Aksaray', 'Aksaray', 'Aksaray', 'Aksaray', 'Aksaray', 1, NOW(6), NOW(6), 1, 1),
(443186, 229, 'batman', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Batman', 'Batman', 'Batman', 'Batman', 'Batman', 1, NOW(6), NOW(6), 1, 1),
(443187, 229, 'karaman', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Karaman', 'Karaman', 'Karaman', 'Karaman', 'Karaman', 1, NOW(6), NOW(6), 1, 1),
(443188, 229, 'kirikkale', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Kırıkkale', 'Kırıkkale', 'Kırıkkale', 'Kırıkkale', 'Kırıkkale', 1, NOW(6), NOW(6), 1, 1),
(443189, 229, 'sirnak', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Şırnak', 'Şırnak', 'Şırnak', 'Şırnak', 'Şırnak', 1, NOW(6), NOW(6), 1, 1),
(443213, 229, 'kilis', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Kilis', 'Kilis', 'Kilis', 'Kilis', 'Kilis', 1, NOW(6), NOW(6), 1, 1),
(737021, 229, 'zonguldak', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Zonguldak', 'Zonguldak', 'Zonguldak', 'Zonguldak', 'Zonguldak', 1, NOW(6), NOW(6), 1, 1),
(738647, 229, 'trabzon', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Trabzon', 'Trabzon', 'Trabzon', 'Trabzon', 'Trabzon', 1, NOW(6), NOW(6), 1, 1),
(738742, 229, 'tokat', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Tokat', 'Tokat', 'Tokat', 'Tokat', 'Tokat', 1, NOW(6), NOW(6), 1, 1),
(738926, 229, 'tekirdag', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Tekirdağ', 'Tekirdağ', 'Tekirdağ', 'Tekirdağ', 'Tekirdağ', 1, NOW(6), NOW(6), 1, 1),
(739598, 229, 'sinop', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Sinop', 'Sinop', 'Sinop', 'Sinop', 'Sinop', 1, NOW(6), NOW(6), 1, 1),
(740263, 229, 'samsun', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Samsun', 'Samsun', 'Samsun', 'Samsun', 'Samsun', 1, NOW(6), NOW(6), 1, 1),
(740352, 229, 'sakarya', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Sakarya', 'Sakarya', 'Sakarya', 'Sakarya', 'Sakarya', 1, NOW(6), NOW(6), 1, 1),
(740481, 229, 'rize', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Rize', 'Rize', 'Rize', 'Rize', 'Rize', 1, NOW(6), NOW(6), 1, 1),
(741098, 229, 'ordu', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Ordu', 'Ordu', 'Ordu', 'Ordu', 'Ordu', 1, NOW(6), NOW(6), 1, 1),
(742865, 229, 'kocaeli', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Kocaeli', 'Kocaeli', 'Kocaeli', 'Kocaeli', 'Kocaeli', 1, NOW(6), NOW(6), 1, 1),
(743165, 229, 'kirklareli', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Kırklareli', 'Kırklareli', 'Kırklareli', 'Kırklareli', 'Kırklareli', 1, NOW(6), NOW(6), 1, 1),
(743881, 229, 'kastamonu', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Kastamonu', 'Kastamonu', 'Kastamonu', 'Kastamonu', 'Kastamonu', 1, NOW(6), NOW(6), 1, 1),
(743942, 229, 'kars', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Kars', 'Kars', 'Kars', 'Kars', 'Kars', 1, NOW(6), NOW(6), 1, 1),
(745042, 229, 'istanbul', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Estambul', 'İstanbul', 'İstanbul', 'İstanbul', 'İstanbul', 1, NOW(6), NOW(6), 1, 1),
(746423, 229, 'gumushane', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Gümüşhane', 'Gümüşhane', 'Gümüşhane', 'Gümüşhane', 'Gümüşhane', 1, NOW(6), NOW(6), 1, 1),
(746878, 229, 'giresun', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Giresun', 'Giresun', 'Giresun', 'Giresun', 'Giresun', 1, NOW(6), NOW(6), 1, 1),
(747711, 229, 'edirne', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Edirne', 'Edirne', 'Edirne', 'Edirne', 'Edirne', 1, NOW(6), NOW(6), 1, 1),
(748877, 229, 'corum', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Çorum', 'Çorum', 'Çorum', 'Çorum', 'Çorum', 1, NOW(6), NOW(6), 1, 1),
(749747, 229, 'cankiri', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Çankırı', 'Çankırı', 'Çankırı', 'Çankırı', 'Çankırı', 1, NOW(6), NOW(6), 1, 1),
(749778, 229, 'canakkale', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Çanakkale', 'Çanakkale', 'Çanakkale', 'Çanakkale', 'Çanakkale', 1, NOW(6), NOW(6), 1, 1),
(750268, 229, 'bursa', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Bursa', 'Bursa', 'Bursa', 'Bursa', 'Bursa', 1, NOW(6), NOW(6), 1, 1),
(750510, 229, 'bolu', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Bolu', 'Bolu', 'Bolu', 'Bolu', 'Bolu', 1, NOW(6), NOW(6), 1, 1),
(751816, 229, 'artvin', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Artvin', 'Artvin', 'Artvin', 'Artvin', 'Artvin', 1, NOW(6), NOW(6), 1, 1),
(752014, 229, 'amasya', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Amasya', 'Amasya', 'Amasya', 'Amasya', 'Amasya', 1, NOW(6), NOW(6), 1, 1),
(862467, 229, 'bartin', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Bartın', 'Bartın', 'Bartın', 'Bartın', 'Bartın', 1, NOW(6), NOW(6), 1, 1),
(862468, 229, 'karabuk', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Karabük', 'Karabük', 'Karabük', 'Karabük', 'Karabük', 1, NOW(6), NOW(6), 1, 1),
(862469, 229, 'yalova', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Yalova', 'Yalova', 'Yalova', 'Yalova', 'Yalova', 1, NOW(6), NOW(6), 1, 1),
(862470, 229, 'ardahan', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Ardahan', 'Ardahan', 'Ardahan', 'Ardahan', 'Ardahan', 1, NOW(6), NOW(6), 1, 1),
(862471, 229, 'bayburt', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Bayburt', 'Bayburt', 'Bayburt', 'Bayburt', 'Bayburt', 1, NOW(6), NOW(6), 1, 1),
(865521, 229, 'duzce', NULL, NULL, '000', 'TR-000', 'TR-000', '+90', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tr' AND id_country = 229), 'Düzce', 'Düzce', 'Düzce', 'Düzce', 'Düzce', 1, NOW(6), NOW(6), 1, 1);