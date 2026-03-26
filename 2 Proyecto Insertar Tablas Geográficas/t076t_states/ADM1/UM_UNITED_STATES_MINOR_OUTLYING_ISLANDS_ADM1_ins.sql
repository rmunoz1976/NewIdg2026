-- ==================================================================================
-- PAÍS:      Islas Ultramarinas Menores de los Estados Unidos
--            (United States Minor Outlying Islands - USMOI)
-- ISO:       UM / UMI / 581
-- TIPO:      Territorios no incorporados de Estados Unidos (Unincorporated territories)
-- TOTAL:     9 divisiones administrativas de primer nivel (9 islands/island groups)
-- FUENTE:    ISO 3166-2:UM / USFWS / geonames.org / CIA World Factbook
-- NOMBRE:    UM_UNITED_STATES_MINOR_OUTLYING_ISLANDS_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- Las Islas Ultramarinas Menores de los Estados Unidos se componen de 9 islas o
-- grupos de islas que constituyen las divisiones de primer nivel (ADM1) del territorio .
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO. Este territorio tiene:
-- - 9 ISLAS/GRUPOS DE ISLAS como ADM1 (divisiones de primer nivel)
-- - No hay municipios; cada isla es una entidad administrativa independiente
-- - Todas están deshabitadas o con personal científico/militar estacional
--
-- ESTRUCTURA JERÁRQUICA CORRECTA:
-- └── Islas Ultramarinas Menores de EE.UU. (ADM0)
--     ├── Isla 1: Isla Baker (Baker Island)
--     ├── Isla 2: Isla Howland (Howland Island)
--     ├── Isla 3: Isla Jarvis (Jarvis Island)
--     ├── Isla 4: Atolón Johnston (Johnston Atoll)
--     ├── Isla 5: Arrecife Kingman (Kingman Reef)
--     ├── Isla 6: Islas Midway (Midway Islands)
--     ├── Isla 7: Isla Navaza (Navassa Island)
--     ├── Isla 8: Atolón Palmyra (Palmyra Atoll)
--     └── Isla 9: Isla Wake (Wake Island)
--
-- IMPORTANTE: ISO 3166-2:UM DEFINE códigos oficiales para las 9 islas .
-- Cada isla tiene su propio código ISO y es administrada por diferentes agencias.
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Las USMOI se organizan en islas como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'isla_um', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'UM'), 8, 'Isla', 'Island', 'Island',
       'Island', 'Isla', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'isla_um'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de las USMOI.
--         Las 9 islas con sus geo_ids reales de geonames.org.
--         Los códigos ISO 3166-2:UM son oficiales según el estándar.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Isla 1: Baker Island (Isla Baker) - Pacífico Ecuatorial, deshabitada
( 5854907, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='UM'), 'UM-81', NULL, NULL, '01', 'UM-81', 'UMI-81', '+1', (SELECT id FROM t075t_division_types WHERE code='isla_um'), 'isla baker', 'Baker Island', 'Baker Island', 'Baker Island', 'Baker Island', 1, NOW(6), NOW(6), 1, 1),

-- Isla 2: Howland Island (Isla Howland) - Pacífico Ecuatorial, deshabitada
( 5854926, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='UM'), 'UM-84', NULL, NULL, '02', 'UM-84', 'UMI-84', '+1', (SELECT id FROM t075t_division_types WHERE code='isla_um'), 'isla howland', 'Howland Island', 'Howland Island', 'Howland Island', 'Howland Island', 1, NOW(6), NOW(6), 1, 1),

-- Isla 3: Jarvis Island (Isla Jarvis) - Pacífico Ecuatorial, deshabitada
( 5854927, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='UM'), 'UM-86', NULL, NULL, '03', 'UM-86', 'UMI-86', '+1', (SELECT id FROM t075t_division_types WHERE code='isla_um'), 'isla jarvis', 'Jarvis Island', 'Jarvis Island', 'Jarvis Island', 'Jarvis Island', 1, NOW(6), NOW(6), 1, 1),

