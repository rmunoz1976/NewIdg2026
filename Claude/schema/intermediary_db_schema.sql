CREATE DATABASE  IF NOT EXISTS `dbintermediary` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbintermediary`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: dbintermediary
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t003c_roles`
--

DROP TABLE IF EXISTS `t003c_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t003c_roles` (
  `id` int NOT NULL,
  `name` varchar(32) NOT NULL COMMENT 'nombre de rol',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t004c_users`
--

DROP TABLE IF EXISTS `t004c_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t004c_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t004c_username` (`username`),
  UNIQUE KEY `UK_t004c_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t005c_user_roles`
--

DROP TABLE IF EXISTS `t005c_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t005c_user_roles` (
  `id_user` int NOT NULL,
  `id_role` int NOT NULL,
  PRIMARY KEY (`id_user`,`id_role`),
  KEY `KIDX_t005c_11` (`id_role`),
  CONSTRAINT `FK_t005c_11_UD` FOREIGN KEY (`id_user`) REFERENCES `t004c_users` (`id`),
  CONSTRAINT `FK_t005c_12_UD` FOREIGN KEY (`id_role`) REFERENCES `t003c_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t010c_idgroup`
--

DROP TABLE IF EXISTS `t010c_idgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t010c_idgroup` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código de la compañia',
  `nit` int NOT NULL COMMENT 'Nit de la compañia',
  `dv` varchar(1) DEFAULT NULL COMMENT 'Dígito de verificación de la compañia',
  `nombre_corto` varchar(256) NOT NULL COMMENT 'Nombre corto de la compañia',
  `nombre_largo` varchar(256) NOT NULL COMMENT 'Nombre largo de la compañia',
  `sigla` varchar(32) NOT NULL COMMENT 'Sigla de la compañia',
  `fecha` date NOT NULL COMMENT 'Fecha de la compañia',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t010c_id` (`id`),
  UNIQUE KEY `UK_t010c_codigo` (`codigo`),
  UNIQUE KEY `UK_t010c_nit` (`nit`),
  UNIQUE KEY `UK_t010c_nombre_corto` (`nombre_corto`),
  UNIQUE KEY `UK_t010c_nombre_largo` (`nombre_largo`),
  UNIQUE KEY `UK_t010c_sigla` (`sigla`),
  CONSTRAINT `CHK_NE_t010c_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t010c_fecha` CHECK ((`fecha` is not null)),
  CONSTRAINT `CHK_NE_t010c_nit` CHECK ((`nit` <> 0)),
  CONSTRAINT `CHK_NE_t010c_nombre_corto` CHECK ((`nombre_corto` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t010c_nombre_largo` CHECK ((`nombre_largo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t010c_sigla` CHECK ((`sigla` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los datos de la compañia.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t015c_software`
--

DROP TABLE IF EXISTS `t015c_software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t015c_software` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código del software',
  `nombre` varchar(256) NOT NULL COMMENT 'Nombre corto del software',
  `version` varchar(32) NOT NULL COMMENT 'Versión del software',
  `fecha` date NOT NULL COMMENT 'Fecha de instalación del software',
  `tipo` varchar(8) NOT NULL COMMENT 'Tipo de software',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t015c_id` (`id`),
  UNIQUE KEY `UK_t015c_codigo` (`codigo`),
  UNIQUE KEY `UK_t015c_nombre` (`nombre`),
  CONSTRAINT `CHK_NE_t015c_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t015c_fecha` CHECK ((`fecha` is not null)),
  CONSTRAINT `CHK_NE_t015c_nombre` CHECK ((`nombre` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t015c_version` CHECK ((`version` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los datos del software.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t020c_database`
--

DROP TABLE IF EXISTS `t020c_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t020c_database` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código de la base de datos',
  `nombre` varchar(16) NOT NULL COMMENT 'Nombre de la base de datos',
  `nombre_DBMS` varchar(32) NOT NULL COMMENT 'Nombre DBMS de la base de datos',
  `version` varchar(32) NOT NULL COMMENT 'Versión de verificación de la base de datos',
  `fecha` date NOT NULL COMMENT 'Fecha de instalación la base de datos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t020c_id` (`id`),
  UNIQUE KEY `UK_t020c_codigo` (`codigo`),
  UNIQUE KEY `UK_t020c_nombre` (`nombre`),
  UNIQUE KEY `UK_t020c_version` (`version`),
  CONSTRAINT `CHK_NE_t020c_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t020c_fecha` CHECK ((`fecha` is not null)),
  CONSTRAINT `CHK_NE_t020c_nombre` CHECK ((`nombre` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t020c_nombre_DBMS` CHECK ((`nombre_DBMS` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t020c_version` CHECK ((`version` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los datos de la base de datos.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t025c_aplicacion`
--

DROP TABLE IF EXISTS `t025c_aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t025c_aplicacion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código de la aplicación de la compañia',
  `nombre_corto` varchar(64) NOT NULL COMMENT 'Nombre corto de la aplicación de la compañia',
  `nombre_largo` varchar(256) NOT NULL COMMENT 'Nombre largo de la aplicación de la compañia',
  `version` varchar(32) NOT NULL COMMENT 'Versión de la aplicación de la compañia',
  `id_database` int NOT NULL COMMENT 'Identificador de la base de datos de la aplicación',
  `fecha` date NOT NULL COMMENT 'Fecha de instalación la aplicación',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t025c_id` (`id`),
  UNIQUE KEY `UK_t025c_codigo` (`codigo`),
  UNIQUE KEY `UK_t025c_nombre_corto` (`nombre_corto`),
  UNIQUE KEY `UK_t025c_nombre_largo` (`nombre_largo`),
  KEY `KIDX_t025c_11` (`id_database`),
  CONSTRAINT `FK_t025c_11_UD` FOREIGN KEY (`id_database`) REFERENCES `t020c_database` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t025c_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t025c_fecha` CHECK ((`fecha` is not null)),
  CONSTRAINT `CHK_NE_t025c_nombre_corto` CHECK ((`nombre_corto` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t025c_nombre_largo` CHECK ((`nombre_largo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t025c_version` CHECK ((`version` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los datos de las aplicaciones.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t030c_cia_soft_apli`
--

DROP TABLE IF EXISTS `t030c_cia_soft_apli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t030c_cia_soft_apli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_compania` int NOT NULL COMMENT 'Identificador de la compañia',
  `id_aplicacion` int NOT NULL COMMENT 'Identificador de la aplicación',
  `id_software` int NOT NULL COMMENT 'Identificador del software',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t030c_id` (`id`),
  UNIQUE KEY `UK_t030c_FIELDS` (`id_compania`,`id_software`,`id_aplicacion`),
  KEY `KIDX_t030c_11` (`id_compania`),
  KEY `KIDX_t030c_12` (`id_software`),
  KEY `KIDX_t030c_14` (`id_aplicacion`),
  CONSTRAINT `FK_t030c_11_UD` FOREIGN KEY (`id_compania`) REFERENCES `t010c_idgroup` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t030c_12_UD` FOREIGN KEY (`id_software`) REFERENCES `t015c_software` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t030c_14_UD` FOREIGN KEY (`id_aplicacion`) REFERENCES `t025c_aplicacion` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los datos de la relación de la compañia, el software, base de datos y aplicaciones.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t051c_geo_tipo_region`
--

DROP TABLE IF EXISTS `t051c_geo_tipo_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t051c_geo_tipo_region` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(16) NOT NULL COMMENT 'Código del tipo de región',
  `descripcion_es` varchar(64) NOT NULL COMMENT 'Descripción en español del tipo de región',
  `descripcion_en` varchar(64) NOT NULL COMMENT 'Descripción en inglés del tipo de región',
  `nivel` varchar(8) NOT NULL COMMENT 'Nivel del tipo de región',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t051c_id` (`id`),
  UNIQUE KEY `UK_t051c_codigo` (`codigo`),
  UNIQUE KEY `UK_t051c_descripcion_es` (`descripcion_es`),
  UNIQUE KEY `UK_t051c_descripcion_en` (`descripcion_en`),
  CONSTRAINT `CHK_NE_t051c_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t051c_descripcion_en` CHECK ((`descripcion_en` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t051c_descripcion_es` CHECK ((`descripcion_es` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t051c_nivel` CHECK ((`nivel` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los tipos de regiones.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t053c_geo_tipo_moneda`
--

DROP TABLE IF EXISTS `t053c_geo_tipo_moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t053c_geo_tipo_moneda` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo_iso_4217` varchar(16) NOT NULL COMMENT 'Código ISO 4217 del tipo de moneda',
  `descripcion` varchar(64) NOT NULL COMMENT 'Descripción del tipo de moneda',
  `simbolo` varchar(8) NOT NULL COMMENT 'Símbolo del tipo de moneda',
  `separador_miles` varchar(2) NOT NULL COMMENT 'Separador de miles del tipo de moneda',
  `separador_decimales` varchar(2) NOT NULL COMMENT 'Separador de decimales del tipo de moneda',
  `cantidad_decimales` int NOT NULL COMMENT 'Cantidad de decimales del tipo de moneda',
  `posicion` varchar(16) NOT NULL COMMENT 'Posición del simbolo en el valor del tipo de moneda',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t053c_id` (`id`),
  UNIQUE KEY `UK_t053c_codigo_iso_4217` (`codigo_iso_4217`),
  CONSTRAINT `CHK_NE_t053c_codigo_iso_4217` CHECK ((`codigo_iso_4217` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t053c_descripcion` CHECK ((`descripcion` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=1000000000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los tipos de moneda.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t061c_geo_countries`
--

DROP TABLE IF EXISTS `t061c_geo_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t061c_geo_countries` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(16) NOT NULL COMMENT 'Código del país (o territorio)',
  `country` varchar(128) NOT NULL COMMENT 'Descripción del país (o territorio)',
  `descripcion_geo` varchar(128) NOT NULL COMMENT 'Descripción del país (o territorio)',
  `descripcion_es` varchar(128) NOT NULL COMMENT 'Descripción del país en español (o territorio)',
  `descripcion_en` varchar(128) NOT NULL COMMENT 'Descripción del país en inglés (o territorio)',
  `descripcion_iso` varchar(128) NOT NULL COMMENT 'Descripción ISO oficial del país (o territorio)',
  `codigo_dane` varchar(16) NOT NULL COMMENT 'Código DANE del país (o territorio)',
  `codigo_dian` varchar(16) NOT NULL COMMENT 'Código DIAN del país (o territorio)',
  `codigo_iso_alfanumerico` varchar(16) NOT NULL COMMENT 'Código ISO alfanúmerico del país (o territorio)',
  `codigo_iso_3166_1_alfa_2` varchar(16) NOT NULL COMMENT 'Código ISO 3166-1 alfa-2 del país (o territorio)',
  `codigo_iso_3166_1_alfa_3` varchar(16) NOT NULL COMMENT 'Código ISO 3166-1 alfa-3 del país (o territorio)',
  `indicativo_telefono` varchar(16) DEFAULT NULL COMMENT 'Indicativo de teléfono (o territorio)',
  `codigo_dominio_tdl` varchar(16) DEFAULT NULL COMMENT 'Código del dominio TDL del país (o territorio)',
  `id_continent` int NOT NULL COMMENT 'Identificador de la región del país(o territorio)',
  `id_currency_code` int NOT NULL COMMENT 'Identificador de la moneda del país (o territorio)',
  `geoidp` int NOT NULL COMMENT 'Identificador GEO del país (o territorio)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t061c_id` (`id`),
  UNIQUE KEY `UK_t061c_codigo` (`codigo`),
  UNIQUE KEY `UK_t061c_descripcion_geo` (`descripcion_geo`),
  UNIQUE KEY `UK_t061c_descripcion_es` (`descripcion_es`),
  UNIQUE KEY `UK_t061c_descripcion_en` (`descripcion_en`),
  UNIQUE KEY `UK_t061c_descripcion_iso` (`descripcion_iso`),
  UNIQUE KEY `UK_t061c_codigo_iso_alfanumerico` (`codigo_iso_alfanumerico`),
  KEY `FK_t061c_11_UD` (`id_continent`),
  KEY `FK_t061c_12_UD` (`id_currency_code`),
  CONSTRAINT `FK_t061c_11_UD` FOREIGN KEY (`id_continent`) REFERENCES `t051c_geo_tipo_region` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t061c_12_UD` FOREIGN KEY (`id_currency_code`) REFERENCES `t053c_geo_tipo_moneda` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t061c_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t061c_codigo_dane` CHECK ((`codigo_dane` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t061c_codigo_dian` CHECK ((`codigo_dian` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t061c_codigo_iso_3166_1_alfa_2` CHECK ((`codigo_iso_3166_1_alfa_2` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t061c_codigo_iso_3166_1_alfa_3` CHECK ((`codigo_iso_3166_1_alfa_3` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t061c_codigo_iso_alfanumerico` CHECK ((`codigo_iso_alfanumerico` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t061c_descripcion_en` CHECK ((`descripcion_en` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t061c_descripcion_es` CHECK ((`descripcion_es` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t061c_descripcion_geo` CHECK ((`descripcion_geo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t061c_descripcion_iso` CHECK ((`descripcion_iso` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información los países (o territorios).';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t105t_estado_registro`
--

DROP TABLE IF EXISTS `t105t_estado_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t105t_estado_registro` (
  `id` int NOT NULL COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código del estado',
  `descripcion` varchar(32) NOT NULL COMMENT 'Descripción del estado',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t105t_id` (`id`),
  UNIQUE KEY `UK_t105t_codigo` (`codigo`),
  UNIQUE KEY `UK_t105t_descripcion` (`descripcion`),
  CONSTRAINT `CHK_NE_t105t_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t105t_descripcion` CHECK ((`descripcion` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los estados de los registros.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t125t_idioma`
--

DROP TABLE IF EXISTS `t125t_idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t125t_idioma` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código del idioma',
  `idioma` varchar(16) NOT NULL COMMENT 'Nombre del idioma',
  `iso_639` varchar(4) NOT NULL COMMENT 'Código ISO 639 del idioma',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t125t_id` (`id`),
  UNIQUE KEY `UK_t125t_codigo` (`codigo`),
  UNIQUE KEY `UK_t125t_idioma` (`idioma`),
  UNIQUE KEY `UK_t125t_iso_639` (`iso_639`),
  CONSTRAINT `CHK_NE_t125t_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t125t_idioma` CHECK ((`idioma` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t125t_iso_639` CHECK ((`iso_639` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los datos de los idiomas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t132t_magnitud_medida`
--

DROP TABLE IF EXISTS `t132t_magnitud_medida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t132t_magnitud_medida` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código de la magnitud de medida',
  `descripcion_es` varchar(64) NOT NULL COMMENT 'Descripción de la magnitud de medida (Español)',
  `descripcion_en` varchar(64) NOT NULL COMMENT 'Descripción de la magnitud de medida (Inglés)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t132t_id` (`id`),
  UNIQUE KEY `UK_t132t_codigo` (`codigo`),
  UNIQUE KEY `UK_t132t_descripcion_es` (`descripcion_es`),
  UNIQUE KEY `UK_t132t_descripcion_en` (`descripcion_en`),
  CONSTRAINT `CHK_NE_t132t_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t132t_descripcion_en` CHECK ((`descripcion_en` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t132t_descripcion_es` CHECK ((`descripcion_es` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de las magnitudes de medida.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t142t_tipo_departamento`
--

DROP TABLE IF EXISTS `t142t_tipo_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t142t_tipo_departamento` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código del tipo de departamento',
  `descripcion_es` varchar(32) NOT NULL COMMENT 'Descripción en español del tipo de departamento',
  `descripcion_en` varchar(32) NOT NULL COMMENT 'Descripción en inglés del tipo de departamento',
  `descripcion_original` varchar(32) NOT NULL COMMENT 'Descripción original en el país del tipo de departamento',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t142t_id` (`id`),
  UNIQUE KEY `UK_t142t_codigo` (`codigo`),
  UNIQUE KEY `UK_t142t_descripcion_es` (`descripcion_es`),
  CONSTRAINT `CHK_NE_t1422t_descripcion_en` CHECK ((`descripcion_en` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t1422t_descripcion_es` CHECK ((`descripcion_es` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t142t_codigo` CHECK ((`codigo` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los tipos de departamentos.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t152t_administrative_divisions`
--

DROP TABLE IF EXISTS `t152t_administrative_divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t152t_administrative_divisions` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `geoidp` int NOT NULL COMMENT 'Identificador del país en geonames',
  `descripcion_geo` varchar(128) NOT NULL COMMENT 'Descripción del país en geonames',
  `id_pais` int NOT NULL COMMENT 'Identificador del país',
  `codigo` varchar(16) NOT NULL COMMENT 'Código del país',
  `country` varchar(128) NOT NULL COMMENT 'Descripción del país',
  `descripcion_es` varchar(128) NOT NULL COMMENT 'Descripción del país',
  `descripcion_en` varchar(128) NOT NULL COMMENT 'Descripción del país',
  `descripcion_iso` varchar(128) NOT NULL COMMENT 'Descripción ISO oficial del país',
  `codigo_dane` varchar(16) NOT NULL COMMENT 'Código DANE del país',
  `codigo_dian` varchar(16) NOT NULL COMMENT 'Código DIAN del país',
  `codigo_iso_alfanumerico` varchar(16) NOT NULL COMMENT 'Código ISO alfanúmerico del país',
  `codigo_iso_3166_1_alfa_2` varchar(16) NOT NULL COMMENT 'Código ISO 3166-1 alfa-2 del país',
  `codigo_iso_3166_1_alfa_3` varchar(16) NOT NULL COMMENT 'Código ISO 3166-1 alfa-3 del país',
  `indicativo_telefono` varchar(16) NOT NULL COMMENT 'Indicativo de teléfono',
  `codigo_dominio_tdl` varchar(16) NOT NULL COMMENT 'Código del dominio TDL del país',
  `id_continent` int NOT NULL COMMENT 'Identificador del continente del país',
  `id_currency_code` int NOT NULL COMMENT 'Identificador de la moneda del país',
  `geoidd` int NOT NULL COMMENT 'Identificador del departamento en geonames',
  `codigo_departamento` varchar(128) NOT NULL COMMENT 'Código del departamento en geonames',
  `descripcion_departamento_geo` varchar(128) NOT NULL COMMENT 'Descripción del departamento en geonames',
  `tipo_departamento` varchar(16) NOT NULL COMMENT 'Tipo del departamento en geonames',
  `geoidm` int DEFAULT NULL COMMENT 'Identificador del municipio en geonames',
  `codigo_municipio` varchar(128) DEFAULT NULL COMMENT 'Descripción del municipio en geonames',
  `descripcion_municipio_geo` varchar(128) DEFAULT NULL COMMENT 'Código del municipio en geonames',
  `tipo_municipio` varchar(16) DEFAULT NULL COMMENT 'Tipo del municipio en geonames',
  `descripcion_departamento` varchar(64) NOT NULL COMMENT 'Descripción del departamento',
  `tipo_departamento_es` varchar(64) NOT NULL COMMENT 'Descripción del tipo de departamento en español',
  `tipo_departamento_en` varchar(64) NOT NULL COMMENT 'Descripción del departamento en inglés',
  `tipo_departamento_original` varchar(64) DEFAULT NULL COMMENT 'Descripción del departamento en el idioma original del país',
  `descripcion_municipio` varchar(128) DEFAULT NULL COMMENT 'Descripción del municipio',
  `tipo_municipio_es` varchar(64) NOT NULL COMMENT 'Descripción del tipo de departamento en español',
  `tipo_municipio_en` varchar(64) NOT NULL COMMENT 'Descripción del departamento en inglés',
  `tipo_municipio_original` varchar(128) DEFAULT NULL COMMENT 'Descripción del departamento en el idioma original del país',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t152t_id` (`id`),
  UNIQUE KEY `UK_t152t_FIELDS` (`geoidp`,`geoidd`,`geoidm`),
  KEY `idx_t152t_id_pais` (`id_pais`),
  CONSTRAINT `CHK_NE_t152t_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t152t_codigo_dane` CHECK ((`codigo_dane` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t152t_codigo_dian` CHECK ((`codigo_dian` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t152t_codigo_dominio_tdl` CHECK ((`codigo_dominio_tdl` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t152t_codigo_iso_3166_1_alfa_2` CHECK ((`codigo_iso_3166_1_alfa_2` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t152t_codigo_iso_3166_1_alfa_3` CHECK ((`codigo_iso_3166_1_alfa_3` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t152t_codigo_iso_alfanumerico` CHECK ((`codigo_iso_alfanumerico` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t152t_descripcion-en` CHECK ((`descripcion_en` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t152t_descripcion_es` CHECK ((`descripcion_es` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t152t_descripcion_iso` CHECK ((`descripcion_iso` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=10000000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información las divisiones administrativas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t160t_proveedor_correo`
--

DROP TABLE IF EXISTS `t160t_proveedor_correo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t160t_proveedor_correo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código del proveedor de correo',
  `descripcion` varchar(32) NOT NULL COMMENT 'Descripción del proveedor de correo',
  `dominio` varchar(16) NOT NULL COMMENT 'Dominio del proveedor de correo',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t160t_id` (`id`),
  UNIQUE KEY `UK_t160t_codigo` (`codigo`),
  UNIQUE KEY `UK_t160t_descripcion` (`descripcion`),
  UNIQUE KEY `UK_t160t_dominio` (`dominio`),
  CONSTRAINT `CHK_NE_t160t_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t160t_descripcion` CHECK ((`descripcion` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t160t_dominio` CHECK ((`dominio` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información los proveedores de correo.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t190t_tipo_archivo`
--

DROP TABLE IF EXISTS `t190t_tipo_archivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t190t_tipo_archivo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código del tipo de archivo',
  `descripcion` varchar(32) NOT NULL COMMENT 'Descripción del tipo de archivo',
  `extension` varchar(8) NOT NULL COMMENT 'Extensión del tipo de archivo',
  `grupo` varchar(16) NOT NULL COMMENT 'Grupo del tipo de archivo',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t190t_id` (`id`),
  UNIQUE KEY `UK_t190t_codigo` (`codigo`),
  UNIQUE KEY `UK_t190t_descripcion` (`descripcion`),
  UNIQUE KEY `UK_t190t_extension` (`extension`),
  CONSTRAINT `CHK_NE_t190t_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t190t_descripcion` CHECK ((`descripcion` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t190t_extension` CHECK ((`extension` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información los tipos de archivos.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t214t_tipo_persona`
--

DROP TABLE IF EXISTS `t214t_tipo_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t214t_tipo_persona` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(16) NOT NULL COMMENT 'Código del tipo de persona',
  `descripcion` varchar(32) NOT NULL COMMENT 'Descripción del tipo de persona',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t214t_id` (`id`),
  UNIQUE KEY `UK_t214t_codigo` (`codigo`),
  UNIQUE KEY `UK_t214t_descripcion` (`descripcion`),
  CONSTRAINT `CHK_NE_t214t_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t214t_descripcion` CHECK ((`descripcion` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los tipos de persona.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t216t_tipo_identificacion`
--

DROP TABLE IF EXISTS `t216t_tipo_identificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t216t_tipo_identificacion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(16) NOT NULL COMMENT 'Código del tipo de identificación',
  `descripcion` varchar(64) NOT NULL COMMENT 'Descripción del tipo de identificación',
  `id_tipo_persona` int NOT NULL COMMENT 'Identificador del tipo de persona',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t216t_id` (`id`),
  UNIQUE KEY `UK_t216t_codigo` (`codigo`),
  UNIQUE KEY `UK_t216t_descripcion` (`descripcion`),
  KEY `KIDX_t216e_11` (`id_tipo_persona`),
  CONSTRAINT `FK_t216e_11_UD` FOREIGN KEY (`id_tipo_persona`) REFERENCES `t214t_tipo_persona` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t216t_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t216t_descripcion` CHECK ((`descripcion` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información los tipos de identificación.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t222t_tipo_ubicacion`
--

DROP TABLE IF EXISTS `t222t_tipo_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t222t_tipo_ubicacion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(16) NOT NULL COMMENT 'Código del tipo de ubicación',
  `descripcion` varchar(32) NOT NULL COMMENT 'Descripción del tipo de ubicación',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t222t_id` (`id`),
  UNIQUE KEY `UK_t222t_codigo` (`codigo`),
  UNIQUE KEY `UK_t222t_descripcion` (`descripcion`),
  CONSTRAINT `CHK_NE_t222t_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t222t_descripcion` CHECK ((`descripcion` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los tipos de ubicación.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t320e_jwt_rol`
--

DROP TABLE IF EXISTS `t320e_jwt_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t320e_jwt_rol` (
  `id` int NOT NULL COMMENT 'Consecutivo único del registro',
  `codigo` varchar(32) NOT NULL COMMENT 'Código del rol',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t320e_id` (`id`),
  UNIQUE KEY `UK_t320e_codigo` (`codigo`),
  CONSTRAINT `CHK_NE_t320e_codigo` CHECK ((`codigo` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los roles.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t322e_jwt_usuario`
--

DROP TABLE IF EXISTS `t322e_jwt_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t322e_jwt_usuario` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `username` varchar(16) NOT NULL COMMENT 'nombre del usuario',
  `password` varchar(64) NOT NULL COMMENT 'Password del usuario',
  `email` varchar(128) NOT NULL COMMENT 'Email del usuario',
  `token` varchar(516) NOT NULL COMMENT 'Token del usuario',
  `id_idioma` int NOT NULL COMMENT 'Identificador del idioma',
  `verification_code` varchar(8) DEFAULT NULL COMMENT 'Código de verificación al resetear password',
  `verification_code_expiry` datetime DEFAULT NULL COMMENT 'Feha de expiración del código de seguridad al resetear password',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t322e_id` (`id`),
  UNIQUE KEY `UK_t322e_email` (`email`),
  UNIQUE KEY `UK_token` (`token`),
  KEY `KIDX_t322e_04` (`username`),
  KEY `KIDX_t322e_11` (`id_idioma`),
  CONSTRAINT `FK_t322e_11_UD` FOREIGN KEY (`id_idioma`) REFERENCES `t125t_idioma` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t322e_password` CHECK ((`password` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t322e_username` CHECK ((`username` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los usuarios.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t324e_jwt_usuario_rol`
--

DROP TABLE IF EXISTS `t324e_jwt_usuario_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t324e_jwt_usuario_rol` (
  `id` int NOT NULL COMMENT 'Consecutivo único del registro',
  `id_usuario` int NOT NULL COMMENT 'Identificador del usuario',
  `id_rol` int NOT NULL COMMENT 'Identificador del rol',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t324e_id` (`id`),
  UNIQUE KEY `UK_t324e_FIELDS` (`id_usuario`,`id_rol`),
  KEY `KIDX_t324e_11` (`id_usuario`),
  KEY `KIDX_t324e_12` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información del rol del usuario.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t330e_empresa`
--

DROP TABLE IF EXISTS `t330e_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t330e_empresa` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_tipo_identificacion` int NOT NULL COMMENT 'Identificador del tipo de identificación de la empresa',
  `identificacion` varchar(32) NOT NULL COMMENT 'Número de identificación de la empresa',
  `dv` varchar(1) DEFAULT NULL COMMENT 'Dígito de verificación de la empresa',
  `sigla` varchar(32) DEFAULT NULL COMMENT 'Sigla de la empresa',
  `nombre_completo` varchar(128) NOT NULL COMMENT 'Nombre completo de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t330e_id` (`id`),
  KEY `KIDX_t330e_01` (`id_estado_registro`),
  KEY `KIDX_t330e_02` (`id_usuario_creacion`),
  KEY `KIDX_t330e_03` (`id_usuario_modificacion`),
  KEY `KIDX_t330e_11` (`id_tipo_identificacion`),
  CONSTRAINT `FK_t330e_01_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t330e_02_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t330e_03_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t330e_11_UD` FOREIGN KEY (`id_tipo_identificacion`) REFERENCES `t216t_tipo_identificacion` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t330e_identificacion` CHECK ((`identificacion` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t330e_nombre_completo` CHECK ((`nombre_completo` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la informacion de la empresa.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t333e_empresa_documento`
--

DROP TABLE IF EXISTS `t333e_empresa_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t333e_empresa_documento` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_tipo_archivo` int NOT NULL COMMENT 'Identificador del tipo de archivo',
  `base64` longblob NOT NULL COMMENT 'Archivo en base 64',
  `hash` varchar(64) NOT NULL COMMENT 'Hash del archivo',
  `nombre` varchar(256) NOT NULL COMMENT 'Nombre del archivo',
  `extension` varchar(4) NOT NULL COMMENT 'Extensión del archivo',
  `id_ubicacion` int NOT NULL COMMENT 'Identificador de la ubicación del documento en la aplicación',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t333e_id` (`id`),
  KEY `KIDX_t333e_01` (`id_empresa`),
  KEY `KIDX_t333e_02` (`id_estado_registro`),
  KEY `KIDX_t333e_03` (`id_usuario_creacion`),
  KEY `KIDX_t333e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t333e_11` (`id_tipo_archivo`),
  KEY `KIDX_t333e_12` (`id_ubicacion`),
  CONSTRAINT `FK_t333e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t333e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t333e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t333e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t333e_11_UD` FOREIGN KEY (`id_tipo_archivo`) REFERENCES `t190t_tipo_archivo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t333e_12_UD` FOREIGN KEY (`id_ubicacion`) REFERENCES `t222t_tipo_ubicacion` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t333e_extension` CHECK ((`extension` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t333e_hash` CHECK ((`hash` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t333e_nombre` CHECK ((`nombre` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los documentos de la empresa.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t338e_cargo`
--

DROP TABLE IF EXISTS `t338e_cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t338e_cargo` (
  `id` int NOT NULL COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código del cargo',
  `descripcion` varchar(64) NOT NULL COMMENT 'Descripción del cargo',
  `id_empresa` int NOT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t338e_id` (`id`),
  UNIQUE KEY `UK_t338e_empresa_codigo` (`id_empresa`,`codigo`),
  UNIQUE KEY `UK_t338e_empresa_descripcion` (`id_empresa`,`descripcion`),
  KEY `KIDX_t338e_01` (`id_empresa`),
  KEY `KIDX_t338e_02` (`id_estado_registro`),
  KEY `KIDX_t338e_03` (`id_usuario_creacion`),
  KEY `KIDX_t338e_04` (`id_usuario_modificacion`),
  CONSTRAINT `FK_t338e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t338e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t338e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t338e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t338e_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t338e_descripcion` CHECK ((`descripcion` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información los cargos.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t340e_tipo_material`
--

DROP TABLE IF EXISTS `t340e_tipo_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t340e_tipo_material` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código del tipo de material',
  `descripcion` varchar(64) NOT NULL COMMENT 'Descripción del tipo de material',
  `id_empresa` int NOT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t340e_id` (`id`),
  UNIQUE KEY `UK_t340e_empresa_codigo` (`id_empresa`,`codigo`),
  UNIQUE KEY `UK_t340e_empresa_descripcion` (`id_empresa`,`descripcion`),
  KEY `KIDX_t340e_01` (`id_empresa`),
  KEY `KIDX_t340e_02` (`id_estado_registro`),
  KEY `KIDX_t340e_03` (`id_usuario_creacion`),
  KEY `KIDX_t340e_04` (`id_usuario_modificacion`),
  CONSTRAINT `FK_t340e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t340e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t340e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t340e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t340e_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t340e_descripcion` CHECK ((`descripcion` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los tipos de materiales.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t342e_tipo_empaque`
--

DROP TABLE IF EXISTS `t342e_tipo_empaque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t342e_tipo_empaque` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código del tipo de empaque',
  `descripcion` varchar(64) NOT NULL COMMENT 'Descripción del tipo de empaque',
  `id_tipo_material` int NOT NULL COMMENT 'Identificador del tipo de material del empaque',
  `id_empresa` int NOT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t342e_id` (`id`),
  UNIQUE KEY `UK_t342e_emp_idtm_cod` (`id_empresa`,`id_tipo_material`,`codigo`),
  UNIQUE KEY `UK_t342e_emp_idtm_des` (`id_empresa`,`id_tipo_material`,`descripcion`),
  KEY `KIDX_t342e_01` (`id_empresa`),
  KEY `KIDX_t342e_02` (`id_estado_registro`),
  KEY `KIDX_t342e_03` (`id_usuario_creacion`),
  KEY `KIDX_t342e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t342e_11` (`id_tipo_material`),
  CONSTRAINT `FK_t342e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t342e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t342e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t342e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t342e_11_UD` FOREIGN KEY (`id_tipo_material`) REFERENCES `t340e_tipo_material` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t342e_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t342e_descripcion` CHECK ((`descripcion` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los tipos de empaques.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t346e_unidad_medida`
--

DROP TABLE IF EXISTS `t346e_unidad_medida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t346e_unidad_medida` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código de la unidad de medida',
  `descripcion` varchar(32) NOT NULL COMMENT 'Descripción de la unidad de medida',
  `unidad_principal` int NOT NULL COMMENT 'Identifica si es la unidad principal de la magnitud (Solo puede tener estos valores: 1=VERDADERO, 0=FALSO)',
  `simbolo` varchar(8) NOT NULL COMMENT 'Simbolo de la unidad de medida',
  `id_magnitud_medida` int NOT NULL COMMENT 'Identificador del tipo de magnitud de medida',
  `id_empresa` int NOT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t346e_id` (`id`),
  UNIQUE KEY `UK_t346e_emp_idmm_cod` (`id_empresa`,`id_magnitud_medida`,`codigo`),
  UNIQUE KEY `UK_t346e_emp_idmm_des` (`id_empresa`,`id_magnitud_medida`,`descripcion`),
  KEY `KIDX_t346e_01` (`id_empresa`),
  KEY `KIDX_t346e_02` (`id_estado_registro`),
  KEY `KIDX_t346e_03` (`id_usuario_creacion`),
  KEY `KIDX_t346e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t346e_11` (`id_magnitud_medida`),
  CONSTRAINT `FK_t346e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t346e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t346e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t346e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t346e_11_UD` FOREIGN KEY (`id_magnitud_medida`) REFERENCES `t132t_magnitud_medida` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t346e_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t346e_descripcion` CHECK ((`descripcion` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t346e_simbolo` CHECK ((`simbolo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t346e_unidad_principal` CHECK ((`unidad_principal` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena las unidades de medidas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t352e_color`
--

DROP TABLE IF EXISTS `t352e_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t352e_color` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(8) NOT NULL COMMENT 'Código del color',
  `descripcion` varchar(64) NOT NULL COMMENT 'Descripción del color',
  `rojo` int NOT NULL COMMENT 'Codigo del color rojo',
  `verde` int NOT NULL COMMENT 'Codigo del color verde',
  `azul` int NOT NULL COMMENT 'Codigo del color azul',
  `id_empresa` int NOT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t352e_id` (`id`),
  UNIQUE KEY `UK_t352e_empresa_codigo` (`id_empresa`,`codigo`),
  UNIQUE KEY `UK_t352e_empresa_descripcion` (`id_empresa`,`descripcion`),
  KEY `KIDX_t352e_01` (`id_empresa`),
  KEY `KIDX_t352e_02` (`id_estado_registro`),
  KEY `KIDX_t352e_03` (`id_usuario_creacion`),
  KEY `KIDX_t352e_04` (`id_usuario_modificacion`),
  CONSTRAINT `FK_t352e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t352e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t352e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t352e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t352e_azul` CHECK ((`azul` between 0 and 255)),
  CONSTRAINT `CHK_NE_t352e_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t352e_descripcion` CHECK ((`descripcion` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t352e_rojo` CHECK ((`rojo` between 0 and 255)),
  CONSTRAINT `CHK_NE_t352e_verde` CHECK ((`verde` between 0 and 255))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los colores.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t360e_moneda`
--

DROP TABLE IF EXISTS `t360e_moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t360e_moneda` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(4) NOT NULL COMMENT 'Código de moneda',
  `codigo_iso_4217` varchar(8) NOT NULL COMMENT 'Código ISO 4217 de la moneda',
  `descripcion` varchar(32) NOT NULL COMMENT 'Descripción de la moneda',
  `simbolo` varchar(8) NOT NULL COMMENT 'Simbolo de la moneda',
  `separador_miles` varchar(2) NOT NULL COMMENT 'Separador de miles del tipo de moneda',
  `separador_decimales` varchar(2) NOT NULL COMMENT 'Separador de decimales del tipo de moneda',
  `cantidad_decimales` int NOT NULL COMMENT 'Cantidad de decimales del tipo de moneda',
  `posicion` varchar(16) NOT NULL COMMENT 'Indica la posición del simbolo del tipo de moneda',
  `id_country` int NOT NULL COMMENT 'Identificador del país',
  `id_empresa` int NOT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t360e_id` (`id`),
  UNIQUE KEY `UK_t360e_empresa_codigo` (`id_empresa`,`codigo`),
  UNIQUE KEY `UK_t360e_empresa_codigo_iso_4217` (`id_empresa`,`codigo_iso_4217`),
  KEY `KIDX_t360e_01` (`id_empresa`),
  KEY `KIDX_t360e_02` (`id_estado_registro`),
  KEY `KIDX_t360e_03` (`id_usuario_creacion`),
  KEY `KIDX_t360e_04` (`id_usuario_modificacion`),
  KEY `FK_t360e_11_UD` (`id_country`),
  CONSTRAINT `FK_t360e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t360e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t360e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t360e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t360e_11_UD` FOREIGN KEY (`id_country`) REFERENCES `t061c_geo_countries` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t360e_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t360e_codigo_iso_4217` CHECK ((`codigo_iso_4217` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t360e_descripcion` CHECK ((`descripcion` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t360e_simbolo` CHECK ((`simbolo` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información las monedas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t362e_marca`
--

DROP TABLE IF EXISTS `t362e_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t362e_marca` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(8) NOT NULL COMMENT 'Código de la marca',
  `descripcion` varchar(64) NOT NULL COMMENT 'Descripción de la marca',
  `id_empresa` int NOT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t362e_id` (`id`),
  UNIQUE KEY `UK_t362e_empresa_codigo` (`id_empresa`,`codigo`),
  UNIQUE KEY `UK_t362e_empresa_descripcion` (`id_empresa`,`descripcion`),
  KEY `KIDX_t362e_01` (`id_empresa`),
  KEY `KIDX_t362e_02` (`id_estado_registro`),
  KEY `KIDX_t362e_03` (`id_usuario_creacion`),
  KEY `KIDX_t362e_04` (`id_usuario_modificacion`),
  CONSTRAINT `FK_t362e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t362e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t362e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t362e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t362e_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t362e_descripcion` CHECK ((`descripcion` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de las marcas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t372e_contacto`
--

DROP TABLE IF EXISTS `t372e_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t372e_contacto` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_tipo_identificacion` int NOT NULL COMMENT 'Identificador del tipo de identificación del contacto',
  `identificacion` varchar(32) NOT NULL COMMENT 'Número de identificación del contacto',
  `primer_nombre` varchar(32) DEFAULT NULL COMMENT 'Primer nombre del contacto',
  `segundo_nombre` varchar(32) DEFAULT NULL COMMENT 'Segundo nombre del contacto',
  `primer_apellido` varchar(32) DEFAULT NULL COMMENT 'Primer apellido del contacto',
  `segundo_apellido` varchar(32) DEFAULT NULL COMMENT 'Segundo apellido del contacto',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t372e_id` (`id`),
  UNIQUE KEY `UK_t372e_tipo_ident_ident` (`id_tipo_identificacion`,`identificacion`),
  KEY `KIDX_t372e_01` (`id_estado_registro`),
  KEY `KIDX_t372e_02` (`id_usuario_creacion`),
  KEY `KIDX_t372e_03` (`id_usuario_modificacion`),
  KEY `KIDX_t372e_11` (`id_tipo_identificacion`),
  CONSTRAINT `FK_t372e_01_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t372e_02_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t372e_03_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t372e_11_UD` FOREIGN KEY (`id_tipo_identificacion`) REFERENCES `t216t_tipo_identificacion` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t372e_identificacion` CHECK ((`identificacion` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los contactos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t374e_empresa_contacto`
--

DROP TABLE IF EXISTS `t374e_empresa_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t374e_empresa_contacto` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_contacto` int NOT NULL COMMENT 'Identificador del contacto',
  `id_empresa` int NOT NULL COMMENT 'Identificador de la empresa',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t374e_id` (`id`),
  UNIQUE KEY `UK_t374e_FIELDS` (`id_contacto`,`id_empresa`),
  KEY `KIDX_t374e_11` (`id_contacto`),
  KEY `KIDX_t374e_12` (`id_empresa`),
  CONSTRAINT `FK_t374e_11_UD` FOREIGN KEY (`id_contacto`) REFERENCES `t372e_contacto` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t374e_12_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la relación de la empresa y el contacto.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t376e_contacto_datos`
--

DROP TABLE IF EXISTS `t376e_contacto_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t376e_contacto_datos` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_municipio` int NOT NULL COMMENT 'Identificador del municipio',
  `direccion` varchar(1024) NOT NULL COMMENT 'Dirección del contacto',
  `telefono` varchar(16) NOT NULL COMMENT 'Teléfono del contacto',
  `celular` varchar(16) NOT NULL COMMENT 'Celular del contacto',
  `id_cargo` int NOT NULL COMMENT 'Cargo del contacto',
  `id_contacto` int NOT NULL COMMENT 'Identificador del contacto',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t316e_id` (`id`),
  UNIQUE KEY `UK_t362e_id_contacto` (`id_contacto`),
  KEY `KIDX_t376e_01` (`id_contacto`),
  KEY `KIDX_t376e_02` (`id_estado_registro`),
  KEY `KIDX_t376e_03` (`id_usuario_creacion`),
  KEY `KIDX_t376e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t376e_11` (`id_municipio`),
  KEY `KIDX_t376e_12` (`id_cargo`),
  CONSTRAINT `FK_t376e_01_UD` FOREIGN KEY (`id_contacto`) REFERENCES `t372e_contacto` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t376e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t376e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t376e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t376e_11_UD` FOREIGN KEY (`id_municipio`) REFERENCES `t152t_administrative_divisions` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t376e_12_UD` FOREIGN KEY (`id_cargo`) REFERENCES `t338e_cargo` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los datos del contacto';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t382e_parametro_tipo`
--

DROP TABLE IF EXISTS `t382e_parametro_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t382e_parametro_tipo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(64) NOT NULL COMMENT 'Código del tipo de parámetro',
  `descripcion` varchar(512) NOT NULL COMMENT 'Descripcion del tipo de parámetro',
  `tipo` varchar(16) NOT NULL COMMENT 'Tipo de parámetro (Solo puede tener estos valores: LISTA, SUBLISTA)',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int DEFAULT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t382e_id` (`id`),
  UNIQUE KEY `UK_t382e_codigo` (`codigo`),
  UNIQUE KEY `UK_t382e_descripcion` (`descripcion`),
  KEY `KIDX_t382e_01` (`id_empresa`),
  KEY `KIDX_t382e_02` (`id_estado_registro`),
  KEY `KIDX_t382e_03` (`id_usuario_creacion`),
  KEY `KIDX_t382e_04` (`id_usuario_modificacion`),
  CONSTRAINT `FK_t382e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t382e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t382e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t382e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t382e_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t382e_descripcion` CHECK ((`descripcion` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t382e_tipo` CHECK ((`tipo` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la tipificación de los parametros usados.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t384e_parametro_lista`
--

DROP TABLE IF EXISTS `t384e_parametro_lista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t384e_parametro_lista` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_parametro_tipo` int NOT NULL COMMENT 'Identificador del tipo de parámetro',
  `fecha_inicio` datetime(6) NOT NULL COMMENT 'Fecha de inicio del item de la lista del parametro',
  `fecha_final` datetime(6) DEFAULT NULL COMMENT 'Fecha de finalización del item de la lista del parametro',
  `orden` int NOT NULL COMMENT 'Orden de salida del item de la lista del parametro',
  `codigo` varchar(16) NOT NULL COMMENT 'Código del item de la lista del parametro',
  `descripcion` varchar(64) NOT NULL COMMENT 'Descripción del item de la lista del parametro',
  `referencia` varchar(64) NOT NULL COMMENT 'Referencia del item de la lista del parametro',
  `valor_numerico` int NOT NULL COMMENT 'Identifica si el valor que se almacena del item de la lista del parametro es numérico (Solo puede tener estos valores: 1=VERDADERO, 0=FALSO)',
  `valor_alfanumerico` int NOT NULL COMMENT 'Identifica si el valor que se almacena del item de la lista del parametro es alfanúmerico (Solo puede tener estos valores: 1=VERDADERO, 0=FALSO)',
  `valor_booleano` int NOT NULL COMMENT 'Identifica si el valor que se almacena del item de la lista del parametro es booleano (Solo puede tener estos valores: 1=VERDADERO, 0=FALSO)',
  `valor` varchar(64) NOT NULL COMMENT 'Valor alfanumérico que se almacena del item de la lista del parametro',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int DEFAULT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t384e_id` (`id`),
  KEY `KIDX_t384e_01` (`id_empresa`),
  KEY `KIDX_t384e_02` (`id_estado_registro`),
  KEY `KIDX_t384e_03` (`id_usuario_creacion`),
  KEY `KIDX_t384e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t384e_11` (`id_parametro_tipo`),
  CONSTRAINT `FK_t384e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t384e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t384e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t384e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t384e_11_UD` FOREIGN KEY (`id_parametro_tipo`) REFERENCES `t382e_parametro_tipo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t384e_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t384e_descripcion` CHECK ((`descripcion` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t384e_fecha_inicio` CHECK ((`fecha_inicio` is not null)),
  CONSTRAINT `CHK_NE_t384e_orden` CHECK ((`orden` <> 0)),
  CONSTRAINT `CHK_NE_t384e_referencia` CHECK ((`referencia` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t384e_valor_alfanumerico` CHECK ((`valor_alfanumerico` in (0,1))),
  CONSTRAINT `CHK_NE_t384e_valor_booleano` CHECK ((`valor_booleano` in (0,1))),
  CONSTRAINT `CHK_NE_t384e_valor_numerico` CHECK ((`valor_numerico` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los valores de la lista.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t522e_grupo_producto`
--

DROP TABLE IF EXISTS `t522e_grupo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t522e_grupo_producto` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(8) NOT NULL COMMENT 'Código del grupo de productos',
  `descripcion` varchar(32) NOT NULL COMMENT 'Descripción del grupo de productos',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t522e_id` (`id`),
  UNIQUE KEY `UK_t522e_empresa_codigo` (`id_empresa`,`codigo`),
  UNIQUE KEY `UK_t522e_empresa_descripcion` (`id_empresa`,`descripcion`),
  KEY `KIDX_t522e_01` (`id_empresa`),
  KEY `KIDX_t522e_02` (`id_estado_registro`),
  KEY `KIDX_t522e_03` (`id_usuario_creacion`),
  KEY `KIDX_t522e_04` (`id_usuario_modificacion`),
  CONSTRAINT `FK_t522e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t522e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t522e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t522e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t522e_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t522e_descripcion` CHECK ((`descripcion` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información los grupos de productos.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t525e_subgrupo_producto`
--

DROP TABLE IF EXISTS `t525e_subgrupo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t525e_subgrupo_producto` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(8) NOT NULL COMMENT 'Código del grupo de productos',
  `descripcion` varchar(32) NOT NULL COMMENT 'Descripción del grupo de productos',
  `id_grupo_producto` int NOT NULL COMMENT 'Identificador del grupo de producto',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t522e_id` (`id`),
  UNIQUE KEY `UK_t525e_emp_idgp_cod` (`id_empresa`,`id_grupo_producto`,`codigo`),
  UNIQUE KEY `UK_t525e_emp_idgp_des` (`id_empresa`,`id_grupo_producto`,`descripcion`),
  KEY `KIDX_t525e_01` (`id_empresa`),
  KEY `KIDX_t525e_02` (`id_estado_registro`),
  KEY `KIDX_t525e_03` (`id_usuario_creacion`),
  KEY `KIDX_t525e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t525e_11` (`id_grupo_producto`),
  CONSTRAINT `FK_t525e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t525e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t525e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t525e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t525e_11_UD` FOREIGN KEY (`id_grupo_producto`) REFERENCES `t522e_grupo_producto` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t525e_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t525e_descripcion` CHECK ((`descripcion` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información los grupos de productos.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t528e_producto`
--

DROP TABLE IF EXISTS `t528e_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t528e_producto` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `codigo` varchar(8) NOT NULL COMMENT 'Código el producto',
  `nombre_corto` varchar(32) NOT NULL COMMENT 'Nombre corto del producto',
  `nombre_largo` varchar(64) NOT NULL COMMENT 'Nombre largo del producto',
  `id_subgrupo_producto` int NOT NULL COMMENT 'Identificador del subgrupo de producto',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t528e_id` (`id`),
  UNIQUE KEY `UK_t528e_emp_idsp_cod` (`id_empresa`,`id_subgrupo_producto`,`codigo`),
  UNIQUE KEY `UK_t528e_emp_idsp_nomcor` (`id_empresa`,`id_subgrupo_producto`,`nombre_corto`),
  UNIQUE KEY `UK_t528e_emp_idsp_nomlar` (`id_empresa`,`id_subgrupo_producto`,`nombre_largo`),
  KEY `KIDX_t528e_01` (`id_empresa`),
  KEY `KIDX_t528e_02` (`id_estado_registro`),
  KEY `KIDX_t528e_03` (`id_usuario_creacion`),
  KEY `KIDX_t528e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t528e_10` (`id_subgrupo_producto`),
  CONSTRAINT `FK_t528e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t528e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t528e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t528e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t528e_10_UD` FOREIGN KEY (`id_subgrupo_producto`) REFERENCES `t525e_subgrupo_producto` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t528e_codigo` CHECK ((`codigo` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t528e_nombre_corto` CHECK ((`nombre_corto` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t528e_nombre_largo` CHECK ((`nombre_largo` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los productos.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t532e_producto_ficha`
--

DROP TABLE IF EXISTS `t532e_producto_ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t532e_producto_ficha` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_producto` int NOT NULL COMMENT 'Identificador del producto',
  `descripcion` varchar(16) NOT NULL COMMENT 'Descripción de la ficha del producto',
  `id_tipo_empaque` int NOT NULL COMMENT 'Identificador del tipo de empaque del producto',
  `id_um_dimension` int NOT NULL COMMENT 'Identificador de la unidad de medida para la dimensión del producto',
  `valor_largo` decimal(20,4) NOT NULL COMMENT 'Valor del largo del producto',
  `valor_ancho` decimal(20,4) NOT NULL COMMENT 'Valor del ancho del producto',
  `valor_alto` decimal(20,4) NOT NULL COMMENT 'Valor del alto del producto',
  `id_um_masa` int NOT NULL COMMENT 'Identificador de la unidad de medida para la masa del producto',
  `valor_masa` decimal(20,4) NOT NULL COMMENT 'Valor de la unidad de medida para la masa del producto',
  `id_marca` int NOT NULL COMMENT 'Identificador de la marca del empaque del producto',
  `id_color` int NOT NULL COMMENT 'Identificador del color del empaque del producto',
  `id_moneda` int NOT NULL COMMENT 'Identificador de la moneda de venta',
  `valor_precio` decimal(20,4) NOT NULL COMMENT 'Valor del precio de la unidad del producto según caractersticas',
  `id_municipio` int NOT NULL COMMENT 'Identificador del municipio',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t532e_id` (`id`),
  UNIQUE KEY `UK_t532e_emp_idp_des` (`id_empresa`,`id_producto`,`descripcion`),
  KEY `KIDX_t532e_01` (`id_empresa`),
  KEY `KIDX_t532e_02` (`id_estado_registro`),
  KEY `KIDX_t532e_03` (`id_usuario_creacion`),
  KEY `KIDX_t532e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t532e_11` (`id_producto`),
  KEY `KIDX_t532e_12` (`id_tipo_empaque`),
  KEY `KIDX_t532e_13` (`id_um_masa`),
  KEY `KIDX_t532e_14` (`id_marca`),
  KEY `KIDX_t532e_15` (`id_color`),
  KEY `KIDX_t532e_16` (`id_moneda`),
  KEY `KIDX_t532e_17` (`id_um_dimension`),
  KEY `KIDX_t532e_18` (`id_municipio`),
  CONSTRAINT `FK_t532e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t532e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t532e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t532e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t532e_11_UD` FOREIGN KEY (`id_producto`) REFERENCES `t528e_producto` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t532e_12_UD` FOREIGN KEY (`id_tipo_empaque`) REFERENCES `t342e_tipo_empaque` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t532e_13_UD` FOREIGN KEY (`id_um_dimension`) REFERENCES `t346e_unidad_medida` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t532e_14_UD` FOREIGN KEY (`id_um_masa`) REFERENCES `t346e_unidad_medida` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t532e_15_UD` FOREIGN KEY (`id_marca`) REFERENCES `t362e_marca` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t532e_16_UD` FOREIGN KEY (`id_color`) REFERENCES `t352e_color` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t532e_17_UD` FOREIGN KEY (`id_moneda`) REFERENCES `t360e_moneda` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t532e_18_UD` FOREIGN KEY (`id_municipio`) REFERENCES `t152t_administrative_divisions` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la ficha técnica del producto.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t533e_producto_imagen`
--

DROP TABLE IF EXISTS `t533e_producto_imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t533e_producto_imagen` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_producto_ficha` int NOT NULL COMMENT 'Identificador del producto ficha',
  `id_tipo_archivo` int NOT NULL COMMENT 'Identificador del tipo de archivo',
  `base64` longblob NOT NULL COMMENT 'Archivo en base 64',
  `hash` varchar(64) NOT NULL COMMENT 'Hash del archivo',
  `nombre` varchar(256) NOT NULL COMMENT 'Nombre del archivo',
  `extension` varchar(4) NOT NULL COMMENT 'Extensión del archivo',
  `id_ubicacion` int NOT NULL COMMENT 'Identificador de la ubicación de la imagen en la aplicación',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t533e_id` (`id`),
  KEY `KIDX_t533e_01` (`id_empresa`),
  KEY `KIDX_t533e_02` (`id_estado_registro`),
  KEY `KIDX_t533e_03` (`id_usuario_creacion`),
  KEY `KIDX_t533e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t533e_11` (`id_producto_ficha`),
  KEY `KIDX_t533e_12` (`id_tipo_archivo`),
  KEY `KIDX_t533e_13` (`id_ubicacion`),
  CONSTRAINT `FK_t533e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t533e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t533e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t533e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t533e_11_UD` FOREIGN KEY (`id_producto_ficha`) REFERENCES `t532e_producto_ficha` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t533e_12_UD` FOREIGN KEY (`id_tipo_archivo`) REFERENCES `t190t_tipo_archivo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t533e_13_UD` FOREIGN KEY (`id_ubicacion`) REFERENCES `t222t_tipo_ubicacion` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t533e_extension` CHECK ((`extension` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t533e_hash` CHECK ((`hash` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t533e_nombre` CHECK ((`nombre` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de las imagenes de la ficha técnica del producto.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t536e_producto_documento`
--

DROP TABLE IF EXISTS `t536e_producto_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t536e_producto_documento` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_producto_ficha` int NOT NULL COMMENT 'Identificador del producto ficha',
  `id_tipo_archivo` int NOT NULL COMMENT 'Identificador del tipo de archivo',
  `base64` longblob NOT NULL COMMENT 'Archivo en base 64',
  `hash` varchar(64) NOT NULL COMMENT 'Hash del archivo',
  `nombre` varchar(256) NOT NULL COMMENT 'Nombre del archivo',
  `extension` varchar(4) NOT NULL COMMENT 'Extensión del archivo',
  `id_ubicacion` int NOT NULL COMMENT 'Identificador de la ubicación del documento en la aplicación',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t536e_id` (`id`),
  KEY `KIDX_t536e_01` (`id_empresa`),
  KEY `KIDX_t536e_02` (`id_estado_registro`),
  KEY `KIDX_t536e_03` (`id_usuario_creacion`),
  KEY `KIDX_t536e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t536e_11` (`id_producto_ficha`),
  KEY `KIDX_t536e_12` (`id_tipo_archivo`),
  KEY `KIDX_t536e_13` (`id_ubicacion`),
  CONSTRAINT `FK_t536e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t536e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t536e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t536e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t536e_11_UD` FOREIGN KEY (`id_producto_ficha`) REFERENCES `t532e_producto_ficha` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t536e_12_UD` FOREIGN KEY (`id_tipo_archivo`) REFERENCES `t190t_tipo_archivo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t536e_13_UD` FOREIGN KEY (`id_ubicacion`) REFERENCES `t222t_tipo_ubicacion` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t536e_extension` CHECK ((`extension` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t536e_hash` CHECK ((`hash` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t536e_nombre` CHECK ((`nombre` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena la información de los documentos de la ficha técnica del producto.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t642e_doc_venta_enc`
--

DROP TABLE IF EXISTS `t642e_doc_venta_enc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t642e_doc_venta_enc` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_comprador` int NOT NULL COMMENT 'Identificador del comprador que realiza la compra',
  `numero` int NOT NULL COMMENT 'Numero de venta',
  `prefijo` varchar(8) NOT NULL COMMENT 'Prefijio Numero de venta',
  `fecha_venta` datetime(6) NOT NULL COMMENT 'Fecha de la venta',
  `id_lista_venta_estado` int NOT NULL COMMENT 'Identificador de lista de parametro',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t642e_id` (`id`),
  KEY `KIDX_t642e_01` (`id_empresa`),
  KEY `KIDX_t642e_02` (`id_estado_registro`),
  KEY `KIDX_t642e_03` (`id_usuario_creacion`),
  KEY `KIDX_t642e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t642e_11` (`id_comprador`),
  KEY `KIDX_t642e_12` (`id_lista_venta_estado`),
  CONSTRAINT `FK_t642e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t642e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t642e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t642e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t642e_11_UD` FOREIGN KEY (`id_comprador`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t642e_12_UD` FOREIGN KEY (`id_lista_venta_estado`) REFERENCES `t384e_parametro_lista` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t642e_fecha_venta` CHECK ((`fecha_venta` is not null)),
  CONSTRAINT `CHK_NE_t642e_numero` CHECK ((`numero` <> 0)),
  CONSTRAINT `CHK_NE_t642e_prefijo` CHECK ((`prefijo` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los datos de encabezado de la venta.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t644e_doc_venta_det`
--

DROP TABLE IF EXISTS `t644e_doc_venta_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t644e_doc_venta_det` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_doc_venta_enc` int NOT NULL COMMENT 'Identificador del encabezado de la venta',
  `id_producto_ficha` int NOT NULL COMMENT 'Identificador de la ficha técnia del producto',
  `cantidad` int NOT NULL COMMENT 'Cantidad de venta del producto',
  `valor` int NOT NULL COMMENT 'Valor de venta del producto',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t644e_id` (`id`),
  KEY `KIDX_t644e_01` (`id_empresa`),
  KEY `KIDX_t644e_02` (`id_estado_registro`),
  KEY `KIDX_t644e_03` (`id_usuario_creacion`),
  KEY `KIDX_t644e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t644e_11` (`id_doc_venta_enc`),
  KEY `KIDX_t644e_12` (`id_producto_ficha`),
  CONSTRAINT `FK_t644e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t644e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t644e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t644e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t644e_11_UD` FOREIGN KEY (`id_doc_venta_enc`) REFERENCES `t642e_doc_venta_enc` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t644e_12_UD` FOREIGN KEY (`id_producto_ficha`) REFERENCES `t532e_producto_ficha` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t644e_cantidad` CHECK ((`cantidad` <> 0)),
  CONSTRAINT `CHK_NE_t644e_valor` CHECK ((`valor` <> 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los datos de detalle de la venta.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t646e_doc_venta_sub`
--

DROP TABLE IF EXISTS `t646e_doc_venta_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t646e_doc_venta_sub` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `id_doc_venta_enc` int NOT NULL COMMENT 'Identificador del encabezado de la venta',
  `id_lista_venta_resumen` int NOT NULL COMMENT 'Identificador de lista de parametro',
  `valor` int NOT NULL COMMENT 'Valor numérico almacenado',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t646e_id` (`id`),
  KEY `KIDX_t646e_01` (`id_empresa`),
  KEY `KIDX_t646e_02` (`id_estado_registro`),
  KEY `KIDX_t646e_03` (`id_usuario_creacion`),
  KEY `KIDX_t646e_04` (`id_usuario_modificacion`),
  KEY `KIDX_t646e_11` (`id_doc_venta_enc`),
  KEY `KIDX_t646e_12` (`id_lista_venta_resumen`),
  CONSTRAINT `FK_t646e_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t646e_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t646e_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t646e_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t646e_11_UD` FOREIGN KEY (`id_doc_venta_enc`) REFERENCES `t642e_doc_venta_enc` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t646e_12_UD` FOREIGN KEY (`id_lista_venta_resumen`) REFERENCES `t384e_parametro_lista` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t646e_valor` CHECK ((`valor` <> 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los datos de subtotales de la venta.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t901h_producto_ficha`
--

DROP TABLE IF EXISTS `t901h_producto_ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t901h_producto_ficha` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `fecha_inicial` datetime(6) NOT NULL COMMENT 'Fecha inicial',
  `fecha_final` datetime(6) DEFAULT NULL COMMENT 'Fecha final',
  `id_producto` int NOT NULL COMMENT 'Identificador del producto',
  `id_tipo_empaque` int NOT NULL COMMENT 'Identificador del tipo de empaque del producto',
  `id_um_longitud` int NOT NULL COMMENT 'Identificador de la uidad de medida del producto',
  `valor_alto` decimal(20,4) NOT NULL COMMENT 'Valor del alto del empaque',
  `valor_largo` decimal(20,4) NOT NULL COMMENT 'Valor del largo del empaque',
  `valor_ancho` decimal(20,4) NOT NULL COMMENT 'Valor del ancho del empaque',
  `id_um_masa` int NOT NULL COMMENT 'Identificador de la unidad de medida del empaque del producto',
  `valor_unidad_medida` decimal(20,4) NOT NULL COMMENT 'Valor de la unidad de medida del empaque del producto',
  `id_marca` int NOT NULL COMMENT 'Identificador de la marca del empaque del producto',
  `id_color` int NOT NULL COMMENT 'Identificador del color del empaque del producto',
  `id_moneda` int NOT NULL COMMENT 'Identificador de la moneda de venta',
  `valor_precio` decimal(20,4) NOT NULL COMMENT 'Valor del precio del producto según caractersticas',
  `id_empresa` int DEFAULT NULL COMMENT 'Identificador de la empresa',
  `id_estado_registro` int NOT NULL COMMENT 'Identificador del estado del registro',
  `id_usuario_creacion` int NOT NULL COMMENT 'Identificador del usuario que creó el registro',
  `fecha_creacion` datetime(6) NOT NULL COMMENT 'Fecha de creación el registro',
  `id_usuario_modificacion` int DEFAULT NULL COMMENT 'Identificador del usuario que modificó el registro',
  `fecha_modificacion` datetime(6) DEFAULT NULL COMMENT 'Fecha de la última modificación del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t901h_id` (`id`),
  UNIQUE KEY `UK_t901h_FIELDS` (`id_producto`,`fecha_inicial`),
  KEY `KIDX_t901h_01` (`id_empresa`),
  KEY `KIDX_t901h_02` (`id_estado_registro`),
  KEY `KIDX_t901h_03` (`id_usuario_creacion`),
  KEY `KIDX_t901h_04` (`id_usuario_modificacion`),
  KEY `KIDX_t901h_11` (`id_producto`),
  KEY `KIDX_t901h_12` (`id_tipo_empaque`),
  KEY `KIDX_t901h_13` (`id_um_masa`),
  KEY `KIDX_t901h_14` (`id_marca`),
  KEY `KIDX_t901h_15` (`id_color`),
  KEY `KIDX_t901h_16` (`id_moneda`),
  CONSTRAINT `FK_t901h_01_UD` FOREIGN KEY (`id_empresa`) REFERENCES `t330e_empresa` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t901h_02_UD` FOREIGN KEY (`id_estado_registro`) REFERENCES `t105t_estado_registro` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t901h_03_UD` FOREIGN KEY (`id_usuario_creacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t901h_04_UD` FOREIGN KEY (`id_usuario_modificacion`) REFERENCES `t322e_jwt_usuario` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t901h_11_UD` FOREIGN KEY (`id_producto`) REFERENCES `t528e_producto` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t901h_12_UD` FOREIGN KEY (`id_tipo_empaque`) REFERENCES `t342e_tipo_empaque` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t901h_13_UD` FOREIGN KEY (`id_um_masa`) REFERENCES `t134t_unidad_medida` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t901h_14_UD` FOREIGN KEY (`id_marca`) REFERENCES `t362e_marca` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t901h_15_UD` FOREIGN KEY (`id_color`) REFERENCES `t352e_color` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_t901h_16_UD` FOREIGN KEY (`id_moneda`) REFERENCES `t160t_moneda` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_NE_t901h_fecha_final` CHECK ((`fecha_final` is not null)),
  CONSTRAINT `CHK_NE_t901h_fecha_inicial` CHECK ((`fecha_inicial` is not null)),
  CONSTRAINT `CHK_NE_t901h_valor_alto` CHECK ((`valor_alto` <> 0)),
  CONSTRAINT `CHK_NE_t901h_valor_ancho` CHECK ((`valor_ancho` <> 0)),
  CONSTRAINT `CHK_NE_t901h_valor_largo` CHECK ((`valor_largo` <> 0)),
  CONSTRAINT `CHK_NE_t901h_valor_precio` CHECK ((`valor_precio` <> 0)),
  CONSTRAINT `CHK_NE_t901h_valor_unidad_medida` CHECK ((`valor_unidad_medida` <> 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena el histórico de la ficha técnica del producto.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-16 14:20:20
