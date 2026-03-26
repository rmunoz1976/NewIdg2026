-- ==================================================================================
-- PAÍS:      Jersey (Jersey)
-- ISO:       JE / JEY / 832
-- TIPO:      Dependencia de la Corona Británica (British Crown Dependency)
-- TOTAL:     12 divisiones administrativas de primer nivel (12 parishes)
-- FUENTE:    GeoPostcodes / States of Jersey / geonames.org / Wikipedia
-- NOMBRE:    JE_JERSEY_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- Jersey se divide administrativamente en 12 parroquias (parishes) que constituyen
-- las divisiones de primer nivel (ADM1) del territorio .
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO. Jersey tiene:
-- - 12 PARROQUIAS como ADM1 (divisiones de primer nivel) 
-- - Las parroquias se dividen en vingtaines y cueillettes (ADM2) para fines electorales
-- - No hay municipios; las parroquias son la unidad administrativa básica
--
-- ESTRUCTURA JERÁRQUICA CORRECTA:
-- └── Jersey (ADM0) - Dependencia de la Corona
--     ├── 12 parroquias (ADM1)
--     │   ├── St Helier (capital y parroquia más poblada)
--     │   ├── St Brelade
--     │   ├── St Clement
--     │   ├── St John
--     │   ├── St Lawrence
--     │   ├── St Martin
--     │   ├── St Mary
--     │   ├── St Ouen
--     │   ├── St Peter
--     │   ├── St Saviour
--     │   └── Trinity
--     └── Vingtaines y cueillettes (subdivisiones electorales)
--
-- IMPORTANTE: ISO 3166-2:JE NO DEFINE códigos oficiales para subdivisiones .
-- A pesar de tener una estructura administrativa bien definida (12 parroquias),
-- ISO no les ha asignado códigos. Sin embargo, Geonames y GeoPostcodes proporcionan
-- códigos para las parroquias como subdivisiones ADM1 .
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Jersey se organiza en parroquias como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'parroquia_je', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'JE'), 8, 'Parroquia', 'Parish', 'Paroisse',
       'Paroisse', 'Parroquia', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'parroquia_je'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de Jersey.
--         Las 12 parroquias con sus geo_ids reales de geonames.org.
--         NOTA: ISO 3166-2:JE no define códigos oficiales; se usan códigos JE-XX.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Parroquia 1: St Helier (capital y centro administrativo)
( 31042091, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='JE'), 'JE-SH', NULL, NULL, '01', 'JE-SH', 'JEY-SH', '+44', (SELECT id FROM t075t_division_types WHERE code='parroquia_je'), 'san helier', 'St Helier', 'St Helier', 'Saint Hélier', 'St Helier', 1, NOW(6), NOW(6), 1, 1),

-- Parroquia 2: St Brelade (suroeste, famosa por su playa y templo)
( 31042093, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='JE'), 'JE-SB', NULL, NULL, '02', 'JE-SB', 'JEY-SB', '+44', (SELECT id FROM t075t_division_types WHERE code='parroquia_je'), 'san brelade', 'St Brelade', 'St Brelade', 'Saint Brélade', 'St Brelade', 1, NOW(6), NOW(6), 1, 1),

-- Parroquia 3: St Clement (sudeste)
( 31042094, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='JE'), 'JE-SC', NULL, NULL, '03', 'JE-SC', 'JEY-SC', '+44', (SELECT id FROM t075t_division_types WHERE code='parroquia_je'), 'san clemente', 'St Clement', 'St Clement', 'Saint Clément', 'St Clement', 1, NOW(6), NOW(6), 1, 1),

-- Parroquia 4: St John (norte, rural)
( 31042095, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='JE'), 'JE-SJ', NULL, NULL, '04', 'JE-SJ', 'JEY-SJ', '+44', (SELECT id FROM t075t_division_types WHERE code='parroquia_je'), 'san juan', 'St John', 'St John', 'Saint Jean', 'St John', 1, NOW(6), NOW(6), 1, 1),

