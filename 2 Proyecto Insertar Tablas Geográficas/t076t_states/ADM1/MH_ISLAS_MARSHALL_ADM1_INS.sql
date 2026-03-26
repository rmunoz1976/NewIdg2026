-- Insertar tipo de división geográfica ADM1 para Islas Marshall: Atolón / Isla
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'atolon_mh', 137, 8, 'atolón', 'atoll', 
    'Atoll', 'Aelōn̄in', 'Aelon̄in', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Islas Marshall (Atolones e Islas)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(7303491, 137, 'MH-ALG', NULL, NULL, '0', 'MH-ALG', 'MH-ALG', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'ailinginae', 'Ailinginae Atoll', 'Ailinginae Atoll', 'Ailinginae Atoll', 'Ailinginae', 1, NOW(6), NOW(6), 1, 1),
(7303492, 137, 'MH-ALL', NULL, NULL, '0', 'MH-ALL', 'MH-ALL', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'ailinglaplap', 'Ailinglaplap Atoll', 'Ailinglaplap Atoll', 'Ailinglaplap Atoll', 'Ailinglaplap', 1, NOW(6), NOW(6), 1, 1),
(7303493, 137, 'MH-ALK', NULL, NULL, '0', 'MH-ALK', 'MH-ALK', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'ailuk', 'Ailuk Atoll', 'Ailuk Atoll', 'Ailuk Atoll', 'Ailuk', 1, NOW(6), NOW(6), 1, 1),
(7303494, 137, 'MH-ARN', NULL, NULL, '0', 'MH-ARN', 'MH-ARN', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'arno', 'Arno Atoll', 'Arno Atoll', 'Arno Atoll', 'Arno', 1, NOW(6), NOW(6), 1, 1),
(7303495, 137, 'MH-AUR', NULL, NULL, '0', 'MH-AUR', 'MH-AUR', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'aur', 'Aur Atoll', 'Aur Atoll', 'Aur Atoll', 'Aur', 1, NOW(6), NOW(6), 1, 1),
(7303496, 137, 'MH-BIK', NULL, NULL, '0', 'MH-BIK', 'MH-BIK', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'bikar', 'Bikar Atoll', 'Bikar Atoll', 'Bikar Atoll', 'Bikar', 1, NOW(6), NOW(6), 1, 1),
(7303497, 137, 'MH-BKN', NULL, NULL, '0', 'MH-BKN', 'MH-BKN', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'bikini', 'Bikini Atoll', 'Bikini Atoll', 'Bikini Atoll', 'Bikini', 1, NOW(6), NOW(6), 1, 1),
(7303498, 137, 'MH-EBO', NULL, NULL, '0', 'MH-EBO', 'MH-EBO', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'ebon', 'Ebon Atoll', 'Ebon Atoll', 'Ebon Atoll', 'Ebon', 1, NOW(6), NOW(6), 1, 1),
(7303499, 137, 'MH-ENI', NULL, NULL, '0', 'MH-ENI', 'MH-ENI', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'enewetak', 'Enewetak Atoll', 'Enewetak Atoll', 'Enewetak Atoll', 'Enewetak', 1, NOW(6), NOW(6), 1, 1),
(7303500, 137, 'MH-ERI', NULL, NULL, '0', 'MH-ERI', 'MH-ERI', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'erikub', 'Erikub Atoll', 'Erikub Atoll', 'Erikub Atoll', 'Erikub', 1, NOW(6), NOW(6), 1, 1),
(7303501, 137, 'MH-JAL', NULL, NULL, '0', 'MH-JAL', 'MH-JAL', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'jaluit', 'Jaluit Atoll', 'Jaluit Atoll', 'Jaluit Atoll', 'Jaluit', 1, NOW(6), NOW(6), 1, 1),
(7303502, 137, 'MH-KWA', NULL, NULL, '0', 'MH-KWA', 'MH-KWA', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'kwajalein', 'Kwajalein Atoll', 'Kwajalein Atoll', 'Kwajalein Atoll', 'Kwajalein', 1, NOW(6), NOW(6), 1, 1),
(7303503, 137, 'MH-LAE', NULL, NULL, '0', 'MH-LAE', 'MH-LAE', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'lae', 'Lae Atoll', 'Lae Atoll', 'Lae Atoll', 'Lae', 1, NOW(6), NOW(6), 1, 1),
(7303504, 137, 'MH-LIK', NULL, NULL, '0', 'MH-LIK', 'MH-LIK', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'likiep', 'Likiep Atoll', 'Likiep Atoll', 'Likiep Atoll', 'Likiep', 1, NOW(6), NOW(6), 1, 1),
(7303505, 137, 'MH-MAJ', NULL, NULL, '0', 'MH-MAJ', 'MH-MAJ', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'majuro', 'Majuro Atoll', 'Majuro Atoll', 'Majuro Atoll', 'Majuro', 1, NOW(6), NOW(6), 1, 1),
(7303506, 137, 'MH-MAL', NULL, NULL, '0', 'MH-MAL', 'MH-MAL', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'maloelap', 'Maloelap Atoll', 'Maloelap Atoll', 'Maloelap Atoll', 'Maloelap', 1, NOW(6), NOW(6), 1, 1),
(7303507, 137, 'MH-MIL', NULL, NULL, '0', 'MH-MIL', 'MH-MIL', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'mili', 'Mili Atoll', 'Mili Atoll', 'Mili Atoll', 'Mili', 1, NOW(6), NOW(6), 1, 1),
(7303508, 137, 'MH-NMK', NULL, NULL, '0', 'MH-NMK', 'MH-NMK', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'namdrik', 'Namdrik Atoll', 'Namdrik Atoll', 'Namdrik Atoll', 'Namdrik', 1, NOW(6), NOW(6), 1, 1),
(7303509, 137, 'MH-NMU', NULL, NULL, '0', 'MH-NMU', 'MH-NMU', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'namu', 'Namu Atoll', 'Namu Atoll', 'Namu Atoll', 'Namu', 1, NOW(6), NOW(6), 1, 1),
(7303510, 137, 'MH-RON', NULL, NULL, '0', 'MH-RON', 'MH-RON', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'rongelap', 'Rongelap Atoll', 'Rongelap Atoll', 'Rongelap Atoll', 'Rongelap', 1, NOW(6), NOW(6), 1, 1),
(7303511, 137, 'MH-RNG', NULL, NULL, '0', 'MH-RNG', 'MH-RNG', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'rongrik', 'Rongrik Atoll', 'Rongrik Atoll', 'Rongrik Atoll', 'Rongrik', 1, NOW(6), NOW(6), 1, 1),
(7303512, 137, 'MH-TAK', NULL, NULL, '0', 'MH-TAK', 'MH-TAK', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'taka', 'Taka Atoll', 'Taka Atoll', 'Taka Atoll', 'Taka', 1, NOW(6), NOW(6), 1, 1),
(7303513, 137, 'MH-BOK', NULL, NULL, '0', 'MH-BOK', 'MH-BOK', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'bokak', 'Bokak Atoll', 'Bokak Atoll', 'Bokak Atoll', 'Bokak', 1, NOW(6), NOW(6), 1, 1),
(7303514, 137, 'MH-UJA', NULL, NULL, '0', 'MH-UJA', 'MH-UJA', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'ujae', 'Ujae Atoll', 'Ujae Atoll', 'Ujae Atoll', 'Ujae', 1, NOW(6), NOW(6), 1, 1),
(7303515, 137, 'MH-UJL', NULL, NULL, '0', 'MH-UJL', 'MH-UJL', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'ujelang', 'Ujelang Atoll', 'Ujelang Atoll', 'Ujelang Atoll', 'Ujelang', 1, NOW(6), NOW(6), 1, 1),
(7303516, 137, 'MH-UTI', NULL, NULL, '0', 'MH-UTI', 'MH-UTI', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'utrik', 'Utrik Atoll', 'Utrik Atoll', 'Utrik Atoll', 'Utrik', 1, NOW(6), NOW(6), 1, 1),
(7303517, 137, 'MH-WTH', NULL, NULL, '0', 'MH-WTH', 'MH-WTH', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'wotho', 'Wotho Atoll', 'Wotho Atoll', 'Wotho Atoll', 'Wotho', 1, NOW(6), NOW(6), 1, 1),
(7303518, 137, 'MH-WTJ', NULL, NULL, '0', 'MH-WTJ', 'MH-WTJ', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'wotje', 'Wotje Atoll', 'Wotje Atoll', 'Wotje Atoll', 'Wotje', 1, NOW(6), NOW(6), 1, 1),
(7303519, 137, 'MH-JAB', NULL, NULL, '0', 'MH-JAB', 'MH-JAB', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'jabat', 'Jabat Island', 'Jabat Island', 'Jabat Island', 'Jabat', 1, NOW(6), NOW(6), 1, 1),
(7303520, 137, 'MH-JEM', NULL, NULL, '0', 'MH-JEM', 'MH-JEM', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'jemo', 'Jemo Island', 'Jemo Island', 'Jemo Island', 'Jemo', 1, NOW(6), NOW(6), 1, 1),
(7303521, 137, 'MH-KIL', NULL, NULL, '0', 'MH-KIL', 'MH-KIL', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'kili', 'Kili Island', 'Kili Island', 'Kili Island', 'Kili', 1, NOW(6), NOW(6), 1, 1),
(7303522, 137, 'MH-LIB', NULL, NULL, '0', 'MH-LIB', 'MH-LIB', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'lib', 'Lib Island', 'Lib Island', 'Lib Island', 'Lib', 1, NOW(6), NOW(6), 1, 1),
(7303523, 137, 'MH-MEJ', NULL, NULL, '0', 'MH-MEJ', 'MH-MEJ', '+692', (SELECT id FROM t075t_division_types WHERE code = 'atolon_mh' AND id_country = 137), 'mejit', 'Mejit Island', 'Mejit Island', 'Mejit Island', 'Mejit', 1, NOW(6), NOW(6), 1, 1);