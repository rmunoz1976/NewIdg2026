-- ============================================================
-- SCRIPT: insert_t071t_division_types.sql
-- TABLA  : t071t_division_types
-- MOTOR  : MySQL 8.0
-- FUENTES: GeoNames admin1CodesASCII.txt + countryInfo.txt
-- NOTA   : Cubre todos los tipos de division geografica del mundo
--          extraidos y clasificados desde los archivos GeoNames.
--          Los valores de created_by y updated_by se establecen
--          en 1 (usuario administrador del sistema).
--          Ajusta ese valor segun el id real de tu usuario admin.
-- ============================================================

SET NAMES utf8mb4;
SET character_set_client  = utf8mb4;
SET character_set_results = utf8mb4;

-- IMPORTANTE: Si la tabla ya tiene datos, ejecuta primero:
-- TRUNCATE TABLE t071t_division_types;
-- O usa INSERT IGNORE para omitir duplicados por code.

INSERT INTO `t071t_division_types`
  (`code`, `name_spanish`, `name_english`, `name_iso`, `name_original`, `name_transcribed`,
   `status`, `created_at`, `updated_at`, `created_by`, `updated_by`)
VALUES

-- ============================================================
-- NIVEL 0 - PLANETA
-- ============================================================
('WORLD',
 'Mundo',
 'World',
 'World',
 'World',
 'World',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- NIVEL 1 - CONTINENTE
-- ============================================================
('CONTINENT',
 'Continente',
 'Continent',
 'Continent',
 'Continent',
 'Continent',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- NIVEL 2 - PAIS / NACION
-- Fuente: countryInfo.txt - columna ISO, Country
-- Aplica a todos los 250 paises y territorios del archivo.
-- ============================================================
('COUNTRY',
 'Pais',
 'Country',
 'Country',
 'Country',
 'Country',
 1, NOW(6), NOW(6), 1, 1),

('NATION',
 'Nacion',
 'Nation',
 'Nation',
 'Nation',
 'Nation',
 1, NOW(6), NOW(6), 1, 1),

('TERRITORY',
 'Territorio',
 'Territory',
 'Territory',
 'Territory',
 'Territory',
 1, NOW(6), NOW(6), 1, 1),

('DEP_TERR',
 'Territorio Dependiente',
 'Dependent Territory',
 'Dependent Territory',
 'Dependent Territory',
 'Dependent Territory',
 1, NOW(6), NOW(6), 1, 1),

('OVERSEAS',
 'Territorio de Ultramar',
 'Overseas Territory',
 'Overseas Territory',
 'Overseas Territory',
 'Overseas Territory',
 1, NOW(6), NOW(6), 1, 1),

('CROWN_DEP',
 'Dependencia de la Corona',
 'Crown Dependency',
 'Crown Dependency',
 'Crown Dependency',
 'Crown Dependency',
 1, NOW(6), NOW(6), 1, 1),

('COLLECTIV',
 'Colectividad',
 'Collectivity',
 'Collectivity',
 'Collectivite',
 'Collectivite',
 1, NOW(6), NOW(6), 1, 1),

('SPEC_ADM',
 'Region Administrativa Especial',
 'Special Administrative Region',
 'Special Administrative Region',
 'Special Administrative Region',
 'Special Administrative Region',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- NIVEL 3 - PRIMERA DIVISION ADMINISTRATIVA (admin1)
-- Fuente: admin1CodesASCII.txt
-- ============================================================

-- ESTADO
-- Ocurrencias: 41 en admin1. Paises: US, MX, BR, AU, IN, MY,
--   VE, NG, SD, SS, WS, FM, PW, MM, DE (Freistaat), AU.
('STATE',
 'Estado',
 'State',
 'State',
 'State',
 'State',
 1, NOW(6), NOW(6), 1, 1),

-- PROVINCIA
-- Ocurrencias: 159. Paises: AR, CA, CN, EC, IT, PH, ZA, PG,
--   TR, ZM, RW, OM, PK, KH, SY, AO, AZ, MW, CD, CG, BO, PE.
('PROVINCE',
 'Provincia',
 'Province',
 'Province',
 'Province',
 'Province',
 1, NOW(6), NOW(6), 1, 1),

-- REGION
-- Ocurrencias: 100. Paises: FR, ES, IT, MX, CL, GH, ET, TG,
--   KG, TJ, TM, ML, CM, SN, BI, MG, CI, CF, UG, RW, LK, KE,
--   BF, GN, SO, YE, TH, LY, TR, NP, HT, LA, VN, NZ, GB, FI.
('REGION',
 'Region',
 'Region',
 'Region',
 'Region',
 'Region',
 1, NOW(6), NOW(6), 1, 1),

-- DEPARTAMENTO
-- Ocurrencias: 95. Paises: CO, FR, HT, GT, HN, SV, NI, BO,
--   PY, UY, BI, BF, TG, BJ, CF, SD, ML, VN.
('DEPARTMENT',
 'Departamento',
 'Department',
 'Department',
 'Department / Departement',
 'Department / Departement',
 1, NOW(6), NOW(6), 1, 1),

-- DISTRITO
-- Ocurrencias: 91. Paises: BT, IN, LK, GH, ID, SB, MV, PG,
--   RW, UG, TZ, ZM, MW, NP, BD, PK, MZ, ZW, KE, AO, NA, LA,
--   SL, LR, GW, GM, BZ, TL, JO, KW, SY, IQ, LB, YE, OM, SA,
--   EG, DZ, MA, TN, LY, SD, ET, ER, SS, SO, DJ, KM, SC, MU.
('DISTRICT',
 'Distrito',
 'District',
 'District',
 'District',
 'District',
 1, NOW(6), NOW(6), 1, 1),

-- CONDADO
-- Ocurrencias: 107. Paises: US, IE, GB, HR, RO, NO, SE, DK,
--   HU, SI, MK.
('COUNTY',
 'Condado',
 'County',
 'County',
 'County',
 'County',
 1, NOW(6), NOW(6), 1, 1),

-- MUNICIPIO / MUNICIPALIDAD
-- Ocurrencias: 224. Paises: SI, MK, AL, ME, RS, BA, XK, MK,
--   LV, LT, EE, IS, NO, SE, GL, IS, GR, CY, MT, SM, LI, AD.
('MUNICIPALI',
 'Municipio',
 'Municipality',
 'Municipality',
 'Municipality',
 'Municipality',
 1, NOW(6), NOW(6), 1, 1),

-- PARROQUIA
-- Ocurrencias: 36. Paises: BB, JM, AG, KN, DM, LC, VC, GD,
--   BS, BM, MS, AW, BQ, CW, SX, TT, TC.
('PARISH',
 'Parroquia',
 'Parish',
 'Parish',
 'Parish',
 'Parish',
 1, NOW(6), NOW(6), 1, 1),

-- OBLAST - Division administrativa rusa / ex-sovietica
-- Ocurrencias: 42. Paises: RU, UA, BY, KZ, KG, TJ, UZ, AZ.
('OBLAST',
 'Oblast (Region Administrativa)',
 'Oblast',
 'Oblast',
 'Oblast',
 'Oblast',
 1, NOW(6), NOW(6), 1, 1),

-- KRAY / KRAI - Division territorial rusa
-- Ocurrencias: 4+2=6. Paises: RU.
('KRAY',
 'Krai (Territorio Administrativo)',
 'Krai / Kray',
 'Krai',
 'Kray / Krai',
 'Kray / Krai',
 1, NOW(6), NOW(6), 1, 1),

-- RAYON - Subdivision administrativa ex-sovietica
-- Ocurrencias: 8+2=10. Paises: RU, UA, AZ, BY.
('RAYON',
 'Raion (Subdivision Administrativa)',
 'Rayon / Raion',
 'Rayon',
 'Rayon',
 'Rayon',
 1, NOW(6), NOW(6), 1, 1),

-- REPUBLIK / REPUBLICA AUTONOMA
-- Ocurrencias: 14. Paises: RU (Tatarstan, Bashkortostan, etc.)
--   BI, GA, CF, CD.
('REPUBLIC',
 'Republica',
 'Republic',
 'Republic',
 'Republic',
 'Republic',
 1, NOW(6), NOW(6), 1, 1),

('AUTO_REP',
 'Republica Autonoma',
 'Autonomous Republic',
 'Autonomous Republic',
 'Autonomous Republic',
 'Autonomous Republic',
 1, NOW(6), NOW(6), 1, 1),

-- GOBERNACION / GOBERNATORADO
-- Ocurrencias: 34+68=102. Paises: EG, IQ, SY, KW, LB, JO,
--   YE, BH, QA, LY, TN, SD, PS, IL.
('GOVERNORAT',
 'Gobernacion',
 'Governorate',
 'Governorate',
 'Muhafazat / Muhafazah',
 'Muhafazat',
 1, NOW(6), NOW(6), 1, 1),

-- ISLA
-- Ocurrencias: 27. Paises: PF, FJ, MV, BS, MH, KI, TV, PW,
--   KY, TC, VG, CC, NF, HM, PN, GS, BV, SJ, AQ.
('ISLAND',
 'Isla',
 'Island',
 'Island',
 'Island',
 'Island',
 1, NOW(6), NOW(6), 1, 1),

-- ATOLON
-- Ocurrencias: 38+76. Paises: MH, MV, KI, TV.
('ATOLL',
 'Atolon',
 'Atoll',
 'Atoll',
 'Atoll',
 'Atoll',
 1, NOW(6), NOW(6), 1, 1),

-- DIVISION
-- Ocurrencias: 7. Paises: BD, IN, PK, LK, MM, ZM, KE.
('DIVISION',
 'Division',
 'Division',
 'Division',
 'Division',
 'Division',
 1, NOW(6), NOW(6), 1, 1),

-- TERRITORIO FEDERAL / CAPITAL FEDERAL
-- Ocurrencias: 2+7=9. Paises: MY, IN, PK, MX, VE, AR, BR,
--   AU, NG, DE.
('FED_TERR',
 'Territorio Federal',
 'Federal Territory',
 'Federal Territory',
 'Federal Territory',
 'Federal Territory',
 1, NOW(6), NOW(6), 1, 1),

('FED_DIST',
 'Distrito Federal',
 'Federal District',
 'Federal District',
 'Federal District',
 'Distrito Federal',
 1, NOW(6), NOW(6), 1, 1),

-- CAPITAL
-- Ocurrencias: 7. Paises: BE, MD, TJ, MK, RU, KZ, BY, LT.
('CAPITAL',
 'Capital',
 'Capital',
 'Capital',
 'Capital',
 'Capital',
 1, NOW(6), NOW(6), 1, 1),

('CAPITAL_CT',
 'Ciudad Capital',
 'Capital City',
 'Capital City',
 'Capital City',
 'Capital City',
 1, NOW(6), NOW(6), 1, 1),

-- PREFECTURA
-- Ocurrencias: 1+2. Paises: JP, CN, LA.
('PREFECTURE',
 'Prefectura',
 'Prefecture',
 'Prefecture',
 'Prefecture / Ken (JP)',
 'Prefecture',
 1, NOW(6), NOW(6), 1, 1),

-- CANTON
-- Paises: CH (26 cantones), EC.
('CANTON',
 'Canton',
 'Canton',
 'Canton',
 'Kanton (CH)',
 'Kanton',
 1, NOW(6), NOW(6), 1, 1),

-- VOIVODATO - Polonia
-- Ocurrencias: 4. Paises: PL.
('VOIVODATE',
 'Voivodato',
 'Voivodeship',
 'Voivodeship',
 'Wojewodztwo',
 'Wojewodztwo',
 1, NOW(6), NOW(6), 1, 1),

-- KRAJ - Division de paises eslavos
-- Ocurrencias: 10. Paises: CZ, SK, RU.
('KRAJ',
 'Kraj (Division Administrativa)',
 'Kraj',
 'Kraj',
 'Kraj',
 'Kraj',
 1, NOW(6), NOW(6), 1, 1),

-- AIMAG / AIMAK - Mongolia
-- Paises: MN.
('AIMAG',
 'Aimag (Provincia)',
 'Aimag / Aimak',
 'Aimag',
 'Aimag',
 'Aimag',
 1, NOW(6), NOW(6), 1, 1),

-- WILAYA - Africa del Norte y del Oeste
-- Paises: DZ, MR, SD, ER.
('WILAYA',
 'Wilaya (Provincia)',
 'Wilaya',
 'Wilaya',
 'Wilaya',
 'Wilaya',
 1, NOW(6), NOW(6), 1, 1),

-- EMIRATO - Emiratos Arabes Unidos
-- Paises: AE.
('EMIRATE',
 'Emirato',
 'Emirate',
 'Emirate',
 'Imarah',
 'Imarah',
 1, NOW(6), NOW(6), 1, 1),

-- COMARCA - Panama, Espana
-- Paises: PA, ES.
('COMARCA',
 'Comarca',
 'Comarca',
 'Comarca',
 'Comarca',
 'Comarca',
 1, NOW(6), NOW(6), 1, 1),

-- BOROUGH - Reino Unido, USA, Noruega
('BOROUGH',
 'Municipio Especial / Barrio',
 'Borough',
 'Borough',
 'Borough',
 'Borough',
 1, NOW(6), NOW(6), 1, 1),

-- MUNICIPIO URBANO
-- Ocurrencias: 12. Paises: SI, MK, ME.
('URBAN_MUN',
 'Municipio Urbano',
 'Urban Municipality',
 'Urban Municipality',
 'Urban Municipality',
 'Urban Municipality',
 1, NOW(6), NOW(6), 1, 1),

-- MUNICIPIO RURAL
-- Ocurrencias: 1. Paises: MK, SI.
('RURAL_MUN',
 'Municipio Rural',
 'Rural Municipality',
 'Rural Municipality',
 'Rural Municipality',
 'Rural Municipality',
 1, NOW(6), NOW(6), 1, 1),

-- REGION AUTONOMA
-- Paises: CN, RU, UZ, ID, PH, NI, AZ.
('AUTO_REG',
 'Region Autonoma',
 'Autonomous Region',
 'Autonomous Region',
 'Autonomous Region',
 'Autonomous Region',
 1, NOW(6), NOW(6), 1, 1),

-- AREA METROPOLITANA
-- Paises: MX, CO, VE, CL.
('METRO_AREA',
 'Area Metropolitana',
 'Metropolitan Area',
 'Metropolitan Area',
 'Metropolitan Area',
 'Metropolitan Area',
 1, NOW(6), NOW(6), 1, 1),

-- CIUDAD ESTADO
-- Ocurrencias: 1. Paises: DE (Bremen), SG, MC, VA, SM.
('CITY_STATE',
 'Ciudad Estado',
 'City-State',
 'City-State',
 'City-State',
 'City-State',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- NIVEL 4 - SEGUNDA DIVISION ADMINISTRATIVA (admin2)
-- Fuente: admin2Codes.txt (no disponible en chat; estructura
--         documentada por GeoNames)
-- ============================================================

-- SUBREGION
('SUBREGION',
 'Subregion',
 'Subregion',
 'Subregion',
 'Subregion',
 'Subregion',
 1, NOW(6), NOW(6), 1, 1),

-- SUBPROVINCIA
('SUBPROV',
 'Subprovincia',
 'Subprovince',
 'Subprovince',
 'Subprovince',
 'Subprovince',
 1, NOW(6), NOW(6), 1, 1),

-- SUBDISTRITO
('SUBDIST',
 'Subdistrito',
 'Subdistrict',
 'Subdistrict',
 'Subdistrict',
 'Subdistrict',
 1, NOW(6), NOW(6), 1, 1),

-- CIRCUITO / CIRCUNSCRIPCION
('CIRCUMSCR',
 'Circunscripcion',
 'Constituency',
 'Constituency',
 'Constituency',
 'Constituency',
 1, NOW(6), NOW(6), 1, 1),

-- ARRONDISSEMENT - Francia y paises francofones
-- Paises: FR, HT, CM, CD, CG, CI, TG, BJ, BF, SN, ML, GN.
('ARRONDISS',
 'Arrondissement',
 'Arrondissement',
 'Arrondissement',
 'Arrondissement',
 'Arrondissement',
 1, NOW(6), NOW(6), 1, 1),

-- COMMUNE / COMUNA - Francia, Belgica, paises francofones
-- Paises: FR, BE, LU, CH, IT, GN, BF, ML, SN, TG, BJ.
('COMMUNE',
 'Comarca / Comun',
 'Commune',
 'Commune',
 'Commune',
 'Commune',
 1, NOW(6), NOW(6), 1, 1),

-- CERCLE - Mali, Guinea
-- Paises: ML, GN.
('CERCLE',
 'Circulo (Division Administrativa)',
 'Cercle',
 'Cercle',
 'Cercle',
 'Cercle',
 1, NOW(6), NOW(6), 1, 1),

-- TEHSIL / TALUK / TALUKA - Sur de Asia
-- Paises: IN, PK, BD, LK.
('TEHSIL',
 'Tehsil / Taluk',
 'Tehsil / Taluk',
 'Tehsil',
 'Tehsil',
 'Tehsil',
 1, NOW(6), NOW(6), 1, 1),

-- UPAZILA / THANA - Bangladesh
-- Paises: BD.
('UPAZILA',
 'Upazila (Subdistrict)',
 'Upazila',
 'Upazila',
 'Upazila',
 'Upazila',
 1, NOW(6), NOW(6), 1, 1),

-- UNION TERRITORY - India
-- Paises: IN (Delhi, Puducherry, Ladakh, etc.)
('UNION_TERR',
 'Territorio de la Union',
 'Union Territory',
 'Union Territory',
 'Union Territory',
 'Union Territory',
 1, NOW(6), NOW(6), 1, 1),

-- CHIEFDOM - Africa Occidental
-- Paises: SL, LR, GH.
('CHIEFDOM',
 'Jefatura / Cacicazgo',
 'Chiefdom',
 'Chiefdom',
 'Chiefdom',
 'Chiefdom',
 1, NOW(6), NOW(6), 1, 1),

-- LOCAL COUNCIL / CONCEJO LOCAL
-- Paises: MT, GB, AU.
('LOC_COUNC',
 'Concejo Local',
 'Local Council',
 'Local Council',
 'Local Council',
 'Local Council',
 1, NOW(6), NOW(6), 1, 1),

-- AREA COUNCIL
('AREA_COUN',
 'Concejo de Area',
 'Area Council',
 'Area Council',
 'Area Council',
 'Area Council',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- NIVEL 5 - TERCERA DIVISION ADMINISTRATIVA (admin3 - admin5)
-- ============================================================

-- CIUDAD
('CITY',
 'Ciudad',
 'City',
 'City',
 'City',
 'City',
 1, NOW(6), NOW(6), 1, 1),

-- CIUDAD AUTONOMA - Argentina (Buenos Aires), Espana (Ceuta, Melilla)
('AUTO_CITY',
 'Ciudad Autonoma',
 'Autonomous City',
 'Autonomous City',
 'Ciudad Autonoma',
 'Ciudad Autonoma',
 1, NOW(6), NOW(6), 1, 1),

-- PUEBLO / TOWN
('TOWN',
 'Pueblo / Villa',
 'Town',
 'Town',
 'Town',
 'Town',
 1, NOW(6), NOW(6), 1, 1),

-- ALDEA / VILLAGE
('VILLAGE',
 'Aldea',
 'Village',
 'Village',
 'Village',
 'Village',
 1, NOW(6), NOW(6), 1, 1),

-- TOWNSHIP - Sudafrica, Canadá, USA
('TOWNSHIP',
 'Municipio Rural / Aldea',
 'Township',
 'Township',
 'Township',
 'Township',
 1, NOW(6), NOW(6), 1, 1),

-- BARRIO / NEIGHBORHOOD / WARD
-- Paises: BD, IN, PK, ZW, NG, ZA, PH.
('WARD',
 'Barrio Electoral / Seccion',
 'Ward',
 'Ward',
 'Ward',
 'Ward',
 1, NOW(6), NOW(6), 1, 1),

('NEIGHBORHD',
 'Barrio / Vecindario',
 'Neighborhood',
 'Neighborhood',
 'Neighborhood / Quarter',
 'Neighborhood',
 1, NOW(6), NOW(6), 1, 1),

-- SECTOR
-- Paises: CO, MX, EC, PE, CL, VE.
('SECTOR',
 'Sector',
 'Sector',
 'Sector',
 'Sector',
 'Sector',
 1, NOW(6), NOW(6), 1, 1),

-- BARRIO
('BARRIO',
 'Barrio',
 'Barrio',
 'Barrio',
 'Barrio',
 'Barrio',
 1, NOW(6), NOW(6), 1, 1),

-- COLONIA - Mexico, Honduras, El Salvador, Guatemala
('COLONIA',
 'Colonia',
 'Colonia',
 'Colonia',
 'Colonia',
 'Colonia',
 1, NOW(6), NOW(6), 1, 1),

-- CORREGIMIENTO - Panama, Colombia
('CORREGIM',
 'Corregimiento',
 'Corregimiento',
 'Corregimiento',
 'Corregimiento',
 'Corregimiento',
 1, NOW(6), NOW(6), 1, 1),

-- VEREDA - Colombia
('VEREDA',
 'Vereda',
 'Rural Community',
 'Vereda',
 'Vereda',
 'Vereda',
 1, NOW(6), NOW(6), 1, 1),

-- LOCALIDAD - Colombia, Argentina, Espana
('LOCALITY',
 'Localidad',
 'Locality',
 'Locality',
 'Localidad',
 'Localidad',
 1, NOW(6), NOW(6), 1, 1),

-- MUNICIPIO - Espana, America Latina
-- Diferente a Municipality; uso hispanohablante
('MUNICIPIO',
 'Municipio',
 'Municipio',
 'Municipio',
 'Municipio',
 'Municipio',
 1, NOW(6), NOW(6), 1, 1),

-- ALCALDIA / ALCALDÍA MAYOR - Colombia, Mexico
('ALCALDIA',
 'Alcaldia',
 'Alcaldia (City District)',
 'Alcaldia',
 'Alcaldia',
 'Alcaldia',
 1, NOW(6), NOW(6), 1, 1),

-- ZONA
('ZONE',
 'Zona',
 'Zone',
 'Zone',
 'Zone',
 'Zone',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- TIPOS ESPECIALES GEOGRAFICOS / FISICOS
-- ============================================================

-- PENINSULA
('PENINSULA',
 'Peninsula',
 'Peninsula',
 'Peninsula',
 'Peninsula',
 'Peninsula',
 1, NOW(6), NOW(6), 1, 1),

-- ARCHIPIELAGO
('ARCHIPELAG',
 'Archipielago',
 'Archipelago',
 'Archipelago',
 'Archipelago',
 'Archipelago',
 1, NOW(6), NOW(6), 1, 1),

-- RESERVA / RESERVATION
('RESERVE',
 'Reserva',
 'Reserve',
 'Reserve',
 'Reserve',
 'Reserve',
 1, NOW(6), NOW(6), 1, 1),

-- ZONA ECONOMICA ESPECIAL
('SEZ',
 'Zona Economica Especial',
 'Special Economic Zone',
 'Special Economic Zone',
 'Special Economic Zone',
 'Special Economic Zone',
 1, NOW(6), NOW(6), 1, 1),

-- ENCLAVE
('ENCLAVE',
 'Enclave',
 'Enclave',
 'Enclave',
 'Enclave',
 'Enclave',
 1, NOW(6), NOW(6), 1, 1),

-- EXCLAVIA
('EXCLAVE',
 'Exclavia',
 'Exclave',
 'Exclave',
 'Exclave',
 'Exclave',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- TIPOS ESPECIFICOS ASIA - PACIFICO
-- ============================================================

-- KEN - Prefectura japonesa (47 prefecturas de Japon)
-- Paises: JP.
('KEN',
 'Ken (Prefectura Japonesa)',
 'Ken (Japanese Prefecture)',
 'Ken',
 'Ken / To / Do / Fu',
 'Ken',
 1, NOW(6), NOW(6), 1, 1),

-- DO / TO / FU - Otras divisiones japonesas
-- Hokkaido (Do), Tokyo-to (To), Osaka-fu y Kyoto-fu (Fu).
('DO_FU_TO',
 'Distrito / Metropoli / Prefectura Urbana (Japon)',
 'Do / Fu / To (Japan)',
 'Do / Fu / To',
 'Do / Fu / To',
 'Do / Fu / To',
 1, NOW(6), NOW(6), 1, 1),

-- SHENG / SHI - China
-- Provincias (Sheng) y Municipios (Shi) de China.
('SHENG',
 'Sheng (Provincia China)',
 'Sheng (Chinese Province)',
 'Sheng',
 'Sheng',
 'Sheng',
 1, NOW(6), NOW(6), 1, 1),

-- ZHI XIA SHI - Municipio de nivel provincial China
-- Paises: CN (Beijing, Shanghai, Tianjin, Chongqing).
('ZHI_XIA',
 'Municipio de Nivel Provincial (China)',
 'Province-level Municipality (China)',
 'Zhi Xia Shi',
 'Zhi Xia Shi',
 'Zhi Xia Shi',
 1, NOW(6), NOW(6), 1, 1),

-- ZHUANGZU ZIZHIQU - Region Autonoma China
('AUTO_REG_C',
 'Region Autonoma China',
 'Autonomous Region (China)',
 'Zizhiqu',
 'Zizhiqu',
 'Zizhiqu',
 1, NOW(6), NOW(6), 1, 1),

-- CHANGWAT - Provincia tailandesa (77 provincias)
-- Paises: TH.
('CHANGWAT',
 'Changwat (Provincia Tailandesa)',
 'Changwat (Thai Province)',
 'Changwat',
 'Changwat',
 'Changwat',
 1, NOW(6), NOW(6), 1, 1),

-- AMPHOE - Distrito tailandes
-- Paises: TH.
('AMPHOE',
 'Amphoe (Distrito Tailandes)',
 'Amphoe (Thai District)',
 'Amphoe',
 'Amphoe',
 'Amphoe',
 1, NOW(6), NOW(6), 1, 1),

-- KABUPATEN / KOTA - Indonesia
-- Paises: ID (kota = ciudad, kabupaten = regencia).
('KABUPATEN',
 'Kabupaten / Kota (Regencia Indonesia)',
 'Regency / City (Indonesia)',
 'Kabupaten / Kota',
 'Kabupaten / Kota',
 'Kabupaten / Kota',
 1, NOW(6), NOW(6), 1, 1),

-- KECAMATAN - Subdistrict Indonesia
-- Paises: ID.
('KECAMATAN',
 'Kecamatan (Subdistrict Indonesia)',
 'Kecamatan (Indonesian Subdistrict)',
 'Kecamatan',
 'Kecamatan',
 'Kecamatan',
 1, NOW(6), NOW(6), 1, 1),

-- DESA / KELURAHAN - Village Indonesia
-- Paises: ID.
('DESA',
 'Desa / Kelurahan (Aldea Indonesia)',
 'Desa / Kelurahan (Indonesian Village)',
 'Desa / Kelurahan',
 'Desa / Kelurahan',
 'Desa / Kelurahan',
 1, NOW(6), NOW(6), 1, 1),

-- TALUK / TEHSIL - India y Pakistan
-- Paises: IN, PK.
('TALUK',
 'Taluk / Tehsil',
 'Taluk / Tehsil',
 'Taluk',
 'Taluk / Tehsil',
 'Taluk',
 1, NOW(6), NOW(6), 1, 1),

-- MANDAL - India (Andhra Pradesh, Telangana)
-- Paises: IN.
('MANDAL',
 'Mandal (Division Administrativa India)',
 'Mandal (Indian Administrative Division)',
 'Mandal',
 'Mandal',
 'Mandal',
 1, NOW(6), NOW(6), 1, 1),

-- PANCHAYAT - India (gobierno local rural)
-- Paises: IN.
('PANCHAYAT',
 'Panchayat (Gobierno Local Rural India)',
 'Panchayat (Indian Rural Local Government)',
 'Panchayat',
 'Panchayat',
 'Panchayat',
 1, NOW(6), NOW(6), 1, 1),

-- UNION COUNCIL - Pakistan
-- Paises: PK.
('UNION_CON',
 'Consejo de Union (Pakistan)',
 'Union Council (Pakistan)',
 'Union Council',
 'Union Council',
 'Union Council',
 1, NOW(6), NOW(6), 1, 1),

-- UPAZILA - Bangladesh
-- Paises: BD.
('THANA',
 'Thana (Subdistrict Bangladesh)',
 'Thana (Bangladeshi Subdistrict)',
 'Thana',
 'Thana',
 'Thana',
 1, NOW(6), NOW(6), 1, 1),

-- UNION PARISHAD - Bangladesh
-- Paises: BD.
('UNION_PAR',
 'Union Parishad (Bangladesh)',
 'Union Parishad (Bangladesh)',
 'Union Parishad',
 'Union Parishad',
 'Union Parishad',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- TIPOS ESPECIFICOS AFRICA
-- ============================================================

-- CERCLE - Mali, Guinea, Burkina Faso
-- Paises: ML, GN.
('CERCLE_AF',
 'Circulo Administrativo (Africa Occidental)',
 'Cercle (West African Administrative Unit)',
 'Cercle',
 'Cercle',
 'Cercle',
 1, NOW(6), NOW(6), 1, 1),

-- PREFECTURE - Paises francofónos de Africa
-- Guinea, Chad, Camerun, Congo, etc.
('PREFECT_AF',
 'Prefectura (Africa Francofona)',
 'Prefecture (Francophone Africa)',
 'Prefecture',
 'Prefecture',
 'Prefecture',
 1, NOW(6), NOW(6), 1, 1),

-- LAYON / DEPARTEMENT LOCAL - Africa Occidental
('DEPT_AF',
 'Departamento (Africa)',
 'Department (Africa)',
 'Department',
 'Departement',
 'Departement',
 1, NOW(6), NOW(6), 1, 1),

-- WOREDA - Etiopia y Eritrea
-- Paises: ET, ER.
('WOREDA',
 'Woreda (Distrito Etiope)',
 'Woreda (Ethiopian District)',
 'Woreda',
 'Woreda',
 'Woreda',
 1, NOW(6), NOW(6), 1, 1),

-- ZONE - Etiopia, Tanzania
-- Paises: ET, TZ, KE.
('ZONE_AF',
 'Zona (Africa Oriental)',
 'Zone (East Africa)',
 'Zone',
 'Zone',
 'Zone',
 1, NOW(6), NOW(6), 1, 1),

-- LOCATION / LOCATION AREA - Kenia, Tanzania
-- Paises: KE, TZ, UG.
('LOCATION',
 'Localidad Rural (Africa Oriental)',
 'Location (East Africa)',
 'Location',
 'Location',
 'Location',
 1, NOW(6), NOW(6), 1, 1),

-- CHIEFTAINCY / TRADITIONAL AUTHORITY - Sudafrica, Malawi, Zambia
-- Paises: ZA, MW, ZM.
('CHIEF_AUT',
 'Autoridad Tradicional',
 'Traditional Authority / Chieftaincy',
 'Traditional Authority',
 'Traditional Authority',
 'Traditional Authority',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- TIPOS ESPECIFICOS ORIENTE MEDIO Y AFRICA DEL NORTE
-- ============================================================

-- LIWA - Oman, Emiratos Arabes Unidos
-- Paises: AE, OM.
('LIWA',
 'Liwa (Division Administrativa Arabe)',
 'Liwa (Arab Administrative Division)',
 'Liwa',
 'Liwa',
 'Liwa',
 1, NOW(6), NOW(6), 1, 1),

-- MINTAQAH - Division administrativa en varios paises arabes
-- Paises: SA, OM, QA, BH.
('MINTAQAH',
 'Mintaqah (Zona Administrativa Arabe)',
 'Mintaqah (Arab Administrative Zone)',
 'Mintaqah',
 'Mintaqah',
 'Mintaqah',
 1, NOW(6), NOW(6), 1, 1),

-- QADA / QAZA - Irak, Libano, Siria
-- Paises: IQ, LB, SY.
('QADA',
 'Qada (Subprovincia Arabe)',
 'Qada / Qaza (Arab Subprovince)',
 'Qada',
 'Qada',
 'Qada',
 1, NOW(6), NOW(6), 1, 1),

-- NAHIYAH - Division administrativa rural en paises arabes
-- Paises: IQ, SY, JO.
('NAHIYAH',
 'Nahiyah (Subdivision Rural Arabe)',
 'Nahiyah (Arab Rural Subdivision)',
 'Nahiyah',
 'Nahiyah',
 'Nahiyah',
 1, NOW(6), NOW(6), 1, 1),

-- SHAHRESTAN - Iran (equivalente a condado)
-- Paises: IR.
('SHAHREST',
 'Shahrestan (Condado Irani)',
 'Shahrestan (Iranian County)',
 'Shahrestan',
 'Shahrestan',
 'Shahrestan',
 1, NOW(6), NOW(6), 1, 1),

-- BAKHSH - Iran (subdivision de shahrestan)
-- Paises: IR.
('BAKHSH',
 'Bakhsh (Subdivision Irani)',
 'Bakhsh (Iranian Subdivision)',
 'Bakhsh',
 'Bakhsh',
 'Bakhsh',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- TIPOS ESPECIFICOS AMERICA
-- ============================================================

-- CONDADO / COUNTY - USA y Canada
('COUNTY_AM',
 'Condado (America del Norte)',
 'County (North America)',
 'County',
 'County',
 'County',
 1, NOW(6), NOW(6), 1, 1),

-- BOROUGH ALASKA - USA (equivale a condado en Alaska)
('BOROUGH_AK',
 'Borough (Alaska, USA)',
 'Borough (Alaska, USA)',
 'Borough',
 'Borough',
 'Borough',
 1, NOW(6), NOW(6), 1, 1),

-- PARISH - Louisiana, USA
('PARISH_LA',
 'Parroquia (Louisiana, USA)',
 'Parish (Louisiana, USA)',
 'Parish',
 'Parish',
 'Parish',
 1, NOW(6), NOW(6), 1, 1),

-- COMMONWEALTH - USA (PR, VI, MP, AS, GU)
('COMMONWLTH',
 'Estado Libre Asociado / Mancomunidad',
 'Commonwealth',
 'Commonwealth',
 'Commonwealth',
 'Commonwealth',
 1, NOW(6), NOW(6), 1, 1),

-- CENSUS AREA - Alaska, USA
('CENSUS_AR',
 'Area Censal',
 'Census Area',
 'Census Area',
 'Census Area',
 'Census Area',
 1, NOW(6), NOW(6), 1, 1),

-- MUNICIPIO (Puerto Rico) - Diferente al europeo
('MUNICIPIO_PR',
 'Municipio (Puerto Rico)',
 'Municipio (Puerto Rico)',
 'Municipio',
 'Municipio',
 'Municipio',
 1, NOW(6), NOW(6), 1, 1),

-- RESGUARDO - Colombia (territorio indigena)
('RESGUARDO',
 'Resguardo Indigena',
 'Indigenous Reserve',
 'Resguardo',
 'Resguardo',
 'Resguardo',
 1, NOW(6), NOW(6), 1, 1),

-- CABILDO - Colombia y Ecuador (gobierno local indigena)
('CABILDO',
 'Cabildo',
 'Cabildo (Local Indigenous Government)',
 'Cabildo',
 'Cabildo',
 'Cabildo',
 1, NOW(6), NOW(6), 1, 1),

-- MANCOMUNIDAD - America Latina (agrupacion de municipios)
('MANCOMUNID',
 'Mancomunidad de Municipios',
 'Association of Municipalities',
 'Mancomunidad',
 'Mancomunidad',
 'Mancomunidad',
 1, NOW(6), NOW(6), 1, 1),

-- AYUNTAMIENTO - Espana y Republica Dominicana
('AYUNTAM',
 'Ayuntamiento',
 'Ayuntamiento (Town Council)',
 'Ayuntamiento',
 'Ayuntamiento',
 'Ayuntamiento',
 1, NOW(6), NOW(6), 1, 1),

-- CAMARA MUNICIPAL - Brasil, Portugal
('CAM_MUNIC',
 'Camara Municipal',
 'Municipal Council (Brazil / Portugal)',
 'Camara Municipal',
 'Camara Municipal',
 'Camara Municipal',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- TIPOS ESPECIFICOS EUROPA
-- ============================================================

-- LAND / BUNDESLAND - Alemania, Austria
-- Paises: DE, AT.
('LAND',
 'Estado Federado (Alemania / Austria)',
 'Land / Bundesland',
 'Land',
 'Bundesland',
 'Bundesland',
 1, NOW(6), NOW(6), 1, 1),

-- GEMEINDE - Alemania, Austria, Suiza (nivel municipal)
-- Paises: DE, AT, CH.
('GEMEINDE',
 'Gemeinde (Municipio Germanico)',
 'Gemeinde (Germanic Municipality)',
 'Gemeinde',
 'Gemeinde',
 'Gemeinde',
 1, NOW(6), NOW(6), 1, 1),

-- KREIS / LANDKREIS - Alemania (condado)
-- Paises: DE.
('KREIS',
 'Kreis / Landkreis (Condado Aleman)',
 'Kreis / Landkreis (German County)',
 'Kreis',
 'Kreis / Landkreis',
 'Kreis',
 1, NOW(6), NOW(6), 1, 1),

-- ARRONDISSEMENT BELGA - Belgica
-- Paises: BE.
('ARROND_BE',
 'Arrondissement Belga',
 'Belgian Arrondissement',
 'Arrondissement',
 'Arrondissement',
 'Arrondissement',
 1, NOW(6), NOW(6), 1, 1),

-- PROVINCIE - Belgica, Paises Bajos
-- Paises: BE, NL.
('PROVINCIE',
 'Provincia (Benelux)',
 'Province (Benelux)',
 'Provincie',
 'Provincie',
 'Provincie',
 1, NOW(6), NOW(6), 1, 1),

-- GEMEENTE - Paises Bajos, Belgica
-- Paises: NL, BE.
('GEMEENTE',
 'Gemeente (Municipio Neerlandes)',
 'Gemeente (Dutch Municipality)',
 'Gemeente',
 'Gemeente',
 'Gemeente',
 1, NOW(6), NOW(6), 1, 1),

-- FYLKE - Noruega (condado)
-- Paises: NO.
('FYLKE',
 'Fylke (Condado Noruego)',
 'Fylke (Norwegian County)',
 'Fylke',
 'Fylke',
 'Fylke',
 1, NOW(6), NOW(6), 1, 1),

-- KOMMUNE - Noruega, Dinamarca (municipio)
-- Paises: NO, DK.
('KOMMUNE',
 'Kommune (Municipio Escandinavo)',
 'Kommune (Scandinavian Municipality)',
 'Kommune',
 'Kommune',
 'Kommune',
 1, NOW(6), NOW(6), 1, 1),

-- LAN - Suecia (condado)
-- Paises: SE.
('LAN',
 'Lan (Condado Sueco)',
 'Lan (Swedish County)',
 'Lan',
 'Lan',
 'Lan',
 1, NOW(6), NOW(6), 1, 1),

-- MAAKOND - Estonia (condado)
-- Paises: EE.
('MAAKOND',
 'Maakond (Condado Estonio)',
 'Maakond (Estonian County)',
 'Maakond',
 'Maakond',
 'Maakond',
 1, NOW(6), NOW(6), 1, 1),

-- APSKRITIS - Lituania (condado)
-- Paises: LT.
('APSKRITIS',
 'Apskritis (Condado Lituano)',
 'Apskritis (Lithuanian County)',
 'Apskritis',
 'Apskritis',
 'Apskritis',
 1, NOW(6), NOW(6), 1, 1),

-- NOVADS - Latvia (municipio)
-- Paises: LV.
('NOVADS',
 'Novads (Municipio Letón)',
 'Novads (Latvian Municipality)',
 'Novads',
 'Novads',
 'Novads',
 1, NOW(6), NOW(6), 1, 1),

-- GMINA - Polonia (municipio)
-- Paises: PL.
('GMINA',
 'Gmina (Municipio Polaco)',
 'Gmina (Polish Municipality)',
 'Gmina',
 'Gmina',
 'Gmina',
 1, NOW(6), NOW(6), 1, 1),

-- POWIAT - Polonia (condado)
-- Paises: PL.
('POWIAT',
 'Powiat (Condado Polaco)',
 'Powiat (Polish County)',
 'Powiat',
 'Powiat',
 'Powiat',
 1, NOW(6), NOW(6), 1, 1),

-- OBEC - Republica Checa, Eslovaquia (municipio)
-- Paises: CZ, SK.
('OBEC',
 'Obec (Municipio Checo/Eslovaco)',
 'Obec (Czech/Slovak Municipality)',
 'Obec',
 'Obec',
 'Obec',
 1, NOW(6), NOW(6), 1, 1),

-- OPSHTINA - Serbia, Bosnia, Montenegro, Macedonia del Norte
-- Paises: RS, BA, ME, MK, XK.
('OPSHTINA',
 'Opshtina (Municipio Balcanico)',
 'Opshtina (Balkan Municipality)',
 'Opstina',
 'Opstina / Opština',
 'Opstina',
 1, NOW(6), NOW(6), 1, 1),

-- TARTOMANY - Serbia (Vojvodina)
-- Paises: RS.
('TARTOMANY',
 'Provincia Autonoma (Serbia)',
 'Autonomous Province (Serbia)',
 'Autonomous Province',
 'Pokrajina / Tartomany',
 'Pokrajina',
 1, NOW(6), NOW(6), 1, 1),

-- OBLAST BULGAR - Bulgaria (condado)
-- Paises: BG.
('OBLAST_BG',
 'Oblast (Condado Bulgaro)',
 'Oblast (Bulgarian Province)',
 'Oblast',
 'Oblast',
 'Oblast',
 1, NOW(6), NOW(6), 1, 1),

-- JUDET - Rumania (condado)
-- Paises: RO.
('JUDET',
 'Judet (Condado Rumano)',
 'Judet (Romanian County)',
 'Judet',
 'Judet',
 'Judet',
 1, NOW(6), NOW(6), 1, 1),

-- MEGYE - Hungria (condado)
-- Paises: HU.
('MEGYE',
 'Megye (Condado Hungaro)',
 'Megye (Hungarian County)',
 'Megye',
 'Megye',
 'Megye',
 1, NOW(6), NOW(6), 1, 1),

-- JARAS - Hungria (distrito)
-- Paises: HU.
('JARAS',
 'Jaras (Distrito Hungaro)',
 'Jaras (Hungarian District)',
 'Jaras',
 'Jaras',
 'Jaras',
 1, NOW(6), NOW(6), 1, 1),

-- RAJON - Eslovaquia, Ucrania (distrito)
-- Paises: SK, UA.
('RAJON',
 'Rajon (Distrito Eslavo)',
 'Rajon (Slavic District)',
 'Rajon',
 'Rajon',
 'Rajon',
 1, NOW(6), NOW(6), 1, 1),

-- VILAYET - Turquia (provincia hasta 1923, hoy il)
-- Paises: TR (historico).
('VILAYET',
 'Vilayet (Provincia Otomana)',
 'Vilayet (Ottoman Province)',
 'Vilayet',
 'Vilayet',
 'Vilayet',
 1, NOW(6), NOW(6), 1, 1),

-- IL / ILLER - Turquia (provincia actual)
-- Paises: TR (81 provincias).
('IL',
 'Il (Provincia Turca)',
 'Il (Turkish Province)',
 'Il',
 'Il',
 'Il',
 1, NOW(6), NOW(6), 1, 1),

-- ILCE - Turquia (distrito)
-- Paises: TR.
('ILCE',
 'Ilce (Distrito Turco)',
 'Ilce (Turkish District)',
 'Ilce',
 'Ilce',
 'Ilce',
 1, NOW(6), NOW(6), 1, 1),

-- REGIERUNGSBEZIRK - Alemania (distrito gubernamental)
-- Paises: DE.
('REGBEZ',
 'Distrito Gubernamental (Alemania)',
 'Regierungsbezirk (German Government District)',
 'Regierungsbezirk',
 'Regierungsbezirk',
 'Regierungsbezirk',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- OCEANIA
-- ============================================================

-- TERRITORY (AUSTRALIA) - Territorios australianos
-- Paises: AU (ACT, NT).
('TERR_AU',
 'Territorio (Australia)',
 'Territory (Australia)',
 'Territory',
 'Territory',
 'Territory',
 1, NOW(6), NOW(6), 1, 1),

-- ISLAND COUNCIL - Fiji, Vanuatu, Solomon Islands
-- Paises: FJ, VU, SB.
('ISLAND_CN',
 'Consejo de Isla',
 'Island Council',
 'Island Council',
 'Island Council',
 'Island Council',
 1, NOW(6), NOW(6), 1, 1),

-- PROVINCE PAPUA - Papua Nueva Guinea
-- Paises: PG.
('PROV_PNG',
 'Provincia (Papua Nueva Guinea)',
 'Province (Papua New Guinea)',
 'Province',
 'Province',
 'Province',
 1, NOW(6), NOW(6), 1, 1),

-- FALEOLO - Samoa (aldea)
-- Paises: WS.
('FALEOLO',
 'Aldea Samoana (Faleolo)',
 'Samoan Village',
 'Village',
 'Faleolo / Nuu',
 'Faleolo',
 1, NOW(6), NOW(6), 1, 1),

-- ISLAND GROUP - Kiribati, Tuvalu, Marshall Islands
-- Paises: KI, TV, MH.
('ISLAND_GRP',
 'Grupo de Islas',
 'Island Group',
 'Island Group',
 'Island Group',
 'Island Group',
 1, NOW(6), NOW(6), 1, 1),

-- ============================================================
-- DESCONOCIDO / GENERICO
-- ============================================================

('OTHER',
 'Otro Tipo de Division',
 'Other Division Type',
 'Other',
 'Other',
 'Other',
 1, NOW(6), NOW(6), 1, 1),

('UNSPECIF',
 'No Especificado',
 'Unspecified',
 'Unspecified',
 'Unspecified',
 'Unspecified',
 1, NOW(6), NOW(6), 1, 1);

-- ============================================================
-- VERIFICACION POST-INSERT
-- ============================================================

SELECT
  COUNT(*)            AS total_registros,
  SUM(status = 1)     AS activos,
  SUM(status = 0)     AS inactivos,
  MIN(created_at)     AS primer_insert,
  MAX(created_at)     AS ultimo_insert
FROM t071t_division_types;

-- Para listar todos los tipos insertados:
-- SELECT id, code, name_spanish, name_english FROM t071t_division_types ORDER BY id;
