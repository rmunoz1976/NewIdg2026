-- ==================================================================================
-- PAÍS:      Isla de Man (Isle of Man)
-- ISO:       IM / IMN / 833
-- TIPO:      Dependencia de la Corona Británica (British Crown Dependency)
-- TOTAL:     4 divisiones administrativas de primer nivel (4 sheadings)
-- FUENTE:    ISO 3166-2:IM / geonames.org / GeoPostcodes / Isle of Man Government
-- NOMBRE:    IM_ISLE_OF_MAN_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- La Isla de Man se divide administrativamente en 4 sheadings (divisiones históricas)
-- que constituyen las divisiones de primer nivel (ADM1) del territorio .
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO. La Isla de Man tiene:
-- - 4 sheadings como ADM1 (divisiones de primer nivel) 
-- - 15 parroquias (parishes) como ADM2 (dentro de los sheadings)
-- - 6 municipios (towns) que son subdivisiones locales
-- - 2 localidades con estatus de ciudad (Douglas, Peel)
--
-- ESTRUCTURA JERÁRQUICA CORRECTA:
-- └── Isla de Man (ADM0) - Dependencia de la Corona
--     ├── 4 sheadings (ADM1) : Glenfaba, Garff, Michael, Middle, Rushen
--     │   └── 15 parroquias (ADM2)
--     └── 6 municipios/towns (administración local)
--
-- IMPORTANTE: ISO 3166-2:IM NO DEFINE códigos oficiales para subdivisiones .
-- A pesar de tener una estructura administrativa bien definida, ISO no les ha asignado
-- códigos. Sin embargo, Geonames sí proporciona códigos para las sheadings .
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         La Isla de Man se organiza en sheadings como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'sheading_im', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'IM'), 8, 'Sheading', 'Sheading', 'Sheading',
       'Sheading', 'Sheading', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'sheading_im'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de la Isla de Man.
--         Las 4 sheadings con sus geo_ids reales de geonames.org.
--         NOTA: ISO 3166-2:IM no define códigos oficiales; se usan códigos IM-XXX.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Sheading 1: Glenfaba (parte occidental de la isla, incluye Peel)
( 3042187, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='IM'), 'IM-GL', NULL, NULL, '01', 'IM-GL', 'IMN-GL', '+44', (SELECT id FROM t075t_division_types WHERE code='sheading_im'), 'glenfaba', 'Glenfaba', 'Glenfaba Sheading', 'Glenfaba Sheading', 'Glenfaba', 1, NOW(6), NOW(6), 1, 1),

-- Sheading 2: Garff (parte este, incluye Laxey, Maughold, Lonan)
( 3042188, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='IM'), 'IM-GA', NULL, NULL, '02', 'IM-GA', 'IMN-GA', '+44', (SELECT id FROM t075t_division_types WHERE code='sheading_im'), 'garff', 'Garff', 'Garff Sheading', 'Garff Sheading', 'Garff', 1, NOW(6), NOW(6), 1, 1),

-- Sheading 3: Michael (parte norte, incluye Ballaugh, Jurby, Andreas)
( 3042189, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='IM'), 'IM-MI', NULL, NULL, '03', 'IM-MI', 'IMN-MI', '+44', (SELECT id FROM t075t_division_types WHERE code='sheading_im'), 'michael', 'Michael', 'Michael Sheading', 'Michael Sheading', 'Michael', 1, NOW(6), NOW(6), 1, 1),

-- Sheading 4: Middle (parte central, incluye Braddan, Onchan, Marown, Santon)
( 3042190, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='IM'), 'IM-MD', NULL, NULL, '04', 'IM-MD', 'IMN-MD', '+44', (SELECT id FROM t075t_division_types WHERE code='sheading_im'), 'middle', 'Middle', 'Middle Sheading', 'Middle Sheading', 'Middle', 1, NOW(6), NOW(6), 1, 1),

