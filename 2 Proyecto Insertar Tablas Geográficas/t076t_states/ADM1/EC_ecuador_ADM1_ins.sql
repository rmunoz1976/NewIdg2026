-- =============================================
-- Script de inserción para ECUADOR (EC)
-- Archivo: EC_ecuador_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para ECUADOR: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_ec', 64, 8, 'Provincia', 'Province',
    'Province', 'Provincia', 'provincia', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de ECUADOR (Provincias)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3649953, 64, 'Z', NULL, NULL, '0', 'EC-Z', 'EC-Z', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'zamora chinchipe', 'Zamora Chinchipe', 'Zamora Chinchipe Province', 'Zamora Chinchipe', 'zamora chinchipe', 1, NOW(6), NOW(6), 1, 1),
(3650445, 64, 'T', NULL, NULL, '0', 'EC-T', 'EC-T', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'tungurahua', 'Tungurahua', 'Tungurahua Province', 'Tungurahua', 'tungurahua', 1, NOW(6), NOW(6), 1, 1),
(3653224, 64, 'P', NULL, NULL, '0', 'EC-P', 'EC-P', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'pichincha', 'Pichincha', 'Pichincha Province', 'Pichincha', 'pichincha', 1, NOW(6), NOW(6), 1, 1),
(3653392, 64, 'Y', NULL, NULL, '0', 'EC-Y', 'EC-Y', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'pastaza', 'Pastaza', 'Pastaza Province', 'Pastaza', 'pastaza', 1, NOW(6), NOW(6), 1, 1),
(3653890, 64, 'N', NULL, NULL, '0', 'EC-N', 'EC-N', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'napo', 'Napo', 'Napo Province', 'Napo', 'napo', 1, NOW(6), NOW(6), 1, 1),
(3654005, 64, 'S', NULL, NULL, '0', 'EC-S', 'EC-S', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'morona santiago', 'Morona Santiago', 'Morona Santiago Province', 'Morona Santiago', 'morona santiago', 1, NOW(6), NOW(6), 1, 1),
(3654451, 64, 'M', NULL, NULL, '0', 'EC-M', 'EC-M', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'manabí', 'Manabí', 'Manabí Province', 'Manabí', 'manabi', 1, NOW(6), NOW(6), 1, 1),
(3654592, 64, 'R', NULL, NULL, '0', 'EC-R', 'EC-R', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'los ríos', 'Los Ríos', 'Los Ríos Province', 'Los Ríos', 'los rios', 1, NOW(6), NOW(6), 1, 1),
(3654665, 64, 'L', NULL, NULL, '0', 'EC-L', 'EC-L', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'loja', 'Loja', 'Loja Province', 'Loja', 'loja', 1, NOW(6), NOW(6), 1, 1),
(3655635, 64, 'I', NULL, NULL, '0', 'EC-I', 'EC-I', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'imbabura', 'Imbabura', 'Imbabura Province', 'Imbabura', 'imbabura', 1, NOW(6), NOW(6), 1, 1),
(3657505, 64, 'G', NULL, NULL, '0', 'EC-G', 'EC-G', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'guayas', 'Guayas', 'Guayas Province', 'Guayas', 'guayas', 1, NOW(6), NOW(6), 1, 1),
(3657879, 64, 'W', NULL, NULL, '0', 'EC-W', 'EC-W', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'galápagos', 'Galápagos', 'Galápagos Province', 'Galápagos', 'galapagos', 1, NOW(6), NOW(6), 1, 1),
(3657986, 64, 'E', NULL, NULL, '0', 'EC-E', 'EC-E', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'esmeraldas', 'Esmeraldas', 'Esmeraldas Province', 'Esmeraldas', 'esmeraldas', 1, NOW(6), NOW(6), 1, 1),
(3658195, 64, 'O', NULL, NULL, '0', 'EC-O', 'EC-O', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'el oro', 'El Oro', 'El Oro Province', 'El Oro', 'el oro', 1, NOW(6), NOW(6), 1, 1),
(3658766, 64, 'X', NULL, NULL, '0', 'EC-X', 'EC-X', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'cotopaxi', 'Cotopaxi', 'Cotopaxi Province', 'Cotopaxi', 'cotopaxi', 1, NOW(6), NOW(6), 1, 1),
(3659237, 64, 'H', NULL, NULL, '0', 'EC-H', 'EC-H', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'chimborazo', 'Chimborazo', 'Chimborazo Province', 'Chimborazo', 'chimborazo', 1, NOW(6), NOW(6), 1, 1),
(3659718, 64, 'C', NULL, NULL, '0', 'EC-C', 'EC-C', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'carchi', 'Carchi', 'Carchi Province', 'Carchi', 'carchi', 1, NOW(6), NOW(6), 1, 1),
(3659849, 64, 'F', NULL, NULL, '0', 'EC-F', 'EC-F', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'cañar', 'Cañar', 'Cañar Province', 'Cañar', 'canar', 1, NOW(6), NOW(6), 1, 1),
(3660130, 64, 'B', NULL, NULL, '0', 'EC-B', 'EC-B', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'bolívar', 'Bolívar', 'Bolívar Province', 'Bolívar', 'bolivar', 1, NOW(6), NOW(6), 1, 1),
(3660431, 64, 'A', NULL, NULL, '0', 'EC-A', 'EC-A', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'azuay', 'Azuay', 'Azuay Province', 'Azuay', 'azuay', 1, NOW(6), NOW(6), 1, 1),
(3830305, 64, 'U', NULL, NULL, '0', 'EC-U', 'EC-U', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'sucumbíos', 'Sucumbíos', 'Sucumbíos Province', 'Sucumbíos', 'sucumbios', 1, NOW(6), NOW(6), 1, 1),
(3830306, 64, 'D', NULL, NULL, '0', 'EC-D', 'EC-D', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'orellana', 'Orellana', 'Orellana Province', 'Orellana', 'orellana', 1, NOW(6), NOW(6), 1, 1),
(7062136, 64, 'J', NULL, NULL, '0', 'EC-J', 'EC-J', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'santo domingo de los tsáchilas', 'Santo Domingo de los Tsáchilas', 'Santo Domingo de los Tsáchilas Province', 'Santo Domingo de los Tsáchilas', 'santo domingo de los tsachilas', 1, NOW(6), NOW(6), 1, 1),
(7062138, 64, 'K', NULL, NULL, '0', 'EC-K', 'EC-K', '+593', (SELECT id FROM t075t_division_types WHERE code = 'provincia_ec' AND id_country = 64), 'santa elena', 'Santa Elena', 'Santa Elena Province', 'Santa Elena', 'santa elena', 1, NOW(6), NOW(6), 1, 1);