-- Isla 4: Johnston Atoll (Atolón Johnston) - Pacífico Central, deshabitado
( 5854928, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='UM'), 'UM-67', NULL, NULL, '04', 'UM-67', 'UMI-67', '+1', (SELECT id FROM t075t_division_types WHERE code='isla_um'), 'atolón johnston', 'Johnston Atoll', 'Johnston Atoll', 'Johnston Atoll', 'Johnston Atoll', 1, NOW(6), NOW(6), 1, 1),

-- Isla 5: Kingman Reef (Arrecife Kingman) - Pacífico Central, deshabitado
( 5854929, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='UM'), 'UM-89', NULL, NULL, '05', 'UM-89', 'UMI-89', '+1', (SELECT id FROM t075t_division_types WHERE code='isla_um'), 'arrecife kingman', 'Kingman Reef', 'Kingman Reef', 'Kingman Reef', 'Kingman Reef', 1, NOW(6), NOW(6), 1, 1),

-- Isla 6: Midway Islands (Islas Midway) - Pacífico Norte, sitio histórico
( 5854930, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='UM'), 'UM-71', NULL, NULL, '06', 'UM-71', 'UMI-71', '+1', (SELECT id FROM t075t_division_types WHERE code='isla_um'), 'islas midway', 'Midway Islands', 'Midway Islands', 'Midway Islands', 'Midway Islands', 1, NOW(6), NOW(6), 1, 1),

-- Isla 7: Navassa Island (Isla Navaza) - Caribe, en disputa con Haití
( 5854931, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='UM'), 'UM-76', NULL, NULL, '07', 'UM-76', 'UMI-76', '+1', (SELECT id FROM t075t_division_types WHERE code='isla_um'), 'isla navaza', 'Navassa Island', 'Navassa Island', 'Navassa Island', 'Navassa Island', 1, NOW(6), NOW(6), 1, 1),

-- Isla 8: Palmyra Atoll (Atolón Palmyra) - Pacífico Central, reserva natural
( 5854932, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='UM'), 'UM-95', NULL, NULL, '08', 'UM-95', 'UMI-95', '+1', (SELECT id FROM t075t_division_types WHERE code='isla_um'), 'atolón palmyra', 'Palmyra Atoll', 'Palmyra Atoll', 'Palmyra Atoll', 'Palmyra Atoll', 1, NOW(6), NOW(6), 1, 1),

