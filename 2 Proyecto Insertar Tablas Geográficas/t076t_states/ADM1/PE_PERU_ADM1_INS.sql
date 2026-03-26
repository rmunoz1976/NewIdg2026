-- Insertar tipo de división geográfica ADM1 para Perú: Departamento
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'departamento_pe', 173, 8, 'departamento', 'department', 
    'Department', 'Departamento', 'Departamento', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Perú (Departamentos y Provincias Especiales)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(3691099, 173, 'PE-UCA', NULL, NULL, '0', 'PE-UCA', 'PE-UCA', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'ucayali', 'Ucayali', 'Ucayali', 'Departamento de Ucayali', 'Ucayali', 1, NOW(6), NOW(6), 1, 1),
(3691146, 173, 'PE-TUM', NULL, NULL, '0', 'PE-TUM', 'PE-TUM', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'tumbes', 'Tumbes', 'Tumbes', 'Departamento de Tumbes', 'Tumbes', 1, NOW(6), NOW(6), 1, 1),
(3692385, 173, 'PE-SAM', NULL, NULL, '0', 'PE-SAM', 'PE-SAM', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'san martín', 'San Martín', 'San Martín', 'Departamento de San Martín', 'San Martín', 1, NOW(6), NOW(6), 1, 1),
(3693525, 173, 'PE-PIU', NULL, NULL, '0', 'PE-PIU', 'PE-PIU', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'piura', 'Piura', 'Piura', 'Departamento de Piura', 'Piura', 1, NOW(6), NOW(6), 1, 1),
(3695238, 173, 'PE-LOR', NULL, NULL, '0', 'PE-LOR', 'PE-LOR', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'loreto', 'Loreto', 'Loreto', 'Departamento de Loreto', 'Loreto', 1, NOW(6), NOW(6), 1, 1),
(3695753, 173, 'PE-LAM', NULL, NULL, '0', 'PE-LAM', 'PE-LAM', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'lambayeque', 'Lambayeque', 'Lambayeque', 'Departamento de Lambayeque', 'Lambayeque', 1, NOW(6), NOW(6), 1, 1),
(3695781, 173, 'PE-LAL', NULL, NULL, '0', 'PE-LAL', 'PE-LAL', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'la libertad', 'La Libertad', 'La Libertad', 'Departamento de La Libertad', 'La Libertad', 1, NOW(6), NOW(6), 1, 1),
(3696416, 173, 'PE-HUC', NULL, NULL, '0', 'PE-HUC', 'PE-HUC', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'huánuco', 'Huánuco', 'Huánuco', 'Departamento de Huánuco', 'Huánuco', 1, NOW(6), NOW(6), 1, 1),
(3699087, 173, 'PE-CAJ', NULL, NULL, '0', 'PE-CAJ', 'PE-CAJ', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'cajamarca', 'Cajamarca', 'Cajamarca', 'Departamento de Cajamarca', 'Cajamarca', 1, NOW(6), NOW(6), 1, 1),
(3699674, 173, 'PE-ANC', NULL, NULL, '0', 'PE-ANC', 'PE-ANC', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'áncash', 'Áncash', 'Áncash', 'Departamento de Ancash', 'Áncash', 1, NOW(6), NOW(6), 1, 1),
(3699699, 173, 'PE-AMA', NULL, NULL, '0', 'PE-AMA', 'PE-AMA', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'amazonas', 'Amazonas', 'Amazonas', 'Departamento de Amazonas', 'Amazonas', 1, NOW(6), NOW(6), 1, 1),
(3928127, 173, 'PE-TAC', NULL, NULL, '0', 'PE-TAC', 'PE-TAC', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'tacna', 'Tacna', 'Tacna', 'Departamento de Tacna', 'Tacna', 1, NOW(6), NOW(6), 1, 1),
(3931275, 173, 'PE-PUN', NULL, NULL, '0', 'PE-PUN', 'PE-PUN', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'puno', 'Puno', 'Puno', 'Departamento de Puno', 'Puno', 1, NOW(6), NOW(6), 1, 1),
(3932834, 173, 'PE-PAS', NULL, NULL, '0', 'PE-PAS', 'PE-PAS', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'pasco', 'Pasco', 'Pasco', 'Departamento de Pasco', 'Pasco', 1, NOW(6), NOW(6), 1, 1),
(3934607, 173, 'PE-MOQ', NULL, NULL, '0', 'PE-MOQ', 'PE-MOQ', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'moquegua', 'Moquegua', 'Moquegua', 'Departamento de Moquegua', 'Moquegua', 1, NOW(6), NOW(6), 1, 1),
(3935619, 173, 'PE-MDD', NULL, NULL, '0', 'PE-MDD', 'PE-MDD', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'madre de dios', 'Madre de Dios', 'Madre de Dios', 'Departamento de Madre de Dios', 'Madre de Dios', 1, NOW(6), NOW(6), 1, 1),
(3936451, 173, 'PE-LMA', NULL, NULL, '0', 'PE-LMA', 'PE-LMA', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'lima', 'Lima', 'Lima', 'Provincia de Lima', 'Lima', 1, NOW(6), NOW(6), 1, 1),
(3936452, 173, 'PE-LIM', NULL, NULL, '0', 'PE-LIM', 'PE-LIM', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'lima', 'Lima', 'Lima', 'Departamento de Lima', 'Lima', 1, NOW(6), NOW(6), 1, 1),
(3937485, 173, 'PE-JUN', NULL, NULL, '0', 'PE-JUN', 'PE-JUN', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'junín', 'Junín', 'Junín', 'Departamento de Junín', 'Junín', 1, NOW(6), NOW(6), 1, 1),
(3938526, 173, 'PE-ICA', NULL, NULL, '0', 'PE-ICA', 'PE-ICA', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'ica', 'Ica', 'Ica', 'Departamento de Ica', 'Ica', 1, NOW(6), NOW(6), 1, 1),
(3939467, 173, 'PE-HUV', NULL, NULL, '0', 'PE-HUV', 'PE-HUV', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'huancavelica', 'Huancavelica', 'Huancavelica', 'Departamento de Huancavelica', 'Huancavelica', 1, NOW(6), NOW(6), 1, 1),
(3941583, 173, 'PE-CUS', NULL, NULL, '0', 'PE-CUS', 'PE-CUS', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'cusco', 'Cusco', 'Cusco', 'Departamento de Cusco', 'Cusco', 1, NOW(6), NOW(6), 1, 1),
(3946080, 173, 'PE-CAL', NULL, NULL, '0', 'PE-CAL', 'PE-CAL', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'callao', 'Callao', 'Callao', 'Provincia Constitucional del Callao', 'Callao', 1, NOW(6), NOW(6), 1, 1),
(3947018, 173, 'PE-AYA', NULL, NULL, '0', 'PE-AYA', 'PE-AYA', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'ayacucho', 'Ayacucho', 'Ayacucho', 'Departamento de Ayacucho', 'Ayacucho', 1, NOW(6), NOW(6), 1, 1),
(3947319, 173, 'PE-ARE', NULL, NULL, '0', 'PE-ARE', 'PE-ARE', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'arequipa', 'Arequipa', 'Arequipa', 'Departamento de Arequipa', 'Arequipa', 1, NOW(6), NOW(6), 1, 1),
(3947421, 173, 'PE-APU', NULL, NULL, '0', 'PE-APU', 'PE-APU', '+51', (SELECT id FROM t075t_division_types WHERE code = 'departamento_pe' AND id_country = 173), 'apurímac', 'Apurímac', 'Apurímac', 'Departamento de Apurímac', 'Apurímac', 1, NOW(6), NOW(6), 1, 1);