-- ==================================================================================
-- PAÍS:      Isla Bouvet (Bouvet Island)
-- ISO:       BV / BVT / 074
-- TIPO:      Territorio Dependiente de Noruega (Norwegian Dependency)
-- TOTAL:     0 divisiones administrativas de primer nivel (sin subdivisiones)
-- FUENTE:    ISO 3166-2:BV / geonames.org / CIA World Factbook
-- NOMBRE:    BV_BOUVET_ISLAND_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- La Isla Bouvet NO TIENE divisiones administrativas de primer nivel (estados,
-- provincias, departamentos, municipios, regiones, etc.).
-- 
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO para la Isla Bouvet:
-- - Es una isla volcánica deshabitada de 49 km², 93% cubierta por glaciares
-- - No tiene población permanente, ni gobiernos locales, ni subdivisiones administrativas
-- - Administrativamente es una dependencia de Noruega, administrada directamente
--   desde Oslo por el Ministerio de Justicia y Seguridad Pública
-- - ISO 3166-2 no define códigos para subdivisiones (entrada vacía para BV)
-- - Geonombres no registra divisiones ADM1 para este territorio
--
-- Por lo tanto, NO SE GENERAN registros en t076t_states para este territorio,
-- ya que no existen divisiones administrativas de primer nivel.
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Como no hay divisiones, este INSERT es opcional pero se incluye
--         por completitud del proceso.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'territorio_bv', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'BV'), 7, 'Territorio Dependiente', 'Dependent Territory', 'Bouvetøya',
       'Bouvetøya', 'Isla Bouvet', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'territorio_bv'
);

-- ==================================================================================
-- PASO 4: NO SE GENERAN INSERTs EN t076t_states
-- ==================================================================================
-- La Isla Bouvet no tiene divisiones administrativas de primer nivel.
-- El territorio en sí mismo es la única entidad administrativa.
--
-- Si en el futuro se requiere representar la isla como una entidad ADM1,
-- se podría insertar un único registro con los datos del territorio completo,
-- pero esto no corresponde con la definición de "divisiones administrativas".
-- ==================================================================================

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La instrucción solicitaba "16 municipios". Esto es COMPLETAMENTE INCORRECTO para la Isla Bouvet.
--     *   **REALIDAD ADMINISTRATIVA:** La Isla Bouvet NO TIENE ninguna división administrativa de primer nivel.
--     *   **DATOS CONFIRMADOS:**
--         - Superficie: 49 km² [citation:1][citation:4][citation:5]
--         - Población: 0 habitantes (deshabitada) [citation:1][citation:4][citation:5]
--         - 93% de la isla está cubierta por glaciares [citation:1][citation:2][citation:4]
--         - Es la isla deshabitada más remota del planeta [citation:1][citation:4][citation:5]
--     *   **JERARQUÍA ADMINISTRATIVA CORRECTA:**
--         - Nivel ADM0: Isla Bouvet (dependencia de Noruega)
--         - Nivel ADM1: No existen [citation:3][citation:7]
--         - Nivel ADM2: No existen
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   La Isla Bouvet es una dependencia de Noruega (Norwegian dependency) [citation:1][citation:4][citation:5]
--     *   Clasificada como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2) [citation:2][citation:4]
--     *   Administrada por el Ministerio de Justicia y Seguridad Pública de Noruega en Oslo [citation:4][citation:5][citation:6]
--     *   Código ISO 3166-1 alpha-2: BV [citation:3][citation:7]
--     *   Código ISO 3166-1 alpha-3: BVT
--     *   Código numérico ISO: 074 [citation:8]
--     *   Dominio de internet: .bv (no utilizado) [citation:4][citation:6]
--
-- 3.  **CÓDIGOS ISO 3166-2:**
--     *   **IMPORTANTE:** ISO 3166-2 NO asigna códigos oficiales para subdivisiones de la Isla Bouvet [citation:3][citation:7]
--     *   La entrada para BV en ISO 3166-2 no tiene subdivisiones definidas
--     *   No existen códigos `code_iso_numeric`, `code_iso_alpha2`, `code_iso_alpha3` para subdivisiones
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   El geo_id para la Isla Bouvet es 3371123 [citation:8]
--     *   Geonombres NO registra divisiones ADM1 para este territorio
--     *   El archivo de descarga BV.zip contiene solo la isla principal, sin subdivisiones
--
-- 5.  **HISTORIA DE LA ISLA:**
--     *   Descubierta el 1 de enero de 1739 por Jean-Baptiste Charles Bouvet de Lozier [citation:1][citation:4][citation:6]
--     *   Anexionada por Noruega el 1 de diciembre de 1927, confirmada por decreto real el 23 de enero de 1928 [citation:1][citation:2][citation:4]
--     *   Declarada reserva natural el 17 de diciembre de 1971 [citation:2][citation:4][citation:5]
--     *   No forma parte del Tratado Antártico por estar al norte de los 60°S [citation:4][citation:5]
--
-- 6.  **CARACTERÍSTICAS GEOGRÁFICAS:**
--     *   Ubicación: 54°25′S 3°22′E / -54.42, 3.36 [citation:1][citation:6]
--     *   Punto más alto: Pico Olav (Olavtoppen) con 780 msnm [citation:1][citation:4][citation:6]
--     *   Cráter volcánico inactivo en el centro (Meseta de Guillermo II) [citation:1][citation:2]
--     *   Zona horaria: UTC+1 [citation:4]
--
-- 7.  **CÓDIGO TELEFÓNICO:**
--     *   No tiene código telefónico propio por ser deshabitada
--     *   En caso de emergencias, se utiliza el código noruego (+47)
--
-- 8.  **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" probablemente se basó en información de otro país
--     *   Se ha verificado con múltiples fuentes (Wikipedia [citation:1][citation:4][citation:5], ISO 3166-2 [citation:3][citation:7], Geonombres [citation:8])
--     *   NO EXISTEN subdivisiones administrativas de primer nivel para la Isla Bouvet
--     *   Este SQL no incluye registros en t076t_states, que es la respuesta correcta según los datos oficiales
-- ==================================================================================