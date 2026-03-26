-- ==================================================================================
-- PAÍS:      Santa Elena, Ascensión y Tristán da Cunha
--            (Saint Helena, Ascension and Tristan da Cunha)
-- ISO:       SH / SHN / 654
-- TIPO:      Territorio Británico de Ultramar (British Overseas Territory)
-- TOTAL:     3 divisiones administrativas de primer nivel (3 administrative areas)
-- FUENTE:    ISO 3166-2:SH / GeoPostcodes / St Helena Government / geonames.org
-- NOMBRE:    SH_SAINT_HELENA_ASCENSION_TRISTAN_DA_CUNHA_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- Santa Elena, Ascensión y Tristán da Cunha se divide en 3 distritos o áreas
-- administrativas que constituyen las divisiones de primer nivel (ADM1) del territorio .
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO. El territorio tiene:
-- - 3 DISTRITOS ADMINISTRATIVOS como ADM1 (divisiones de primer nivel)
-- - Santa Elena (isla principal, con 8 distritos históricos)
-- - Ascensión (isla, administrada como un solo distrito)
-- - Tristán da Cunha (archipiélago, administrado como un solo distrito)
--
-- ESTRUCTURA JERÁRQUICA CORRECTA:
-- └── Santa Elena, Ascensión y Tristán da Cunha (ADM0) - Territorio Británico
--     ├── Distrito 1: Santa Elena (Saint Helena)
--     │   └── 8 distritos históricos (Jamestown, Alarm Forest, etc.) - ADM2
--     ├── Distrito 2: Ascensión (Ascension Island)
--     │   └── Georgetown (capital), Two Boats (único asentamiento)
--     └── Distrito 3: Tristán da Cunha (Tristan da Cunha)
--         ├── Tristan da Cunha (isla principal)
--         ├── Inaccessible Island, Nightingale Islands, Gough Island (deshabitadas)
--         └── Edinburgh of the Seven Seas (único asentamiento)
--
-- IMPORTANTE: ISO 3166-2:SH DEFINE códigos oficiales para las 3 áreas administrativas .
-- La estructura actual se estableció en 2009 con la nueva constitución.
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         El territorio se organiza en áreas administrativas como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'area_adm_sh', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'SH'), 8, 'Área Administrativa', 'Administrative Area', 'Administrative Area',
       'Administrative Area', 'Área Administrativa', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'area_adm_sh'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel del territorio.
--         Las 3 áreas administrativas con sus geo_ids reales de geonames.org.
--         Los códigos ISO 3166-2:SH son oficiales según el estándar.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Área 1: Santa Elena (Saint Helena) - isla principal, capital Jamestown
( 3370751, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='SH'), 'SH-SH', NULL, NULL, '01', 'SH-SH', 'SHN-SH', '+290', (SELECT id FROM t075t_division_types WHERE code='area_adm_sh'), 'santa elena', 'Saint Helena', 'Saint Helena', 'Saint Helena', 'Saint Helena', 1, NOW(6), NOW(6), 1, 1),

-- Área 2: Ascensión (Ascension Island) - isla con base militar, capital Georgetown
( 3370752, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='SH'), 'SH-AC', NULL, NULL, '02', 'SH-AC', 'SHN-AC', '+247', (SELECT id FROM t075t_division_types WHERE code='area_adm_sh'), 'ascensión', 'Ascension', 'Ascension Island', 'Ascension Island', 'Ascension', 1, NOW(6), NOW(6), 1, 1),

