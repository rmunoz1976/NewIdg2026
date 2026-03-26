-- Insertar tipo de división geográfica ADM1 para Omán: Gobernación
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'gobernacion_om', 166, 8, 'gobernación', 'governorate', 
    'Governorate', 'Muḩāfaz̧ah', 'Muhafazah', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Omán (Gobernaciones)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(411735, 166, 'OM-DA', NULL, NULL, '0', 'OM-DA', 'OM-DA', '+968', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_om' AND id_country = 166), 'ad dakhiliyah', 'Ad Dakhiliyah', 'Ad Dakhiliyah', 'Muḩāfaz̧at ad Dākhilīyah', 'Ad Dakhiliyah', 1, NOW(6), NOW(6), 1, 1),
(411736, 166, 'OM-BS', NULL, NULL, '0', 'OM-BS', 'OM-BS', '+968', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_om' AND id_country = 166), 'al batinah sur', 'Al Batinah South', 'Al Batinah South', 'Al Batinah South Governorate', 'Al Batinah South', 1, NOW(6), NOW(6), 1, 1),
(411737, 166, 'OM-WU', NULL, NULL, '0', 'OM-WU', 'OM-WU', '+968', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_om' AND id_country = 166), 'al wusta', 'Al Wusta', 'Al Wusta', 'Muḩāfaz̧at al Wusţá', 'Al Wusta', 1, NOW(6), NOW(6), 1, 1),
(411738, 166, 'OM-SS', NULL, NULL, '0', 'OM-SS', 'OM-SS', '+968', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_om' AND id_country = 166), 'ash sharqiyah sur', 'Ash Sharqiyah South', 'Ash Sharqiyah South', 'Ash Sharqiyah South', 'Ash Sharqiyah South', 1, NOW(6), NOW(6), 1, 1),
(411739, 166, 'OM-ZA', NULL, NULL, '0', 'OM-ZA', 'OM-ZA', '+968', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_om' AND id_country = 166), 'az zahirah', 'Az Zahirah', 'Az Zahirah', 'Az̧ Z̧āhirah', 'Az Zahirah', 1, NOW(6), NOW(6), 1, 1),
(411740, 166, 'OM-MA', NULL, NULL, '0', 'OM-MA', 'OM-MA', '+968', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_om' AND id_country = 166), 'masqat', 'Muscat', 'Muscat', 'Muḩāfaz̧at Masqaţ', 'Muscat', 1, NOW(6), NOW(6), 1, 1),
(411741, 166, 'OM-MU', NULL, NULL, '0', 'OM-MU', 'OM-MU', '+968', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_om' AND id_country = 166), 'musandam', 'Musandam', 'Musandam', 'Musandam', 'Musandam', 1, NOW(6), NOW(6), 1, 1),
(411742, 166, 'OM-ZU', NULL, NULL, '0', 'OM-ZU', 'OM-ZU', '+968', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_om' AND id_country = 166), 'dhofar', 'Dhofar', 'Dhofar', 'Dhofar Governorate', 'Dhofar', 1, NOW(6), NOW(6), 1, 1),
(7110710, 166, 'OM-BU', NULL, NULL, '0', 'OM-BU', 'OM-BU', '+968', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_om' AND id_country = 166), 'al buraymi', 'Al Buraimi', 'Al Buraimi', 'Muḩāfaz̧at al Buraymī', 'Al Buraimi', 1, NOW(6), NOW(6), 1, 1),
(8394433, 166, 'OM-SS', NULL, NULL, '0', 'OM-SS', 'OM-SS', '+968', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_om' AND id_country = 166), 'ash sharqiyah norte', 'Ash Sharqiyah North', 'Ash Sharqiyah North', 'Ash Sharqiyah North Governorate', 'Ash Sharqiyah North', 1, NOW(6), NOW(6), 1, 1),
(8394434, 166, 'OM-BS', NULL, NULL, '0', 'OM-BS', 'OM-BS', '+968', (SELECT id FROM t075t_division_types WHERE code = 'gobernacion_om' AND id_country = 166), 'al batinah norte', 'Al Batinah North', 'Al Batinah North', 'Al Batinah North Governorate', 'Al Batinah North', 1, NOW(6), NOW(6), 1, 1);