-- Insertar tipo de división geográfica ADM1 para Serbia: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_rs', 197, 8, 'provincia', 'province', 
    'Province', 'Pokrajina', 'Pokrajina', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Serbia (Provincia Autónoma y Serbia Central)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(784272, 197, 'RS-VO', NULL, NULL, '0', 'RS-VO', 'RS-VO', '+381', (SELECT id FROM t075t_division_types WHERE code = 'provincia_rs' AND id_country = 197), 'voivodina', 'Vojvodina', 'Vojvodina', 'Autonomna Pokrajina Vojvodina', 'Vojvodina', 1, NOW(6), NOW(6), 1, 1),
(785958, 197, 'RS-00', NULL, NULL, '0', 'RS-00', 'RS-00', '+381', (SELECT id FROM t075t_division_types WHERE code = 'provincia_rs' AND id_country = 197), 'serbia central', 'Central Serbia', 'Central Serbia', 'Central Serbia', 'Central Serbia', 1, NOW(6), NOW(6), 1, 1);