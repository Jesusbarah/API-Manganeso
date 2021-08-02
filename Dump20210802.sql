-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: bdapi
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `talla` varchar(45) DEFAULT NULL,
  `inventario` varchar(45) NOT NULL,
  `idproducto` int NOT NULL,
  PRIMARY KEY (`id`,`idproducto`),
  KEY `fk_inventario_producto_idx` (`idproducto`),
  CONSTRAINT `fk_inventario_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,'M','1',1),(2,'S','1',2),(3,'S','1',3),(4,'M','1',4),(5,'L','1',4),(6,'S','1',5),(7,'S','1',6),(8,'S','1',7),(9,'M','1',7),(10,'L','1',8),(11,'L','1',9),(12,'XS','1',10),(13,'M','1',11),(14,'Unitalla','1',12),(15,'M','1',13);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `precio` float NOT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Bikini liso tipo brasileño','Dos piezas',25,'https://www.dropbox.com/s/3823goqi7kawqyg/h1.jpeg?dl=0&raw=1'),(2,'Bikini de un hombro con estampado de serpiente','Dos piezas',25,'https://www.dropbox.com/s/68ou67h2b67th58/h2.jpeg?dl=0&raw=1'),(3,'Bikini triangular de pierna alta','Dos piezas',23,'https://www.dropbox.com/s/v7vw44zpi190vw6/h3.jpeg?dl=0&raw=1'),(4,'Traje de baño de una pieza con un hombro','Una pieza',25,'https://www.dropbox.com/s/igpm4wc69egxlod/h4.jpeg?dl=0&raw=1'),(5,'Bikini de 3 piezas off shoulders con estampado tropical','Tres piezas',30,'https://www.dropbox.com/s/v16f90adu0exgby/h5.jpeg?dl=0&raw=1'),(6,'Salida de baño de malla tie dye','Una pieza',23,'https://www.dropbox.com/s/m792j8i7r50wya0/h6.jpeg?dl=0&raw=1'),(7,'Bikini de 3 piezas con estampado de girasol','Tres piezas',28,'https://www.dropbox.com/s/iny7xh7r0o3okqu/h7.jpeg?dl=0&raw=1'),(8,'Bikini de 3 piezas con estampado de piña','Tres piezas',28,'https://www.dropbox.com/s/nhdz59c067z7eyt/h8.jpeg?dl=0&raw=1'),(9,'Bikini tipo bandeau con abertura','Dos piezas',20,'https://www.dropbox.com/s/vtidwuj1pdvh81j/h9.jpeg?dl=0&raw=1'),(10,'Conjunto de top tubo con short cuadriculado','Dos piezas',22,'https://www.dropbox.com/s/v27d890hbqcjyhz/h10.jpeg?dl=0&raw=1'),(11,'Bikini de corte alto y top con aro','Dos piezas',20,'https://www.dropbox.com/s/r00n5svpip4seta/h11.jpeg?dl=0&raw=1'),(12,'Manta de playa con estampado multicolor','Accesorios',25,'https://www.dropbox.com/s/oiw1rt6lqfntxnh/h12.jpeg?dl=0&raw=1'),(13,'Bikini de tiro alto con estampado de rayas','Dos piezas',20,'https://www.dropbox.com/s/ssfrvv02kvn8l7q/h13.jpeg?dl=0&raw=1');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-02 16:10:11
