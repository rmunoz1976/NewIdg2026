-- Insertar tipo de división geográfica ADM1 para COMORAS: Isla Autónoma
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'isla_autonoma_km', 51, 8, 'Isla Autónoma', 'Autonomous Island', 
    'Île Autonome', 'Île Autonome', 'ile autonome', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de COMORAS (Islas Autónomas)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (921780, 51, 'KM-M', NULL, NULL, '03', 'KM-M', 'KM-M', '+269', (SELECT id FROM t075t_division_types WHERE code = 'isla_autonoma_km' AND id_country = 51), 'Mohéli', 'Mohéli', 'Mohéli', 'Mohéli', 'Mohéli', 1, NOW(6), NOW(6), 1, 1),
    (921882, 51, 'KM-G', NULL, NULL, '02', 'KM-G', 'KM-G', '+269', (SELECT id FROM t075t_division_types WHERE code = 'isla_autonoma_km' AND id_country = 51), 'Gran Comora', 'Grande Comore', 'Grande Comore', 'Grande Comore', 'Grande Comore', 1, NOW(6), NOW(6), 1, 1),
    (922001, 51, 'KM-A', NULL, NULL, '01', 'KM-A', 'KM-A', '+269', (SELECT id FROM t075t_division_types WHERE code = 'isla_autonoma_km' AND id_country = 51), 'Anjouan', 'Anjouan', 'Anjouan', 'Ndzuwani', 'Ndzuwani', 1, NOW(6), NOW(6), 1, 1);