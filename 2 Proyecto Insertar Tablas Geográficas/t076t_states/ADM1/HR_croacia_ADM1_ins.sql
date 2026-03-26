-- =============================================
-- Script de inserción para CROACIA (HR)
-- Archivo: HR_croacia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para CROACIA: Condado
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'condado_hr', 54, 8, 'Condado', 'County',
    'County', 'Županija', 'zupanija', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de CROACIA (Condados y Ciudad Capital)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3337511, 54, '07', NULL, NULL, '0', 'HR-07', 'HR-07', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'bjelovar-bilogora', 'Bjelovar-Bilogora', 'Bjelovar-Bilogora County', 'Bjelovar-Bilogora County', 'bjelovar bilogora', 1, NOW(6), NOW(6), 1, 1),
(3337512, 54, '12', NULL, NULL, '0', 'HR-12', 'HR-12', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'brod-posavina', 'Brod-Posavina', 'Brod-Posavina County', 'Brod-Posavina County', 'brod posavina', 1, NOW(6), NOW(6), 1, 1),
(3337513, 54, '19', NULL, NULL, '0', 'HR-19', 'HR-19', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'dubrovnik-neretva', 'Dubrovnik-Neretva', 'Dubrovnik-Neretva County', 'Dubrovnik-Neretva County', 'dubrovnik neretva', 1, NOW(6), NOW(6), 1, 1),
(3337514, 54, '18', NULL, NULL, '0', 'HR-18', 'HR-18', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'istria', 'Istria', 'Istria County', 'Istria County', 'istria', 1, NOW(6), NOW(6), 1, 1),
(3337515, 54, '04', NULL, NULL, '0', 'HR-04', 'HR-04', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'karlovac', 'Karlovac', 'Karlovac County', 'Karlovac County', 'karlovac', 1, NOW(6), NOW(6), 1, 1),
(3337518, 54, '06', NULL, NULL, '0', 'HR-06', 'HR-06', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'koprivnica-križevci', 'Koprivnica-Križevci', 'Koprivnica-Križevci County', 'Koprivnica-Križevci County', 'koprivnica krizevci', 1, NOW(6), NOW(6), 1, 1),
(3337519, 54, '02', NULL, NULL, '0', 'HR-02', 'HR-02', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'krapina-zagorje', 'Krapina-Zagorje', 'Krapina-Zagorje County', 'Krapina-Zagorje County', 'krapina zagorje', 1, NOW(6), NOW(6), 1, 1),
(3337520, 54, '09', NULL, NULL, '0', 'HR-09', 'HR-09', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'lika-senj', 'Lika-Senj', 'Lika-Senj County', 'Lika-Senj County', 'lika senj', 1, NOW(6), NOW(6), 1, 1),
(3337521, 54, '20', NULL, NULL, '0', 'HR-20', 'HR-20', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'međimurje', 'Međimurje', 'Međimurje County', 'Međimurje County', 'medimurje', 1, NOW(6), NOW(6), 1, 1),
(3337522, 54, '14', NULL, NULL, '0', 'HR-14', 'HR-14', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'osijek-baranja', 'Osijek-Baranja', 'Osijek-Baranja County', 'Osijek-Baranja County', 'osijek baranja', 1, NOW(6), NOW(6), 1, 1),
(3337523, 54, '11', NULL, NULL, '0', 'HR-11', 'HR-11', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'požega-slavonia', 'Požega-Slavonia', 'Požega-Slavonia County', 'Požega-Slavonia County', 'pozega slavonia', 1, NOW(6), NOW(6), 1, 1),
(3337524, 54, '08', NULL, NULL, '0', 'HR-08', 'HR-08', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'primorje-gorski kotar', 'Primorje-Gorski Kotar', 'Primorje-Gorski Kotar County', 'Primorje-Gorski Kotar County', 'primorje gorski kotar', 1, NOW(6), NOW(6), 1, 1),
(3337525, 54, '15', NULL, NULL, '0', 'HR-15', 'HR-15', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'šibenik-knin', 'Šibenik-Knin', 'Šibenik-Knin County', 'Šibenik-Knin County', 'sibenik knin', 1, NOW(6), NOW(6), 1, 1),
(3337526, 54, '03', NULL, NULL, '0', 'HR-03', 'HR-03', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'sisak-moslavina', 'Sisak-Moslavina', 'Sisak-Moslavina County', 'Sisak-Moslavina County', 'sisak moslavina', 1, NOW(6), NOW(6), 1, 1),
(3337527, 54, '17', NULL, NULL, '0', 'HR-17', 'HR-17', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'split-dalmacia', 'Split-Dalmatia', 'Split-Dalmatia County', 'Split-Dalmatia County', 'split dalmatia', 1, NOW(6), NOW(6), 1, 1),
(3337528, 54, '05', NULL, NULL, '0', 'HR-05', 'HR-05', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'varaždin', 'Varaždin', 'Varaždin County', 'Varaždin County', 'varazdin', 1, NOW(6), NOW(6), 1, 1),
(3337529, 54, '16', NULL, NULL, '0', 'HR-16', 'HR-16', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'vukovar-srijem', 'Vukovar-Srijem', 'Vukovar-Srijem County', 'Vukovar-Srijem County', 'vukovar srijem', 1, NOW(6), NOW(6), 1, 1),
(3337530, 54, '13', NULL, NULL, '0', 'HR-13', 'HR-13', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'zadar', 'Zadar', 'Zadar County', 'Zadar County', 'zadar', 1, NOW(6), NOW(6), 1, 1),
(3337531, 54, '01', NULL, NULL, '0', 'HR-01', 'HR-01', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'zagreb', 'Zagreb', 'Zagreb County', 'Zagreb County', 'zagreb', 1, NOW(6), NOW(6), 1, 1),
(3337532, 54, '21', NULL, NULL, '0', 'HR-21', 'HR-21', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'zagreb ciudad', 'City of Zagreb', 'City of Zagreb', 'City of Zagreb', 'zagreb city', 1, NOW(6), NOW(6), 1, 1),
(3337533, 54, '10', NULL, NULL, '0', 'HR-10', 'HR-10', '+385', (SELECT id FROM t075t_division_types WHERE code = 'condado_hr' AND id_country = 54), 'virovitica-podravina', 'Virovitica-Podravina', 'Virovitica-Podravina County', 'Virovitica-Podravina County', 'virovitica podravina', 1, NOW(6), NOW(6), 1, 1);