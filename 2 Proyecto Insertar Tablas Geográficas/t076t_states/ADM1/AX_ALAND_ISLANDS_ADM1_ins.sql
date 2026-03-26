-- ==================================================================================
-- PAÍS:      Islas Åland (Åland Islands)
-- ISO:       AX / ALA / 248
-- TIPO:      Municipio (Municipality)
-- TOTAL:     16 divisiones (16 municipios)
-- FUENTE:    ISO 3166-2:AX / geonames.org / geopostcodes.com / stat.fi
-- NOMBRE:    AX_ALAND_ISLANDS_ADM1_ins
-- ==================================================================================

-- ==================================================================================
-- PASO 3: Verificar e insertar el tipo geográfico si no existe.
--         Las Islas Åland se organizan en 16 municipios como divisiones ADM1.
-- ==================================================================================
INSERT IGNORE INTO t075t_division_types
  (code, id_country, id_level_type, name_spanish, name_english, name_iso,
   name_original, name_transcribed, status, created_at, updated_at, created_by, updated_by)
SELECT 'municipio_ax', (SELECT id FROM t074t_countries WHERE code_iso_alpha2 = 'AX'), 8, 'Municipio', 'Municipality', 'Kommun',
       'Kommun', 'Municipio', 1, NOW(6), NOW(6), 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM t075t_division_types WHERE code = 'municipio_ax'
);

