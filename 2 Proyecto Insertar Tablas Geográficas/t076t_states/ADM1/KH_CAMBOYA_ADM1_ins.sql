-- Insertar tipo de división geográfica ADM1 para CAMBOYA: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_kh', 39, 8, 'Provincia', 'Province', 
    'Khaet', 'ខេត្ត', 'khaet', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de CAMBOYA (Provincias y Municipios)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
    (1821301, 39, 'KH-15', NULL, NULL, '12', 'KH-15', 'KH-15', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Pursat', 'Pursat', 'Pursat', 'Pursat', 'Pursat', 1, NOW(6), NOW(6), 1, 1),
    (1821310, 39, 'KH-2', NULL, NULL, '29', 'KH-2', 'KH-2', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Battambang', 'Battambang', 'Battambang', 'Battambang', 'Battambang', 1, NOW(6), NOW(6), 1, 1),
    (1821939, 39, 'KH-21', NULL, NULL, '19', 'KH-21', 'KH-21', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Takeo', 'Takeo', 'Takeo', 'Takeo', 'Takeo', 1, NOW(6), NOW(6), 1, 1),
    (1821992, 39, 'KH-20', NULL, NULL, '18', 'KH-20', 'KH-20', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Svay Rieng', 'Svay Rieng', 'Svay Rieng', 'Svay Rieng', 'Svay Rieng', 1, NOW(6), NOW(6), 1, 1),
    (1822028, 39, 'KH-19', NULL, NULL, '17', 'KH-19', 'KH-19', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Stung Treng', 'Stung Treng', 'Stung Treng', 'Stung Treng', 'Stung Treng', 1, NOW(6), NOW(6), 1, 1),
    (1822210, 39, 'KH-22', NULL, NULL, '27', 'KH-22', 'KH-22', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Oddar Meanchey', 'Oddar Meanchey', 'Oddar Meanchey', 'Ŏtâr Méanchey', 'Otar Meanchey', 1, NOW(6), NOW(6), 1, 1),
    (1822213, 39, 'KH-17', NULL, NULL, '24', 'KH-17', 'KH-17', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Siem Reap', 'Siem Reap', 'Siem Reap', 'Siem Reap', 'Siem Reap', 1, NOW(6), NOW(6), 1, 1),
    (1822449, 39, 'KH-16', NULL, NULL, '23', 'KH-16', 'KH-16', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Ratanakiri', 'Ratanakiri', 'Ratanakiri', 'Ratanakiri', 'Ratanakiri', 1, NOW(6), NOW(6), 1, 1),
    (1822609, 39, 'KH-14', NULL, NULL, '14', 'KH-14', 'KH-14', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Prey Veng', 'Prey Veng', 'Prey Veng', 'Prey Veng', 'Prey Veng', 1, NOW(6), NOW(6), 1, 1),
    (1822676, 39, 'KH-13', NULL, NULL, '13', 'KH-13', 'KH-13', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Preah Vihear', 'Preah Vihear', 'Preah Vihear', 'Preah Vihear', 'Preah Vihear', 1, NOW(6), NOW(6), 1, 1),
    (1830103, 39, 'KH-12', NULL, NULL, '22', 'KH-12', 'KH-12', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Nom Pen', 'Phnom Penh', 'Phnom Penh', 'Phnom Penh', 'Phnom Penh', 1, NOW(6), NOW(6), 1, 1),
    (1830206, 39, 'KH-24', NULL, NULL, '30', 'KH-24', 'KH-24', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Pailin', 'Pailin', 'Pailin', 'Pailin', 'Pailin', 1, NOW(6), NOW(6), 1, 1),
    (1830306, 39, 'KH-11', NULL, NULL, '10', 'KH-11', 'KH-11', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Mondolkiri', 'Mondolkiri', 'Mondolkiri', 'Mondolkiri', 'Mondolkiri', 1, NOW(6), NOW(6), 1, 1),
    (1830563, 39, 'KH-10', NULL, NULL, '09', 'KH-10', 'KH-10', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Kratie', 'Kratie', 'Kratie', 'Kratie', 'Kratie', 1, NOW(6), NOW(6), 1, 1),
    (1830937, 39, 'KH-23', NULL, NULL, '26', 'KH-23', 'KH-23', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Kep', 'Kep', 'Kep', 'Kep', 'Kep', 1, NOW(6), NOW(6), 1, 1),
    (1831037, 39, 'KH-9', NULL, NULL, '08', 'KH-9', 'KH-9', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Koh Kong', 'Koh Kong', 'Koh Kong', 'Koh Kong', 'Koh Kong', 1, NOW(6), NOW(6), 1, 1),
    (1831095, 39, 'KH-8', NULL, NULL, '07', 'KH-8', 'KH-8', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Kandal', 'Kandal', 'Kandal', 'Kandal', 'Kandal', 1, NOW(6), NOW(6), 1, 1),
    (1831111, 39, 'KH-7', NULL, NULL, '21', 'KH-7', 'KH-7', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Kampot', 'Kampot', 'Kampot', 'Kampot', 'Kampot', 1, NOW(6), NOW(6), 1, 1),
    (1831124, 39, 'KH-6', NULL, NULL, '05', 'KH-6', 'KH-6', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Kampong Thom', 'Kampong Thom', 'Kampong Thom', 'Kampong Thom', 'Kampong Thom', 1, NOW(6), NOW(6), 1, 1),
    (1831132, 39, 'KH-5', NULL, NULL, '04', 'KH-5', 'KH-5', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Kampong Speu', 'Kampong Speu', 'Kampong Speu', 'Kampong Speu', 'Kampong Speu', 1, NOW(6), NOW(6), 1, 1),
    (1831166, 39, 'KH-4', NULL, NULL, '03', 'KH-4', 'KH-4', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Kampong Chhnang', 'Kampong Chhnang', 'Kampong Chhnang', 'Kampong Chhnang', 'Kampong Chhnang', 1, NOW(6), NOW(6), 1, 1),
    (1831172, 39, 'KH-3', NULL, NULL, '02', 'KH-3', 'KH-3', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Kampong Cham', 'Kampong Cham', 'Kampong Cham', 'Kampong Cham', 'Kampong Cham', 1, NOW(6), NOW(6), 1, 1),
    (1899262, 39, 'KH-18', NULL, NULL, '28', 'KH-18', 'KH-18', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Sihanoukville', 'Sihanoukville', 'Preah Sihanouk', 'Preah Sihanouk', 'Preah Sihanouk', 1, NOW(6), NOW(6), 1, 1),
    (1899273, 39, 'KH-1', NULL, NULL, '25', 'KH-1', 'KH-1', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Banteay Meanchey', 'Banteay Meanchey', 'Banteay Meanchey', 'Banteay Meanchey', 'Banteay Meanchey', 1, NOW(6), NOW(6), 1, 1),
    (7647525, 39, 'KH-25', NULL, NULL, '31', 'KH-25', 'KH-25', '+855', (SELECT id FROM t075t_division_types WHERE code = 'provincia_kh' AND id_country = 39), 'Tboung Khmum', 'Tboung Khmum', 'Tboung Khmum', 'Tboung Khmum', 'Tboung Khmum', 1, NOW(6), NOW(6), 1, 1);