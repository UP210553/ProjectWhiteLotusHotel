-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	10.5.19-MariaDB-0+deb11u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `TC_Paquetes`
--

DROP TABLE IF EXISTS `TC_Paquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_Paquetes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NombrePaquete` varchar(100) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Estatus` bit(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_Paquetes`
--

LOCK TABLES `TC_Paquetes` WRITE;
/*!40000 ALTER TABLE `TC_Paquetes` DISABLE KEYS */;
/*!40000 ALTER TABLE `TC_Paquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_Servicios`
--

DROP TABLE IF EXISTS `TC_Servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_Servicios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NombreServicio` varchar(100) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Estatus` bit(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_Servicios`
--

LOCK TABLES `TC_Servicios` WRITE;
/*!40000 ALTER TABLE `TC_Servicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `TC_Servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_TipoHabitacion`
--

DROP TABLE IF EXISTS `TC_TipoHabitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_TipoHabitacion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NombreHabitacion` varchar(100) NOT NULL,
  `CapacidadHuespedes` int(11) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Estatus` bit(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_TipoHabitacion`
--

LOCK TABLES `TC_TipoHabitacion` WRITE;
/*!40000 ALTER TABLE `TC_TipoHabitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `TC_TipoHabitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_Ubicacion`
--

DROP TABLE IF EXISTS `TC_Ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_Ubicacion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ciudad` varchar(100) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Estatus` bit(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_Ubicacion`
--

LOCK TABLES `TC_Ubicacion` WRITE;
/*!40000 ALTER TABLE `TC_Ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `TC_Ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TR_DatosHuespedes`
--

DROP TABLE IF EXISTS `TR_DatosHuespedes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TR_DatosHuespedes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NombreHuesped` varchar(100) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `NumeroTelefono` int(11) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Ciudad` varchar(100) NOT NULL,
  `Estado` varchar(100) NOT NULL,
  `Pais` varchar(100) NOT NULL,
  `Estatus` bit(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TR_DatosHuespedes`
--

LOCK TABLES `TR_DatosHuespedes` WRITE;
/*!40000 ALTER TABLE `TR_DatosHuespedes` DISABLE KEYS */;
/*!40000 ALTER TABLE `TR_DatosHuespedes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TR_DisponibilidadHabitacion`
--

DROP TABLE IF EXISTS `TR_DisponibilidadHabitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TR_DisponibilidadHabitacion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `id_TipoHabitacion` int(11) NOT NULL,
  `Disponibilidad` varchar(100) NOT NULL,
  `Estatus` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `TR_DisponibilidadHabitacion_FK` (`id_TipoHabitacion`),
  CONSTRAINT `TR_DisponibilidadHabitacion_FK` FOREIGN KEY (`id_TipoHabitacion`) REFERENCES `TC_TipoHabitacion` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TR_DisponibilidadHabitacion`
--

LOCK TABLES `TR_DisponibilidadHabitacion` WRITE;
/*!40000 ALTER TABLE `TR_DisponibilidadHabitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `TR_DisponibilidadHabitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TR_MetdoPago`
--

DROP TABLE IF EXISTS `TR_MetdoPago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TR_MetdoPago` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `id_DatosHuespedes` int(11) NOT NULL,
  `MetodoPago` varchar(100) NOT NULL,
  `Cantidad` decimal(10,0) NOT NULL,
  `Estatus` bit(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `TR_MetdoPago_FK` (`id_DatosHuespedes`),
  CONSTRAINT `TR_MetdoPago_FK` FOREIGN KEY (`id_DatosHuespedes`) REFERENCES `TR_DatosHuespedes` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TR_MetdoPago`
--

LOCK TABLES `TR_MetdoPago` WRITE;
/*!40000 ALTER TABLE `TR_MetdoPago` DISABLE KEYS */;
/*!40000 ALTER TABLE `TR_MetdoPago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TR_Reservacion`
--

DROP TABLE IF EXISTS `TR_Reservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TR_Reservacion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `id_DatosHuesped` int(11) NOT NULL,
  `id_TipoHabitacion` int(11) NOT NULL,
  `id_Ubicacion` int(11) NOT NULL,
  `id_Paquetes` int(11) NOT NULL,
  `id_Servicios` int(11) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFinal` date NOT NULL,
  `Estatus` bit(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `TR_Reservacion_FK` (`id_Paquetes`),
  KEY `TR_Reservacion_FK_1` (`id_DatosHuesped`),
  KEY `TR_Reservacion_FK_2` (`id_TipoHabitacion`),
  KEY `TR_Reservacion_FK_3` (`id_Ubicacion`),
  KEY `TR_Reservacion_FK_4` (`id_Servicios`),
  CONSTRAINT `TR_Reservacion_FK` FOREIGN KEY (`id_Paquetes`) REFERENCES `TC_Paquetes` (`Id`),
  CONSTRAINT `TR_Reservacion_FK_1` FOREIGN KEY (`id_DatosHuesped`) REFERENCES `TR_DatosHuespedes` (`Id`),
  CONSTRAINT `TR_Reservacion_FK_2` FOREIGN KEY (`id_TipoHabitacion`) REFERENCES `TC_TipoHabitacion` (`Id`),
  CONSTRAINT `TR_Reservacion_FK_3` FOREIGN KEY (`id_Ubicacion`) REFERENCES `TC_Ubicacion` (`Id`),
  CONSTRAINT `TR_Reservacion_FK_4` FOREIGN KEY (`id_Servicios`) REFERENCES `TC_Servicios` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TR_Reservacion`
--

LOCK TABLES `TR_Reservacion` WRITE;
/*!40000 ALTER TABLE `TR_Reservacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `TR_Reservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hotel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03  9:17:20
