-- Insertar tipo de división geográfica ADM1 para Seychelles: Distrito
INSERT INTO `t075t_division_types` (
    `code`, `id_country`, `id_level_type`, `name_spanish`, `name_english`, 
    `name_iso`, `name_original`, `name_transcribed`, `status`, 
    `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES (
    'distrito_sc', 198, 8, 'distrito', 'district', 
    'District', 'District', 'District', 1, NOW(6), NOW(6), 1, 1
);

-- Insertar las divisiones ADM1 de Seychelles (Distritos y Territorios Especiales)
INSERT INTO `t076t_states` (
    `geo_id`, `id_country`, `code`, `code_dane`, `code_dian`, `code_iso_numeric`, 
    `code_iso_alpha2`, `code_iso_alpha3`, `phone_code`, `id_division_type`, 
    `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`, 
    `status`, `created_at`, `updated_at`, `created_by`, `updated_by`
) VALUES 
(241151, 198, 'SC-23', NULL, NULL, '0', 'SC-23', 'SC-23', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'takamaka', 'Takamaka', 'Takamaka', 'Takamaka', 'Takamaka', 1, NOW(6), NOW(6), 1, 1),
(241181, 198, 'SC-22', NULL, NULL, '0', 'SC-22', 'SC-22', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'saint louis', 'Saint Louis', 'Saint Louis', 'Saint Louis', 'Saint Louis', 1, NOW(6), NOW(6), 1, 1),
(241215, 198, 'SC-27', NULL, NULL, '0', 'SC-27', 'SC-27', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'port glaud', 'Port Glaud', 'Port Glaud', 'Port Glaud', 'Port Glaud', 1, NOW(6), NOW(6), 1, 1),
(241221, 198, 'SC-20', NULL, NULL, '0', 'SC-20', 'SC-20', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'pointe larue', 'Pointe Larue', 'Pointe Larue', 'Pointe Larue', 'Pointe Larue', 1, NOW(6), NOW(6), 1, 1),
(241224, 198, 'SC-19', NULL, NULL, '0', 'SC-19', 'SC-19', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'plaisance', 'Plaisance', 'Plaisance', 'Plaisance', 'Plaisance', 1, NOW(6), NOW(6), 1, 1),
(241251, 198, 'SC-18', NULL, NULL, '0', 'SC-18', 'SC-18', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'mont fleuri', 'Mont Fleuri', 'Mont Fleuri', 'Mont Fleuri', 'Mont Fleuri', 1, NOW(6), NOW(6), 1, 1),
(241252, 198, 'SC-17', NULL, NULL, '0', 'SC-17', 'SC-17', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'mont buxton', 'Mont Buxton', 'Mont Buxton', 'Mont Buxton', 'Mont Buxton', 1, NOW(6), NOW(6), 1, 1),
(241302, 198, 'SC-26', NULL, NULL, '0', 'SC-26', 'SC-26', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'english river', 'English River', 'English River', 'English River', 'English River', 1, NOW(6), NOW(6), 1, 1),
(241311, 198, 'SC-25', NULL, NULL, '0', 'SC-25', 'SC-25', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'la digue', 'La Digue', 'La Digue', 'La Digue and Inner Islands', 'La Digue', 1, NOW(6), NOW(6), 1, 1),
(241330, 198, 'SC-24', NULL, NULL, '0', 'SC-24', 'SC-24', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'grand anse mahé', 'Grand Anse Mahé', 'Grand Anse Mahé', 'Grand Anse Mahe', 'Grand Anse Mahé', 1, NOW(6), NOW(6), 1, 1),
(241331, 198, 'SC-14', NULL, NULL, '0', 'SC-14', 'SC-14', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'grand anse praslin', 'Grand Anse Praslin', 'Grand Anse Praslin', 'Grand Anse Praslin', 'Grand Anse Praslin', 1, NOW(6), NOW(6), 1, 1),
(241336, 198, 'SC-12', NULL, NULL, '0', 'SC-12', 'SC-12', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'glacis', 'Glacis', 'Glacis', 'Glacis', 'Glacis', 1, NOW(6), NOW(6), 1, 1),
(241396, 198, 'SC-11', NULL, NULL, '0', 'SC-11', 'SC-11', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'cascade', 'Cascade', 'Cascade', 'Cascade', 'Cascade', 1, NOW(6), NOW(6), 1, 1),
(241424, 198, 'SC-10', NULL, NULL, '0', 'SC-10', 'SC-10', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'bel ombre', 'Bel Ombre', 'Bel Ombre', 'Bel Ombre', 'Bel Ombre', 1, NOW(6), NOW(6), 1, 1),
(241426, 198, 'SC-09', NULL, NULL, '0', 'SC-09', 'SC-09', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'bel air', 'Bel Air', 'Bel Air', 'Bel Air', 'Bel Air', 1, NOW(6), NOW(6), 1, 1),
(241428, 198, 'SC-08', NULL, NULL, '0', 'SC-08', 'SC-08', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'beau vallon', 'Beau Vallon', 'Beau Vallon', 'Beau Vallon', 'Beau Vallon', 1, NOW(6), NOW(6), 1, 1),
(241438, 198, 'SC-07', NULL, NULL, '0', 'SC-07', 'SC-07', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'baie sainte anne', 'Baie Sainte Anne', 'Baie Sainte Anne', 'Baie Sainte Anne', 'Baie Sainte Anne', 1, NOW(6), NOW(6), 1, 1),
(241439, 198, 'SC-06', NULL, NULL, '0', 'SC-06', 'SC-06', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'baie lazare', 'Baie Lazare', 'Baie Lazare', 'Baie Lazare', 'Baie Lazare', 1, NOW(6), NOW(6), 1, 1),
(241444, 198, 'SC-05', NULL, NULL, '0', 'SC-05', 'SC-05', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'anse royale', 'Anse Royale', 'Anse Royale', 'Anse Royale', 'Anse Royale', 1, NOW(6), NOW(6), 1, 1),
(241447, 198, 'SC-03', NULL, NULL, '0', 'SC-03', 'SC-03', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'anse etoile', 'Anse Etoile', 'Anse Etoile', 'Anse Etoile', 'Anse Etoile', 1, NOW(6), NOW(6), 1, 1),
(241449, 198, 'SC-02', NULL, NULL, '0', 'SC-02', 'SC-02', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'anse boileau', 'Anse Boileau', 'Anse Boileau', 'Anse Boileau', 'Anse Boileau', 1, NOW(6), NOW(6), 1, 1),
(241450, 198, 'SC-01', NULL, NULL, '0', 'SC-01', 'SC-01', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'anse aux pins', 'Anse aux Pins', 'Anse aux Pins', 'Anse aux Pins', 'Anse aux Pins', 1, NOW(6), NOW(6), 1, 1),
(448408, 198, 'SC-29', NULL, NULL, '0', 'SC-29', 'SC-29', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'les mamelles', 'Les Mamelles', 'Les Mamelles', 'Les Mamelles', 'Les Mamelles', 1, NOW(6), NOW(6), 1, 1),
(448409, 198, 'SC-30', NULL, NULL, '0', 'SC-30', 'SC-30', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'roche caiman', 'Roche Caiman', 'Roche Caiman', 'Roche Caiman', 'Roche Caiman', 1, NOW(6), NOW(6), 1, 1),
(448410, 198, 'SC-28', NULL, NULL, '0', 'SC-28', 'SC-28', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'au cap', 'Au Cap', 'Au Cap', 'Au Cap', 'Au Cap', 1, NOW(6), NOW(6), 1, 1),
(11876017, 198, 'SC-31', NULL, NULL, '0', 'SC-31', 'SC-31', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'islas exteriores', 'Outer Islands', 'Outer Islands', 'Outer Islands', 'Outer Islands', 1, NOW(6), NOW(6), 1, 1),
(12200079, 198, 'SC-32', NULL, NULL, '0', 'SC-32', 'SC-32', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'perseverance i', 'Ile Perseverance I', 'Ile Perseverance I', 'Ile Perseverance I', 'Ile Perseverance I', 1, NOW(6), NOW(6), 1, 1),
(12200080, 198, 'SC-33', NULL, NULL, '0', 'SC-33', 'SC-33', '+248', (SELECT id FROM t075t_division_types WHERE code = 'distrito_sc' AND id_country = 198), 'perseverance ii', 'Ile Perseverance II', 'Ile Perseverance II', 'Ile Perseverance II', 'Ile Perseverance II', 1, NOW(6), NOW(6), 1, 1);