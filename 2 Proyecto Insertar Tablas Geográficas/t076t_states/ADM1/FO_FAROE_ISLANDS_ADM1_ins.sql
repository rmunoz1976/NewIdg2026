-- ==================================================================================
-- PAÍS:      Islas Feroe (Faroe Islands)
-- ISO:       FO / FRO / 234
-- TIPO:      Nación autónoma del Reino de Dinamarca (Autonomous territory)
-- TOTAL:     6 divisiones administrativas de primer nivel (6 regiones/sýslur)
-- FUENTE:    GADM v2.8 / GeoPostcodes / Esri Demographics / ISO 3166-2
-- NOMBRE:    FO_FAROE_ISLANDS_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- Las Islas Feroe se dividen administrativamente en 6 regiones de primer nivel (ADM1),
-- llamadas "sýslur" en feroés (singular: sýsla). Estas regiones son la base de la
-- organización territorial del archipiélago.
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO para el primer nivel:
-- - Las Islas Feroe tienen 6 REGIONES como divisiones ADM1 [citation:1][citation:2][citation:4]
-- - Los municipios (kommunur) son 29-30 y constituyen el SEGUNDO nivel administrativo (ADM2) [citation:6][citation:8][citation:10]
-- - El archipiélago consta de 18 islas, 17 habitadas, con 120 asentamientos [citation:8]
-- - Es una nación autónoma dentro del Reino de Dinamarca desde 1948 [citation:9]
--
-- ESTRUCTURA JERÁRQUICA CORRECTA [citation:2][citation:10]:
-- └── Islas Feroe (ADM0)
--     ├── Región 1: Eysturoy (ADM1)
--     ├── Región 2: Nordoyar / Norðoyggjar (ADM1)
--     ├── Región 3: Sandoy (ADM1)
--     ├── Región 4: Streymoy (ADM1)
--     ├── Región 5: Suðuroy (ADM1)
--     └── Región 6: Vágar (ADM1)
--         └── 29-30 Municipios (ADM2) [citation:6][citation:8][citation:10]
--
-- IMPORTANTE: ISO 3166-2:FO NO DEFINE códigos oficiales para subdivisiones [citation:5]
-- Las regiones tienen códigos establecidos por convención según fuentes geográficas.
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Las Islas Feroe se organizan en regiones como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'region_fo', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'FO'), 8, 'Región', 'Region', 'Sýsla',
       'Sýsla', 'Region', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'region_fo'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de las Islas Feroe.
--         Las 6 regiones (sýslur) con sus geo_ids reales de geonames.org.
--         Nota: ISO 3166-2:FO no define códigos oficiales; se usan códigos por convención.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Región 1: Eysturoy (isla principal del este, segunda en población)
( 2622325, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='FO'), 'FO-EY', NULL, NULL, '01', 'FO-EY', 'FRO-EY', '+298', (SELECT id FROM t075t_division_types WHERE code='region_fo'), 'eysturoy', 'Eysturoy', 'Eysturoy', 'Eysturoy', 'Eysturoy', 1, NOW(6), NOW(6), 1, 1),

-- Región 2: Norðoyar (islas del norte: Borðoy, Viðoy, Kunoy, Kalsoy, etc.)
( 2616186, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='FO'), 'FO-NO', NULL, NULL, '02', 'FO-NO', 'FRO-NO', '+298', (SELECT id FROM t075t_division_types WHERE code='region_fo'), 'nordoyar', 'Nordoyar', 'Norðoyggjar', 'Norðoyggjar', 'Nordoyar', 1, NOW(6), NOW(6), 1, 1),

-- Región 3: Sandoy (isla de arena, al sur de Streymoy)
( 2614220, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='FO'), 'FO-SA', NULL, NULL, '03', 'FO-SA', 'FRO-SA', '+298', (SELECT id FROM t075t_division_types WHERE code='region_fo'), 'sandoy', 'Sandoy', 'Sandoy', 'Sandoy', 'Sandoy', 1, NOW(6), NOW(6), 1, 1),

-- Región 4: Streymoy (isla principal, donde se encuentra la capital Tórshavn)
( 2612217, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='FO'), 'FO-ST', NULL, NULL, '04', 'FO-ST', 'FRO-ST', '+298', (SELECT id FROM t075t_division_types WHERE code='region_fo'), 'streymoy', 'Streymoy', 'Streymoy', 'Streymoy', 'Streymoy', 1, NOW(6), NOW(6), 1, 1),

-- Región 5: Suðuroy (isla más meridional, la más grande del sur)
( 2612101, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='FO'), 'FO-SU', NULL, NULL, '05', 'FO-SU', 'FRO-SU', '+298', (SELECT id FROM t075t_division_types WHERE code='region_fo'), 'suðuroy', 'Suduroy', 'Suðuroy', 'Suðuroy', 'Suduroy', 1, NOW(6), NOW(6), 1, 1),

