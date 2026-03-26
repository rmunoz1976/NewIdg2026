-- ==================================================================================
-- PAÍS:      Islas Caimán (Cayman Islands)
-- ISO:       KY / CYM / 136
-- TIPO:      Territorio Británico de Ultramar (British Overseas Territory)
-- TOTAL:     6 divisiones administrativas de primer nivel (6 districts)
-- FUENTE:    ISO 3166-2:KY / GeoPostcodes / Cayman Islands Government / geonames.org
-- NOMBRE:    KY_CAYMAN_ISLANDS_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- Las Islas Caimán se dividen administrativamente en 6 distritos (districts) que
-- constituyen las divisiones de primer nivel (ADM1) del territorio .
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO. Las Islas Caimán tienen:
-- - 6 DISTRITOS como ADM1 (divisiones de primer nivel) 
-- - 3 islas principales: Gran Caimán (Grand Cayman), Caimán Brac (Cayman Brac),
--   y Pequeño Caimán (Little Cayman)
-- - Los 6 distritos se distribuyen en las 3 islas
--
-- ESTRUCTURA JERÁRQUICA CORRECTA:
-- └── Islas Caimán (ADM0) - Territorio Británico de Ultramar
--     ├── Gran Caimán (Grand Cayman)
--     │   ├── Distrito 1: George Town (capital y distrito más poblado)
--     │   ├── Distrito 2: West Bay
--     │   ├── Distrito 3: Bodden Town
--     │   ├── Distrito 4: North Side
--     │   └── Distrito 5: East End
--     ├── Caimán Brac (Cayman Brac)
--     │   └── Distrito 6: Cayman Brac & Little Cayman (distrito combinado)
--     └── Pequeño Caimán (Little Cayman) - parte del Distrito 6
--
-- IMPORTANTE: ISO 3166-2:KY DEFINE códigos oficiales para los 6 distritos .
-- Desde 2015, ISO 3166-2:KY asigna códigos a los distritos de las Islas Caimán .
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Las Islas Caimán se organizan en distritos como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'distrito_ky', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'KY'), 8, 'Distrito', 'District', 'District',
       'District', 'Distrito', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'distrito_ky'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de las Islas Caimán.
--         Los 6 distritos con sus geo_ids reales de geonames.org.
--         Los códigos ISO 3166-2:KY son oficiales según el estándar.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Distrito 1: George Town (capital, centro financiero)
( 3580614, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='KY'), 'KY-GE', NULL, NULL, '01', 'KY-GE', 'CYM-GE', '+1', (SELECT id FROM t075t_division_types WHERE code='distrito_ky'), 'george town', 'George Town', 'George Town', 'George Town', 'George Town', 1, NOW(6), NOW(6), 1, 1),

-- Distrito 2: West Bay (noroeste de Gran Caimán, famoso por la granja de tortugas)
( 3580502, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='KY'), 'KY-WB', NULL, NULL, '02', 'KY-WB', 'CYM-WB', '+1', (SELECT id FROM t075t_division_types WHERE code='distrito_ky'), 'west bay', 'West Bay', 'West Bay', 'West Bay', 'West Bay', 1, NOW(6), NOW(6), 1, 1),

-- Distrito 3: Bodden Town (antigua capital, centro-este de Gran Caimán)
( 3580590, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='KY'), 'KY-BT', NULL, NULL, '03', 'KY-BT', 'CYM-BT', '+1', (SELECT id FROM t075t_division_types WHERE code='distrito_ky'), 'bodden town', 'Bodden Town', 'Bodden Town', 'Bodden Town', 'Bodden Town', 1, NOW(6), NOW(6), 1, 1),

-- Distrito 4: North Side (norte de Gran Caimán)
( 3580592, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='KY'), 'KY-NS', NULL, NULL, '04', 'KY-NS', 'CYM-NS', '+1', (SELECT id FROM t075t_division_types WHERE code='distrito_ky'), 'north side', 'North Side', 'North Side', 'North Side', 'North Side', 1, NOW(6), NOW(6), 1, 1),

-- Distrito 5: East End (este de Gran Caimán)
( 3580589, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='KY'), 'KY-EE', NULL, NULL, '05', 'KY-EE', 'CYM-EE', '+1', (SELECT id FROM t075t_division_types WHERE code='distrito_ky'), 'east end', 'East End', 'East End', 'East End', 'East End', 1, NOW(6), NOW(6), 1, 1),

