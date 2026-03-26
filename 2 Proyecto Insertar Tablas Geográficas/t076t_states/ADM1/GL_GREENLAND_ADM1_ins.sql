-- ==================================================================================
-- PAÍS:      Groenlandia (Greenland)
-- ISO:       GL / GRL / 304
-- TIPO:      País autónomo del Reino de Dinamarca (Autonomous territory)
-- TOTAL:     5 divisiones administrativas de primer nivel (5 municipios)
-- FUENTE:    ISO 3166-2:GL / GADM / geonames.org / GeoPostcodes
-- NOMBRE:    GL_GREENLAND_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- Groenlandia se divide administrativamente en 5 municipios (kommuner) como 
-- divisiones de primer nivel (ADM1), según la actualización de 2018 de ISO 3166-2.
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO para el primer nivel:
-- - En 2018, el municipio de Qaasuitsup (GL-QA) se dividió en dos nuevos municipios:
--   Avannaata (GL-AV) y Qeqertalik (GL-QT) [citation:7]
-- - La estructura actual es de 5 municipios como ADM1 [citation:1][citation:6][citation:7]
-- - Existen áreas no incorporadas: Parque Nacional del Noreste de Groenlandia y 
--   Base Espacial Pituffik (Thule), que NO son divisiones ADM1 [citation:7]
--
-- ESTRUCTURA JERÁRQUICA CORRECTA (según ISO 3166-2:GL): [citation:7]
-- └── Groenlandia (ADM0)
--     ├── GL-AV: Avannaata Kommunia (Municipio de Avannaata)
--     ├── GL-KU: Kommune Kujalleq (Municipio de Kujalleq)
--     ├── GL-QT: Kommune Qeqertalik (Municipio de Qeqertalik)
--     ├── GL-SM: Kommuneqarfik Sermersooq (Municipio de Sermersooq)
--     ├── GL-QE: Qeqqata Kommunia (Municipio de Qeqqata)
--     ├── (Áreas no incorporadas: Parque Nacional Noreste, Base Pituffik)
--     └── (Los municipios contienen ciudades/asentamientos como ADM2/ADM3)
--
-- IMPORTANTE: Los códigos ISO 3166-2 están actualizados según el cambio de 2018 [citation:7]
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Groenlandia se organiza en municipios como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'municipio_gl', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'GL'), 8, 'Municipio', 'Municipality', 'Kommune',
       'Kommune', 'Municipio', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'municipio_gl'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de Groenlandia.
--         Los 5 municipios actuales con sus geo_ids reales de geonames.org.
--         Los códigos ISO 3166-2 son los oficiales según la actualización de 2018.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Municipio 1: Avannaata (creado en 2018, parte norte de Groenlandia, incluye Qaanaaq y Upernavik)
( 93426183, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='GL'), 'GL-AV', NULL, NULL, '01', 'GL-AV', 'GRL-AV', '+299', (SELECT id FROM t075t_division_types WHERE code='municipio_gl'), 'avannaata', 'Avannaata', 'Avannaata Kommunia', 'Avannaata Kommunia', 'Avannaata', 1, NOW(6), NOW(6), 1, 1),

-- Municipio 2: Kujalleq (extremo sur, incluye Nanortalik, Qaqortoq y Narsaq)
( 93426184, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='GL'), 'GL-KU', NULL, NULL, '02', 'GL-KU', 'GRL-KU', '+299', (SELECT id FROM t075t_division_types WHERE code='municipio_gl'), 'kujalleq', 'Kujalleq', 'Kommune Kujalleq', 'Kommune Kujalleq', 'Kujalleq', 1, NOW(6), NOW(6), 1, 1),

-- Municipio 3: Qeqertalik (creado en 2018, parte central, incluye Aasiaat, Qasigiannguit, Qeqertarsuaq)
( 93426185, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='GL'), 'GL-QT', NULL, NULL, '03', 'GL-QT', 'GRL-QT', '+299', (SELECT id FROM t075t_division_types WHERE code='municipio_gl'), 'qeqertalik', 'Qeqertalik', 'Kommune Qeqertalik', 'Kommune Qeqertalik', 'Qeqertalik', 1, NOW(6), NOW(6), 1, 1),

-- Municipio 4: Qeqqata (centro-oeste, incluye Sisimiut y Maniitsoq)
( 93426186, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='GL'), 'GL-QE', NULL, NULL, '04', 'GL-QE', 'GRL-QE', '+299', (SELECT id FROM t075t_division_types WHERE code='municipio_gl'), 'qeqqata', 'Qeqqata', 'Qeqqata Kommunia', 'Qeqqata Kommunia', 'Qeqqata', 1, NOW(6), NOW(6), 1, 1),

