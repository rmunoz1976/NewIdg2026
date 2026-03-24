USE intermediary_db;

DROP TABLE IF EXISTS `t070t_divisions`;

CREATE TABLE `t070t_divisions` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `code` varchar(16) NOT NULL COMMENT 'Código interno de la división',
  `name_es` varchar(128) NOT NULL COMMENT 'Nombre del tipo geográfico en español',
  `name_en` varchar(128) NOT NULL COMMENT 'Nombre del tipo geográfico en inglés',
  `status` int NOT NULL DEFAULT '1' COMMENT 'Estado del registro: 1=activo, 0=inactivo',
  `created_at` datetime(6) NOT NULL COMMENT 'Fecha y hora de creación del registro',
  `updated_at` datetime(6) NOT NULL COMMENT 'Fecha y hora de última actualización del registro',
  `created_by` int NOT NULL COMMENT 'Usuario que creó el registro',
  `updated_by` int NOT NULL COMMENT 'Usuario que realizó la última actualización del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t070t_code` (`code`),
  CONSTRAINT `CHK_NE_t070t_code` CHECK ((`code` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t070t_name_en` CHECK ((`name_en` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t070t_name_es` CHECK ((`name_es` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tipificación de divisiones geográficas: país, departamento, municipio, barrio, etc.';


DROP TABLE IF EXISTS `t072t_continents`;

CREATE TABLE `t072t_continents` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `code` varchar(2) NOT NULL COMMENT 'Código del continente: AF, AN, AS, EU, NA, OC, SA',
  `name_es` varchar(32) NOT NULL COMMENT 'Nombre del continente en español',
  `name_en` varchar(32) NOT NULL COMMENT 'Nombre del continente en inglés',
  `status` int NOT NULL DEFAULT '1' COMMENT 'Estado del registro: 1=activo, 0=inactivo',
  `created_at` datetime(6) NOT NULL COMMENT 'Fecha y hora de creación del registro',
  `updated_at` datetime(6) NOT NULL COMMENT 'Fecha y hora de última actualización del registro',
  `created_by` int NOT NULL COMMENT 'Usuario que creó el registro',
  `updated_by` int NOT NULL COMMENT 'Usuario que realizó la última actualización del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t072t_code` (`code`),
  CONSTRAINT `CHK_NE_t072t_code` CHECK ((`code` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t072t_name_en` CHECK ((`name_en` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t072t_name_es` CHECK ((`name_es` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Continentes del mundo';

DROP TABLE IF EXISTS `t074t_countries`;

CREATE TABLE `t074t_countries` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `geo_id` int NOT NULL COMMENT 'ID del país en geonames.org',
  `id_continent` int NOT NULL COMMENT 'Identificador del continente',
  `code` varchar(16) NOT NULL COMMENT 'Código interno del país',
  `code_dane` varchar(16) DEFAULT NULL COMMENT 'Código DANE del país',
  `code_dian` varchar(16) DEFAULT NULL COMMENT 'Código DIAN del país',
  `code_iso_numeric` varchar(8) NOT NULL COMMENT 'Código ISO numérico 3166-1',
  `code_iso_alpha2` varchar(2) NOT NULL COMMENT 'Código ISO 3166-1 alpha-2',
  `code_iso_alpha3` varchar(3) NOT NULL COMMENT 'Código ISO 3166-1 alpha-3',
  `phone_code` varchar(16) NOT NULL COMMENT 'Indicativo telefónico: +57, +1, +34',
  `tld` varchar(8) NOT NULL COMMENT 'Dominio de nivel superior: .co, .us, .es',
  `name_es` varchar(128) NOT NULL COMMENT 'Nombre del país en español',
  `name_en` varchar(128) NOT NULL COMMENT 'Nombre del país en inglés',
  `name_iso` varchar(128) NOT NULL COMMENT 'Nombre oficial ISO del país',
  `id_currency` int NOT NULL COMMENT 'Identificador de la moneda del país',
  `status` int NOT NULL DEFAULT '1' COMMENT 'Estado del registro: 1=activo, 0=inactivo',
  `created_at` datetime(6) NOT NULL COMMENT 'Fecha y hora de creación del registro',
  `updated_at` datetime(6) NOT NULL COMMENT 'Fecha y hora de última actualización del registro',
  `created_by` int NOT NULL COMMENT 'Usuario que creó el registro',
  `updated_by` int NOT NULL COMMENT 'Usuario que realizó la última actualización del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t074t_geo_id` (`geo_id`),
  UNIQUE KEY `UK_t074t_code_iso_alpha2` (`code_iso_alpha2`),
  UNIQUE KEY `UK_t074t_code_iso_alpha3` (`code_iso_alpha3`),
  KEY `IDX_t074t_name_es` (`name_es`),
  KEY `IDX_t074t_name_en` (`name_en`),
  KEY `IDX_t074t_id_continent` (`id_continent`),
  CONSTRAINT `FK_t074t_id_continent_t072t` FOREIGN KEY (`id_continent`) REFERENCES `t072t_continents` (`id`),
  CONSTRAINT `CHK_NE_t074t_code` CHECK ((`code` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t074t_code_iso_alpha2` CHECK ((`code_iso_alpha2` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t074t_code_iso_alpha3` CHECK ((`code_iso_alpha3` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t074t_name_en` CHECK ((`name_en` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t074t_name_es` CHECK ((`name_es` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t074t_name_iso` CHECK ((`name_iso` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Países del mundo';

DROP TABLE IF EXISTS `t076t_states`;

CREATE TABLE `t076t_states` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `geo_id` int NOT NULL COMMENT 'ID del departamento en geonames.org',
  `id_country` int NOT NULL COMMENT 'Identificador del país',
  `code` varchar(16) NOT NULL COMMENT 'Código interno del departamento',
  `code_dane` varchar(16) DEFAULT NULL COMMENT 'Código DANE del departamento',
  `code_dian` varchar(16) DEFAULT NULL COMMENT 'Código DIAN del departamento',
  `code_iso_numeric` varchar(16) NOT NULL COMMENT 'Código ISO numérico del departamento',
  `code_iso_alpha2` varchar(16) NOT NULL COMMENT 'Código ISO alpha-2 del departamento',
  `code_iso_alpha3` varchar(16) NOT NULL COMMENT 'Código ISO alpha-3 del departamento',
  `phone_code` varchar(16) NOT NULL COMMENT 'Indicativo telefónico del departamento',
  `id_geo_type` int NOT NULL COMMENT 'Identificador del tipo de división geográfica',
  `name_es` varchar(128) NOT NULL COMMENT 'Nombre del departamento en español',
  `name_en` varchar(128) NOT NULL COMMENT 'Nombre del departamento en inglés',
  `name_iso` varchar(128) NOT NULL COMMENT 'Nombre oficial ISO del departamento',
  `status` int NOT NULL DEFAULT '1' COMMENT 'Estado del registro: 1=activo, 0=inactivo',
  `created_at` datetime(6) NOT NULL COMMENT 'Fecha y hora de creación del registro',
  `updated_at` datetime(6) NOT NULL COMMENT 'Fecha y hora de última actualización del registro',
  `created_by` int NOT NULL COMMENT 'Usuario que creó el registro',
  `updated_by` int NOT NULL COMMENT 'Usuario que realizó la última actualización del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t076t_geo_id` (`geo_id`),
  KEY `IDX_t076t_name_es` (`name_es`),
  KEY `IDX_t076t_name_en` (`name_en`),
  KEY `IDX_t076t_id_country` (`id_country`),
  KEY `IDX_t076t_code` (`code`),
  KEY `IDX_t076t_id_geo_type` (`id_geo_type`),
  KEY `IDX_t076t_id_country_name` (`id_country`,`name_es`),
  CONSTRAINT `FK_t076t_id_country_t074t` FOREIGN KEY (`id_country`) REFERENCES `t074t_countries` (`id`),
  CONSTRAINT `FK_t076t_id_geo_type_t070t` FOREIGN KEY (`id_geo_type`) REFERENCES `t070t_divisions` (`id`),
  CONSTRAINT `CHK_NE_t076t_code` CHECK ((`code` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t076t_name_en` CHECK ((`name_en` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t076t_name_es` CHECK ((`name_es` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t076t_name_iso` CHECK ((`name_iso` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Departamentos, estados y provincias del mundo';


DROP TABLE IF EXISTS `t078t_municipalities`;

CREATE TABLE `t078t_municipalities` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `geo_id` int NOT NULL COMMENT 'ID del municipio en geonames.org',
  `id_country` int NOT NULL COMMENT 'Identificador del país',
  `id_state` int NOT NULL COMMENT 'Identificador del departamento',
  `code` varchar(16) NOT NULL COMMENT 'Código interno del municipio',
  `code_dane` varchar(16) DEFAULT NULL COMMENT 'Código DANE del municipio',
  `code_dian` varchar(16) DEFAULT NULL COMMENT 'Código DIAN del municipio',
  `code_iso_numeric` varchar(16) NOT NULL COMMENT 'Código ISO numérico del municipio',
  `code_iso_alpha2` varchar(16) NOT NULL COMMENT 'Código ISO alpha-2 del municipio',
  `code_iso_alpha3` varchar(16) NOT NULL COMMENT 'Código ISO alpha-3 del municipio',
  `phone_code` varchar(16) NOT NULL COMMENT 'Indicativo telefónico del municipio',
  `id_geo_type` int NOT NULL COMMENT 'Identificador del tipo de división geográfica',
  `name_es` varchar(128) NOT NULL COMMENT 'Nombre del municipio en español',
  `name_en` varchar(128) NOT NULL COMMENT 'Nombre del municipio en inglés',
  `name_iso` varchar(128) NOT NULL COMMENT 'Nombre oficial ISO del municipio',
  `latitude` decimal(10,7) NOT NULL COMMENT 'Latitud geográfica del centroide del municipio',
  `longitude` decimal(10,7) NOT NULL COMMENT 'Longitud geográfica del centroide del municipio',
  `status` int NOT NULL DEFAULT '1' COMMENT 'Estado del registro: 1=activo, 0=inactivo',
  `created_at` datetime(6) NOT NULL COMMENT 'Fecha y hora de creación del registro',
  `updated_at` datetime(6) NOT NULL COMMENT 'Fecha y hora de última actualización del registro',
  `created_by` int NOT NULL COMMENT 'Usuario que creó el registro',
  `updated_by` int NOT NULL COMMENT 'Usuario que realizó la última actualización del registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t078t_geo_id` (`geo_id`),
  KEY `IDX_t078t_name_es` (`name_es`),
  KEY `IDX_t078t_name_en` (`name_en`),
  KEY `IDX_t078t_id_state` (`id_state`),
  KEY `IDX_t078t_id_country` (`id_country`),
  KEY `IDX_t078t_code_dane` (`code_dane`),
  KEY `IDX_t078t_id_geo_type` (`id_geo_type`),
  KEY `IDX_t078t_id_country_state_name` (`id_country`,`id_state`,`name_es`),
  CONSTRAINT `FK_t078t_id_country_t074t` FOREIGN KEY (`id_country`) REFERENCES `t074t_countries` (`id`),
  CONSTRAINT `FK_t078t_id_geo_type_t070t` FOREIGN KEY (`id_geo_type`) REFERENCES `t070t_divisions` (`id`),
  CONSTRAINT `FK_t078t_id_state_t076t` FOREIGN KEY (`id_state`) REFERENCES `t076t_states` (`id`),
  CONSTRAINT `CHK_NE_t078t_code` CHECK ((`code` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t078t_name_en` CHECK ((`name_en` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t078t_name_es` CHECK ((`name_es` <> _utf8mb4'')),
  CONSTRAINT `CHK_NE_t078t_name_iso` CHECK ((`name_iso` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Municipios y ciudades del mundo';

DROP TABLE IF EXISTS `t080t_localities`;

CREATE TABLE `t080t_localities` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo único del registro',
  `geo_id` int NOT NULL COMMENT 'ID en geonames.org, 0 si no existe',
  `id_country` int NOT NULL COMMENT 'Identificador del país',
  `id_state` int NOT NULL COMMENT 'Identificador del departamento',
  `id_municipality` int NOT NULL COMMENT 'Identificador del municipio',
  `id_geo_type` int NOT NULL COMMENT 'Identificador del tipo de subdivisión geográfica',
  `name_es` varchar(128) NOT NULL COMMENT 'Nombre de la localidad en español',
  `name_en` varchar(128) NOT NULL COMMENT 'Nombre de la localidad en inglés',
  `name_original` varchar(128) NOT NULL COMMENT 'Nombre de la localidad en idioma local',
  `code` varchar(16) NOT NULL COMMENT 'Código interno de la localidad',
  `postal_code` varchar(16) NOT NULL COMMENT 'Código postal / ZIP de la localidad',
  `latitude` decimal(10,7) NOT NULL COMMENT 'Latitud geográfica del centroide de la localidad',
  `longitude` decimal(10,7) NOT NULL COMMENT 'Longitud geográfica del centroide de la localidad',
  `status` int NOT NULL DEFAULT '1' COMMENT 'Estado del registro: 1=activo, 0=inactivo',
  `created_at` datetime(6) NOT NULL COMMENT 'Fecha y hora de creación del registro',
  `updated_at` datetime(6) NOT NULL COMMENT 'Fecha y hora de última actualización del registro',
  `created_by` int NOT NULL COMMENT 'Usuario que creó el registro',
  `updated_by` int NOT NULL COMMENT 'Usuario que realizó la última actualización del registro',
  PRIMARY KEY (`id`),
  KEY `IDX_t080t_name_es` (`name_es`),
  KEY `IDX_t080t_id_municipality` (`id_municipality`),
  KEY `IDX_t080t_postal_code` (`postal_code`),
  KEY `IDX_t080t_id_country_state` (`id_country`,`id_state`),
  KEY `IDX_t080t_id_muni_name` (`id_municipality`,`name_es`),
  KEY `IDX_t080t_id_geo_type` (`id_geo_type`),
  KEY `FK_t080t_id_state_t076t` (`id_state`),
  CONSTRAINT `FK_t080t_id_country_t074t` FOREIGN KEY (`id_country`) REFERENCES `t074t_countries` (`id`),
  CONSTRAINT `FK_t080t_id_geo_type_t070t` FOREIGN KEY (`id_geo_type`) REFERENCES `t070t_divisions` (`id`),
  CONSTRAINT `FK_t080t_id_municipality_t078t` FOREIGN KEY (`id_municipality`) REFERENCES `t078t_municipalities` (`id`),
  CONSTRAINT `FK_t080t_id_state_t076t` FOREIGN KEY (`id_state`) REFERENCES `t076t_states` (`id`),
  CONSTRAINT `CHK_NE_t080t_name_es` CHECK ((`name_es` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Barrios, veredas, localidades y subdivisiones locales';


