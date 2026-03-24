-- t076t_states_BE_belgica_ADM1
-- Regiones de BÉLGICA | id_country:22 | Generado:2026-03-20 13:56:00.001987

INSERT INTO t076t_states
  (geo_id, id_country, code, code_dane, code_dian, code_iso_numeric,
   code_iso_alpha2, code_iso_alpha3, phone_code, id_division_type,
   name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by)
VALUES
  (2800867, 22, 'BE-BRU', NULL, NULL, 'BRU',
   'BE-BRU', 'BEL-BRU', '+32', 13,
   'región de bruselas capital', 'Bruxelles-Capitale', 'Bruxelles-Capitale', 'Bruxelles-Capitale / Brussels Hoofdstedelijk Gewest', 'Bruxelles-Capitale',
   1, '2026-03-20 13:56:00.001987', '2026-03-20 13:56:00.001987', 1, 1), -- Bruxelles-Capitale
  (3337388, 22, 'BE-VLG', NULL, NULL, 'VLG',
   'BE-VLG', 'BEL-VLG', '+32', 13,
   'flandes', 'Flanders', 'Vlaams Gewest', 'Vlaams Gewest / Région flamande', 'Vlaams Gewest',
   1, '2026-03-20 13:56:00.001987', '2026-03-20 13:56:00.001987', 1, 1), -- Flanders
  (3337387, 22, 'BE-WAL', NULL, NULL, 'WAL',
   'BE-WAL', 'BEL-WAL', '+32', 13,
   'valonia', 'Wallonia', 'Région wallonne', 'Région wallonne / Waals Gewest', 'Region wallonne',
   1, '2026-03-20 13:56:00.001987', '2026-03-20 13:56:00.001987', 1, 1); -- Wallonia

-- Total registros: 3 (ADM1)
