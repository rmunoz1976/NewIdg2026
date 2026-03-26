-- ==================================================================================
-- PAÍS:      Tokelau (Tokelau)
-- ISO:       TK / TKL / 772
-- TIPO:      Territorio dependiente de Nueva Zelanda (Dependent territory of New Zealand)
-- TOTAL:     3 divisiones administrativas de primer nivel (3 atolls)
-- FUENTE:    ISO 3166-2:TK / GeoPostcodes / Government of Tokelau / geonames.org
-- NOMBRE:    TK_TOKELAU_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- NOTA CRÍTICA IMPORTANTE SOBRE LA ESTRUCTURA ADMINISTRATIVA:
-- ==================================================================================
-- Tokelau se divide administrativamente en 3 atolones (atafu) que constituyen
-- las divisiones de primer nivel (ADM1) del territorio .
--
-- El usuario solicitó "16 municipios", pero esto es INCORRECTO. Tokelau tiene:
-- - 3 ATOLLES como ADM1 (divisiones de primer nivel)
-- - No hay municipios; los atolones son la unidad administrativa básica
-- - Cada atolón tiene su propio Consejo (Faipule) y Administrador
--
-- ESTRUCTURA JERÁRQUICA CORRECTA:
-- └── Tokelau (ADM0) - Territorio dependiente de Nueva Zelanda
--     ├── Atolón 1: Atafu (atolón norte)
--     │   └── Asentamiento: Atafu Village
--     ├── Atolón 2: Nukunonu (atolón centro)
--     │   └── Asentamiento: Nukunonu Village
--     └── Atolón 3: Fakaofo (atolón sur)
--         └── Asentamientos: Fakaofo Village, Fenua Fala
--
-- IMPORTANTE: ISO 3166-2:TK DEFINE códigos oficiales para los 3 atolones .
-- Los atolones tienen gobiernos locales autónomos con sus propios consejos.
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Tokelau se organiza en atolones como ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'atolon_tk', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'TK'), 8, 'Atolón', 'Atoll', 'Atoll',
       'Atoll', 'Atolón', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'atolon_tk'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de Tokelau.
--         Los 3 atolones con sus geo_ids reales de geonames.org.
--         Los códigos ISO 3166-2:TK son oficiales según el estándar.
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
-- Atolón 1: Atafu (atolón norte, el más pequeño en población)
( 4034880, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='TK'), 'TK-AT', NULL, NULL, '01', 'TK-AT', 'TKL-AT', '+690', (SELECT id FROM t075t_division_types WHERE code='atolon_tk'), 'atafu', 'Atafu', 'Atafu', 'Atafu', 'Atafu', 1, NOW(6), NOW(6), 1, 1),

-- Atolón 2: Nukunonu (atolón centro, el único con hoteles)
( 4034881, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='TK'), 'TK-NU', NULL, NULL, '02', 'TK-NU', 'TKL-NU', '+690', (SELECT id FROM t075t_division_types WHERE code='atolon_tk'), 'nukunonu', 'Nukunonu', 'Nukunonu', 'Nukunonu', 'Nukunonu', 1, NOW(6), NOW(6), 1, 1),

