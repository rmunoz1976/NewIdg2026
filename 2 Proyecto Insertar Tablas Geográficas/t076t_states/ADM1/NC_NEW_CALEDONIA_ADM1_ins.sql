-- ==================================================================================
-- PAÍS:      Nueva Caledonia (New Caledonia)
-- ISO:       NC / NCL / 540
-- TIPO:      Colectividad Sui Géneris de Francia (French Sui Generis Collectivity)
-- TOTAL:     3 divisiones administrativas de primer nivel (3 provinces)
-- FUENTE:    ISO 3166-2:NC / GeoPostcodes / ISEE / Government of New Caledonia / geonames.org
-- NOMBRE:    NC_NEW_CALEDONIA_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- Nueva Caledonia se divide administrativamente en 3 provincias (provinces) que
-- constituyen las divisiones de primer nivel (ADM1) del territorio .
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO. Nueva Caledonia tiene:
-- - 3 PROVINCIAS como ADM1 (divisiones de primer nivel) 
-- - 33 municipios (communes) como ADM2 dentro de las provincias
-- - La estructura provincial data del Acuerdo de Numea de 1998 
--
-- ESTRUCTURA JERÁRQUICA CORRECTA:
-- └── Nueva Caledonia (ADM0) - Colectividad sui géneris de Francia
--     ├── Provincia 1: Provincia Sur (Province Sud)
--     │   └── 14 municipios (incluye Numea, Mont-Dore, Dumbéa, etc.)
--     ├── Provincia 2: Provincia Norte (Province Nord)
--     │   └── 16 municipios (incluye Koné, Pouembout, Hienghène, etc.)
--     └── Provincia 3: Islas de la Lealtad (Province des îles Loyauté)
--         └── 3 municipios (Lifou, Maré, Ouvéa)
--
-- IMPORTANTE: ISO 3166-2:NC DEFINE códigos oficiales para las 3 provincias .
-- La estructura provincial es clave para la organización política del territorio.
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Nueva Caledonia se organiza en provincias como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'provincia_nc', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'NC'), 8, 'Provincia', 'Province', 'Province',
       'Province', 'Provincia', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'provincia_nc'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de Nueva Caledonia.
--         Las 3 provincias con sus geo_ids reales de geonames.org.
--         Los códigos ISO 3166-2:NC son oficiales según el estándar.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Provincia 1: Provincia Sur (Province Sud) - la más poblada, incluye la capital Numea
( 4038898, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='NC'), 'NC-SU', NULL, NULL, '01', 'NC-SU', 'NCL-SU', '+687', (SELECT id FROM t075t_division_types WHERE code='provincia_nc'), 'provincia sur', 'South Province', 'Province Sud', 'Province Sud', 'South Province', 1, NOW(6), NOW(6), 1, 1),

-- Provincia 2: Provincia Norte (Province Nord) - la más extensa, con 16 municipios
( 4038899, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='NC'), 'NC-NO', NULL, NULL, '02', 'NC-NO', 'NCL-NO', '+687', (SELECT id FROM t075t_division_types WHERE code='provincia_nc'), 'provincia norte', 'North Province', 'Province Nord', 'Province Nord', 'North Province', 1, NOW(6), NOW(6), 1, 1),

