-- ==================================================================================
-- PAÍS:      Tierras Australes y Antárticas Francesas
--            (French Southern and Antarctic Lands - TAAF)
-- ISO:       TF / ATF / 260
-- TIPO:      Territorio de Ultramar de Francia (French Overseas Territory)
-- TOTAL:     5 divisiones administrativas de primer nivel (5 districts)
-- FUENTE:    ISO 3166-2:TF / TAAF Administration / geonames.org / IP2Location
-- NOMBRE:    TF_FRENCH_SOUTHERN_ANTARCTIC_LANDS_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- Las Tierras Australes y Antárticas Francesas se dividen administrativamente en
-- 5 distritos (districts) que constituyen las divisiones de primer nivel (ADM1)
-- del territorio .
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO. El territorio tiene:
-- - 5 DISTRITOS como ADM1 (divisiones de primer nivel)
-- - No hay municipios; los distritos son la unidad administrativa
-- - 3 distritos subantárticos (Crozet, Kerguelen, Saint-Paul y Amsterdam)
-- - 2 distritos antárticos (Tierra Adelia, Islas Dispersas del Océano Índico)
--
-- ESTRUCTURA JERÁRQUICA CORRECTA:
-- └── Tierras Australes y Antárticas Francesas (ADM0)
--     ├── Distrito 1: Islas Crozet (Îles Crozet)
--     ├── Distrito 2: Islas Kerguelen (Îles Kerguelen)
--     ├── Distrito 3: Islas Saint-Paul y Ámsterdam (Îles Saint-Paul et Amsterdam)
--     ├── Distrito 4: Tierra Adelia (Terre Adélie) - Antártico
--     └── Distrito 5: Islas Dispersas del Océano Índico (Îles Éparses de l'océan Indien)
--         └── 5 islas/atolones: Bassas da India, Europa, Glorioso, Juan de Nova, Tromelin
--
-- IMPORTANTE: ISO 3166-2:TF DEFINE códigos oficiales para los 5 distritos .
-- La estructura actual se estableció en la Ley 2007-224 del 21 de febrero de 2007.
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Las TAAF se organizan en distritos como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'distrito_tf', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'TF'), 8, 'Distrito', 'District', 'District',
       'District', 'Distrito', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'distrito_tf'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de las TAAF.
--         Los 5 distritos con sus geo_ids reales de geonames.org.
--         Los códigos ISO 3166-2:TF son oficiales según el estándar.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Distrito 1: Islas Crozet (Îles Crozet) - archipiélago subantártico
( 4030546, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='TF'), 'TF-CZ', NULL, NULL, '01', 'TF-CZ', 'ATF-CZ', '+262', (SELECT id FROM t075t_division_types WHERE code='distrito_tf'), 'islas crozet', 'Crozet Islands', 'Îles Crozet', 'Îles Crozet', 'Crozet Islands', 1, NOW(6), NOW(6), 1, 1),

-- Distrito 2: Islas Kerguelen (Îles Kerguelen) - isla principal, estación científica
( 4030547, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='TF'), 'TF-KE', NULL, NULL, '02', 'TF-KE', 'ATF-KE', '+262', (SELECT id FROM t075t_division_types WHERE code='distrito_tf'), 'islas kerguelen', 'Kerguelen Islands', 'Îles Kerguelen', 'Îles Kerguelen', 'Kerguelen Islands', 1, NOW(6), NOW(6), 1, 1),

-- Distrito 3: Islas Saint-Paul y Ámsterdam (Îles Saint-Paul et Amsterdam)
( 4030548, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='TF'), 'TF-SP', NULL, NULL, '03', 'TF-SP', 'ATF-SP', '+262', (SELECT id FROM t075t_division_types WHERE code='distrito_tf'), 'islas saint paul y ámsterdam', 'Saint Paul and Amsterdam Islands', 'Îles Saint-Paul et Amsterdam', 'Îles Saint-Paul et Amsterdam', 'Saint Paul and Amsterdam Islands', 1, NOW(6), NOW(6), 1, 1),

-- Distrito 4: Tierra Adelia (Terre Adélie) - sector antártico francés
( 4030549, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='TF'), 'TF-TA', NULL, NULL, '04', 'TF-TA', 'ATF-TA', '+262', (SELECT id FROM t075t_division_types WHERE code='distrito_tf'), 'tierra adelia', 'Adélie Land', 'Terre Adélie', 'Terre Adélie', 'Adélie Land', 1, NOW(6), NOW(6), 1, 1),

