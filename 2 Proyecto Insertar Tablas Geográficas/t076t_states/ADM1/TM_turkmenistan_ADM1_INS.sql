-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para TURKMENISTÁN (TM)
-- Archivo: TM_turkmenistan_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para TURKMENISTÁN: Provincia
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_tm', 230, 8, 'Provincia', 'Province',
    'Welaýaty', 'Welaýaty', 'Welayat', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de TURKMENISTÁN (Provincias y Capital)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(162152, 230, 'balkan', NULL, NULL, '000', 'TM-000', 'TM-000', '+993', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tm' AND id_country = 230), 'Balkan', 'Balkan', 'Balkan', 'Balkan', 'Balkan', 1, NOW(6), NOW(6), 1, 1),
(162181, 230, 'ahal', NULL, NULL, '000', 'TM-000', 'TM-000', '+993', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tm' AND id_country = 230), 'Ahal', 'Ahal', 'Ahal', 'Ahal', 'Ahal', 1, NOW(6), NOW(6), 1, 1),
(162182, 230, 'ashgabat', NULL, NULL, '000', 'TM-000', 'TM-000', '+993', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tm' AND id_country = 230), 'Asjabad', 'Ashgabat', 'Ashgabat', 'Ashgabat', 'Ashgabat', 1, NOW(6), NOW(6), 1, 1),
(601465, 230, 'dasoguz', NULL, NULL, '000', 'TM-000', 'TM-000', '+993', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tm' AND id_country = 230), 'Daşoguz', 'Daşoguz Welaýaty', 'Daşoguz Welaýaty', 'Daşoguz Welaýaty', 'Daşoguz Welaýaty', 1, NOW(6), NOW(6), 1, 1),
(1218666, 230, 'mary', NULL, NULL, '000', 'TM-000', 'TM-000', '+993', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tm' AND id_country = 230), 'Mary', 'Mary', 'Mary', 'Mary', 'Mary', 1, NOW(6), NOW(6), 1, 1),
(1219651, 230, 'lebap', NULL, NULL, '000', 'TM-000', 'TM-000', '+993', (SELECT id FROM t075t_division_types WHERE code = 'provincia_tm' AND id_country = 230), 'Lebap', 'Lebap', 'Lebap', 'Lebap', 'Lebap', 1, NOW(6), NOW(6), 1, 1);