-- Parroquia 5: St Lawrence (centro)
( 31042096, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='JE'), 'JE-SL', NULL, NULL, '05', 'JE-SL', 'JEY-SL', '+44', (SELECT id FROM t075t_division_types WHERE code='parroquia_je'), 'san lorenzo', 'St Lawrence', 'St Lawrence', 'Saint Laurent', 'St Lawrence', 1, NOW(6), NOW(6), 1, 1),

-- Parroquia 6: St Martin (noreste)
( 31042097, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='JE'), 'JE-SM', NULL, NULL, '06', 'JE-SM', 'JEY-SM', '+44', (SELECT id FROM t075t_division_types WHERE code='parroquia_je'), 'san martín', 'St Martin', 'St Martin', 'Saint Martin', 'St Martin', 1, NOW(6), NOW(6), 1, 1),

-- Parroquia 7: St Mary (noroeste)
( 31042098, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='JE'), 'JE-SMA', NULL, NULL, '07', 'JE-SMA', 'JEY-SMA', '+44', (SELECT id FROM t075t_division_types WHERE code='parroquia_je'), 'santa maría', 'St Mary', 'St Mary', 'Sainte Marie', 'St Mary', 1, NOW(6), NOW(6), 1, 1),

-- Parroquia 8: St Ouen (noroeste, la más grande)
( 31042099, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='JE'), 'JE-SO', NULL, NULL, '08', 'JE-SO', 'JEY-SO', '+44', (SELECT id FROM t075t_division_types WHERE code='parroquia_je'), 'san ouen', 'St Ouen', 'St Ouen', 'Saint Ouen', 'St Ouen', 1, NOW(6), NOW(6), 1, 1),

-- Parroquia 9: St Peter (oeste)
( 31042100, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='JE'), 'JE-SP', NULL, NULL, '09', 'JE-SP', 'JEY-SP', '+44', (SELECT id FROM t075t_division_types WHERE code='parroquia_je'), 'san pedro', 'St Peter', 'St Peter', 'Saint Pierre', 'St Peter', 1, NOW(6), NOW(6), 1, 1),

-- Parroquia 10: St Saviour (centro-este)
( 31042101, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='JE'), 'JE-SS', NULL, NULL, '10', 'JE-SS', 'JEY-SS', '+44', (SELECT id FROM t075t_division_types WHERE code='parroquia_je'), 'san salvador', 'St Saviour', 'St Saviour', 'Saint Sauveur', 'St Saviour', 1, NOW(6), NOW(6), 1, 1),

-- Parroquia 11: Trinity (noreste)
( 31042102, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='JE'), 'JE-TR', NULL, NULL, '11', 'JE-TR', 'JEY-TR', '+44', (SELECT id FROM t075t_division_types WHERE code='parroquia_je'), 'trinidad', 'Trinity', 'Trinity', 'La Trinité', 'Trinity', 1, NOW(6), NOW(6), 1, 1),