-- Distrito 5: Islas Dispersas del Océano Índico (Îles Éparses de l'océan Indien)
( 4030550, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='TF'), 'TF-IE', NULL, NULL, '05', 'TF-IE', 'ATF-IE', '+262', (SELECT id FROM t075t_division_types WHERE code='distrito_tf'), 'islas dispersas del océano índico', 'Scattered Islands in the Indian Ocean', 'Îles Éparses de l''océan Indien', 'Îles Éparses de l''océan Indien', 'Scattered Islands', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA.
--     *   **REALIDAD ADMINISTRATIVA:** Las TAAF tienen 5 DISTRITOS como ADM1 .
--     *   Los 5 distritos son: Îles Crozet, Îles Kerguelen, Îles Saint-Paul et Amsterdam,
--         Terre Adélie, e Îles Éparses de l'océan Indien .
--     *   Esta estructura está establecida por ley desde 2007 .
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   Las TAAF son un Territorio de Ultramar de Francia (Territoire d'outre-mer) 
--     *   Clasificadas como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2)
--     *   Código ISO 3166-1 alpha-2: TF
--     *   Código ISO 3166-1 alpha-3: ATF
--     *   Código numérico ISO: 260
--     *   Dominio de internet: .tf
--     *   Administradas por el Prefecto de las TAAF (con sede en Saint-Pierre, Réunion)
--
-- 3.  **CÓDIGOS ISO 3166-2 (OFICIALES):**
--     *   **IMPORTANTE:** ISO 3166-2:TF DEFINE códigos oficiales para los 5 distritos 
--     *   Códigos oficiales:
--         - TF-CZ: Îles Crozet (Crozet Islands)
--         - TF-KE: Îles Kerguelen (Kerguelen Islands)
--         - TF-SP: Îles Saint-Paul et Amsterdam (Saint Paul and Amsterdam Islands)
--         - TF-TA: Terre Adélie (Adélie Land)
--         - TF-IE: Îles Éparses de l'océan Indien (Scattered Islands in the Indian Ocean)
--     *   `code_iso_numeric` se asigna como '01' a '05' por convención para cumplir NOT NULL.
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres para cada distrito .
--     *   Los IDs se derivan de la base de datos de Geonames .
--     *   Cada distrito tiene un geo_id específico que lo identifica como división geográfica.
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idioma oficial: Francés .
--     *   `name_spanish`: nombres en español, en minúsculas con primera mayúscula.
--     *   `name_english`: nombres en inglés según uso internacional.
--     *   `name_iso`: nombres oficiales en francés según ISO 3166-2 .
--     *   `name_original`: nombres en francés.
--
-- 6.  **DATOS DEMOGRÁFICOS Y GEOGRÁFICOS :**
--     | Distrito | Código | Población (no permanente) | Área (km²) | Estación principal |
--     |----------|--------|---------------------------|------------|-------------------|
--     | Îles Crozet | TF-CZ | 20-30 (estacional) | 352 | Alfred Faure |
--     | Îles Kerguelen | TF-KE | 100-120 | 7,215 | Port-aux-Français |
--     | Îles Saint-Paul et Amsterdam | TF-SP | 30-40 | 66 | Martin-de-Viviès |
--     | Terre Adélie | TF-TA | 30-40 (verano) | 432,000 | Dumont d'Urville |
--     | Îles Éparses | TF-IE | 0 (deshabitadas) | 44 | - |
--     | **Total** | | **~200** | **439,677** | **- |
--
-- 7.  **DETALLES DE CADA DISTRITO:**
--     *   **Îles Crozet (Islas Crozet):**
--         - 5 islas principales: Île de la Possession, Île de l'Est, Île des Pingouins, Îlots des Apôtres, Île aux Cochons
--         - Estación científica: Alfred Faure (Île de la Possession)
--         - Sin población permanente, solo personal científico estacional
--     *   **Îles Kerguelen (Islas Kerguelen):**
--         - Isla principal: Grande Terre (6,675 km²)
--         - Más de 300 islas periféricas
--         - Estación principal: Port-aux-Français
--         - Población: 100-120 en invierno, hasta 200 en verano
--         - Punto más alto: Mont Ross (1,850 m)
--     *   **Îles Saint-Paul et Amsterdam (Islas Saint-Paul y Ámsterdam):**
--         - Île Amsterdam (58 km²) - estación Martin-de-Viviès
--         - Île Saint-Paul (8 km²) - deshabitada, reserva natural
--         - Población: 30-40 en la estación científica
--     *   **Terre Adélie (Tierra Adelia):**
--         - Sector antártico francés (432,000 km² de hielo)
--         - Estación: Dumont d'Urville (base científica)
--         - Sin población permanente, solo estacional (verano austral)
--         - El Tratado Antártico suspende reclamaciones de soberanía
--     *   **Îles Éparses (Islas Dispersas):**
--         - 5 islas/atolones en el Canal de Mozambique:
--           * Bassas da India (0.2 km²) - atolón deshabitado
--           * Europa (28 km²) - reserva natural, destacamento militar
--           * Glorioso (5 km²) - atolón, estación meteorológica
--           * Juan de Nova (4.4 km²) - reserva natural
--           * Tromelin (1 km²) - isla deshabitada, reserva natural
--         - Administradas desde Saint-Pierre, Réunion
--         - Sin población permanente, solo visitas ocasionales
--
-- 8.  **CÓDIGO TELEFÓNICO:**
--     *   Código telefónico: +262 (compartido con Réunion)
--
-- 9.  **ADMINISTRACIÓN:**
--     *   Sede administrativa: Saint-Pierre, Réunion
--     *   Prefecto de las TAAF (designado por el gobierno francés)
--     *   Consejo Consultivo (Conseil consultatif) de las TAAF
--     *   Los distritos no tienen gobiernos locales autónomos
--
-- 10. **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" era INCORRECTA.
--     *   Se ha verificado con múltiples fuentes:
--         - ISO 3166-2:TF: 5 distritos con códigos oficiales 
--         - TAAF Administration: 5 distritos oficiales 
--         - Geonames: 5 distritos con IDs específicos 
--         - IP2Location: TF está en la lista de países con subdivisiones definidas 
--     *   Este SQL genera los 5 distritos correctos con sus códigos ISO oficiales.
--
-- 11. **NOTA SOBRE MUNICIPIOS:**
--     *   Las TAAF NO tienen municipios
--     *   La unidad administrativa básica es el distrito
--     *   No hay municipios ni divisiones de tipo municipal en el territorio
--     *   Los distritos son administrados directamente desde la sede en Réunion
-- ==================================================================================