-- Host:                         localhost
-- Versión del servidor:         8.0.25 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para gss
CREATE DATABASE IF NOT EXISTS `gss` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gss`;

-- Volcando estructura para tabla gss.alquiler
CREATE TABLE IF NOT EXISTS `alquiler` (
  `cod_alquiler` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `tiempo` int NOT NULL,
  `vlrTotal` float NOT NULL,
  `saldo` float NOT NULL,
  `abono_ini` float NOT NULL,
  `devuelto` char(2) DEFAULT NULL,
  `carro` int DEFAULT NULL,
  `cliente` int DEFAULT NULL,
  PRIMARY KEY (`cod_alquiler`),
  KEY `carro` (`carro`),
  KEY `cliente` (`cliente`),
  CONSTRAINT `alquiler_ibfk_1` FOREIGN KEY (`carro`) REFERENCES `carro` (`cod_carro`),
  CONSTRAINT `alquiler_ibfk_2` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`cod_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gss.alquiler: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `alquiler` DISABLE KEYS */;
INSERT INTO `alquiler` (`cod_alquiler`, `fecha`, `tiempo`, `vlrTotal`, `saldo`, `abono_ini`, `devuelto`, `carro`, `cliente`) VALUES
	(1, '2021-05-18', 2, 200000, 180000, 20000, 'NO', 1, 1),
	(2, '2021-05-15', 15, 1500000, 800000, 700000, 'SI', 2, 2),
	(3, '2021-05-01', 1, 320000, 320000, 0, 'SI', 2, 3),
	(4, '2021-05-03', 8, 1080000, 0, 1080000, 'SI', 3, 3),
	(5, '2021-04-05', 1, 100000, 0, 100000, 'NO', 1, 2),
	(6, '2021-05-15', 3, 405000, 405000, 0, 'SI', 3, 3);
/*!40000 ALTER TABLE `alquiler` ENABLE KEYS */;

-- Volcando estructura para tabla gss.carro
CREATE TABLE IF NOT EXISTS `carro` (
  `cod_carro` int NOT NULL AUTO_INCREMENT,
  `placa` varchar(8) NOT NULL,
  `marca` varchar(15) NOT NULL,
  `modelo` int NOT NULL,
  `costo` float NOT NULL,
  `disponible` char(2) DEFAULT NULL,
  PRIMARY KEY (`cod_carro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gss.carro: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` (`cod_carro`, `placa`, `marca`, `modelo`, `costo`, `disponible`) VALUES
	(1, 'HUH-333', 'MAZDA', 1985, 100000, 'SI'),
	(2, 'QFG-555', 'HYUNDAI', 2010, 320000, 'SI'),
	(3, 'CAA-360', 'MAZDA', 1989, 135000, 'NO');
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;

-- Volcando estructura para tabla gss.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `cod_cliente` int NOT NULL AUTO_INCREMENT,
  `cedula` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono1` varchar(20) NOT NULL,
  `telefono2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cod_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gss.cliente: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`cod_cliente`, `cedula`, `nombre`, `telefono1`, `telefono2`) VALUES
	(1, '1085323564', 'Juan Felipe Riascos', '3146231192', '7202020'),
	(2, '4562235656', 'Melissa Bonilla', '3185563225', ''),
	(3, '31999658', 'Rocio del Pilar', '3152487585', '');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla gss.pagos
CREATE TABLE IF NOT EXISTS `pagos` (
  `cod_pago` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `valor` float NOT NULL,
  `alquiler` int DEFAULT NULL,
  PRIMARY KEY (`cod_pago`),
  KEY `alquiler` (`alquiler`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`alquiler`) REFERENCES `alquiler` (`cod_alquiler`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gss.pagos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` (`cod_pago`, `fecha`, `valor`, `alquiler`) VALUES
	(1, '2021-05-18', 200000, 1),
	(2, '2021-05-15', 1500000, 2),
	(3, '2021-05-01', 320000, 3),
	(4, '2021-05-03', 1080000, 4),
	(5, '2021-04-05', 100000, 5),
	(6, '2021-05-18', 405000, 6);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
