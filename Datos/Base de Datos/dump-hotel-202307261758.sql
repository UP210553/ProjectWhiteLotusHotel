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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_Paquetes`
--

LOCK TABLES `TC_Paquetes` WRITE;
/*!40000 ALTER TABLE `TC_Paquetes` DISABLE KEYS */;
INSERT INTO `TC_Paquetes` VALUES (1,'Paquete 1',1000,'Prueba',''),(2,'Paquete 2',2000,'Prueba',''),(3,'Paquete 3',3000,'Prueba','');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_Servicios`
--

LOCK TABLES `TC_Servicios` WRITE;
/*!40000 ALTER TABLE `TC_Servicios` DISABLE KEYS */;
INSERT INTO `TC_Servicios` VALUES (1,'Internet',200,'Inalámbrico',''),(2,'Comida',100,'Sabrosa',''),(3,'Alberca',50,'Divertida','');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_TipoHabitacion`
--

LOCK TABLES `TC_TipoHabitacion` WRITE;
/*!40000 ALTER TABLE `TC_TipoHabitacion` DISABLE KEYS */;
INSERT INTO `TC_TipoHabitacion` VALUES (1,'Habitación 1',2,500,''),(2,'Habitación 2',4,700,''),(3,'Habitación 3',6,800,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_Ubicacion`
--

LOCK TABLES `TC_Ubicacion` WRITE;
/*!40000 ALTER TABLE `TC_Ubicacion` DISABLE KEYS */;
INSERT INTO `TC_Ubicacion` VALUES (1,'Ciudad 1','Dirección 1',''),(2,'Ciudad 2','Dirección 2',''),(3,'Ciudad 3','Dirección 3','');
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
  `NumeroTelefono` varchar(11) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Ciudad` varchar(100) NOT NULL,
  `Estado` varchar(100) NOT NULL,
  `Pais` varchar(100) NOT NULL,
  `Estatus` bit(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TR_DatosHuespedes`
--

LOCK TABLES `TR_DatosHuespedes` WRITE;
/*!40000 ALTER TABLE `TR_DatosHuespedes` DISABLE KEYS */;
INSERT INTO `TR_DatosHuespedes` VALUES (1,'Huesped 1','1990-09-19','correo1@correo','4494494949','Dirección 1','Ciudad 1','Estado 1','Pais 1',''),(2,'Huesped 2','1990-09-19','correo2@correo','4494494949','Dirección 2','Ciudad 2','Estado 2','Pais 2',''),(3,'Huesped 3','1990-09-19','correo3@correo','4494494949','Dirección 3','Ciudad 3','Estado 3','Pais 3','');
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
  `Disponibilidad` int(11) NOT NULL,
  `Estatus` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `TR_DisponibilidadHabitacion_FK` (`id_TipoHabitacion`),
  CONSTRAINT `TR_DisponibilidadHabitacion_FK` FOREIGN KEY (`id_TipoHabitacion`) REFERENCES `TC_TipoHabitacion` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TR_DisponibilidadHabitacion`
--

LOCK TABLES `TR_DisponibilidadHabitacion` WRITE;
/*!40000 ALTER TABLE `TR_DisponibilidadHabitacion` DISABLE KEYS */;
INSERT INTO `TR_DisponibilidadHabitacion` VALUES (1,1,4,''),(2,2,4,''),(3,3,4,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TR_MetdoPago`
--

LOCK TABLES `TR_MetdoPago` WRITE;
/*!40000 ALTER TABLE `TR_MetdoPago` DISABLE KEYS */;
INSERT INTO `TR_MetdoPago` VALUES (1,1,'Tarjeta',3000,''),(2,2,'Contado',2000,''),(3,3,'Contado',3000,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TR_Reservacion`
--

LOCK TABLES `TR_Reservacion` WRITE;
/*!40000 ALTER TABLE `TR_Reservacion` DISABLE KEYS */;
INSERT INTO `TR_Reservacion` VALUES (1,1,1,1,1,1,'2023-07-23','2023-07-27',''),(2,2,2,2,2,2,'2023-07-23','2023-07-27',''),(3,3,3,3,3,3,'2023-07-23','2023-07-27','');
/*!40000 ALTER TABLE `TR_Reservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TR_UbicacionTH`
--

DROP TABLE IF EXISTS `TR_UbicacionTH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TR_UbicacionTH` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_TipoHabitacion` int(11) NOT NULL,
  `Id_Ubicacion` int(11) NOT NULL,
  `Estatus` bit(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `TR_UbicacionTH_FK` (`Id_TipoHabitacion`),
  KEY `TR_UbicacionTH_FK_1` (`Id_Ubicacion`),
  CONSTRAINT `TR_UbicacionTH_FK` FOREIGN KEY (`Id_TipoHabitacion`) REFERENCES `TC_TipoHabitacion` (`Id`),
  CONSTRAINT `TR_UbicacionTH_FK_1` FOREIGN KEY (`Id_Ubicacion`) REFERENCES `TC_Ubicacion` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TR_UbicacionTH`
--

LOCK TABLES `TR_UbicacionTH` WRITE;
/*!40000 ALTER TABLE `TR_UbicacionTH` DISABLE KEYS */;
/*!40000 ALTER TABLE `TR_UbicacionTH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TR_Usuarios`
--

DROP TABLE IF EXISTS `TR_Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TR_Usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(100) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Estatus` bit(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TR_Usuarios`
--

LOCK TABLES `TR_Usuarios` WRITE;
/*!40000 ALTER TABLE `TR_Usuarios` DISABLE KEYS */;
INSERT INTO `TR_Usuarios` VALUES (1,'Usuario 1','wqwdasdasd',''),(2,'Usuario 2','awdsadsdass',''),(3,'Usuario 3','asdasfdsfsaff','');
/*!40000 ALTER TABLE `TR_Usuarios` ENABLE KEYS */;
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

-- Dump completed on 2023-07-26 17:58:48