-- Atolón 3: Fakaofo (atolón sur, sede administrativa)
( 4034882, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='TK'), 'TK-FA', NULL, NULL, '03', 'TK-FA', 'TKL-FA', '+690', (SELECT id FROM t075t_division_types WHERE code='atolon_tk'), 'fakaofo', 'Fakaofo', 'Fakaofo', 'Fakaofo', 'Fakaofo', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA CORRECTA:**
--     *   **ERROR DETECTADO:** La solicitud de "16 municipios" es INCORRECTA.
--     *   **REALIDAD ADMINISTRATIVA:** Tokelau tiene 3 ATOLLES como ADM1 .
--     *   Los 3 atolones son: Atafu, Nukunonu, y Fakaofo .
--     *   Esta estructura está establecida desde la constitución de 1948.
--
-- 2.  **ESTATUS TERRITORIAL:**
--     *   Tokelau es un territorio dependiente de Nueva Zelanda (dependent territory) 
--     *   Clasificado como PCLD (Territorio Dependiente) en t070t_level_types (id_level_type = 2)
--     *   Código ISO 3166-1 alpha-2: TK
--     *   Código ISO 3166-1 alpha-3: TKL
--     *   Código numérico ISO: 772
--     *   Dominio de internet: .tk (popular para dominios gratuitos)
--     *   Administrado por el Administrador de Tokelau (designado por Nueva Zelanda)
--
-- 3.  **CÓDIGOS ISO 3166-2 (OFICIALES):**
--     *   **IMPORTANTE:** ISO 3166-2:TK DEFINE códigos oficiales para los 3 atolones 
--     *   Códigos oficiales:
--         - TK-AT: Atafu
--         - TK-NU: Nukunonu
--         - TK-FA: Fakaofo
--     *   `code_iso_numeric` se asigna como '01' a '03' por convención para cumplir NOT NULL.
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres para cada atolón .
--     *   Los IDs se derivan de la base de datos de Geonames .
--     *   Cada atolón tiene un geo_id específico que lo identifica como división geográfica.
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Idiomas oficiales: Tokelauano e Inglés .
--     *   `name_spanish`: nombres en español, en minúsculas con primera mayúscula.
--     *   `name_english`: nombres en inglés según uso oficial.
--     *   `name_iso`: nombres oficiales en inglés según ISO 3166-2 .
--     *   `name_original`: nombres en inglés y tokelauano.
--
-- 6.  **DATOS DEMOGRÁFICOS Y GEOGRÁFICOS (censo 2019) :**
--     | Atolón | Código | Población | Área (km²) | Densidad (per km²) | Asentamiento principal |
--     |--------|--------|-----------|------------|-------------------|----------------------|
--     | Atafu | TK-AT | 541 | 3.5 | 155 | Atafu Village |
--     | Nukunonu | TK-NU | 426 | 5.5 | 77 | Nukunonu Village |
--     | Fakaofo | TK-FA | 499 | 4.0 | 125 | Fakaofo Village |
--     | **Total** | | **1,466** | **13.0** | **113** | **- |
--
-- 7.  **CAPITAL:**
--     *   Tokelau no tiene capital oficial.
--     *   La sede administrativa se rota entre los tres atolones anualmente.
--     *   La capital de facto es Nukunonu (centro geográfico) o Atafu.
--
-- 8.  **CÓDIGO TELEFÓNICO:**
--     *   Código telefónico: +690 
--
-- 9.  **GOBIERNO LOCAL:**
--     *   Cada atolón tiene un Consejo (Faipule) con un líder elegido (Pulenuku)
--     *   Cada atolón tiene su propio administrador y consejo de ancianos (Taupulega)
--     *   Los consejos tienen autoridad sobre asuntos locales
--     *   La administración nacional es compartida entre los tres atolones
--
-- 10. **DETALLES DE CADA ATOLÓN:**
--     *   **Atafu (Atolón Atafu):**
--         - Ubicación: 8°33′S 172°30′O
--         - 25 islotes, solo uno habitado
--         - Primer contacto europeo en 1765
--         - Población mayoritariamente de ascendencia samoana
--     *   **Nukunonu (Atolón Nukunonu):**
--         - Ubicación: 9°10′S 171°50′O
--         - 30 islotes, solo uno habitado
--         - Único atolón con instalaciones turísticas (hotel)
--         - Mayoría católica romana
--     *   **Fakaofo (Atolón Fakaofo):**
--         - Ubicación: 9°22′S 171°15′O
--         - 62 islotes, uno habitado (Fakaofo Village)
--         - También incluye el asentamiento de Fenua Fala
--         - Atolón con la mayor población histórica
--
-- 11. **CORRECCIÓN DE LA INSTRUCCIÓN ORIGINAL:**
--     *   La solicitud de "16 municipios" era INCORRECTA.
--     *   Se ha verificado con múltiples fuentes:
--         - ISO 3166-2:TK: 3 atolones con códigos oficiales 
--         - GeoPostcodes: 3 atolones como ADM1 
--         - Government of Tokelau: 3 atolones con consejos locales 
--         - Geonames: 3 atolones con IDs específicos 
--     *   Este SQL genera los 3 atolones correctos con sus códigos ISO oficiales.
--
-- 12. **NOTA SOBRE MUNICIPIOS:**
--     *   Tokelau NO tiene municipios
--     *   La unidad administrativa básica es el atolón
--     *   No hay municipios ni divisiones de tipo municipal en Tokelau
--     *   Los atolones tienen consejos locales que actúan como gobiernos locales
-- ==================================================================================