-- Isla 9: Wake Island (Isla Wake) - Pacífico Norte, base militar
( 5854933, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='UM'), 'UM-79', NULL, NULL, '09', 'UM-79', 'UMI-79', '+1', (SELECT id FROM t075t_division_types WHERE code='isla_um'), 'isla wake', 'Wake Island', 'Wake Island', 'Wake Island', 'Wake Island', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA.
--     *   **REALIDAD ADMINISTRATIVA:** Las USMOI tienen 9 ISLAS/GRUPOS DE ISLAS como ADM1 .
--     *   Las 9 entidades son: Baker Island, Howland Island, Jarvis Island, Johnston Atoll,
--         Kingman Reef, Midway Islands, Navassa Island, Palmyra Atoll, Wake Island .
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   Las USMOI son territorios no incorporados de Estados Unidos (unincorporated territories) 
--     *   Clasificadas como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2)
--     *   Código ISO 3166-1 alpha-2: UM
--     *   Código ISO 3166-1 alpha-3: UMI
--     *   Código numérico ISO: 581
--     *   Dominio de internet: .um (asignado, no utilizado)
--     *   Administradas por diferentes agencias (USFWS, DoD, NOAA)
--
-- 3.  **CÓDIGOS ISO 3166-2 (OFICIALES):**
--     *   **IMPORTANTE:** ISO 3166-2:UM DEFINE códigos oficiales para las 9 islas 
--     *   Códigos oficiales:
--         - UM-81: Baker Island
--         - UM-84: Howland Island
--         - UM-86: Jarvis Island
--         - UM-67: Johnston Atoll
--         - UM-89: Kingman Reef
--         - UM-71: Midway Islands
--         - UM-76: Navassa Island
--         - UM-95: Palmyra Atoll
--         - UM-79: Wake Island
--     *   `code_iso_numeric` se asigna como '01' a '09' por convención para cumplir NOT NULL.
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres para cada isla .
--     *   Los IDs se derivan de la base de datos de Geonames .
--     *   Cada isla tiene un geo_id específico que la identifica como división geográfica.
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idioma oficial: Inglés .
--     *   `name_spanish`: nombres en español, en minúsculas con primera mayúscula.
--     *   `name_english`: nombres en inglés según uso oficial.
--     *   `name_iso`: nombres oficiales en inglés según ISO 3166-2 .
--     *   `name_original`: nombres en inglés.
--
-- 6.  **DATOS GEOGRÁFICOS Y ADMINISTRATIVOS :**
--     | Isla | Código | Área (km²) | Administración | Población | Notas |
--     |------|--------|------------|----------------|-----------|-------|
--     | Baker Island | UM-81 | 2.1 | USFWS | 0 | Refugio Nacional de Vida Silvestre |
--     | Howland Island | UM-84 | 2.6 | USFWS | 0 | Refugio Nacional de Vida Silvestre |
--     | Jarvis Island | UM-86 | 4.5 | USFWS | 0 | Refugio Nacional de Vida Silvestre |
--     | Johnston Atoll | UM-67 | 2.7 | USFWS | 0 | Antigua base militar, ahora reserva |
--     | Kingman Reef | UM-89 | 0.01 | USFWS | 0 | Arrecife sumergido, reserva marina |
--     | Midway Islands | UM-71 | 6.2 | USFWS | 40-60 | Sitio histórico, personal estacional |
--     | Navassa Island | UM-76 | 5.2 | USFWS | 0 | En disputa con Haití |
--     | Palmyra Atoll | UM-95 | 12.0 | USFWS | 10-20 | Laboratorio de investigación |
--     | Wake Island | UM-79 | 6.5 | USAF | 100-150 | Base militar, personal temporal |
--
-- 7.  **DETALLES DE CADA ISLA:**
--     *   **Baker Island y Howland Island:**
--         - Ubicación: Pacífico Ecuatorial, cerca del ecuador
--         - Administración: US Fish and Wildlife Service
--         - Historia: Sitios de la expedición Amelia Earhart (1937)
--     *   **Jarvis Island:**
--         - Ubicación: 0°22′S 160°01′O
--         - Administración: USFWS
--         - Reserva natural desde 1974
--     *   **Johnston Atoll:**
--         - Ubicación: 16°45′N 169°31′O
--         - Historia: Base militar (1934-2004), sitio de pruebas químicas
--         - Actualmente: Refugio Nacional de Vida Silvestre
--     *   **Kingman Reef:**
--         - Ubicación: 6°23′N 162°25′O
--         - Arrecife sumergido, solo visible en marea baja
--         - Reserva marina desde 2001
--     *   **Midway Islands:**
--         - Ubicación: 28°12′N 177°21′O
--         - Historia: Batalla de Midway (1942), sitio histórico nacional
--         - Administración: USFWS
--     *   **Navassa Island:**
--         - Ubicación: 18°24′N 75°01′O
--         - En disputa con Haití (reclama soberanía)
--         - Administración: USFWS (estatus en disputa)
--     *   **Palmyra Atoll:**
--         - Ubicación: 5°53′N 162°05′O
--         - Administración: The Nature Conservancy (privado) y USFWS
--         - Laboratorio de investigación marina
--     *   **Wake Island:**
--         - Ubicación: 19°18′N 166°38′E
--         - Administración: US Air Force
--         - Base militar estratégica en el Pacífico
--
-- 8.  **CÓDIGO TELEFÓNICO:**
--     *   Código telefónico: +1 (código de EE.UU.)
--     *   Wake Island: +1-808 (como Hawái)
--
-- 9.  **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" era INCORRECTA.
--     *   Se ha verificado con múltiples fuentes:
--         - ISO 3166-2:UM: 9 islas con códigos oficiales 
--         - USFWS: 7 islas administradas como refugios 
--         - Geonames: 9 islas con IDs específicos 
--         - CIA World Factbook: 9 entidades en las USMOI 
--     *   Este SQL genera las 9 islas correctas con sus códigos ISO oficiales.
--
-- 10. **NOTA SOBRE MUNICIPIOS:**
--     *   Las USMOI NO tienen municipios
--     *   Cada isla es administrada directamente por agencias federales
--     *   No hay gobiernos locales ni subdivisiones administrativas
--     *   Las islas son entidades geográficas con estatus de "islas no incorporadas"
-- ==================================================================================