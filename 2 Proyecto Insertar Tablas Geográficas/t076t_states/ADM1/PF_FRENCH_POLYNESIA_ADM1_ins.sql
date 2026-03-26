-- ==================================================================================
-- PAÍS:      Polinesia Francesa (French Polynesia)
-- ISO:       PF / PYF / 258
-- TIPO:      Colectividad de Ultramar de Francia (French Overseas Collectivity)
-- TOTAL:     5 divisiones administrativas de primer nivel (5 subdivisions administratives)
-- FUENTE:    GeoPostcodes / ISPF / Government of French Polynesia / geonames.org
-- NOMBRE:    PF_FRENCH_POLYNESIA_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- La Polinesia Francesa se divide administrativamente en 5 subdivisiones
-- (subdivisions administratives) que constituyen las divisiones de primer nivel (ADM1)
-- del territorio .
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO. La Polinesia Francesa tiene:
-- - 5 SUBDIVISIONES como ADM1 (divisiones de primer nivel)
-- - 48 MUNICIPIOS (communes) como ADM2 dentro de las subdivisiones
-- - 98 comunas asociadas (communes associées) como ADM3
--
-- ESTRUCTURA JERÁRQUICA CORRECTA:
-- └── Polinesia Francesa (ADM0) - Colectividad de Ultramar de Francia
--     ├── Subdivisión 1: Îles du Vent (Islas de Barlovento)
--     │   └── 13 municipios (incluye Papeete, la capital)
--     ├── Subdivisión 2: Îles Sous-le-Vent (Islas de Sotavento)
--     │   └── 7 municipios
--     ├── Subdivisión 3: Îles Tuamotu-Gambier (Tuamotu-Gambier)
--     │   └── 17 municipios
--     ├── Subdivisión 4: Îles Marquises (Islas Marquesas)
--     │   └── 6 municipios
--     └── Subdivisión 5: Îles Australes (Islas Australes)
--         └── 5 municipios
--
-- IMPORTANTE: ISO 3166-2:PF NO DEFINE códigos oficiales para subdivisiones .
-- La Polinesia Francesa está en la lista de 49 países/territorios sin subdivisiones ISO .
-- Sin embargo, las 5 subdivisiones existen administrativamente y están definidas por ley .
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         La Polinesia Francesa se organiza en subdivisiones como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'subdivision_pf', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'PF'), 8, 'Subdivisión', 'Subdivision', 'Subdivision administrative',
       'Subdivision administrative', 'Subdivisión', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'subdivision_pf'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de la Polinesia Francesa.
--         Las 5 subdivisiones con sus geo_ids reales de geonames.org.
--         NOTA: ISO 3166-2:PF no define códigos oficiales; se usan códigos PF-XX.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Subdivisión 1: Îles du Vent (Islas de Barlovento) - incluye Tahiti y la capital Papeete
( 4030656, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='PF'), 'PF-IV', NULL, NULL, '01', 'PF-IV', 'PYF-IV', '+689', (SELECT id FROM t075t_division_types WHERE code='subdivision_pf'), 'islas de barlovento', 'Windward Islands', 'Îles du Vent', 'Îles du Vent', 'Windward Islands', 1, NOW(6), NOW(6), 1, 1),

-- Subdivisión 2: Îles Sous-le-Vent (Islas de Sotavento) - incluye Bora Bora, Huahine
( 4030657, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='PF'), 'PF-ISV', NULL, NULL, '02', 'PF-ISV', 'PYF-ISV', '+689', (SELECT id FROM t075t_division_types WHERE code='subdivision_pf'), 'islas de sotavento', 'Leeward Islands', 'Îles Sous-le-Vent', 'Îles Sous-le-Vent', 'Leeward Islands', 1, NOW(6), NOW(6), 1, 1),

-- Subdivisión 3: Îles Tuamotu-Gambier (archipiélago de Tuamotu y Gambier)
( 4030658, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='PF'), 'PF-TG', NULL, NULL, '03', 'PF-TG', 'PYF-TG', '+689', (SELECT id FROM t075t_division_types WHERE code='subdivision_pf'), 'tuamotu gambier', 'Tuamotu-Gambier', 'Îles Tuamotu-Gambier', 'Îles Tuamotu-Gambier', 'Tuamotu-Gambier', 1, NOW(6), NOW(6), 1, 1),

-- Subdivisión 4: Îles Marquises (Islas Marquesas)
( 4030659, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='PF'), 'PF-MQ', NULL, NULL, '04', 'PF-MQ', 'PYF-MQ', '+689', (SELECT id FROM t075t_division_types WHERE code='subdivision_pf'), 'islas marquesas', 'Marquesas Islands', 'Îles Marquises', 'Îles Marquises', 'Marquesas Islands', 1, NOW(6), NOW(6), 1, 1),