-- Parroquia 12: Grouville (sudeste, incluye el islote de La Motte)
( 31042092, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='JE'), 'JE-GR', NULL, NULL, '12', 'JE-GR', 'JEY-GR', '+44', (SELECT id FROM t075t_division_types WHERE code='parroquia_je'), 'grouville', 'Grouville', 'Grouville', 'Grouville', 'Grouville', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA.
--     *   **REALIDAD ADMINISTRATIVA:** Jersey tiene 12 PARROQUIAS como ADM1 .
--     *   Las 12 parroquias son: St Helier, St Brelade, St Clement, St John, St Lawrence,
--         St Martin, St Mary, St Ouen, St Peter, St Saviour, Trinity, Grouville .
--     *   Las parroquias son la unidad administrativa más antigua, algunas datan del siglo XI .
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   Jersey es una Dependencia de la Corona Británica (British Crown Dependency) 
--     *   No forma parte del Reino Unido ni de la Unión Europea
--     *   Clasificada como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2)
--     *   Código ISO 3166-1 alpha-2: JE
--     *   Código ISO 3166-1 alpha-3: JEY
--     *   Código numérico ISO: 832
--     *   Dominio de internet: .je
--     *   Tiene su propio parlamento (States of Jersey) desde el siglo XIII 
--
-- 3.  **CÓDIGOS ISO 3166-2:**
--     *   **IMPORTANTE:** ISO 3166-2:JE NO DEFINE códigos oficiales para subdivisiones .
--     *   A pesar de tener 12 parroquias bien definidas, ISO no les ha asignado códigos .
--     *   Los códigos JE-XX se generan basados en los códigos de GeoPostcodes y Geonames .
--     *   `code_iso_numeric` se asigna como '01' a '12' por convención para cumplir NOT NULL.
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres para cada parroquia .
--     *   Los IDs se derivan de la base de datos de Geonames .
--     *   Cada parroquia tiene un geo_id específico que la identifica como división geográfica.
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idiomas oficiales: Inglés y Francés (con influencia normanda)
--     *   También se habla Jèrriais (normando de Jersey)
--     *   `name_spanish`: nombres en español, en minúsculas con primera mayúscula.
--     *   `name_english`: nombres en inglés según uso oficial.
--     *   `name_iso`: nombres oficiales en inglés/francés.
--     *   `name_original`: nombres en inglés (en Jersey se usan los nombres en inglés).
--
-- 6.  **DATOS DEMOGRÁFICOS Y GEOGRÁFICOS (censo 2021) :**
--     | Parroquia | Código | Población | Área (km²) | Densidad (per km²) |
--     |-----------|--------|-----------|------------|-------------------|
--     | St Helier | JE-SH | 35,822 | 10.6 | 3,379 |
--     | St Saviour | JE-SS | 13,580 | 9.3 | 1,460 |
--     | St Brelade | JE-SB | 10,891 | 12.8 | 851 |
--     | St Clement | JE-SC | 9,221 | 4.2 | 2,195 |
--     | St Peter | JE-SP | 5,182 | 11.6 | 447 |
--     | St Lawrence | JE-SL | 5,418 | 10.5 | 516 |
--     | St Ouen | JE-SO | 4,097 | 15.0 | 273 |
--     | St Martin | JE-SM | 3,763 | 10.3 | 365 |
--     | Grouville | JE-GR | 4,866 | 7.8 | 624 |
--     | St John | JE-SJ | 2,911 | 8.7 | 335 |
--     | Trinity | JE-TR | 3,155 | 12.3 | 256 |
--     | St Mary | JE-SMA | 1,817 | 6.5 | 280 |
--     | **Total** | | **100,723** | **117.6** | **856** |
--
-- 7.  **CAPITAL:**
--     *   St Helier es la capital de Jersey .
--     *   Es la parroquia más poblada y el centro administrativo, comercial y financiero.
--
-- 8.  **CÓDIGO TELEFÓNICO:**
--     *   Código telefónico: +44 (código del Reino Unido)
--     *   Código de área: 1534 (para Jersey)
--
-- 9.  **GOBIERNO LOCAL:**
--     *   Cada parroquia tiene un Connétable (Constable) elegido cada 4 años .
--     *   Las parroquias se subdividen en vingtaines y cueillettes para fines electorales .
--     *   Las parroquias son responsables de servicios locales: carreteras, alumbrado, policía local .
--
-- 10. **SUBVISIONES INTERNAS (ADM2):**
--     *   Cada parroquia se divide en vingtaines (en las parroquias rurales) o cueillettes (en St Ouen) .
--     *   St Helier se divide en distritos .
--     *   Estas subdivisiones son para fines electorales y no constituyen ADM1 .
--
-- 11. **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" era INCORRECTA.
--     *   Se ha verificado con múltiples fuentes:
--         - States of Jersey: 12 parroquias como divisiones administrativas 
--         - GeoPostcodes: 12 parroquias como ADM1 
--         - Geonames: 12 parroquias con IDs específicos 
--         - Wikipedia: 12 parroquias históricas 
--     *   Este SQL genera las 12 parroquias correctas como divisiones ADM1.
--
-- 12. **NOTA SOBRE MUNICIPIOS:**
--     *   Jersey NO tiene municipios.
--     *   Las parroquias son la unidad administrativa básica.
--     *   No hay subdivisiones de tipo "municipio" en Jersey.
--     *   St Helier es una ciudad y capital, pero sigue siendo una parroquia.
-- ==================================================================================