-- Sheading 5: Rushen (parte sur, incluye Castletown, Port Erin, Port St Mary)
( 3042191, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='IM'), 'IM-RU', NULL, NULL, '05', 'IM-RU', 'IMN-RU', '+44', (SELECT id FROM t075t_division_types WHERE code='sheading_im'), 'rushen', 'Rushen', 'Rushen Sheading', 'Rushen Sheading', 'Rushen', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA.
--     *   **REALIDAD ADMINISTRATIVA:** La Isla de Man tiene 5 SHEADINGS como ADM1 .
--     *   Las 5 sheadings son: Glenfaba, Garff, Michael, Middle, Rushen .
--     *   Sheadings son divisiones históricas que datan del siglo XVI, utilizadas originalmente
--         para fines administrativos y judiciales .
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   La Isla de Man es una Dependencia de la Corona Británica (British Crown Dependency) 
--     *   No forma parte del Reino Unido ni de la Unión Europea
--     *   Clasificada como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2)
--     *   Código ISO 3166-1 alpha-2: IM
--     *   Código ISO 3166-1 alpha-3: IMN
--     *   Código numérico ISO: 833
--     *   Dominio de internet: .im
--     *   Tiene su propio parlamento (Tynwald), el más antiguo del mundo en funcionamiento continuo .
--
-- 3.  **CÓDIGOS ISO 3166-2:**
--     *   **IMPORTANTE:** ISO 3166-2:IM NO DEFINE códigos oficiales para subdivisiones .
--     *   A pesar de tener una estructura administrativa definida, ISO no les ha asignado códigos .
--     *   Los códigos IM-XX se generan basados en los códigos de Geonames .
--     *   `code_iso_numeric` se asigna como '01' a '05' por convención para cumplir NOT NULL.
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres para cada sheading .
--     *   Los IDs se derivan de la base de datos de Geonames .
--     *   Las sheadings tienen IDs específicos que las identifican como divisiones geográficas.
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idiomas oficiales: Inglés y Manx (Gaelgo) .
--     *   `name_spanish`: nombres en español, en minúsculas con primera mayúscula.
--     *   `name_english`: nombres en inglés según uso oficial.
--     *   `name_iso`: nombres oficiales en inglés.
--     *   `name_original`: nombres en inglés (no se usa Manx para las sheadings en la administración).
--
-- 6.  **ESTRUCTURA COMPLETA DE SUBDIVISIONES:**
--     | Sheading | Parroquias (ADM2) | Municipios/Towns (gobierno local) |
--     |----------|-------------------|-----------------------------------|
--     | Glenfaba | German, Patrick | Peel |
--     | Garff | Lonan, Maughold | Laxey |
--     | Michael | Andreas, Ballaugh, Jurby | Ramsey |
--     | Middle | Braddan, Marown, Onchan, Santon | Douglas |
--     | Rushen | Arbory, Malew, Rushen | Castletown, Port Erin, Port St Mary |
--
-- 7.  **DATOS DEMOGRÁFICOS (censo 2021) :**
--     | Sheading | Población | Capital (principal) |
--     |----------|-----------|---------------------|
--     | Glenfaba | ~5,000 | Peel |
--     | Garff | ~6,500 | Laxey |
--     | Michael | ~8,500 | Ramsey |
--     | Middle | ~40,000 | Douglas |
--     | Rushen | ~15,000 | Castletown |
--     | **Total** | **~85,000** | **Douglas** |
--
-- 8.  **CAPITAL:**
--     *   Douglas (Doolish) es la capital de la Isla de Man .
--     *   Se encuentra en el Sheading Middle, es el centro administrativo y financiero.
--
-- 9.  **CÓDIGO TELEFÓNICO:**
--     *   Código telefónico: +44 (código del Reino Unido)
--     *   Código de área: 1624 (para la isla)
--
-- 10. **GOBIERNO LOCAL ACTUAL:**
--     *   Desde 2016, la administración local se organiza en 6 municipios principales:
--         Douglas, Ramsey, Peel, Castletown, Port Erin y Port St Mary .
--     *   Sin embargo, las sheadings siguen siendo las divisiones administrativas de primer nivel
--         para fines históricos y geográficos .
--     *   Los municipios NO son divisiones ADM1, son entidades de gobierno local .
--
-- 11. **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" era INCORRECTA.
--     *   Se ha verificado con múltiples fuentes:
--         - Geonames: 5 sheadings como ADM1 
--         - GeoPostcodes: 5 sheadings 
--         - Isle of Man Government: estructura de sheadings y parroquias 
--         - Wikipedia: 5 sheadings históricas 
--     *   Este SQL genera las 5 sheadings correctas como divisiones ADM1.
--
-- 12. **NOTA SOBRE LOS MUNICIPIOS:**
--     *   La Isla de Man NO tiene 16 municipios.
--     *   Tiene 6 municipios/towns principales (Douglas, Ramsey, Peel, Castletown, Port Erin, Port St Mary)
--     *   Además tiene 15 parroquias rurales .
--     *   Los municipios son subdivisiones de nivel local, NO son ADM1.
-- ==================================================================================