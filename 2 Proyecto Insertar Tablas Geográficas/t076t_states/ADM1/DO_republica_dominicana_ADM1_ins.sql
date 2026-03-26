-- =============================================
-- Script de inserción para REPÚBLICA DOMINICANA (DO)
-- Archivo: DO_republica_dominicana_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para REPÚBLICA DOMINICANA: Provincia
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'provincia_do', 63, 8, 'Provincia', 'Province',
    'Province', 'Provincia', 'provincia', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de REPÚBLICA DOMINICANA (Provincias y Distrito Nacional)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3492112, 63, 'VA', NULL, NULL, '0', 'DO-VA', 'DO-VA', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'valverde', 'Valverde', 'Valverde Province', 'Valverde', 'valverde', 1, NOW(6), NOW(6), 1, 1),
(3492912, 63, 'SR', NULL, NULL, '0', 'DO-SR', 'DO-SR', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'santiago rodríguez', 'Santiago Rodríguez', 'Santiago Rodríguez Province', 'Santiago Rodríguez', 'santiago rodriguez', 1, NOW(6), NOW(6), 1, 1),
(3492918, 63, 'ST', NULL, NULL, '0', 'DO-ST', 'DO-ST', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'santiago', 'Santiago', 'Santiago Province', 'Santiago', 'santiago', 1, NOW(6), NOW(6), 1, 1),
(3493031, 63, 'PM', NULL, NULL, '0', 'DO-PM', 'DO-PM', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'san pedro de macorís', 'San Pedro de Macorís', 'San Pedro de Macorís Province', 'San Pedro de Macorís', 'san pedro de macoris', 1, NOW(6), NOW(6), 1, 1),
(3493091, 63, 'JU', NULL, NULL, '0', 'DO-JU', 'DO-JU', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'san juan', 'San Juan', 'San Juan Province', 'San Juan', 'san juan', 1, NOW(6), NOW(6), 1, 1),
(3493186, 63, 'CR', NULL, NULL, '0', 'DO-CR', 'DO-CR', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'san cristóbal', 'San Cristóbal', 'San Cristóbal Province', 'San Cristóbal', 'san cristobal', 1, NOW(6), NOW(6), 1, 1),
(3493192, 63, 'SZ', NULL, NULL, '0', 'DO-SZ', 'DO-SZ', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'sánchez ramírez', 'Sánchez Ramírez', 'Sánchez Ramírez Province', 'Sánchez Ramírez', 'sanchez ramirez', 1, NOW(6), NOW(6), 1, 1),
(3493232, 63, 'SA', NULL, NULL, '0', 'DO-SA', 'DO-SA', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'samaná', 'Samaná', 'Samaná Province', 'Samaná', 'samana', 1, NOW(6), NOW(6), 1, 1),
(3493282, 63, 'HM', NULL, NULL, '0', 'DO-HM', 'DO-HM', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'hermanas mirabal', 'Hermanas Mirabal', 'Hermanas Mirabal Province', 'Hermanas Mirabal', 'hermanas mirabal', 1, NOW(6), NOW(6), 1, 1),
(3494267, 63, 'PP', NULL, NULL, '0', 'DO-PP', 'DO-PP', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'puerto plata', 'Puerto Plata', 'Puerto Plata Province', 'Puerto Plata', 'puerto plata', 1, NOW(6), NOW(6), 1, 1),
(3495015, 63, 'PE', NULL, NULL, '0', 'DO-PE', 'DO-PE', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'peravia', 'Peravia', 'Peravia Province', 'Peravia', 'peravia', 1, NOW(6), NOW(6), 1, 1),
(3495136, 63, 'PN', NULL, NULL, '0', 'DO-PN', 'DO-PN', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'pedernales', 'Pedernales', 'Pedernales Province', 'Pedernales', 'pedernales', 1, NOW(6), NOW(6), 1, 1),
(3496024, 63, 'DN', NULL, NULL, '0', 'DO-DN', 'DO-DN', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'distrito nacional', 'Distrito Nacional', 'Distrito Nacional', 'Distrito Nacional', 'distrito nacional', 1, NOW(6), NOW(6), 1, 1),
(3496132, 63, 'MP', NULL, NULL, '0', 'DO-MP', 'DO-MP', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'monte plata', 'Monte Plata', 'Monte Plata Province', 'Monte Plata', 'monte plata', 1, NOW(6), NOW(6), 1, 1),
(3496200, 63, 'MC', NULL, NULL, '0', 'DO-MC', 'DO-MC', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'monte cristi', 'Monte Cristi', 'Monte Cristi Province', 'Monte Cristi', 'monte cristi', 1, NOW(6), NOW(6), 1, 1),
(3496274, 63, 'MN', NULL, NULL, '0', 'DO-MN', 'DO-MN', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'monseñor nouel', 'Monseñor Nouel', 'Monseñor Nouel Province', 'Monseñor Nouel', 'monsenor nouel', 1, NOW(6), NOW(6), 1, 1),
(3496772, 63, 'MT', NULL, NULL, '0', 'DO-MT', 'DO-MT', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'maría trinidad sánchez', 'María Trinidad Sánchez', 'María Trinidad Sánchez Province', 'María Trinidad Sánchez', 'maria trinidad sanchez', 1, NOW(6), NOW(6), 1, 1),
(3499977, 63, 'LV', NULL, NULL, '0', 'DO-LV', 'DO-LV', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'la vega', 'La Vega', 'La Vega Province', 'La Vega', 'la vega', 1, NOW(6), NOW(6), 1, 1),
(3500955, 63, 'LR', NULL, NULL, '0', 'DO-LR', 'DO-LR', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'la romana', 'La Romana', 'La Romana Province', 'La Romana', 'la romana', 1, NOW(6), NOW(6), 1, 1),
(3503706, 63, 'AL', NULL, NULL, '0', 'DO-AL', 'DO-AL', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'la altagracia', 'La Altagracia', 'La Altagracia Province', 'La Altagracia', 'la altagracia', 1, NOW(6), NOW(6), 1, 1),
(3504326, 63, 'IN', NULL, NULL, '0', 'DO-IN', 'DO-IN', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'independencia', 'Independencia', 'Independencia Province', 'Independencia', 'independencia', 1, NOW(6), NOW(6), 1, 1),
(3504766, 63, 'HM', NULL, NULL, '0', 'DO-HM', 'DO-HM', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'hato mayor', 'Hato Mayor', 'Hato Mayor Province', 'Hato Mayor', 'hato mayor', 1, NOW(6), NOW(6), 1, 1),
(3505867, 63, 'ES', NULL, NULL, '0', 'DO-ES', 'DO-ES', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'espaillat', 'Espaillat', 'Espaillat Province', 'Espaillat', 'espaillat', 1, NOW(6), NOW(6), 1, 1),
(3506189, 63, 'SE', NULL, NULL, '0', 'DO-SE', 'DO-SE', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'el seibo', 'El Seibo', 'El Seibo Province', 'El Seibo', 'el seibo', 1, NOW(6), NOW(6), 1, 1),
(3507269, 63, 'EP', NULL, NULL, '0', 'DO-EP', 'DO-EP', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'elías piña', 'Elías Piña', 'Elías Piña Province', 'Elías Piña', 'elias pina', 1, NOW(6), NOW(6), 1, 1),
(3508718, 63, 'DU', NULL, NULL, '0', 'DO-DU', 'DO-DU', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'duarte', 'Duarte', 'Duarte Province', 'Duarte', 'duarte', 1, NOW(6), NOW(6), 1, 1),
(3508951, 63, 'DA', NULL, NULL, '0', 'DO-DA', 'DO-DA', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'dajabón', 'Dajabón', 'Dajabón Province', 'Dajabón', 'dajabon', 1, NOW(6), NOW(6), 1, 1),
(3512042, 63, 'BA', NULL, NULL, '0', 'DO-BA', 'DO-BA', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'barahona', 'Barahona', 'Barahona Province', 'Barahona', 'barahona', 1, NOW(6), NOW(6), 1, 1),
(3512050, 63, 'BR', NULL, NULL, '0', 'DO-BR', 'DO-BR', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'baoruco', 'Baoruco', 'Baoruco Province', 'Baoruco', 'baoruco', 1, NOW(6), NOW(6), 1, 1),
(3512209, 63, 'AZ', NULL, NULL, '0', 'DO-AZ', 'DO-AZ', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'azua', 'Azua', 'Azua Province', 'Azua', 'azua', 1, NOW(6), NOW(6), 1, 1),
(6201372, 63, 'JO', NULL, NULL, '0', 'DO-JO', 'DO-JO', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'san josé de ocoa', 'San José de Ocoa', 'San José de Ocoa Province', 'San José de Ocoa', 'san jose de ocoa', 1, NOW(6), NOW(6), 1, 1),
(6201373, 63, 'SD', NULL, NULL, '0', 'DO-SD', 'DO-SD', '+1-809', (SELECT id FROM t075t_division_types WHERE code = 'provincia_do' AND id_country = 63), 'santo domingo', 'Santo Domingo', 'Santo Domingo Province', 'Santo Domingo', 'santo domingo', 1, NOW(6), NOW(6), 1, 1);