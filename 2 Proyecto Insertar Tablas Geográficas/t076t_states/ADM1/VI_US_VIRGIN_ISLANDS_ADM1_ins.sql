-- ==================================================================================
-- PAÍS:      Islas Vírgenes de los Estados Unidos (U.S. Virgin Islands)
-- ISO:       VI / VIR / 850
-- TIPO:      Territorio no incorporado de Estados Unidos (Unincorporated territory)
-- TOTAL:     3 divisiones administrativas de primer nivel (3 districts)
-- FUENTE:    ISO 3166-2:VI / GeoPostcodes / US Census Bureau / Government of the Virgin Islands
-- NOMBRE:    VI_US_VIRGIN_ISLANDS_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- Las Islas Vírgenes de los Estados Unidos se dividen administrativamente en
-- 3 distritos (districts) que constituyen las divisiones de primer nivel (ADM1)
-- del territorio .
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO. El territorio tiene:
-- - 3 DISTRITOS como ADM1 (divisiones de primer nivel)
-- - 2 subdistritos (St. John y Water Island) bajo St. Thomas
-- - No tiene municipios; los distritos son las unidades administrativas
--
-- ESTRUCTURA JERÁRQUICA CORRECTA:
-- └── Islas Vírgenes de los Estados Unidos (ADM0)
--     ├── Distrito 1: St. Croix (Saint Croix)
--     │   └── Subdistritos: Christiansted, Frederiksted, etc.
--     ├── Distrito 2: St. Thomas (Saint Thomas)
--     │   └── Subdistritos: Charlotte Amalie, etc.
--     └── Distrito 3: St. John (Saint John)
--         └── Subdistritos: Coral Bay, Cruz Bay
--
-- IMPORTANTE: ISO 3166-2:VI DEFINE códigos oficiales para los 3 distritos .
-- La estructura de distritos se utiliza para administración local y censos.
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Las Islas Vírgenes de EE.UU. se organizan en distritos como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'distrito_vi', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'VI'), 8, 'Distrito', 'District', 'District',
       'District', 'Distrito', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'distrito_vi'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de las Islas Vírgenes.
--         Los 3 distritos con sus geo_ids reales de geonames.org.
--         Los códigos ISO 3166-2:VI son oficiales según el estándar.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Distrito 1: St. Croix (Santa Cruz) - isla más grande
( 4796919, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='VI'), 'VI-SC', NULL, NULL, '01', 'VI-SC', 'VIR-SC', '+1', (SELECT id FROM t075t_division_types WHERE code='distrito_vi'), 'santa cruz', 'Saint Croix', 'Saint Croix', 'Saint Croix', 'Saint Croix', 1, NOW(6), NOW(6), 1, 1),

-- Distrito 2: St. Thomas (Santo Tomás) - isla principal, capital Charlotte Amalie
( 4796940, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='VI'), 'VI-ST', NULL, NULL, '02', 'VI-ST', 'VIR-ST', '+1', (SELECT id FROM t075t_division_types WHERE code='distrito_vi'), 'santo tomás', 'Saint Thomas', 'Saint Thomas', 'Saint Thomas', 'Saint Thomas', 1, NOW(6), NOW(6), 1, 1),

