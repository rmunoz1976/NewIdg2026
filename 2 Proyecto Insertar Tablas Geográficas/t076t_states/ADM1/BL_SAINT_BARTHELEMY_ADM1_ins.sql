-- ==================================================================================
-- PAÍS:      San Bartolomé (Saint Barthélemy)
-- ISO:       BL / BLM / 652
-- TIPO:      Colectividad de Ultramar (Overseas Collectivity) - Territorio Dependiente de Francia
-- TOTAL:     1 división administrativa de primer nivel (la propia colectividad)
-- FUENTE:    ISO 3166-2:BL / geonames.org / insee.fr
-- NOMBRE:    BL_SAINT_BARTHELEMY_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- San Bartolomé NO TIENE divisiones administrativas de primer nivel (estados, provincias,
-- departamentos, municipios) como entidades separadas. La colectividad en sí misma es la
-- única división ADM1. A nivel de segundo nivel (ADM2), la isla se divide en "cuartiers"
-- o barrios (ancianos, colombier, grand cul-de-sac, gustavia, etc.), pero estos NO son
-- divisiones de primer nivel.
-- 
-- El usuario solicitó 16 municipios, pero esto es INCORRECTO para San Bartolomé:
-- - No es un municipio (commune) desde 2007 cuando se separó de Guadeloupe
-- - No tiene 16 subdivisiones ADM1, tiene 1 sola (el territorio completo)
-- - Los barrios locales son ADM2, no ADM1
-- 
-- Por lo tanto, se genera SOLO 1 registro para la propia colectividad como ADM1,
-- cumpliendo con la realidad administrativa del territorio.
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         San Bartolomé es una Colectividad de Ultramar (COM) de Francia.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'colectividad_bl', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'BL'), 8, 'Colectividad de Ultramar', 'Overseas Collectivity', 'Collectivité d''outre-mer',
       'Collectivité d''outre-mer', 'Colectividad de Ultramar', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'colectividad_bl'
);

-- ==================================================================================
-- PASO 4: Insertar la división administrativa de primer nivel de San Bartolomé.
--         Nota: ISO 3166-2 no asigna subdivisiones para BL, por lo que se usa BL-00
--         como código único. code_iso_numeric se establece como '00' por convención.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
( 3578445, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='BL'), 'BL-00', NULL, NULL, '00', 'BL-00', 'BLM-00', '+590', (SELECT id FROM t075t_division_types WHERE code='colectividad_bl'), 'san bartolomé', 'Saint Barthélemy', 'Saint-Barthélemy', 'Saint-Barthélemy', 'Saint Barthélemy', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La instrucción solicitaba "16 municipios". Esto es INCORRECTO para San Bartolomé.
--     *   **REALIDAD ADMINISTRATIVA:** San Bartolomé NO TIENE municipios ni subdivisiones de primer nivel.
--     *   **JERARQUÍA CORRECTA:**
--         - Nivel ADM0: San Bartolomé (colectividad de ultramar de Francia)
--         - Nivel ADM1: La colectividad en sí misma (1 única entidad)
--         - Nivel ADM2: Cuartiers/barrios (Anciens, Colombier, Grand Cul-de-Sac, Gustavia, etc.) [citation:1][citation:2]
--     *   Antes de 2007, San Bartolomé era una comuna (municipio) de Guadalupe. Desde 2007, al convertirse en Colectividad de Ultramar,
--         dejó de tener el estatus de comuna y no se divide en municipios. [citation:1][citation:3][citation:7]
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   San Bartolomé es una Colectividad de Ultramar (COM) de Francia, clasificada como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2). [citation:2][citation:6]
--     *   Código ISO 3166-1 alpha-2: BL [citation:3]
--     *   Código INSEE: 977 [citation:3]
--     *   Código telefónico: +590 (compartido con Guadalupe y San Martín) [citation:2][citation:3]
--
-- 3.  **CÓDIGOS ISO 3166-2:**
--     *   **IMPORTANTE:** ISO 3166-2 NO asigna códigos oficiales para subdivisiones de San Bartolomé.
--     *   El código `code_iso_alpha2` (BL-00) se ha generado por convención, ya que no existen subdivisiones oficiales.
--     *   El campo `code_iso_numeric` no puede ser nulo. Se asigna '00' como valor por defecto.
--     *   `code_iso_alpha3`: BLM-00 siguiendo el patrón estándar.
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se ha utilizado el identificador de Geonombres para el territorio de San Bartolomé (3578445).
--     *   No existen geo_ids separados para subdivisiones porque no existen como entidades ADM1.
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idioma oficial: Francés [citation:2]
--     *   `name_spanish`: "san bartolomé" (minúsculas según regla)
--     *   `name_english`: "Saint Barthélemy"
--     *   `name_iso`: "Saint-Barthélemy" (nombre oficial en francés)
--     *   `name_original`: "Saint-Barthélemy"
--     *   `name_transcribed`: "Saint Barthélemy"
--
-- 6.  **ESCAPE DE COMILLAS:**
--     *   En name_iso y name_original se utilizan comillas simples escapadas: 'Collectivité d''outre-mer'
--
-- 7.  **CAPITAL Y DATOS ADICIONALES:**
--     *   Capital: Gustavia [citation:2][citation:4]
--     *   Superficie: 25 km² [citation:2]
--     *   Población: ~10,967 habitantes (2022 estimate) [citation:2]
--     *   Zona horaria: UTC-4 (AST)
--
-- 8.  **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" probablemente se basó en información de otro país (posiblemente Islas Åland, que sí tiene 16 municipios).
--     *   Se ha generado la estructura correcta según los datos oficiales de geonames.org, ISO 3166 y el estatus legal del territorio.
--     *   Si el sistema requiere poblaciones adicionales para barrios (ADM2), se pueden generar en una fase posterior.
-- ==================================================================================