-- Región 6: Vágar (isla del oeste, donde se encuentra el aeropuerto internacional)
( 2610790, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='FO'), 'FO-VA', NULL, NULL, '06', 'FO-VA', 'FRO-VA', '+298', (SELECT id FROM t075t_division_types WHERE code='region_fo'), 'vagar', 'Vagar', 'Vágar', 'Vágar', 'Vagar', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA para el primer nivel.
--     *   **REALIDAD ADMINISTRATIVA:** Las Islas Feroe tienen 6 REGIONES como ADM1 [citation:2][citation:10].
--     *   Los municipios (kommunur) son 29-30 y constituyen ADM2 [citation:6][citation:8].
--     *   El archipiélago tiene 18 islas, 17 habitadas, con 120 asentamientos [citation:8].
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   Las Islas Feroe son una nación autónoma dentro del Reino de Dinamarca desde 1948 [citation:9].
--     *   Clasificadas como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2).
--     *   Código ISO 3166-1 alpha-2: FO [citation:3]
--     *   Código ISO 3166-1 alpha-3: FRO
--     *   Código numérico ISO: 234
--     *   Dominio de internet: .fo
--     *   Tiene su propio parlamento (Føroya Løgting) y primer ministro [citation:8][citation:9].
--     *   No pertenece a la Unión Europea [citation:9].
--
-- 3.  **CÓDIGOS ISO 3166-2:**
--     *   **IMPORTANTE:** ISO 3166-2 NO asigna códigos oficiales para subdivisiones de las Islas Feroe [citation:5].
--     *   La entrada para FO en ISO 3166-2 no tiene subdivisiones definidas.
--     *   Los códigos FO-EY, FO-NO, FO-SA, FO-ST, FO-SU, FO-VA se generan por convención:
--         - Basados en el código ISO 3166-1 alpha-2 (FO)
--         - Seguido de un código de 2 letras identificador de cada región
--     *   `code_iso_numeric` se asigna como '01' a '06' por convención para cumplir la restricción NOT NULL.
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres correspondientes a cada región [citation:2].
--     *   Los IDs son reales y se han obtenido de la base de datos de Geonombres:
--         - Eysturoy: 2622325
--         - Nordoyar: 2616186
--         - Sandoy: 2614220
--         - Streymoy: 2612217
--         - Suðuroy: 2612101
--         - Vágar: 2610790
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idioma oficial: Feroés (Faroese) [citation:8].
--     *   `name_spanish`: nombres en español, en minúsculas con primera mayúscula.
--     *   `name_english`: nombres en inglés, transliteración directa.
--     *   `name_iso`: nombres oficiales en feroés (sýsla original).
--     *   `name_original`: nombres en feroés.
--     *   `name_transcribed`: nombres transcritos al alfabeto latino estándar.
--
-- 6.  **DATOS DEMOGRÁFICOS Y GEOGRÁFICOS [citation:8][citation:9][citation:10]:**
--     | Región | Islas principales | Población aprox. |
--     |--------|-------------------|------------------|
--     | Streymoy | Streymoy, Hestur, Nólsoy, Koltur | ~25,000 |
--     | Eysturoy | Eysturoy | ~12,000 |
--     | Vágar | Vágar, Mykines | ~3,500 |
--     | Suðuroy | Suðuroy, Lítla Dímun | ~5,000 |
--     | Sandoy | Sandoy, Skúvoy, Stóra Dímun | ~1,500 |
--     | Norðoyar | Borðoy, Viðoy, Kunoy, Kalsoy, Fugloy, Svínoy | ~6,500 |
--
-- 7.  **MUNICIPIOS (ADM2):**
--     *   Las Islas Feroe tienen 29-30 municipios que dependen de las regiones [citation:6][citation:8][citation:10].
--     *   Distribución por región [citation:2]:
--         - Eysturoy: 7 municipios
--         - Nordoyar: 6 municipios
--         - Sandoy: 5 municipios
--         - Streymoy: 3 municipios
--         - Suðuroy: 7 municipios
--         - Vágar: 2 municipios
--     *   El municipio más poblado es Tórshavn (capital), con ~22,000 habitantes [citation:6][citation:8].
--
-- 8.  **ESCAPE DE COMILLAS:**
--     *   Ninguno de los nombres de las regiones contenía comillas simples,
--         por lo que no fue necesario aplicar un escape adicional.
--
-- 9.  **CÓDIGO TELEFÓNICO:**
--     *   Código telefónico: +298 [citation:9]
--     *   Es independiente del código danés (+45).
--
-- 10. **CAPITAL:**
--     *   Tórshavn (Thorshavn) es la capital, ubicada en la región de Streymoy [citation:8][citation:9].
--     *   Población: ~19,000-22,000 habitantes (aprox. 40% de la población total).
--
-- 11. **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" como ADM1 era INCORRECTA.
--     *   Se ha verificado con múltiples fuentes:
--         - GADM v2.8: las regiones son el primer nivel administrativo [citation:1][citation:4][citation:7]
--         - GeoPostcodes: estructura de 6 regiones (ADM1) y municipios (ADM2) [citation:2]
--         - Esri Demographics: 6 regiones (sýslur) y 29 municipios (kommunur) [citation:10]
--         - Wikipedia: 30 municipios [citation:6]
--         - Sitio oficial de Dinamarca: 30 municipios [citation:8]
--     *   Este SQL genera las 6 regiones como divisiones ADM1, que es la estructura correcta.
-- ==================================================================================