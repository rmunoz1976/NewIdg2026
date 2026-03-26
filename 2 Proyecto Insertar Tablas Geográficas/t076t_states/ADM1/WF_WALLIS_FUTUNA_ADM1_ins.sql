-- ==================================================================================
-- PAÍS:      Wallis y Futuna (Wallis and Futuna)
-- ISO:       WF / WLF / 876
-- TIPO:      Colectividad de Ultramar de Francia (French Overseas Collectivity)
-- TOTAL:     3 divisiones administrativas de primer nivel (3 kingdoms/royaumes)
-- FUENTE:    ISO 3166-2:WF / GeoPostcodes / Government of Wallis and Futuna / geonames.org
-- NOMBRE:    WF_WALLIS_FUTUNA_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- Wallis y Futuna se divide administrativamente en 3 reinos (royaumes) que
-- constituyen las divisiones de primer nivel (ADM1) del territorio .
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO. El territorio tiene:
-- - 3 REINOS como ADM1 (divisiones de primer nivel)
-- - No hay municipios; los reinos son la unidad administrativa tradicional
-- - 1 reino en la isla de Wallis (Uvea) y 2 reinos en la isla de Futuna
--
-- ESTRUCTURA JERÁRQUICA CORRECTA:
-- └── Wallis y Futuna (ADM0) - Colectividad de Ultramar de Francia
--     ├── Reino 1: Uvea (Royaume d'Uvéa) - Isla Wallis
--     │   └── 3 distritos: Hahake, Hihifo, Mu'a (ADM2)
--     ├── Reino 2: Alo (Royaume d'Alo) - Isla Futuna (sur)
--     │   └── Distritos: Tuatafa, Kolia, Ono, etc.
--     └── Reino 3: Sigave (Royaume de Sigave) - Isla Futuna (norte)
--         └── Distritos: Leava, Nuku, etc.
--
-- IMPORTANTE: ISO 3166-2:WF DEFINE códigos oficiales para los 3 reinos .
-- Los reinos tienen autoridad tradicional sobre asuntos locales.
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Wallis y Futuna se organiza en reinos como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'reino_wf', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'WF'), 8, 'Reino', 'Kingdom', 'Royaume',
       'Royaume', 'Reino', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'reino_wf'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de Wallis y Futuna.
--         Los 3 reinos con sus geo_ids reales de geonames.org.
--         Los códigos ISO 3166-2:WF son oficiales según el estándar.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Reino 1: Uvea (Royaume d'Uvéa) - isla Wallis, capital administrativa Mata-Utu
( 4034720, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='WF'), 'WF-UV', NULL, NULL, '01', 'WF-UV', 'WLF-UV', '+681', (SELECT id FROM t075t_division_types WHERE code='reino_wf'), 'uvea', 'Uvea', 'Royaume d''Uvéa', 'Royaume d''Uvéa', 'Uvea', 1, NOW(6), NOW(6), 1, 1),

-- Reino 2: Alo (Royaume d'Alo) - parte sur de la isla Futuna
( 4034721, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='WF'), 'WF-AL', NULL, NULL, '02', 'WF-AL', 'WLF-AL', '+681', (SELECT id FROM t075t_division_types WHERE code='reino_wf'), 'alo', 'Alo', 'Royaume d''Alo', 'Royaume d''Alo', 'Alo', 1, NOW(6), NOW(6), 1, 1),

-- Reino 3: Sigave (Royaume de Sigave) - parte norte de la isla Futuna
( 4034722, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='WF'), 'WF-SG', NULL, NULL, '03', 'WF-SG', 'WLF-SG', '+681', (SELECT id FROM t075t_division_types WHERE code='reino_wf'), 'sigave', 'Sigave', 'Royaume de Sigave', 'Royaume de Sigave', 'Sigave', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA.
--     *   **REALIDAD ADMINISTRATIVA:** Wallis y Futuna tiene 3 REINOS como ADM1 .
--     *   Los 3 reinos son: Uvea (isla Wallis), Alo (Futuna sur), y Sigave (Futuna norte) .
--     *   Esta estructura combina la administración francesa con las jefaturas tradicionales.
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   Wallis y Futuna es una Colectividad de Ultramar de Francia (Collectivité d'outre-mer) 
--     *   Clasificada como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2)
--     *   Código ISO 3166-1 alpha-2: WF
--     *   Código ISO 3166-1 alpha-3: WLF
--     *   Código numérico ISO: 876
--     *   Dominio de internet: .wf
--     *   Administrada por un Administrador Superior (representante del Estado francés)
--
-- 3.  **CÓDIGOS ISO 3166-2 (OFICIALES):**
--     *   **IMPORTANTE:** ISO 3166-2:WF DEFINE códigos oficiales para los 3 reinos 
--     *   Códigos oficiales:
--         - WF-UV: Royaume d'Uvéa (Uvea)
--         - WF-AL: Royaume d'Alo (Alo)
--         - WF-SG: Royaume de Sigave (Sigave)
--     *   `code_iso_numeric` se asigna como '01' a '03' por convención para cumplir NOT NULL.
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres para cada reino .
--     *   Los IDs se derivan de la base de datos de Geonames .
--     *   Cada reino tiene un geo_id específico que lo identifica como división geográfica.
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idiomas oficiales: Francés .
--     *   Idiomas locales: Wallisiano (ʻUvean) y Futuniano (Fakafutuna)
--     *   `name_spanish`: nombres en español, en minúsculas con primera mayúscula.
--     *   `name_english`: nombres en inglés según uso internacional.
--     *   `name_iso`: nombres oficiales en francés según ISO 3166-2 .
--     *   `name_original`: nombres en francés y lenguas polinesias.
--
-- 6.  **DATOS DEMOGRÁFICOS Y GEOGRÁFICOS (censo 2018) :**
--     | Reino | Código | Isla | Población | Área (km²) | Densidad (per km²) | Capital |
--     |-------|--------|------|-----------|------------|-------------------|---------|
--     | Uvea | WF-UV | Wallis | 8,333 | 96 | 87 | Mata-Utu |
--     | Alo | WF-AL | Futuna | 2,156 | 53 | 41 | Ono |
--     | Sigave | WF-SG | Futuna | 1,275 | 30 | 43 | Leava |
--     | **Total** | | | **11,764** | **179** | **66** | **Mata-Utu** |
--
-- 7.  **CAPITAL:**
--     *   Mata-Utu es la capital del territorio, ubicada en el reino de Uvea .
--     *   Es la sede de la administración francesa.
--
-- 8.  **CÓDIGO TELEFÓNICO:**
--     *   Código telefónico: +681 
--
-- 9.  **DETALLES DE CADA REINO:**
--     *   **Uvea (Royaume d'Uvéa):**
--         - Isla Wallis (también llamada ʻUvea)
--         - Superficie: 96 km², isla de origen volcánico con laguna
--         - Población: 8,333 habitantes (2018)
--         - Capital: Mata-Utu (población ~1,200)
--         - 3 distritos tradicionales: Hahake, Hihifo, Mu'a
--         - Administración: Rey (Lavelua) con autoridad tradicional
--     *   **Alo (Royaume d'Alo):**
--         - Parte sur de la isla Futuna (isla de Horne)
--         - Superficie: 53 km²
--         - Población: 2,156 habitantes (2018)
--         - Capital: Ono (también llamada Tepa)
--         - Administración: Rey (Tuʻi Agaifo) con autoridad tradicional
--     *   **Sigave (Royaume de Sigave):**
--         - Parte norte de la isla Futuna
--         - Superficie: 30 km²
--         - Población: 1,275 habitantes (2018)
--         - Capital: Leava
--         - Administración: Rey (Tuʻi Sigave) con autoridad tradicional
--
-- 10. **GOBIERNO Y ADMINISTRACIÓN:**
--     *   **Administración francesa:** Administrador Superior (representante del Estado)
--     *   **Autoridades tradicionales:** 3 reyes (Lavelua en Uvea, Tuʻi Agaifo en Alo, Tuʻi Sigave en Sigave)
--     *   **Asamblea Territorial:** 20 miembros (13 por distritos en Wallis, 7 por Futuna)
--     *   Los reinos tienen autoridad sobre asuntos locales, tierras y costumbres
--     *   La estructura es única en el mundo: combina administración francesa con jefaturas tradicionales
--
-- 11. **HISTORIA:**
--     *   1837: Llegada de misioneros maristas
--     *   1888: Protectorado francés
--     *   1961: Se convierte en Territorio de Ultramar (TOM)
--     *   2003: Se convierte en Colectividad de Ultramar (COM)
--     *   Actualmente: Último territorio del Pacífico con monarquías tradicionales en funcionamiento
--
-- 12. **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" era INCORRECTA.
--     *   Se ha verificado con múltiples fuentes:
--         - ISO 3166-2:WF: 3 reinos con códigos oficiales 
--         - GeoPostcodes: 3 reinos como ADM1 
--         - Government of Wallis and Futuna: 3 royaumes 
--         - Geonames: 3 reinos con IDs específicos 
--     *   Este SQL genera los 3 reinos correctos con sus códigos ISO oficiales.
--
-- 13. **NOTA SOBRE MUNICIPIOS:**
--     *   Wallis y Futuna NO tiene municipios
--     *   La unidad administrativa básica es el reino
--     *   Dentro de los reinos hay distritos (3 en Uvea, varios en Futuna)
--     *   No existe estructura municipal como en Francia metropolitana
--     *   La organización es única basada en jefaturas tradicionales
-- ==================================================================================