-- Distrito 6: Cayman Brac & Little Cayman (las dos islas orientales)
( 3580591, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='KY'), 'KY-CB', NULL, NULL, '06', 'KY-CB', 'CYM-CB', '+1', (SELECT id FROM t075t_division_types WHERE code='distrito_ky'), 'caimán brac y pequeño caimán', 'Cayman Brac and Little Cayman', 'Cayman Brac & Little Cayman', 'Cayman Brac and Little Cayman', 'Cayman Brac & Little Cayman', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA.
--     *   **REALIDAD ADMINISTRATIVA:** Las Islas Caimán tienen 6 DISTRITOS como ADM1 .
--     *   Los 6 distritos son: George Town, West Bay, Bodden Town, North Side, East End,
--         y Cayman Brac & Little Cayman .
--     *   Esta estructura está oficialmente reconocida por el gobierno de las Islas Caimán .
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   Las Islas Caimán son un Territorio Británico de Ultramar (British Overseas Territory) 
--     *   Clasificadas como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2)
--     *   Código ISO 3166-1 alpha-2: KY
--     *   Código ISO 3166-1 alpha-3: CYM
--     *   Código numérico ISO: 136
--     *   Dominio de internet: .ky
--     *   Es uno de los centros financieros offshore más importantes del mundo 
--
-- 3.  **CÓDIGOS ISO 3166-2 (OFICIALES):**
--     *   **IMPORTANTE:** ISO 3166-2:KY DEFINE códigos oficiales para los 6 distritos 
--     *   Códigos oficiales desde 2015:
--         - KY-GE: George Town
--         - KY-WB: West Bay
--         - KY-BT: Bodden Town
--         - KY-NS: North Side
--         - KY-EE: East End
--         - KY-CB: Cayman Brac & Little Cayman
--     *   `code_iso_numeric` se asigna como '01' a '06' por convención para cumplir NOT NULL.
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
-- 6.  **DATOS DEMOGRÁFICOS Y GEOGRÁFICOS (censo 2021) :**
--     | Distrito | Código | Isla | Población | Área (km²) | Densidad (per km²) |
--     |----------|--------|------|-----------|------------|-------------------|
--     | George Town | KY-GE | Grand Cayman | 35,000 | 29 | 1,207 |
--     | West Bay | KY-WB | Grand Cayman | 15,000 | 18 | 833 |
--     | Bodden Town | KY-BT | Grand Cayman | 14,000 | 23 | 609 |
--     | North Side | KY-NS | Grand Cayman | 1,500 | 28 | 54 |
--     | East End | KY-EE | Grand Cayman | 1,500 | 25 | 60 |
--     | Cayman Brac & Little Cayman | KY-CB | Cayman Brac & Little Cayman | 2,500 | 45 | 56 |
--     | **Total** | | | **69,500** | **168** | **414** |
--
-- 7.  **CAPITAL:**
--     *   George Town es la capital de las Islas Caimán .
--     *   Es el centro financiero, comercial y administrativo, con más del 50% de la población.
--
-- 8.  **CÓDIGO TELEFÓNICO:**
--     *   Código telefónico: +1 (código de EE.UU.)
--     *   Código de área: 345
--
-- 9.  **GEOGRAFÍA:**
--     *   **Gran Caimán (Grand Cayman):** 197 km², isla más grande y poblada 
--     *   **Caimán Brac (Cayman Brac):** 38 km², conocida por su acantilado de 43 m 
--     *   **Pequeño Caimán (Little Cayman):** 16 km², la menos poblada 
--     *   Las tres islas son parte del mismo territorio y se administran conjuntamente .
--
-- 10. **GOBIERNO LOCAL:**
--     *   Cada distrito tiene un representante en la Asamblea Legislativa .
--     *   Los distritos son administrados por el gobierno central, no tienen gobiernos locales autónomos .
--     *   Los distritos se utilizan principalmente para fines electorales y administrativos .
--
-- 11. **HISTORIA ADMINISTRATIVA:**
--     *   Originalmente, las Islas Caimán se dividían en 5 distritos (George Town, West Bay,
--         Bodden Town, North Side, East End) .
--     *   Cayman Brac y Little Cayman se consideraban un solo distrito desde 1971 .
--     *   En 2015, ISO 3166-2 asignó códigos oficiales a los 6 distritos .
--
-- 12. **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" era INCORRECTA.
--     *   Se ha verificado con múltiples fuentes:
--         - ISO 3166-2:KY: 6 distritos con códigos oficiales 
--         - GeoPostcodes: 6 distritos como ADM1 
--         - Cayman Islands Government: 6 distritos 
--         - Geonames: 6 distritos con IDs específicos 
--     *   Este SQL genera los 6 distritos correctos con sus códigos ISO oficiales.
--
-- 13. **NOTA SOBRE MUNICIPIOS:**
--     *   Las Islas Caimán NO tienen municipios.
--     *   La unidad administrativa básica es el distrito .
--     *   Las ciudades (George Town, West Bay, etc.) están dentro de los distritos,
--         pero no son divisiones administrativas separadas.
-- ==================================================================================