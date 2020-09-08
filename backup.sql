-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: sistemainventario
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asignacionproducto`
--

DROP TABLE IF EXISTS `asignacionproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignacionproducto` (
  `idasignacionProducto` int(11) NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) DEFAULT NULL,
  `idSucursal` int(11) DEFAULT NULL,
  `idPasillo` int(11) DEFAULT NULL,
  `idEstanteria` int(11) DEFAULT NULL,
  `idBodega` int(11) DEFAULT NULL,
  `idrazonMovimiento` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  PRIMARY KEY (`idasignacionProducto`),
  KEY `fk_productoAsignacion` (`idProducto`),
  KEY `fk_sucursalAsignacion` (`idSucursal`),
  KEY `fk_pasilloAsignacion` (`idPasillo`),
  KEY `fk_estanteriaAsignacion` (`idEstanteria`),
  KEY `fk_bodegaAsignacion` (`idBodega`),
  KEY `fk_razonMovimiento` (`idrazonMovimiento`),
  CONSTRAINT `fk_bodegaAsignacion` FOREIGN KEY (`idBodega`) REFERENCES `bodega` (`idBodega`),
  CONSTRAINT `fk_estanteriaAsignacion` FOREIGN KEY (`idEstanteria`) REFERENCES `estanteria` (`idEstanteria`),
  CONSTRAINT `fk_pasilloAsignacion` FOREIGN KEY (`idPasillo`) REFERENCES `pasillo` (`idPasillo`),
  CONSTRAINT `fk_productoAsignacion` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `fk_razonMovimiento` FOREIGN KEY (`idrazonMovimiento`) REFERENCES `razonmovimiento` (`idrazonMovimiento`),
  CONSTRAINT `fk_sucursalAsignacion` FOREIGN KEY (`idSucursal`) REFERENCES `sucursales` (`idSucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacionproducto`
--

LOCK TABLES `asignacionproducto` WRITE;
/*!40000 ALTER TABLE `asignacionproducto` DISABLE KEYS */;
INSERT INTO `asignacionproducto` VALUES (2,4,1,3,3,3,4,0,1),(5,5,3,3,2,4,4,0,123.4344),(6,4,1,3,3,4,4,1,124.23),(7,4,1,5,3,4,4,0,12.3),(8,5,3,3,2,5,4,0,2323.54),(9,4,3,3,2,6,4,0,123.43),(10,4,3,3,2,6,4,1,233.32);
/*!40000 ALTER TABLE `asignacionproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodega`
--

DROP TABLE IF EXISTS `bodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodega` (
  `idBodega` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idBodega`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodega`
--

LOCK TABLES `bodega` WRITE;
/*!40000 ALTER TABLE `bodega` DISABLE KEYS */;
INSERT INTO `bodega` VALUES (3,'Bodega Santa Rosa'),(4,'Bodega Zona 1'),(5,'Bodega Vista Hermosa'),(6,'Bodega San Cristobal'),(13,'Bodega Villa Nueva');
/*!40000 ALTER TABLE `bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (9,'Embutidos'),(12,'Granos'),(13,'Gaseosas'),(14,'Dulces'),(15,'Limpieza');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estanteria`
--

DROP TABLE IF EXISTS `estanteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estanteria` (
  `idEstanteria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `idPasillo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEstanteria`),
  KEY `fk_pasilloEstanteria` (`idPasillo`),
  CONSTRAINT `fk_pasilloEstanteria` FOREIGN KEY (`idPasillo`) REFERENCES `pasillo` (`idPasillo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estanteria`
--

LOCK TABLES `estanteria` WRITE;
/*!40000 ALTER TABLE `estanteria` DISABLE KEYS */;
INSERT INTO `estanteria` VALUES (2,'T3',5),(3,'Q4',5);
/*!40000 ALTER TABLE `estanteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasillo`
--

DROP TABLE IF EXISTS `pasillo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasillo` (
  `idPasillo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `idBodega` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPasillo`),
  KEY `fk_Bodega` (`idBodega`),
  CONSTRAINT `fk_Bodega` FOREIGN KEY (`idBodega`) REFERENCES `bodega` (`idBodega`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasillo`
--

LOCK TABLES `pasillo` WRITE;
/*!40000 ALTER TABLE `pasillo` DISABLE KEYS */;
INSERT INTO `pasillo` VALUES (3,'D3',5),(5,'R5',6),(8,'P2',3);
/*!40000 ALTER TABLE `pasillo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `precioCosto` double DEFAULT NULL,
  `precioVenta` double DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `fk_CategoriaProducto` (`idCategoria`),
  CONSTRAINT `fk_CategoriaProducto` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (4,'232324kf','Frijol',4.5,5,12),(5,'6565hj','Jamon prensado Bremen 1/libra',11,12,9),(6,'545644','Maiz',1,1.8,12);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `razonmovimiento`
--

DROP TABLE IF EXISTS `razonmovimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `razonmovimiento` (
  `idrazonMovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idrazonMovimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `razonmovimiento`
--

LOCK TABLES `razonmovimiento` WRITE;
/*!40000 ALTER TABLE `razonmovimiento` DISABLE KEYS */;
INSERT INTO `razonmovimiento` VALUES (4,'Movido para la venta'),(5,'Movido por mal estado'),(7,'Movido por demanda de mercado'),(8,'Movido por oferta de mercado'),(9,'Recién comprado');
/*!40000 ALTER TABLE `razonmovimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursales` (
  `idSucursal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1,'sucursal Santa Rosa'),(3,'sucursal Zona 1'),(5,'sucursal Vista Hermosa'),(7,'sucursal Chiquimulilla');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(200) NOT NULL,
  `clave` varchar(300) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'carjigarcia@gmail.com','202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-08  3:11:07

