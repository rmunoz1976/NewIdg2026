-- ======================================================================
-- Procesamiento de divisiones administrativas ADM1 para ESTADOS UNIDOS (US)
-- Archivo: US_estados_unidos_ADM1_INS.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- Insertar tipo de división geográfica ADM1 para ESTADOS UNIDOS: Estado
-- ----------------------------------------------------------------------
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'estado_us', 238, 8, 'Estado', 'State',
    'State', 'State', 'State', 1, NOW(6), NOW(6), 1, 1
);

-- ----------------------------------------------------------------------
-- Insertar las divisiones ADM1 de ESTADOS UNIDOS (Estados y DC)
-- ----------------------------------------------------------------------
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(4099753, 238, 'arkansas', NULL, NULL, '000', 'US-AR', 'US-AR', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Arkansas', 'Arkansas', 'Arkansas', 'Arkansas', 'Arkansas', 1, NOW(6), NOW(6), 1, 1),
(4138106, 238, 'district_of_columbia', NULL, NULL, '000', 'US-DC', 'US-DC', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Distrito de Columbia', 'District of Columbia', 'District of Columbia', 'District of Columbia', 'District of Columbia', 1, NOW(6), NOW(6), 1, 1),
(4142224, 238, 'delaware', NULL, NULL, '000', 'US-DE', 'US-DE', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Delaware', 'Delaware', 'Delaware', 'Delaware', 'Delaware', 1, NOW(6), NOW(6), 1, 1),
(4155751, 238, 'florida', NULL, NULL, '000', 'US-FL', 'US-FL', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Florida', 'Florida', 'Florida', 'Florida', 'Florida', 1, NOW(6), NOW(6), 1, 1),
(4197000, 238, 'georgia', NULL, NULL, '000', 'US-GA', 'US-GA', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Georgia', 'Georgia', 'Georgia', 'Georgia', 'Georgia', 1, NOW(6), NOW(6), 1, 1),
(4273857, 238, 'kansas', NULL, NULL, '000', 'US-KS', 'US-KS', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Kansas', 'Kansas', 'Kansas', 'Kansas', 'Kansas', 1, NOW(6), NOW(6), 1, 1),
(4331987, 238, 'louisiana', NULL, NULL, '000', 'US-LA', 'US-LA', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Luisiana', 'Louisiana', 'Louisiana', 'Louisiana', 'Louisiana', 1, NOW(6), NOW(6), 1, 1),
(4361885, 238, 'maryland', NULL, NULL, '000', 'US-MD', 'US-MD', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Maryland', 'Maryland', 'Maryland', 'Maryland', 'Maryland', 1, NOW(6), NOW(6), 1, 1),
(4398678, 238, 'missouri', NULL, NULL, '000', 'US-MO', 'US-MO', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Misuri', 'Missouri', 'Missouri', 'Missouri', 'Missouri', 1, NOW(6), NOW(6), 1, 1),
(4436296, 238, 'mississippi', NULL, NULL, '000', 'US-MS', 'US-MS', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Misisipi', 'Mississippi', 'Mississippi', 'Mississippi', 'Mississippi', 1, NOW(6), NOW(6), 1, 1),
(4482348, 238, 'north_carolina', NULL, NULL, '000', 'US-NC', 'US-NC', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Carolina del Norte', 'North Carolina', 'North Carolina', 'North Carolina', 'North Carolina', 1, NOW(6), NOW(6), 1, 1),
(4544379, 238, 'oklahoma', NULL, NULL, '000', 'US-OK', 'US-OK', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Oklahoma', 'Oklahoma', 'Oklahoma', 'Oklahoma', 'Oklahoma', 1, NOW(6), NOW(6), 1, 1),
(4597040, 238, 'south_carolina', NULL, NULL, '000', 'US-SC', 'US-SC', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Carolina del Sur', 'South Carolina', 'South Carolina', 'South Carolina', 'South Carolina', 1, NOW(6), NOW(6), 1, 1),
(4662168, 238, 'tennessee', NULL, NULL, '000', 'US-TN', 'US-TN', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Tennessee', 'Tennessee', 'Tennessee', 'Tennessee', 'Tennessee', 1, NOW(6), NOW(6), 1, 1),
(4736286, 238, 'texas', NULL, NULL, '000', 'US-TX', 'US-TX', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Texas', 'Texas', 'Texas', 'Texas', 'Texas', 1, NOW(6), NOW(6), 1, 1),
(4826850, 238, 'west_virginia', NULL, NULL, '000', 'US-WV', 'US-WV', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Virginia Occidental', 'West Virginia', 'West Virginia', 'West Virginia', 'West Virginia', 1, NOW(6), NOW(6), 1, 1),
(4829764, 238, 'alabama', NULL, NULL, '000', 'US-AL', 'US-AL', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Alabama', 'Alabama', 'Alabama', 'Alabama', 'Alabama', 1, NOW(6), NOW(6), 1, 1),
(4831725, 238, 'connecticut', NULL, NULL, '000', 'US-CT', 'US-CT', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Connecticut', 'Connecticut', 'Connecticut', 'Connecticut', 'Connecticut', 1, NOW(6), NOW(6), 1, 1),
(4862182, 238, 'iowa', NULL, NULL, '000', 'US-IA', 'US-IA', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Iowa', 'Iowa', 'Iowa', 'Iowa', 'Iowa', 1, NOW(6), NOW(6), 1, 1),
(4896861, 238, 'illinois', NULL, NULL, '000', 'US-IL', 'US-IL', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Illinois', 'Illinois', 'Illinois', 'Illinois', 'Illinois', 1, NOW(6), NOW(6), 1, 1),
(4921868, 238, 'indiana', NULL, NULL, '000', 'US-IN', 'US-IN', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Indiana', 'Indiana', 'Indiana', 'Indiana', 'Indiana', 1, NOW(6), NOW(6), 1, 1),
(4971068, 238, 'maine', NULL, NULL, '000', 'US-ME', 'US-ME', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Maine', 'Maine', 'Maine', 'Maine', 'Maine', 1, NOW(6), NOW(6), 1, 1),
(5001836, 238, 'michigan', NULL, NULL, '000', 'US-MI', 'US-MI', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Míchigan', 'Michigan', 'Michigan', 'Michigan', 'Michigan', 1, NOW(6), NOW(6), 1, 1),
(5037779, 238, 'minnesota', NULL, NULL, '000', 'US-MN', 'US-MN', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Minnesota', 'Minnesota', 'Minnesota', 'Minnesota', 'Minnesota', 1, NOW(6), NOW(6), 1, 1),
(5073708, 238, 'nebraska', NULL, NULL, '000', 'US-NE', 'US-NE', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Nebraska', 'Nebraska', 'Nebraska', 'Nebraska', 'Nebraska', 1, NOW(6), NOW(6), 1, 1),
(5090174, 238, 'new_hampshire', NULL, NULL, '000', 'US-NH', 'US-NH', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Nuevo Hampshire', 'New Hampshire', 'New Hampshire', 'New Hampshire', 'New Hampshire', 1, NOW(6), NOW(6), 1, 1),
(5101760, 238, 'new_jersey', NULL, NULL, '000', 'US-NJ', 'US-NJ', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Nueva Jersey', 'New Jersey', 'New Jersey', 'New Jersey', 'New Jersey', 1, NOW(6), NOW(6), 1, 1),
(5128638, 238, 'new_york', NULL, NULL, '000', 'US-NY', 'US-NY', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Nueva York', 'New York', 'New York', 'New York', 'New York', 1, NOW(6), NOW(6), 1, 1),
(5165418, 238, 'ohio', NULL, NULL, '000', 'US-OH', 'US-OH', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Ohio', 'Ohio', 'Ohio', 'Ohio', 'Ohio', 1, NOW(6), NOW(6), 1, 1),
(5224323, 238, 'rhode_island', NULL, NULL, '000', 'US-RI', 'US-RI', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Rhode Island', 'Rhode Island', 'Rhode Island', 'Rhode Island', 'Rhode Island', 1, NOW(6), NOW(6), 1, 1),
(5242283, 238, 'vermont', NULL, NULL, '000', 'US-VT', 'US-VT', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Vermont', 'Vermont', 'Vermont', 'Vermont', 'Vermont', 1, NOW(6), NOW(6), 1, 1),
(5279468, 238, 'wisconsin', NULL, NULL, '000', 'US-WI', 'US-WI', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Wisconsin', 'Wisconsin', 'Wisconsin', 'Wisconsin', 'Wisconsin', 1, NOW(6), NOW(6), 1, 1),
(5332921, 238, 'california', NULL, NULL, '000', 'US-CA', 'US-CA', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'California', 'California', 'California', 'California', 'California', 1, NOW(6), NOW(6), 1, 1),
(5417618, 238, 'colorado', NULL, NULL, '000', 'US-CO', 'US-CO', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Colorado', 'Colorado', 'Colorado', 'Colorado', 'Colorado', 1, NOW(6), NOW(6), 1, 1),
(5481136, 238, 'new_mexico', NULL, NULL, '000', 'US-NM', 'US-NM', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Nuevo México', 'New Mexico', 'New Mexico', 'New Mexico', 'New Mexico', 1, NOW(6), NOW(6), 1, 1),
(5509151, 238, 'nevada', NULL, NULL, '000', 'US-NV', 'US-NV', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Nevada', 'Nevada', 'Nevada', 'Nevada', 'Nevada', 1, NOW(6), NOW(6), 1, 1),
(5549030, 238, 'utah', NULL, NULL, '000', 'US-UT', 'US-UT', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Utah', 'Utah', 'Utah', 'Utah', 'Utah', 1, NOW(6), NOW(6), 1, 1),
(5551752, 238, 'arizona', NULL, NULL, '000', 'US-AZ', 'US-AZ', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Arizona', 'Arizona', 'Arizona', 'Arizona', 'Arizona', 1, NOW(6), NOW(6), 1, 1),
(5596512, 238, 'idaho', NULL, NULL, '000', 'US-ID', 'US-ID', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Idaho', 'Idaho', 'Idaho', 'Idaho', 'Idaho', 1, NOW(6), NOW(6), 1, 1),
(5667009, 238, 'montana', NULL, NULL, '000', 'US-MT', 'US-MT', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Montana', 'Montana', 'Montana', 'Montana', 'Montana', 1, NOW(6), NOW(6), 1, 1),
(5690763, 238, 'north_dakota', NULL, NULL, '000', 'US-ND', 'US-ND', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Dakota del Norte', 'North Dakota', 'North Dakota', 'North Dakota', 'North Dakota', 1, NOW(6), NOW(6), 1, 1),
(5744337, 238, 'oregon', NULL, NULL, '000', 'US-OR', 'US-OR', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Oregón', 'Oregon', 'Oregon', 'Oregon', 'Oregon', 1, NOW(6), NOW(6), 1, 1),
(5769223, 238, 'south_dakota', NULL, NULL, '000', 'US-SD', 'US-SD', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Dakota del Sur', 'South Dakota', 'South Dakota', 'South Dakota', 'South Dakota', 1, NOW(6), NOW(6), 1, 1),
(5815135, 238, 'washington', NULL, NULL, '000', 'US-WA', 'US-WA', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Washington', 'Washington', 'Washington', 'Washington', 'Washington', 1, NOW(6), NOW(6), 1, 1),
(5843591, 238, 'wyoming', NULL, NULL, '000', 'US-WY', 'US-WY', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Wyoming', 'Wyoming', 'Wyoming', 'Wyoming', 'Wyoming', 1, NOW(6), NOW(6), 1, 1),
(5855797, 238, 'hawaii', NULL, NULL, '000', 'US-HI', 'US-HI', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Hawái', 'Hawaii', 'Hawaii', 'Hawaii', 'Hawaii', 1, NOW(6), NOW(6), 1, 1),
(5879092, 238, 'alaska', NULL, NULL, '000', 'US-AK', 'US-AK', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Alaska', 'Alaska', 'Alaska', 'Alaska', 'Alaska', 1, NOW(6), NOW(6), 1, 1),
(6254925, 238, 'kentucky', NULL, NULL, '000', 'US-KY', 'US-KY', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Kentucky', 'Kentucky', 'Kentucky', 'Kentucky', 'Kentucky', 1, NOW(6), NOW(6), 1, 1),
(6254926, 238, 'massachusetts', NULL, NULL, '000', 'US-MA', 'US-MA', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Massachusetts', 'Massachusetts', 'Massachusetts', 'Massachusetts', 'Massachusetts', 1, NOW(6), NOW(6), 1, 1),
(6254927, 238, 'pennsylvania', NULL, NULL, '000', 'US-PA', 'US-PA', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Pensilvania', 'Pennsylvania', 'Pennsylvania', 'Pennsylvania', 'Pennsylvania', 1, NOW(6), NOW(6), 1, 1),
(6254928, 238, 'virginia', NULL, NULL, '000', 'US-VA', 'US-VA', '+1', (SELECT id FROM t075t_division_types WHERE code = 'estado_us' AND id_country = 238), 'Virginia', 'Virginia', 'Virginia', 'Virginia', 'Virginia', 1, NOW(6), NOW(6), 1, 1);