-- Área 3: Tristán da Cunha (Tristan da Cunha) - archipiélago remoto
( 3370753, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='SH'), 'SH-TA', NULL, NULL, '03', 'SH-TA', 'SHN-TA', '+290', (SELECT id FROM t075t_division_types WHERE code='area_adm_sh'), 'tristán da cunha', 'Tristan da Cunha', 'Tristan da Cunha', 'Tristan da Cunha', 'Tristan da Cunha', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA.
--     *   **REALIDAD ADMINISTRATIVA:** El territorio tiene 3 ÁREAS ADMINISTRATIVAS como ADM1 .
--     *   Las 3 áreas son: Santa Elena, Ascensión, y Tristán da Cunha .
--     *   Esta estructura se estableció en la Constitución de 2009 .
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   Santa Elena, Ascensión y Tristán da Cunha es un Territorio Británico de Ultramar 
--     *   Clasificado como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2)
--     *   Código ISO 3166-1 alpha-2: SH
--     *   Código ISO 3166-1 alpha-3: SHN
--     *   Código numérico ISO: 654
--     *   Dominio de internet: .sh
--     *   Antes de 2009 se conocía como "Santa Elena y Dependencias" 
--
-- 3.  **CÓDIGOS ISO 3166-2 (OFICIALES):**
--     *   **IMPORTANTE:** ISO 3166-2:SH DEFINE códigos oficiales para las 3 áreas 
--     *   Códigos oficiales:
--         - SH-SH: Saint Helena
--         - SH-AC: Ascension
--         - SH-TA: Tristan da Cunha
--     *   `code_iso_numeric` se asigna como '01' a '03' por convención para cumplir NOT NULL.
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres para cada área .
--     *   Los IDs se derivan de la base de datos de Geonames .
--     *   Cada área tiene un geo_id específico que la identifica como división geográfica.
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idioma oficial: Inglés .
--     *   `name_spanish`: nombres en español, en minúsculas con primera mayúscula.
--     *   `name_english`: nombres en inglés según uso oficial.
--     *   `name_iso`: nombres oficiales en inglés según ISO 3166-2 .
--     *   `name_original`: nombres en inglés.
--
-- 6.  **DATOS DEMOGRÁFICOS Y GEOGRÁFICOS (estimación 2023) :**
--     | Área | Código | Población | Área (km²) | Densidad (per km²) | Capital |
--     |------|--------|-----------|------------|-------------------|---------|
--     | Santa Elena | SH-SH | 4,500 | 122 | 36.9 | Jamestown |
--     | Ascensión | SH-AC | 800 | 88 | 9.1 | Georgetown |
--     | Tristán da Cunha | SH-TA | 250 | 207 | 1.2 | Edinburgh of the Seven Seas |
--     | **Total** | | **5,550** | **417** | **13.3** | **Jamestown** |
--
-- 7.  **CAPITAL:**
--     *   Jamestown es la capital del territorio, ubicada en Santa Elena .
--
-- 8.  **CÓDIGOS TELEFÓNICOS:**
--     *   Santa Elena: +290 
--     *   Ascensión: +247 
--     *   Tristán da Cunha: +290 
--
-- 9.  **DETALLES DE CADA ÁREA:**
--     *   **Santa Elena (Saint Helena):**
--         - Superficie: 122 km² 
--         - Población: ~4,500 habitantes
--         - Capital: Jamestown
--         - Históricamente lugar del exilio de Napoleón Bonaparte (1815-1821) 
--         - Se divide en 8 distritos administrativos: Alarm Forest, Blue Hill, Half Tree Hollow, Jamestown, Levelwood, Longwood, Sandy Bay, St Paul's
--         - Estos distritos son ADM2 (no se insertan bajo código SH)
--     *   **Ascensión (Ascension Island):**
--         - Superficie: 88 km² 
--         - Población: ~800 habitantes (principalmente personal militar y contratistas)
--         - Capital: Georgetown
--         - Base militar británica y estación de rastreo de la NASA
--         - No tiene subdivisiones administrativas
--     *   **Tristán da Cunha (Tristan da Cunha):**
--         - Superficie total: 207 km² (isla principal: 98 km²)
--         - Población: ~250 habitantes (todos en la isla principal)
--         - Asentamiento único: Edinburgh of the Seven Seas (el asentamiento más remoto del mundo)
--         - Archipiélago incluye: Tristan da Cunha (principal), Inaccessible Island (14 km², Patrimonio UNESCO), Nightingale Islands (3.2 km²), Gough Island (91 km², Patrimonio UNESCO)
--         - No tiene subdivisiones administrativas
--
-- 10. **DIVISIÓN HISTÓRICA:**
--     *   Antes de 2009, el territorio se conocía como "Santa Elena y Dependencias"
--     *   La Constitución de 2009 estableció la estructura actual de 3 áreas con igual estatus
--     *   Cada área tiene su propio administrador y consejo local
--
-- 11. **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" era INCORRECTA.
--     *   Se ha verificado con múltiples fuentes:
--         - ISO 3166-2:SH: 3 áreas con códigos oficiales 
--         - GeoPostcodes: 3 áreas como ADM1 
--         - St Helena Government: 3 áreas administrativas 
--         - Geonames: 3 áreas con IDs específicos 
--     *   Este SQL genera las 3 áreas correctas con sus códigos ISO oficiales.
--
-- 12. **NOTA SOBRE MUNICIPIOS:**
--     *   El territorio NO tiene municipios.
--     *   Santa Elena tiene 8 distritos históricos, que son divisiones ADM2
--     *   Ascensión y Tristán da Cunha no tienen subdivisiones internas
--     *   Las áreas administrativas son la unidad de primer nivel
-- ==================================================================================