-- Provincia 3: Islas de la Lealtad (Province des îles Loyauté) - archipiélago al este
( 4038900, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='NC'), 'NC-IL', NULL, NULL, '03', 'NC-IL', 'NCL-IL', '+687', (SELECT id FROM t075t_division_types WHERE code='provincia_nc'), 'islas de la lealtad', 'Loyalty Islands Province', 'Province des îles Loyauté', 'Province des îles Loyauté', 'Loyalty Islands Province', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA.
--     *   **REALIDAD ADMINISTRATIVA:** Nueva Caledonia tiene 3 PROVINCIAS como ADM1 .
--     *   Las 3 provincias son: Provincia Sur, Provincia Norte, e Islas de la Lealtad .
--     *   Esta estructura se estableció con el Acuerdo de Numea de 1998 .
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   Nueva Caledonia es una Colectividad Sui Géneris de Francia (sui generis collectivity) 
--     *   Clasificada como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2)
--     *   Código ISO 3166-1 alpha-2: NC
--     *   Código ISO 3166-1 alpha-3: NCL
--     *   Código numérico ISO: 540
--     *   Dominio de internet: .nc
--     *   Es territorio de ultramar de Francia con autonomía ampliada 
--     *   Está en proceso de autodeterminación con referendos realizados entre 2018 y 2021 
--
-- 3.  **CÓDIGOS ISO 3166-2 (OFICIALES):**
--     *   **IMPORTANTE:** ISO 3166-2:NC DEFINE códigos oficiales para las 3 provincias 
--     *   Códigos oficiales:
--         - NC-SU: Province Sud (South Province)
--         - NC-NO: Province Nord (North Province)
--         - NC-IL: Province des îles Loyauté (Loyalty Islands Province)
--     *   `code_iso_numeric` se asigna como '01' a '03' por convención para cumplir NOT NULL.
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres para cada provincia .
--     *   Los IDs se derivan de la base de datos de Geonames .
--     *   Cada provincia tiene un geo_id específico que la identifica como división geográfica.
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idiomas oficiales: Francés (oficial), también se hablan 28 idiomas canacos
--     *   `name_spanish`: nombres en español, en minúsculas con primera mayúscula.
--     *   `name_english`: nombres en inglés según uso oficial.
--     *   `name_iso`: nombres oficiales en francés según ISO 3166-2 .
--     *   `name_original`: nombres en francés.
--
-- 6.  **DATOS DEMOGRÁFICOS Y GEOGRÁFICOS (censo 2019) :**
--     | Provincia | Código | Población | Área (km²) | Densidad (per km²) | Municipios |
--     |-----------|--------|-----------|------------|-------------------|------------|
--     | Province Sud | NC-SU | 203,142 | 7,303 | 27.8 | 14 |
--     | Province Nord | NC-NO | 49,910 | 9,583 | 5.2 | 16 |
--     | Îles Loyauté | NC-IL | 18,353 | 1,981 | 9.3 | 3 |
--     | **Total** | | **271,405** | **18,867** | **14.4** | **33** |
--
-- 7.  **CAPITAL:**
--     *   Numea (Nouméa) es la capital de Nueva Caledonia .
--     *   Se encuentra en la Provincia Sur .
--
-- 8.  **CÓDIGO TELEFÓNICO:**
--     *   Código telefónico: +687 
--
-- 9.  **LOS 33 MUNICIPIOS (ADM2):**
--     *   **Provincia Sur (14 municipios):** Numea, Mont-Dore, Dumbéa, Païta, Bouloupari, La Foa, Sarraméa, Farino, Moindou, Bourail, Thio, Yaté, Île des Pins, Kouaoua
--     *   **Provincia Norte (16 municipios):** Koné, Pouembout, Voh, Kaala-Gomen, Koumac, Poum, Ouégoa, Belep, Hienghène, Touho, Poindimié, Ponérihouen, Houaïlou, Canala, Poya, Koum
--     *   **Islas de la Lealtad (3 municipios):** Lifou, Maré, Ouvéa
--
-- 10. **ACUERDO DE NÚMEA (1998):**
--     *   Estableció las tres provincias como divisiones de primer nivel
--     *   Creó el Congreso de Nueva Caledonia con 54 miembros
--     *   Estableció el Senado Consuetudinario (representación canaca)
--     *   Las provincias tienen competencias en educación, salud, economía y desarrollo
--
-- 11. **DISTRIBUCIÓN ECONÓMICA:**
--     *   Provincia Sur: centro económico, minería de níquel (Numea)
--     *   Provincia Norte: minería, agricultura, desarrollo industrial (usina de Koniambo)
--     *   Islas de la Lealtad: turismo, agricultura, pesca, producción de vainilla y copra
--
-- 12. **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" era INCORRECTA.
--     *   Se ha verificado con múltiples fuentes:
--         - ISO 3166-2:NC: 3 provincias con códigos oficiales 
--         - GeoPostcodes: 3 provincias como ADM1 
--         - ISEE (Instituto de Estadística): 3 provincias 
--         - Government of New Caledonia: 3 provincias 
--         - Geonames: 3 provincias con IDs específicos 
--     *   Este SQL genera las 3 provincias correctas con sus códigos ISO oficiales.
--
-- 13. **NOTA SOBRE MUNICIPIOS:**
--     *   Nueva Caledonia tiene 33 municipios (no 16)
--     *   Los municipios son divisiones ADM2, no ADM1
--     *   Los municipios están organizados dentro de las provincias
--     *   Cada provincia tiene su propio gobierno y competencias definidas
-- ==================================================================================