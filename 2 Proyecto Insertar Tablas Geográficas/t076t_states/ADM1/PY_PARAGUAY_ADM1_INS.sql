-- Insertar tipo de división geográfica ADM1 para Paraguay: Departamento
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'departamento_py', 172, 8, 'departamento', 'department', 
    'Department', 'Departamento', 'Departamento', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Paraguay (Departamentos y Distrito Capital)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(3437027, 172, 'PY-2', NULL, NULL, '0', 'PY-2', 'PY-2', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'san pedro', 'San Pedro', 'San Pedro', 'Departamento de San Pedro', 'San Pedro', 1, NOW(6), NOW(6), 1, 1),
(3437443, 172, 'PY-15', NULL, NULL, '0', 'PY-15', 'PY-15', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'presidente hayes', 'Presidente Hayes', 'Presidente Hayes', 'Departamento de Presidente Hayes', 'Presidente Hayes', 1, NOW(6), NOW(6), 1, 1),
(3437599, 172, 'PY-9', NULL, NULL, '0', 'PY-9', 'PY-9', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'paraguarí', 'Paraguarí', 'Paraguarí', 'Departamento de Paraguarí', 'Paraguarí', 1, NOW(6), NOW(6), 1, 1),
(3437677, 172, 'PY-12', NULL, NULL, '0', 'PY-12', 'PY-12', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'ñeembucú', 'Ñeembucú', 'Ñeembucú', 'Departamento de Ñeembucú', 'Ñeembucú', 1, NOW(6), NOW(6), 1, 1),
(3437727, 172, 'PY-8', NULL, NULL, '0', 'PY-8', 'PY-8', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'misiones', 'Misiones', 'Misiones', 'Departamento de Misiones', 'Misiones', 1, NOW(6), NOW(6), 1, 1),
(3437923, 172, 'PY-7', NULL, NULL, '0', 'PY-7', 'PY-7', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'itapúa', 'Itapúa', 'Itapúa', 'Departamento de Itapúa', 'Itapúa', 1, NOW(6), NOW(6), 1, 1),
(3438049, 172, 'PY-4', NULL, NULL, '0', 'PY-4', 'PY-4', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'guairá', 'Guairá', 'Guairá', 'Departamento del Guairá', 'Guairá', 1, NOW(6), NOW(6), 1, 1),
(3438827, 172, 'PY-3', NULL, NULL, '0', 'PY-3', 'PY-3', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'cordillera', 'Cordillera', 'Cordillera', 'Departamento de la Cordillera', 'Cordillera', 1, NOW(6), NOW(6), 1, 1),
(3438833, 172, 'PY-1', NULL, NULL, '0', 'PY-1', 'PY-1', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'concepción', 'Concepción', 'Concepción', 'Departamento de Concepción', 'Concepción', 1, NOW(6), NOW(6), 1, 1),
(3439137, 172, 'PY-11', NULL, NULL, '0', 'PY-11', 'PY-11', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'central', 'Central', 'Central', 'Departamento Central', 'Central', 1, NOW(6), NOW(6), 1, 1),
(3439216, 172, 'PY-14', NULL, NULL, '0', 'PY-14', 'PY-14', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'canindeyú', 'Canindeyú', 'Canindeyú', 'Departamento de Canindeyú', 'Canindeyú', 1, NOW(6), NOW(6), 1, 1),
(3439296, 172, 'PY-5', NULL, NULL, '0', 'PY-5', 'PY-5', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'caazapá', 'Caazapá', 'Caazapá', 'Departamento de Caazapá', 'Caazapá', 1, NOW(6), NOW(6), 1, 1),
(3439312, 172, 'PY-4', NULL, NULL, '0', 'PY-4', 'PY-4', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'caaguazú', 'Caaguazú', 'Caaguazú', 'Departamento de Caaguazú', 'Caaguazú', 1, NOW(6), NOW(6), 1, 1),
(3439433, 172, 'PY-13', NULL, NULL, '0', 'PY-13', 'PY-13', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'amambay', 'Amambay', 'Amambay', 'Departamento del Amambay', 'Amambay', 1, NOW(6), NOW(6), 1, 1),
(3439440, 172, 'PY-10', NULL, NULL, '0', 'PY-10', 'PY-10', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'alto paraná', 'Alto Paraná', 'Alto Paraná', 'Departamento del Alto Paraná', 'Alto Paraná', 1, NOW(6), NOW(6), 1, 1),
(3439441, 172, 'PY-16', NULL, NULL, '0', 'PY-16', 'PY-16', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'alto paraguay', 'Alto Paraguay', 'Alto Paraguay', 'Departamento de Alto Paraguay', 'Alto Paraguay', 1, NOW(6), NOW(6), 1, 1),
(3474570, 172, 'PY-ASU', NULL, NULL, '0', 'PY-ASU', 'PY-ASU', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'asunción', 'Asunción', 'Asunción', 'Asunción', 'Asunción', 1, NOW(6), NOW(6), 1, 1),
(3867442, 172, 'PY-19', NULL, NULL, '0', 'PY-19', 'PY-19', '+595', (SELECT id FROM t075t_division_types WHERE code = 'departamento_py' AND id_country = 172), 'boquerón', 'Boquerón', 'Boquerón', 'Departamento de Boquerón', 'Boquerón', 1, NOW(6), NOW(6), 1, 1);