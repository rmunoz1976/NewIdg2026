-- Insertar tipo de división geográfica ADM1 para Catar: Municipio
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'municipio_qa', 179, 8, 'municipio', 'municipality', 
    'Municipality', 'Baladīyah', 'Baladiyah', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Catar (Municipios)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(389462, 179, 'QA-MS', NULL, NULL, '0', 'QA-MS', 'QA-MS', '+974', (SELECT id FROM t075t_division_types WHERE code = 'municipio_qa' AND id_country = 179), 'ash shamal', 'Ash Shamal', 'Ash Shamal', 'Baladīyat ash Shamāl', 'Ash Shamal', 1, NOW(6), NOW(6), 1, 1),
(389465, 179, 'QA-KH', NULL, NULL, '0', 'QA-KH', 'QA-KH', '+974', (SELECT id FROM t075t_division_types WHERE code = 'municipio_qa' AND id_country = 179), 'al khawr wa adh dhakhirah', 'Al Khawr wa adh Dhakhirah', 'Al Khawr wa adh Dhakhirah', 'Baladīyat al Khawr wa adh Dhakhīrah', 'Al Khawr wa adh Dhakhirah', 1, NOW(6), NOW(6), 1, 1),
(389467, 179, 'QA-US', NULL, NULL, '0', 'QA-US', 'QA-US', '+974', (SELECT id FROM t075t_division_types WHERE code = 'municipio_qa' AND id_country = 179), 'umm salal', 'Umm Salal', 'Umm Salal', 'Baladīyat Umm Şalāl', 'Umm Salal', 1, NOW(6), NOW(6), 1, 1),
(389469, 179, 'QA-RA', NULL, NULL, '0', 'QA-RA', 'QA-RA', '+974', (SELECT id FROM t075t_division_types WHERE code = 'municipio_qa' AND id_country = 179), 'ar rayyan', 'Ar Rayyan', 'Ar Rayyan', 'Baladīyat ar Rayyān', 'Ar Rayyan', 1, NOW(6), NOW(6), 1, 1),
(389470, 179, 'QA-DA', NULL, NULL, '0', 'QA-DA', 'QA-DA', '+974', (SELECT id FROM t075t_division_types WHERE code = 'municipio_qa' AND id_country = 179), 'ad dawhah', 'Ad Dawhah', 'Ad Dawhah', 'Baladīyat ad Dawḩah', 'Ad Dawhah', 1, NOW(6), NOW(6), 1, 1),
(389472, 179, 'QA-WA', NULL, NULL, '0', 'QA-WA', 'QA-WA', '+974', (SELECT id FROM t075t_division_types WHERE code = 'municipio_qa' AND id_country = 179), 'al wakrah', 'Al Wakrah', 'Al Wakrah', 'Al Wakrah', 'Al Wakrah', 1, NOW(6), NOW(6), 1, 1),
(8030540, 179, 'QA-ZA', NULL, NULL, '0', 'QA-ZA', 'QA-ZA', '+974', (SELECT id FROM t075t_division_types WHERE code = 'municipio_qa' AND id_country = 179), 'az za''ayin', 'Az Za''ayin', 'Az Za''ayin', 'Baladīyat az̧ Z̧a‘āyin', 'Az Za''ayin', 1, NOW(6), NOW(6), 1, 1),
(11777514, 179, 'QA-SH', NULL, NULL, '0', 'QA-SH', 'QA-SH', '+974', (SELECT id FROM t075t_division_types WHERE code = 'municipio_qa' AND id_country = 179), 'al shahaniya', 'Al-Shahaniya', 'Al-Shahaniya', 'Al-Shahaniya', 'Al-Shahaniya', 1, NOW(6), NOW(6), 1, 1);