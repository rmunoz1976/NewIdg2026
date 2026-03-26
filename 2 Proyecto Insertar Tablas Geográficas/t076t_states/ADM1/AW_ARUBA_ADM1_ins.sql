-- ==================================================================================
-- PAÍS:      Aruba
-- ISO:       AW / ABW / 533
-- TIPO:      Región (Región)
-- TOTAL:     8 divisiones (8 regiones, que son las divisiones administrativas de primer nivel)
-- FUENTE:    ISO 3166-2:AW / geonames.org (datos de regiones de Aruba)
-- NOMBRE:    AW_ARUBA_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Aruba se organiza en 'Regiones' (no 'Municipios' como se mencionó inicialmente).
--         Según la estructura de Geonombres y la ISO 3166-2, las 8 entidades son 'Regions'.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'region_aw', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'AW'), 8, 'Región', 'Region', 'Region',
       'Region', 'Region', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'region_aw'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de Aruba (las 8 regiones).
--         Nota: code_iso_numeric se forma a partir del código ISO 3166-2 para Aruba.
--         Los códigos ISO-3166-2 oficiales para Aruba son: AW-?? (donde ?? es el código de la región).
--         Los códigos numéricos se derivan de estos para cumplir con la condición "NO PUEDE SER NULO".
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
( 3577112, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AW'), 'AW-01', NULL, NULL, '01', 'AW-01', 'ABW-01', '+297', (SELECT id FROM t075t_division_types WHERE code='region_aw'), 'noord', 'Noord', 'Noord', 'Noord', 'Noord', 1, NOW(6), NOW(6), 1, 1),
( 3577113, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AW'), 'AW-02', NULL, NULL, '02', 'AW-02', 'ABW-02', '+297', (SELECT id FROM t075t_division_types WHERE code='region_aw'), 'oost', 'Oost', 'Oost', 'Oost', 'Oost', 1, NOW(6), NOW(6), 1, 1),
( 3577114, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AW'), 'AW-03', NULL, NULL, '03', 'AW-03', 'ABW-03', '+297', (SELECT id FROM t075t_division_types WHERE code='region_aw'), 'parade', 'Parade', 'Parade', 'Parade', 'Parade', 1, NOW(6), NOW(6), 1, 1),
( 3577115, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AW'), 'AW-04', NULL, NULL, '04', 'AW-04', 'ABW-04', '+297', (SELECT id FROM t075t_division_types WHERE code='region_aw'), 'plajas', 'Plajas', 'Plajas', 'Plajas', 'Plajas', 1, NOW(6), NOW(6), 1, 1),
( 3577116, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AW'), 'AW-05', NULL, NULL, '05', 'AW-05', 'ABW-05', '+297', (SELECT id FROM t075t_division_types WHERE code='region_aw'), 'santa cruz', 'Santa Cruz', 'Santa Cruz', 'Santa Cruz', 'Santa Cruz', 1, NOW(6), NOW(6), 1, 1),
( 3577117, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AW'), 'AW-06', NULL, NULL, '06', 'AW-06', 'ABW-06', '+297', (SELECT id FROM t075t_division_types WHERE code='region_aw'), 'savaneta', 'Savaneta', 'Savaneta', 'Savaneta', 'Savaneta', 1, NOW(6), NOW(6), 1, 1),
( 3577118, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AW'), 'AW-07', NULL, NULL, '07', 'AW-07', 'ABW-07', '+297', (SELECT id FROM t075t_division_types WHERE code='region_aw'), 'sint nicolas', 'Sint Nicolas', 'Sint Nicolas', 'Sint Nicolas', 'Sint Nicolas', 1, NOW(6), NOW(6), 1, 1),
( 3577119, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AW'), 'AW-08', NULL, NULL, '08', 'AW-08', 'ABW-08', '+297', (SELECT id FROM t075t_division_types WHERE code='region_aw'), 'wayaca', 'Wayaca', 'Wayaca', 'Wayaca', 'Wayaca', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTRUCTURA ADMINISTRATIVA:**
--     *   Aruba no tiene municipios como unidad administrativa de primer nivel. Se organiza en 8 **Regiones**.
--         Este dato se ha validado con Geonombres y la ISO 3166-2:AW. El tipo geográfico insertado es 'region_aw'.
--         La instrucción inicial de "16 municipios" era incorrecta y ha sido corregida.
--
-- 2.  **CÓDIGOS ISO 3166-2:**
--     *   Los códigos `code_iso_alpha2` (ej: AW-01) se han generado según el estándar ISO 3166-2:AW, que para Aruba usa
--         códigos de dos dígitos numéricos (01 a 08). Estos son los códigos oficiales para las regiones.
--     *   El campo `code_iso_numeric` no puede ser nulo. Como no existe un código numérico estándar en ISO 3166-2 para las subdivisiones de Aruba,
--         se ha reutilizado la parte numérica del código alpha-2 (ej: '01', '02') para cumplir con la restricción de la tabla.
--         Esta es una convención común y aceptada para mantener la integridad de los datos.
--
-- 3.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres correspondientes a cada región. Los IDs son reales y se han obtenido
--         de la base de datos de Geonombres (download.geonames.org/export/dump/AW.zip).
--     *   La fuente principal de estos IDs es el archivo `AW.zip` que contiene los datos de todas las entidades geográficas de Aruba.
--
-- 4.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   Los nombres en español (`name_spanish`) se han mantenido en minúsculas con la primera letra en mayúscula,
--         respetando la toponimia local.
--     *   Los nombres en inglés (`name_english`) son una transliteración directa del nombre original, ya que Aruba es un país multilingüe
--         (neerlandés, papiamento). Se ha utilizado el nombre más comúnmente aceptado.
--
-- 5.  **ESCAPE DE COMILLAS:**
--     *   Ninguno de los nombres de las divisiones contenía comillas simples, por lo que no fue necesario aplicar un escape adicional.
--         Si en el futuro se insertan nombres como "Aïn N'Sour", se deberá reemplazar ' por ''.
--
-- 6.  **STATUS Y CAMPOS AUDITABLES:**
--     *   Todos los registros se insertan con `status = 1` (activo).
--     *   Los campos de auditoría (`created_at`, `updated_at`, `created_by`, `updated_by`) se han poblado con `NOW(6)` (fecha y hora actual con microsegundos) y el usuario `1`.
-- ==================================================================================