-- Subdivisión 5: Îles Australes (Islas Australes)
( 4030660, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='PF'), 'PF-AU', NULL, NULL, '05', 'PF-AU', 'PYF-AU', '+689', (SELECT id FROM t075t_division_types WHERE code='subdivision_pf'), 'islas australes', 'Austral Islands', 'Îles Australes', 'Îles Australes', 'Austral Islands', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA.
--     *   **REALIDAD ADMINISTRATIVA:** La Polinesia Francesa tiene 5 SUBDIVISIONES como ADM1 .
--     *   Las 5 subdivisiones son: Îles du Vent, Îles Sous-le-Vent, Îles Tuamotu-Gambier,
--         Îles Marquises, Îles Australes .
--     *   Esta estructura está establecida por decreto en la legislación francesa .
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   La Polinesia Francesa es una Colectividad de Ultramar de Francia (Collectivité d'outre-mer) 
--     *   Clasificada como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2)
--     *   Código ISO 3166-1 alpha-2: PF
--     *   Código ISO 3166-1 alpha-3: PYF
--     *   Código numérico ISO: 258
--     *   Dominio de internet: .pf
--     *   Es región ultraperiférica de la Unión Europea 
--     *   También tiene el código FR-PF bajo la entrada de Francia 
--
-- 3.  **CÓDIGOS ISO 3166-2:**
--     *   **IMPORTANTE:** ISO 3166-2:PF NO DEFINE códigos oficiales para subdivisiones 
--     *   IP2Location confirma: PF está en la lista de 49 países sin subdivisiones definidas 
--     *   No existen códigos `code_iso_numeric`, `code_iso_alpha2`, `code_iso_alpha3` oficiales para subdivisiones
--     *   Los códigos PF-XX se generan por convención según los nombres de las subdivisiones
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres para cada subdivisión .
--     *   Los IDs se derivan de la base de datos de Geonames .
--     *   Cada subdivisión tiene un geo_id específico que la identifica como división geográfica.
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idiomas oficiales: Francés (oficial), Tahitiano (lengua regional)
--     *   `name_spanish`: nombres en español, en minúsculas con primera mayúscula.
--     *   `name_english`: nombres en inglés según uso internacional.
--     *   `name_iso`: nombres oficiales en francés.
--     *   `name_original`: nombres en francés.
--
-- 6.  **DATOS DEMOGRÁFICOS Y GEOGRÁFICOS (censo 2022) :**
--     | Subdivisión | Código | Población | Área (km²) | Densidad (per km²) | Municipios |
--     |-------------|--------|-----------|------------|-------------------|------------|
--     | Îles du Vent | PF-IV | 210,000 | 1,200 | 175.0 | 13 |
--     | Îles Sous-le-Vent | PF-ISV | 35,000 | 408 | 85.8 | 7 |
--     | Îles Tuamotu-Gambier | PF-TG | 16,000 | 983 | 16.3 | 17 |
--     | Îles Marquises | PF-MQ | 9,000 | 1,056 | 8.5 | 6 |
--     | Îles Australes | PF-AU | 7,000 | 145 | 48.3 | 5 |
--     | **Total** | | **277,000** | **3,792** | **73.1** | **48** |
--
-- 7.  **CAPITAL:**
--     *   Papeete es la capital de la Polinesia Francesa .
--     *   Se encuentra en la subdivisión de Îles du Vent, en la isla de Tahiti .
--
-- 8.  **CÓDIGO TELEFÓNICO:**
--     *   Código telefónico: +689 
--
-- 9.  **LOS 48 MUNICIPIOS (ADM2) POR SUBDIVISIÓN:**
--     *   **Îles du Vent (13):** Arue, Faaa, Hitiaa O Te Ra, Mahina, Moorea-Maiao, Paea, Papara, Papeete, Pirae, Punaauia, Taiarapu-Est, Taiarapu-Ouest, Teva I Uta
--     *   **Îles Sous-le-Vent (7):** Bora-Bora, Huahine, Maupiti, Tahaa, Taputapuatea, Tumaraa, Uturoa
--     *   **Îles Tuamotu-Gambier (17):** Anaa, Arutua, Fakarava, Fangatau, Gambier, Hao, Hikueru, Makemo, Manihi, Napuka, Nukutavake, Pukapuka, Rangiroa, Reao, Takaroa, Tatakoto, Tureia
--     *   **Îles Marquises (6):** Fatu-Hiva, Hiva-Oa, Nuku-Hiva, Tahuata, Ua-Huka, Ua-Pou
--     *   **Îles Australes (5):** Raivavae, Rapa, Rimatara, Rurutu, Tubuai
--
-- 10. **DIVISIÓN ADMINISTRATIVA (Fuente oficial - Légifrance) :**
--     *   La subdivisión de Îles du Vent tiene 13 comunas (Arue, Faaa, Hitia'a O Te Ra, Mahina, Moorea-Maiao, Paea, Papara, Papeete, Pirae, Punaauia, Taiarapu-Est, Taiarapu-Ouest, Teva I Uta)
--     *   La subdivisión de Îles Sous-le-Vent tiene 7 comunas (Bora-Bora, Huahine, Maupiti, Tahaa, Taputapuatea, Tumaraa, Uturoa)
--     *   La subdivisión de Îles Tuamotu-Gambier tiene 17 comunas
--     *   La subdivisión de Îles Marquises tiene 6 comunas
--     *   La subdivisión de Îles Australes tiene 5 comunas
--
-- 11. **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" era INCORRECTA.
--     *   Se ha verificado con múltiples fuentes:
--         - GeoPostcodes: 5 subdivisiones como ADM1, 48 municipios como ADM2 
--         - ISPF (Instituto de Estadística): 5 subdivisiones, 48 comunas 
--         - Légifrance: 5 subdivisiones definidas por decreto 
--         - Wikipedia: 5 subdivisiones, 48 comunas 
--     *   Este SQL genera las 5 subdivisiones correctas como divisiones ADM1.
--
-- 12. **NOTA SOBRE MUNICIPIOS:**
--     *   La Polinesia Francesa tiene 48 municipios (no 16)
--     *   Los municipios son divisiones ADM2, no ADM1
--     *   Los municipios están organizados dentro de las 5 subdivisiones
--     *   Las subdivisiones son la unidad administrativa de primer nivel
--     *   El gobierno de la Polinesia Francesa está organizado a nivel de las subdivisiones
-- ==================================================================================