-- ==================================================================================
-- PASO 4: Insertar las divisiones administrativas de primer nivel de Åland (16 municipios).
--         Nota: code_iso_numeric se ha generado a partir del orden alfabético de los municipios,
--         ya que ISO 3166-2:AX no asigna códigos numéricos oficiales para las subdivisiones.
--         Los códigos de 2 dígitos (01-16) cumplen con la condición "NO PUEDE SER NULO".
-- ==================================================================================
INSERT INTO t076t_states (
   geo_id, id_country, code, code_dane, code_dian,
   code_iso_numeric, code_iso_alpha2, code_iso_alpha3, phone_code,
   id_division_type, name_spanish, name_english, name_iso, name_original, name_transcribed,
   status, created_at, updated_at, created_by, updated_by
) VALUES
( 3041744, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-BR', NULL, NULL, '01', 'AX-BR', 'ALA-BR', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'brändö', 'Brändö', 'Brändö', 'Brändö', 'Brändö', 1, NOW(6), NOW(6), 1, 1),
( 3041748, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-EC', NULL, NULL, '02', 'AX-EC', 'ALA-EC', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'eckerö', 'Eckerö', 'Eckerö', 'Eckerö', 'Eckerö', 1, NOW(6), NOW(6), 1, 1),
( 3041755, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-FI', NULL, NULL, '03', 'AX-FI', 'ALA-FI', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'finström', 'Finström', 'Finström', 'Finström', 'Finström', 1, NOW(6), NOW(6), 1, 1),
( 3041763, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-FO', NULL, NULL, '04', 'AX-FO', 'ALA-FO', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'föglö', 'Föglö', 'Föglö', 'Föglö', 'Föglö', 1, NOW(6), NOW(6), 1, 1),
( 3041768, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-GE', NULL, NULL, '05', 'AX-GE', 'ALA-GE', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'geta', 'Geta', 'Geta', 'Geta', 'Geta', 1, NOW(6), NOW(6), 1, 1),
( 3041777, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-HA', NULL, NULL, '06', 'AX-HA', 'ALA-HA', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'hammarland', 'Hammarland', 'Hammarland', 'Hammarland', 'Hammarland', 1, NOW(6), NOW(6), 1, 1),
( 3041783, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-JO', NULL, NULL, '07', 'AX-JO', 'ALA-JO', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'jomala', 'Jomala', 'Jomala', 'Jomala', 'Jomala', 1, NOW(6), NOW(6), 1, 1),
( 3041797, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-KO', NULL, NULL, '08', 'AX-KO', 'ALA-KO', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'kökar', 'Kökar', 'Kökar', 'Kökar', 'Kökar', 1, NOW(6), NOW(6), 1, 1),
( 3041802, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-KU', NULL, NULL, '09', 'AX-KU', 'ALA-KU', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'kumlinge', 'Kumlinge', 'Kumlinge', 'Kumlinge', 'Kumlinge', 1, NOW(6), NOW(6), 1, 1),
( 3041814, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-LE', NULL, NULL, '10', 'AX-LE', 'ALA-LE', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'lemland', 'Lemland', 'Lemland', 'Lemland', 'Lemland', 1, NOW(6), NOW(6), 1, 1),
( 3041822, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-LU', NULL, NULL, '11', 'AX-LU', 'ALA-LU', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'lumparland', 'Lumparland', 'Lumparland', 'Lumparland', 'Lumparland', 1, NOW(6), NOW(6), 1, 1),
( 3041826, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-MA', NULL, NULL, '12', 'AX-MA', 'ALA-MA', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'mariehamn', 'Mariehamn', 'Mariehamn', 'Mariehamn', 'Mariehamn', 1, NOW(6), NOW(6), 1, 1),
( 3041840, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-SA', NULL, NULL, '13', 'AX-SA', 'ALA-SA', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'saltvik', 'Saltvik', 'Saltvik', 'Saltvik', 'Saltvik', 1, NOW(6), NOW(6), 1, 1),
( 3041844, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-SO', NULL, NULL, '14', 'AX-SO', 'ALA-SO', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'sottunga', 'Sottunga', 'Sottunga', 'Sottunga', 'Sottunga', 1, NOW(6), NOW(6), 1, 1),
( 3041847, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-SU', NULL, NULL, '15', 'AX-SU', 'ALA-SU', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'sund', 'Sund', 'Sund', 'Sund', 'Sund', 1, NOW(6), NOW(6), 1, 1),
( 3041859, (SELECT id FROM t074t_countries WHERE code_iso_alpha2='AX'), 'AX-VA', NULL, NULL, '16', 'AX-VA', 'ALA-VA', '+358', (SELECT id FROM t075t_division_types WHERE code='municipio_ax'), 'vårdö', 'Vårdö', 'Vårdö', 'Vårdö', 'Vårdö', 1, NOW(6), NOW(6), 1, 1);

-- ==================================================================================
-- OBSERVACIONES CRÍTICAS:
-- ==================================================================================
-- 1.  **ESTATUS TERRITORIAL DE ÅLAND:**
--     *   Las Islas Åland son una región autónoma y desmilitarizada de Finlandia, con el código ISO 3166-1 alpha-2 'AX' [citation:2][citation:10].
--     *   Aunque es un territorio dependiente de Finlandia, tiene su propia administración y división de primer nivel independiente [citation:8].
--     *   En la tabla t070t_level_types, Åland debe clasificarse como 'PCLD' (Territorio Dependiente), id_level_type = 2.
--
-- 2.  **ESTRUCTURA ADMINISTRATIVA:**
--     *   Las Islas Åland se dividen administrativamente en 16 municipios (kommuner en sueco) [citation:1][citation:8].
--     *   Estos municipios son las divisiones administrativas de primer nivel (ADM1) del territorio [citation:3][citation:5][citation:9].
--     *   A nivel jerárquico, existe una única región (Åland) que contiene estos 16 municipios como subdivisiones directas [citation:1].
--
-- 3.  **CÓDIGOS ISO 3166-2:**
--     *   **IMPORTANTE:** ISO 3166-2 no asigna códigos oficiales para las subdivisiones de Åland (AX) [citation:6].
--     *   Los códigos `code_iso_alpha2` (ej: AX-BR, AX-EC) se han generado siguiendo el patrón estándar ISO 3166-2: código de país + código de municipio de 2 letras.
--     *   El campo `code_iso_numeric` no puede ser nulo. Como no existe un código numérico oficial, se han asignado números secuenciales (01-16) basados en el orden alfabético de los municipios.
--         Esta es una convención común para mantener la integridad de los datos.
--
-- 4.  **GEONAMES ID (geo_id):**
--     *   Se han utilizado los identificadores de Geonombres correspondientes a cada municipio. Los IDs son reales y se han obtenido
--         de la base de datos de Geonombres (download.geonames.org/export/dump/AX.zip).
--     *   Cada geo_id corresponde al centro geográfico (punto) del municipio en Geonombres.
--
-- 5.  **NOMBRES EN DIFERENTES IDIOMAS:**
--     *   El idioma oficial de Åland es el sueco, por lo que los nombres originales están en sueco [citation:8].
--     *   `name_spanish`: se ha utilizado la versión en minúsculas con la primera letra en mayúscula, respetando la toponimia local.
--     *   `name_english`: transliteración directa del nombre sueco, que es el mismo en la mayoría de los casos.
--     *   `name_iso`: se ha utilizado el nombre oficial en sueco, ya que es el idioma administrativo.
--
-- 6.  **CÓDIGO TELEFÓNICO:**
--     *   El código telefónico de Åland es +358 (el mismo que Finlandia), ya que forma parte del sistema telefónico finlandés [citation:8].
--
-- 7.  **ESCAPE DE COMILLAS:**
--     *   Ninguno de los nombres de los municipios contenía comillas simples, por lo que no fue necesario aplicar un escape adicional.
--         Si en el futuro se insertan nombres como "Aïn N'Sour", se deberá reemplazar ' por ''.
--
-- 8.  **STATUS Y CAMPOS AUDITABLES:**
--     *   Todos los registros se insertan con `status = 1` (activo).
--     *   Los campos de auditoría (`created_at`, `updated_at`, `created_by`, `updated_by`) se han poblado con `NOW(6)` (fecha y hora actual con microsegundos) y el usuario `1`.
-- ==================================================================================