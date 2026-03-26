-- =============================================
-- Script de inserción para COLOMBIA (CO)
-- Archivo: CO_colombia_ADM1_ins.sql
-- =============================================

-- Insertar tipo de división geográfica ADM1 para COLOMBIA: Departamento
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`,
    `name_iso`, `name_original`, `name_transcribed`, `status`,
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'departamento_co', 50, 8, 'Departamento', 'Department',
    'Department', 'Departamento', 'departamento', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de COLOMBIA (Departamentos y Distrito Capital)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`,
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`,
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES
(3666082, 50, 'VID', NULL, NULL, '0', 'CO-VID', 'CO-VID', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'vichada', 'Vichada', 'Vichada Department', 'Departamento del Vichada', 'vichada', 1, NOW(6), NOW(6), 1, 1),
(3666254, 50, 'VAU', NULL, NULL, '0', 'CO-VAU', 'CO-VAU', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'vaupés', 'Vaupés', 'Vaupés Department', 'Departamento del Vaupés', 'vaupes', 1, NOW(6), NOW(6), 1, 1),
(3666313, 50, 'VAC', NULL, NULL, '0', 'CO-VAC', 'CO-VAC', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'valle del cauca', 'Valle del Cauca', 'Valle del Cauca Department', 'Departamento del Valle del Cauca', 'valle del cauca', 1, NOW(6), NOW(6), 1, 1),
(3666951, 50, 'TOL', NULL, NULL, '0', 'CO-TOL', 'CO-TOL', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'tolima', 'Tolima', 'Tolima Department', 'Departamento de Tolima', 'tolima', 1, NOW(6), NOW(6), 1, 1),
(3667725, 50, 'SUC', NULL, NULL, '0', 'CO-SUC', 'CO-SUC', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'sucre', 'Sucre', 'Sucre Department', 'Departamento de Sucre', 'sucre', 1, NOW(6), NOW(6), 1, 1),
(3668578, 50, 'SAN', NULL, NULL, '0', 'CO-SAN', 'CO-SAN', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'santander', 'Santander', 'Santander Department', 'Departamento de Santander', 'santander', 1, NOW(6), NOW(6), 1, 1),
(3670205, 50, 'SAP', NULL, NULL, '0', 'CO-SAP', 'CO-SAP', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'san andrés y providencia', 'San Andrés y Providencia', 'San Andrés y Providencia Department', 'Providencia y Santa Catalina, Departamento de Archipiélago de San Andrés', 'san andres y providencia', 1, NOW(6), NOW(6), 1, 1),
(3670698, 50, 'RIS', NULL, NULL, '0', 'CO-RIS', 'CO-RIS', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'risaralda', 'Risaralda', 'Risaralda Department', 'Departamento de Risaralda', 'risaralda', 1, NOW(6), NOW(6), 1, 1),
(3671087, 50, 'QUI', NULL, NULL, '0', 'CO-QUI', 'CO-QUI', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'quindío', 'Quindío', 'Quindío Department', 'Quindío Department', 'quindio', 1, NOW(6), NOW(6), 1, 1),
(3671178, 50, 'PUT', NULL, NULL, '0', 'CO-PUT', 'CO-PUT', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'putumayo', 'Putumayo', 'Putumayo Department', 'Departamento del Putumayo', 'putumayo', 1, NOW(6), NOW(6), 1, 1),
(3673798, 50, 'NSA', NULL, NULL, '0', 'CO-NSA', 'CO-NSA', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'norte de santander', 'Norte de Santander', 'Norte de Santander Department', 'Departamento de Norte de Santander', 'norte de santander', 1, NOW(6), NOW(6), 1, 1),
(3674021, 50, 'NAR', NULL, NULL, '0', 'CO-NAR', 'CO-NAR', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'nariño', 'Nariño', 'Nariño Department', 'Departamento de Nariño', 'narino', 1, NOW(6), NOW(6), 1, 1),
(3674810, 50, 'MET', NULL, NULL, '0', 'CO-MET', 'CO-MET', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'meta', 'Meta', 'Meta Department', 'Departamento del Meta', 'meta', 1, NOW(6), NOW(6), 1, 1),
(3675686, 50, 'MAG', NULL, NULL, '0', 'CO-MAG', 'CO-MAG', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'magdalena', 'Magdalena', 'Magdalena Department', 'Departamento del Magdalena', 'magdalena', 1, NOW(6), NOW(6), 1, 1),
(3678847, 50, 'LAG', NULL, NULL, '0', 'CO-LAG', 'CO-LAG', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'la guajira', 'La Guajira', 'La Guajira Department', 'Departamento de La Guajira', 'la guajira', 1, NOW(6), NOW(6), 1, 1),
(3680692, 50, 'HUI', NULL, NULL, '0', 'CO-HUI', 'CO-HUI', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'huila', 'Huila', 'Huila Department', 'Departamento del Huila', 'huila', 1, NOW(6), NOW(6), 1, 1),
(3681344, 50, 'GUV', NULL, NULL, '0', 'CO-GUV', 'CO-GUV', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'guaviare', 'Guaviare', 'Guaviare Department', 'Departamento del Guaviare', 'guaviare', 1, NOW(6), NOW(6), 1, 1),
(3681652, 50, 'GUA', NULL, NULL, '0', 'CO-GUA', 'CO-GUA', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'guainía', 'Guainía', 'Guainía Department', 'Departamento del Guainía', 'guainia', 1, NOW(6), NOW(6), 1, 1),
(3685413, 50, 'CUN', NULL, NULL, '0', 'CO-CUN', 'CO-CUN', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'cundinamarca', 'Cundinamarca', 'Cundinamarca Department', 'Departamento de Cundinamarca', 'cundinamarca', 1, NOW(6), NOW(6), 1, 1),
(3685889, 50, 'COR', NULL, NULL, '0', 'CO-COR', 'CO-COR', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'córdoba', 'Córdoba', 'Córdoba Department', 'Departamento de Córdoba', 'cordoba', 1, NOW(6), NOW(6), 1, 1),
(3686431, 50, 'CHO', NULL, NULL, '0', 'CO-CHO', 'CO-CHO', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'chocó', 'Chocó', 'Chocó Department', 'Departamento del Chocó', 'choco', 1, NOW(6), NOW(6), 1, 1),
(3686880, 50, 'CES', NULL, NULL, '0', 'CO-CES', 'CO-CES', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'cesar', 'Cesar', 'Cesar Department', 'Departamento del Cesar', 'cesar', 1, NOW(6), NOW(6), 1, 1),
(3687029, 50, 'CAU', NULL, NULL, '0', 'CO-CAU', 'CO-CAU', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'cauca', 'Cauca', 'Cauca Department', 'Departamento del Cauca', 'cauca', 1, NOW(6), NOW(6), 1, 1),
(3687173, 50, 'CAS', NULL, NULL, '0', 'CO-CAS', 'CO-CAS', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'casanare', 'Casanare', 'Casanare Department', 'Departamento de Casanare', 'casanare', 1, NOW(6), NOW(6), 1, 1),
(3687479, 50, 'CAQ', NULL, NULL, '0', 'CO-CAQ', 'CO-CAQ', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'caquetá', 'Caquetá', 'Caquetá Department', 'Departamento del Caquetá', 'caqueta', 1, NOW(6), NOW(6), 1, 1),
(3687951, 50, 'CAL', NULL, NULL, '0', 'CO-CAL', 'CO-CAL', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'caldas', 'Caldas', 'Caldas Department', 'Departamento de Caldas', 'caldas', 1, NOW(6), NOW(6), 1, 1),
(3688536, 50, 'BOY', NULL, NULL, '0', 'CO-BOY', 'CO-BOY', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'boyacá', 'Boyacá', 'Boyacá Department', 'Departamento de Boyacá', 'boyaca', 1, NOW(6), NOW(6), 1, 1),
(3688650, 50, 'BOL', NULL, NULL, '0', 'CO-BOL', 'CO-BOL', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'bolívar', 'Bolívar', 'Bolívar Department', 'Departamento de Bolívar', 'bolivar', 1, NOW(6), NOW(6), 1, 1),
(3688685, 50, 'DC', NULL, NULL, '0', 'CO-DC', 'CO-DC', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'bogotá', 'Bogotá', 'Bogotá Capital District', 'Distrito Capital de Bogotá', 'bogota', 1, NOW(6), NOW(6), 1, 1),
(3689436, 50, 'ATL', NULL, NULL, '0', 'CO-ATL', 'CO-ATL', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'atlántico', 'Atlántico', 'Atlántico Department', 'Departamento del Atlántico', 'atlantico', 1, NOW(6), NOW(6), 1, 1),
(3689717, 50, 'ARA', NULL, NULL, '0', 'CO-ARA', 'CO-ARA', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'arauca', 'Arauca', 'Arauca Department', 'Departamento de Arauca', 'arauca', 1, NOW(6), NOW(6), 1, 1),
(3689815, 50, 'ANT', NULL, NULL, '0', 'CO-ANT', 'CO-ANT', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'antioquia', 'Antioquia', 'Antioquia Department', 'Departamento de Antioquia', 'antioquia', 1, NOW(6), NOW(6), 1, 1),
(3689982, 50, 'AMA', NULL, NULL, '0', 'CO-AMA', 'CO-AMA', '+57', (SELECT id FROM t075t_division_types WHERE code = 'departamento_co' AND id_country = 50), 'amazonas', 'Amazonas', 'Amazonas Department', 'Amazonas', 'amazonas', 1, NOW(6), NOW(6), 1, 1);