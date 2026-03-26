-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para SUECIA (SE)
-- Archivo: SE_suecia_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para SUECIA: Condado
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'condado_se', 215, 8, 'Condado', 'County',
    'County', 'Län', 'Lan', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de SUECIA (Condados)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(604010, 215, 'norrbotten', NULL, NULL, '332', 'SE-BD', 'SE-BD', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Norrbotten', 'Norrbotten County', 'Norrbotten County', 'Norrbotten County', 'Norrbotten County', 1, NOW(6), NOW(6), 1, 1),
(2664179, 215, 'vastmanland', NULL, NULL, '125', 'SE-U', 'SE-U', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Västmanland', 'Västmanland County', 'Västmanland County', 'Västmanland County', 'Västmanland County', 1, NOW(6), NOW(6), 1, 1),
(2664292, 215, 'vasternorrland', NULL, NULL, '321', 'SE-Y', 'SE-Y', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Västernorrland', 'Västernorrland County', 'Västernorrland County', 'Västernorrland County', 'Västernorrland County', 1, NOW(6), NOW(6), 1, 1),
(2664415, 215, 'vasterbotten', NULL, NULL, '331', 'SE-AC', 'SE-AC', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Västerbotten', 'Västerbotten County', 'Västerbotten County', 'Västerbotten County', 'Västerbotten County', 1, NOW(6), NOW(6), 1, 1),
(2664870, 215, 'varmland', NULL, NULL, '311', 'SE-S', 'SE-S', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Värmland', 'Värmland County', 'Värmland County', 'Värmland County', 'Värmland County', 1, NOW(6), NOW(6), 1, 1),
(2666218, 215, 'uppsala', NULL, NULL, '121', 'SE-C', 'SE-C', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Uppsala', 'Uppsala County', 'Uppsala County', 'Uppsala County', 'Uppsala County', 1, NOW(6), NOW(6), 1, 1),
(2673722, 215, 'stockholm', NULL, NULL, '110', 'SE-AB', 'SE-AB', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Estocolmo', 'Stockholm County', 'Stockholm County', 'Stockholm County', 'Stockholm County', 1, NOW(6), NOW(6), 1, 1),
(2676207, 215, 'sodermanland', NULL, NULL, '122', 'SE-D', 'SE-D', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Södermanland', 'Södermanland County', 'Södermanland County', 'Södermanland County', 'Södermanland County', 1, NOW(6), NOW(6), 1, 1),
(2685867, 215, 'ostergotland', NULL, NULL, '123', 'SE-E', 'SE-E', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Östergötland', 'Östergötland County', 'Östergötland County', 'Östergötland County', 'Östergötland County', 1, NOW(6), NOW(6), 1, 1),
(2686655, 215, 'orebro', NULL, NULL, '124', 'SE-T', 'SE-T', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Örebro', 'Örebro County', 'Örebro County', 'Örebro County', 'Örebro County', 1, NOW(6), NOW(6), 1, 1),
(2699050, 215, 'kronoberg', NULL, NULL, '212', 'SE-G', 'SE-G', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Kronoberg', 'Kronoberg County', 'Kronoberg County', 'Kronoberg County', 'Kronoberg County', 1, NOW(6), NOW(6), 1, 1),
(2699767, 215, 'dalarna', NULL, NULL, '312', 'SE-W', 'SE-W', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Dalarna', 'Dalarna County', 'Dalarna County', 'Dalarna County', 'Dalarna County', 1, NOW(6), NOW(6), 1, 1),
(2702259, 215, 'kalmar', NULL, NULL, '213', 'SE-H', 'SE-H', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Kalmar', 'Kalmar County', 'Kalmar County', 'Kalmar County', 'Kalmar County', 1, NOW(6), NOW(6), 1, 1),
(2702976, 215, 'jonkoping', NULL, NULL, '211', 'SE-F', 'SE-F', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Jönköping', 'Jönköping County', 'Jönköping County', 'Jönköping County', 'Jönköping County', 1, NOW(6), NOW(6), 1, 1),
(2703330, 215, 'jamtland', NULL, NULL, '322', 'SE-Z', 'SE-Z', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Jämtland', 'Jämtland County', 'Jämtland County', 'Jämtland County', 'Jämtland County', 1, NOW(6), NOW(6), 1, 1),
(2708794, 215, 'halland', NULL, NULL, '231', 'SE-N', 'SE-N', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Halland', 'Halland County', 'Halland County', 'Halland County', 'Halland County', 1, NOW(6), NOW(6), 1, 1),
(2711508, 215, 'gotland', NULL, NULL, '214', 'SE-I', 'SE-I', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Gotland', 'Gotland County', 'Gotland County', 'Gotland County', 'Gotland County', 1, NOW(6), NOW(6), 1, 1),
(2712411, 215, 'gavleborg', NULL, NULL, '313', 'SE-X', 'SE-X', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Gävleborg', 'Gävleborg County', 'Gävleborg County', 'Gävleborg County', 'Gävleborg County', 1, NOW(6), NOW(6), 1, 1),
(2721357, 215, 'blekinge', NULL, NULL, '221', 'SE-K', 'SE-K', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Blekinge', 'Blekinge County', 'Blekinge County', 'Blekinge County', 'Blekinge County', 1, NOW(6), NOW(6), 1, 1),
(3337385, 215, 'skane', NULL, NULL, '224', 'SE-M', 'SE-M', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Skåne', 'Skåne County', 'Skåne County', 'Skåne County', 'Skåne County', 1, NOW(6), NOW(6), 1, 1),
(3337386, 215, 'vastra_gotaland', NULL, NULL, '232', 'SE-O', 'SE-O', '+46', (SELECT id FROM t075t_division_types WHERE code = 'condado_se' AND id_country = 215), 'Västra Götaland', 'Västra Götaland County', 'Västra Götaland County', 'Västra Götaland County', 'Västra Götaland County', 1, NOW(6), NOW(6), 1, 1);