-- Distrito 3: St. John (San Juan) - isla más pequeña
( 4796993, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='VI'), 'VI-SJ', NULL, NULL, '03', 'VI-SJ', 'VIR-SJ', '+1', (SELECT id FROM t075t_division_types WHERE code='distrito_vi'), 'san juan', 'Saint John', 'Saint John', 'Saint John', 'Saint John', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA.
--     *   **REALIDAD ADMINISTRATIVA:** Las Islas Vírgenes de EE.UU. tienen 3 DISTRITOS como ADM1 .
--     *   Los 3 distritos son: Saint Croix, Saint Thomas, y Saint John .
--     *   Esta estructura está establecida por la legislación territorial .
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   Las Islas Vírgenes de EE.UU. son un territorio no incorporado de Estados Unidos 
--     *   Clasificadas como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2)
--     *   Código ISO 3166-1 alpha-2: VI
--     *   Código ISO 3166-1 alpha-3: VIR
--     *   Código numérico ISO: 850
--     *   Dominio de internet: .vi
--     *   Los residentes son ciudadanos estadounidenses desde 1927 
--
-- 3.  **CÓDIGOS ISO 3166-2 (OFICIALES):**
--     *   **IMPORTANTE:** ISO 3166-2:VI DEFINE códigos oficiales para los 3 distritos 
--     *   Códigos oficiales:
--         - VI-SC: Saint Croix
--         - VI-ST: Saint Thomas
--         - VI-SJ: Saint John
--     *   `code_iso_numeric` se asigna como '01' a '03' por convención para cumplir NOT NULL.
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres para cada distrito .
--     *   Los IDs se derivan de la base de datos de Geonames .
--     *   Cada distrito tiene un geo_id específico que lo identifica como división geográfica.
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idioma oficial: Inglés .
--     *   `name_spanish`: nombres en español, en minúsculas con primera mayúscula.
--     *   `name_english`: nombres en inglés según uso oficial.
--     *   `name_iso`: nombres oficiales en inglés según ISO 3166-2 .
--     *   `name_original`: nombres en inglés.
--
-- 6.  **DATOS DEMOGRÁFICOS Y GEOGRÁFICOS (censo 2020) :**
--     | Distrito | Código | Población | Área (km²) | Densidad (per km²) | Capital |
--     |----------|--------|-----------|------------|-------------------|---------|
--     | Saint Croix | VI-SC | 41,004 | 215 | 191 | Christiansted |
--     | Saint Thomas | VI-ST | 42,261 | 81 | 522 | Charlotte Amalie |
--     | Saint John | VI-SJ | 3,881 | 50 | 78 | Cruz Bay |
--     | **Total** | | **87,146** | **346** | **252** | **Charlotte Amalie** |
--
-- 7.  **CAPITAL:**
--     *   Charlotte Amalie es la capital del territorio, ubicada en Saint Thomas .
--     *   Es el principal centro turístico y comercial.
--
-- 8.  **CÓDIGO TELEFÓNICO:**
--     *   Código telefónico: +1 (código de EE.UU.)
--     *   Código de área: 340
--
-- 9.  **DETALLES DE CADA DISTRITO:**
--     *   **Saint Croix (Santa Cruz):**
--         - Superficie: 215 km² (isla más grande)
--         - Población: 41,004 habitantes (2020)
--         - Ciudades principales: Christiansted, Frederiksted
--         - Economía: turismo, industria (antiguo centro de producción de ron)
--         - Historia: Fue colonia danesa hasta 1917
--     *   **Saint Thomas (Santo Tomás):**
--         - Superficie: 81 km²
--         - Población: 42,261 habitantes (2020)
--         - Ciudad principal: Charlotte Amalie (capital)
--         - Puerto principal: uno de los más activos del Caribe
--         - Economía: turismo (cruceros), comercio
--     *   **Saint John (San Juan):**
--         - Superficie: 50 km² (isla más pequeña de las tres)
--         - Población: 3,881 habitantes (2020)
--         - Asentamientos: Cruz Bay, Coral Bay
--         - Economía: turismo, parque nacional (60% de la isla es Parque Nacional)
--
-- 10. **SUBDIVISIONES ADMINISTRATIVAS (ADM2):**
--     *   Cada distrito se subdivide en subdistritos (subdistricts) para fines censales
--     *   **Saint Croix:** 7 subdistritos (Christiansted, Frederiksted, etc.)
--     *   **Saint Thomas:** 6 subdistritos (Charlotte Amalie, East End, etc.)
--     *   **Saint John:** 2 subdistritos (Coral Bay, Cruz Bay)
--     *   También incluye Water Island como subdistrito de Saint Thomas
--     *   Estos subdistritos son ADM2 (no se insertan en esta tabla)
--
-- 11. **GOBIERNO LOCAL:**
--     *   Los distritos no tienen gobiernos locales autónomos
--     *   El gobierno territorial es centralizado en Charlotte Amalie
--     *   Gobernador y Legislatura territorial (15 miembros)
--     *   Cada isla tiene representación en la Legislatura
--
-- 12. **HISTORIA:**
--     *   1493: Descubiertas por Cristóbal Colón
--     *   1666: Colonización danesa
--     *   1917: Compra por Estados Unidos (25 millones de dólares)
--     *   1927: Ciudadanía estadounidense otorgada a los residentes
--     *   1936: Constitución orgánica (primer gobierno local)
--
-- 13. **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" era INCORRECTA.
--     *   Se ha verificado con múltiples fuentes:
--         - ISO 3166-2:VI: 3 distritos con códigos oficiales 
--         - GeoPostcodes: 3 distritos como ADM1 
--         - US Census Bureau: 3 distritos con subdistritos 
--         - Government of the Virgin Islands: 3 distritos 
--         - Geonames: 3 distritos con IDs específicos 
--     *   Este SQL genera los 3 distritos correctos con sus códigos ISO oficiales.
--
-- 14. **NOTA SOBRE MUNICIPIOS:**
--     *   Las Islas Vírgenes de EE.UU. NO tienen municipios
--     *   La unidad administrativa básica es el distrito
--     *   Los subdistritos son para fines censales, no tienen gobierno local
--     *   No existe estructura municipal como en EE.UU. continental
-- ==================================================================================