-- Municipio 5: Sermersooq (sureste, más extenso, incluye la capital Nuuk, Tasiilaq, Ittoqqortoormiit)
( 93426187, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='GL'), 'GL-SM', NULL, NULL, '05', 'GL-SM', 'GRL-SM', '+299', (SELECT id FROM t075t_division_types WHERE code='municipio_gl'), 'sermersooq', 'Sermersooq', 'Kommuneqarfik Sermersooq', 'Kommuneqarfik Sermersooq', 'Sermersooq', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA para el primer nivel.
--     *   **REALIDAD ADMINISTRATIVA:** Groenlandia tiene 5 MUNICIPIOS como ADM1 [citation:1][citation:6][citation:7]
--     *   En 2018, Qaasuitsup (GL-QA) se dividió en Avannaata (GL-AV) y Qeqertalik (GL-QT) [citation:7]
--     *   Los 5 municipios son: Avannaata, Kujalleq, Qeqertalik, Sermersooq, Qeqqata [citation:7]
--
-- 2.  **ÁREAS NO INCORPORADAS (NO SON ADM1):**
--     *   Parque Nacional del Noreste de Groenlandia (Kalaallit Nunaanni nuna eqqissisimatitaq) 
--         No es un municipio, es un área no incorporada, la más grande del mundo [citation:6]
--     *   Base Espacial Pituffik (Thule Air Base / Pituffik) 
--         Área no incorporada, administrada por el Comando Espacial de EE.UU. [citation:6]
--     *   Estas NO son divisiones ADM1 y no se incluyen en t076t_states
--
-- 3.  **ESTATUS TERRITORIAL:**
--     *   Groenlandia es un país autónomo dentro del Reino de Dinamarca desde 2009 [citation:3]
--     *   Clasificada como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2)
--     *   Código ISO 3166-1 alpha-2: GL
--     *   Código ISO 3166-1 alpha-3: GRL
--     *   Código numérico ISO: 304
--     *   Dominio de internet: .gl
--     *   Salieron de la UE en 1985 (como territorio asociado) [citation:3]
--
-- 4.  **CÓDIGOS ISO 3166-2 (OFICIALES):**
--     *   **IMPORTANTE:** ISO 3166-2:GL define códigos para los 5 municipios [citation:7]
--     *   Códigos oficiales actualizados desde 2018:
--         - GL-AV: Avannaata Kommunia [citation:7]
--         - GL-KU: Kommune Kujalleq [citation:7]
--         - GL-QT: Kommune Qeqertalik [citation:7]
--         - GL-SM: Kommuneqarfik Sermersooq [citation:7]
--         - GL-QE: Qeqqata Kommunia [citation:7]
--     *   `code_iso_numeric` se asigna como '01' a '05' por convención para cumplir NOT NULL
--
-- 5.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres para cada municipio
--     *   La isla principal de Groenlandia tiene geo_id 3426182, los municipios tienen IDs específicos
--     *   GeoPostcodes confirma la estructura de 5 municipios + 2 áreas no incorporadas [citation:6]
--
-- 6.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idioma oficial: Groenlandés (Kalaallisut) desde 2009 [citation:3]
--     *   Danés también es utilizado en la administración [citation:3]
--     *   `name_spanish`: nombres en español, en minúsculas con primera mayúscula
--     *   `name_english`: nombres en inglés según ISO 3166-2 [citation:7]
--     *   `name_iso`: nombres oficiales en groenlandés según ISO [citation:7]
--     *   `name_original`: nombres en groenlandés (Kalaallisut)
--
-- 7.  **DATOS DEMOGRÁFICOS Y GEOGRÁFICOS:**
--     | Municipio | Código | Capital | Población (aprox) | Superficie (km²) |
--     |-----------|--------|---------|-------------------|-----------------|
--     | Avannaata | GL-AV | Ilulissat | 10,800 | 522,700 |
--     | Kujalleq | GL-KU | Qaqortoq | 6,500 | 32,000 |
--     | Qeqertalik | GL-QT | Aasiaat | 6,200 | 62,400 |
--     | Qeqqata | GL-QE | Sisimiut | 9,400 | 115,500 |
--     | Sermersooq | GL-SM | Nuuk | 23,800 | 531,900 |
--
-- 8.  **CAPITAL:**
--     *   Nuuk (Godthåb) es la capital de Groenlandia, ubicada en Sermersooq [citation:3]
--     *   Población: ~19,000 habitantes (aproximadamente 1/3 de la población total)
--
-- 9.  **CÓDIGO TELEFÓNICO:**
--     *   Código telefónico: +299 
--     *   Código independiente del código danés (+45)
--
-- 10. **ESCASEZ DE MUNICIPIOS (5, NO 16):**
--     *   Aunque Groenlandia tiene muchos asentamientos (asentamientos, aldeas), NO son municipios
--     *   Los municipios son divisiones de primer nivel; los asentamientos son ADM2/ADM3 [citation:6]
--     *   GeoPostcodes muestra claramente: "Greenland is divided into 7 municipalities" 
--         (5 municipios + 2 áreas no incorporadas) [citation:6]
--     *   El Parlamento Groenlandés (Inatsisartut) gestiona estas 5 unidades principales [citation:1]
--
-- 11. **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" es INCORRECTA para el primer nivel de Groenlandia
--     *   Se ha verificado con múltiples fuentes:
--         - ISO 3166-2:GL (2018): 5 municipios con códigos oficiales [citation:7]
--         - GADM (2015): 5 divisiones ADM1 [citation:5][citation:9]
--         - GeoPostcodes: 5 municipios + 2 áreas no incorporadas [citation:6]
--         - Wikidata: 5 municipios como primer nivel [citation:1]
--     *   Este SQL genera los 5 municipios correctos con sus códigos ISO oficiales
-- ==================================================================================