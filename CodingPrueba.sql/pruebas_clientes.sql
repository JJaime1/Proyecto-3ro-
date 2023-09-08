-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: pruebas
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `comentario` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `deuda` int DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `viajes` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (0,'','','null','',0,'',0),(10025,'Eduardo','Ramírez','Mascota: Gato','Calle 789, Ciudad',121,'555-5555',3),(231312,'dsadsa','dasdsad','null','21sdadas',0,'321321',0),(10029,'Andrés','Martínez','Cliente nuevo','Calle 123, Ciudad',30,'555-9999',1),(10014,'Ana','Martínez','','Avenida ABC, Villa',75,'555-8765',0),(10016,'Laura','Sánchez','Requiere atención especial','Avenida XYZ, Ciudad',50,'555-2345',1),(10017,'Diego','González','Cliente nuevo','Calle 123, Villa',0,'555-5432',2),(10018,'Valeria','Pérez','','Avenida Central, Ciudad',0,'555-9876',0),(10019,'Andrés','López','Pagos pendientes','Calle Secundaria, Pueblo',21,'555-6789',1),(10021,'Gabriel','Sánchez','Alergias: Polvo','Calle 789, Ciudad',0,'555-8765',1),(10022,'María','Fernández','','Avenida ABC, Pueblo',30,'555-5432',0),(10023,'Luis','González','Cliente VIP','Calle Principal, Villa',0,'555-6543',2),(10031,'Gabriel','López','Cliente nuevo','Calle 789, Pueblo',50,'555-5678',3),(10032,'María','García','','Avenida ABC, Villa',0,'555-8765',0),(2147483647,'dasdsa','dasdsad','null','21sdadas',0,'321321',0),(10034,'Ana','Martínez','Cumpleaños en agosto','Avenida XYZ, Pueblo',91,'555-5432',4),(10035,'Carlos','Fernández','Alergias: Polen','Calle Principal, Villa',0,'555-6543',1),(10036,'Laura','Sánchez','','Avenida Central, Ciudad',0,'555-2345',0),(10037,'Diego','González','Cliente VIP','Calle 456, Pueblo',30,'555-5678',3),(10038,'Valeria','Pérez','Pagos pendientes','Avenida XYZ, Villa',0,'555-8765',1),(10039,'Andrés','López','','Calle 123, Ciudad',15,'555-5432',2),(10040,'Carolina','Martínez','Cliente frecuente','Avenida Central, Pueblo',0,'555-6543',0),(10041,'Gabriel','Sánchez','Alergias: Polvo','Calle 789, Villa',0,'555-2345',2),(10042,'María','Fernández','','Avenida ABC, Ciudad',61,'555-5678',1),(10043,'Luis','González','Cliente VIP','Calle Principal, Pueblo',0,'555-8765',4),(10044,'Ana','Ramírez','Cumpleaños en octubre','Avenida XYZ, Villa',0,'555-5432',2),(10045,'Carlos','López','Requiere factura','Calle 123, Ciudad',100,'555-6543',1),(10046,'Laura','Martínez','','Avenida Central, Pueblo',0,'555-2345',0),(10047,'Diego','Sánchez','Cliente VIP','Calle 456, Ciudad',0,'555-5678',3),(10048,'Valeria','Fernández','Alergias: Nueces','Avenida XYZ, Pueblo',40,'555-8765',1),(10049,'Andrés','González','','Calle Principal, Villa',0,'555-5432',2);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-08  9:50:12
