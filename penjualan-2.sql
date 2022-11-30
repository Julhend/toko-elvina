-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: penjualan-2
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barang` (
  `ID_BARANG` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `NAMA_BARANG` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `JENIS` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `HARGABELI` decimal(10,0) DEFAULT NULL,
  `HARGAJUAL` decimal(10,0) DEFAULT NULL,
  `STOK` int DEFAULT NULL,
  PRIMARY KEY (`ID_BARANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` VALUES ('BR001','AIR FRYER HD9220/20 BLACK','Import',150000,180000,15),('BR002','AIR PURIFIER SERIES 800 IN / TH AC0820/20','Import',135000,180000,25),('BR003','AIRFRYER AIRFRYER SPECTRE COM HD9200/90','Import',180000,235000,20),('BR004','AIRFRYER AIRFRYER SPECTRE COM HD9252/90','Import',145000,179000,18),('BR005','AIRFRYER DEEP BLACK BELUGA HD9723/10','Import',170000,230000,15),('BR006','BLENDER HR2096/00','Import',215000,275000,47),('BR007','BLENDER HR2874/00（2)','Import',350000,400000,8),('BR008','BLENDER 3000 SERIES 290W PLASTIC HR2042/10','Import',150000,250000,18),('BR009','BLENDER CORE KACA HR 2222/00 LAVENDER','Import',167000,198000,2),('BR010','BLENDER CORE KACA HR 2222/30 DESERTGREEN','Import',150000,200000,15),('BR011','BLENDER HR2102 / 06','Import',120000,150000,8),('BR012','CHOOPER ACCESSORY 400ML HR3210/55','Import',55000,87000,87),('BR013','CITRUS PRESS HR2738/00','Import',100000,150000,10),('BR014','DAILY FOOD PROCESSOR 700W HR7310/00','Import',130000,150000,36),('BR015','DAILY FOOD PROCESSOR 700W HR7310/10','Import',170000,200000,35),('BR016','DRY IRON HD1173/70 GREEN','Import',160000,200000,6),('BR017','FOOD PROCESSOR HR7627/00','Import',150000,200000,19),('BR018','FOOD STEAMING  HD9104/00','Import',170000,200000,16),('BR019','GARMENT STEAMER HV GC504/30','Import',300000,375000,9),('BR020','HAND BLENDER HR1603/00','Import',150000,200000,2),('BR021','HAND BLENDER 600W HR2533/00','Import',130000,200000,10),('BR022','HEPA FILTER SERIES 800 HEPA FY0194/30','Import',150000,200000,19),('BR023','INNER POOT HD3110/33','Import',180000,210000,18),('BR024','JUICER HR1863/20','Import',160000,200000,18),('BR025','LE DASH，ONLINE STAND STEAMER GC502/60','Import',180000,250000,2),('BR026','ME NXG DAILYTOUCH , HV HV , PETRO GC518/20 ','Import',140000,200000,8),('BR027','MINI BLENDER 0.6LT PLASTIC JAR HR2603/90 ','Import',165000,210000,1),('BR028','MIXER [ HAND MIXER GREEN ] HR1552/40','Import',200000,250000,23),('BR029','MIXER [ HAND MIXER GREY 1 HR1552/50','Import',200000,250000,35),('BR030','MIXER [ HAND MIXER GREY 1 HR1552/50','Import',200000,250000,90),('BR031','RECHARGEBLE STICK ACCESSORY PA FC8093/01','Import',200000,220000,2),('BR032','REPLACEMENT KIT HULK GENERAL FC8010/02','Import',130000,200000,2),('BR033','RICE COOKER 1.8L HD4515/85','Import',250000,300000,24),('BR034','RICE COOKER 1.8L HD4515/90','Import',250000,300000,11),('BR035','RICE COOKER 2L - NASI BASIC HD3119/32','Import',250000,300000,12),('BR036','RICE COOKER DIGITAL 6LTR HD 2137/30','Import',250000,300000,14),('BR037','RICE COOKER HD3030/30','Import',250000,300000,9),('BR038','RICE COOKER JAR 2L HD3131/30 ','Import',250000,300000,8),('BR039','RICE COOKER JAR 2L HD3138/32 ','Import',250000,300000,6),('BR040','RICE COOKER NASI COMPUTERIZED HD3053/33 ','Import',250000,300000,12),('BR041','SAMBAL / BUMBU MAKER ACCESSORY HR3211/55 ','Import',50000,75000,2),('BR042','SANDWICH MAKER HD2393/02 WHITE','Import',230000,275000,4),('BR043','STAND ALONE PLASTIK JAR HR3213/05 ','Import',150000,200000,3),('BR044','STAND ALONE PLASTIK JAR HR3213/35 ','Import',150000,175000,6),('BR045','STEAM IRON GC1418/35 ( 6 ) ','Import',140000,200000,2),('BR046','STEAMING HD9140/91 ( 4 )','Import',120000,150000,12),('BR047','TEA & BOILING HD4646/70','Import',100000,120000,2),('BR048','TOASTING HD4825/02','Import',120000,135000,56),('BR049','TRAVEL IRON HD1301/38 ','Import',250000,265000,14),('BR050','VACUM CLEANER FC6167/01','Import',500000,550000,4),('BR051','VACUM CLEANER FC6404/01 ','Import',500000,550000,3),('BR052','VACUUM CLEANER B. 2000 SERIES XB2142/09 ','Import',500000,550000,12),('BR053','VACUUM CLEANER FC6723/01 ','Import',130000,175000,3),('BR054','VACUUM CLE ANER FC8243/09','Import',500000,550000,10),('BR055','VACUUM CLEANER ROBOTICS CASTOR FC8792 / 01','Import',500000,550000,1),('BR056','ACCESSORIES FOR BLENDER HR2947 / 55','Lokal',170000,250000,3),('BR057','BLENDER 2L PLASTIC BLUE HR2115 / 30 ','Lokal',150000,175000,1),('BR058','BLENDER 2L PLASTIC HR2115 / 00 ','Lokal',150000,175000,2),('BR059','BLENDER 2L PLASTIC RED HR2115 / 60 ','Lokal',150000,175000,2),('BR060','DRY IRON HD1172 / 99 ','Lokal',100000,125000,9),('BR061','JAR KACA HR2958 / 55 ','Lokal',100000,120000,11),('BR062','JAR PLASTIK HR2957 / 55 ','Lokal',100000,150000,2),('BR063','SOYABEAN FILTER HR2938 / 55','Lokal',160000,200000,3),('BR064','SPARE PART FOR MIXER HR2004 / 55 ','Lokal',45000,67000,78),('BR065','SPARE PARTS FOR BLENDER HR2002/55','Lokal',30000,50000,7),('BR066','AQUATOUCH SHAVER AT600 / 15 ','Personal Health',70000,90000,9),('BR067','AQUATOUCH SHAVER AT610 / 14 ','Personal Health',70000,90000,5),('BR068','AQUATOUCH SHAVER AT620 / 14','Personal Health',70000,90000,5),('BR069','AQUATOUCH SHAVER 55070/04','Personal Health',70000,90000,19),('BR070','BEARD TRIMMER CLOSED BOX BT1214 / 15','Personal Health',35000,50000,16),('BR071','CURLER BELLA COST DOWN EUROPE BHB862 / 00','Personal Health',75000,100000,23),('BR072','HAIR DRYER BHD006 / 00','Personal Health',100000,125000,56),('BR073','KERASHINE AIRSTYLER HP8659 / 00 ','Personal Health',150000,175000,11),('BR074','LE STRAIGHTENER RHEO 6 SETTING BHS376 / 00 ','Personal Health',150000,200000,68),('BR075','SHAVER 2HD CBXXS70 NO POUNCH SW170 / 04','Personal Health',170000,200000,27),('BR076','STRAIGHTENER HP8348 / 00 ','Personal Health',175000,260000,29),('BR077','TRAVEL SHAVER PQ206 / 18 ( 24 )','Personal Health',10000,20000,169);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelanggan` (
  `ID_PELANGGAN` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `NAMA` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TELEPON` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ALAMAT` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_PELANGGAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembelian`
--

DROP TABLE IF EXISTS `pembelian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pembelian` (
  `NoFaktur` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Tanggal` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TotalJual` decimal(10,0) DEFAULT NULL,
  `ID_SUPPLIER` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Supplier` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`NoFaktur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembelian`
--

LOCK TABLES `pembelian` WRITE;
/*!40000 ALTER TABLE `pembelian` DISABLE KEYS */;
INSERT INTO `pembelian` VALUES ('TR0001','28-08-2022',360000,NULL,NULL),('TR0002','28-08-2022',360000,NULL,NULL),('TR0003','28-08-2022',470000,NULL,NULL),('TR0004','28-08-2022',360000,NULL,NULL),('TR0005','28-08-2022',540000,NULL,NULL),('TR0006','28-08-2022',540000,NULL,NULL),('TR0007','28-08-2022',720000,NULL,NULL),('TR0008','28-08-2022',1260000,NULL,NULL),('TR0009','28-08-2022',2340000,NULL,NULL),('TR0010','28-08-2022',716000,NULL,NULL),('TR0011','28-08-2022',1800000,NULL,NULL),('TR0012','28-08-2022',720000,NULL,NULL),('TR0013','28-08-2022',720000,NULL,NULL),('TR0014','28-08-2022',720000,NULL,NULL),('TR0015','28-08-2022',720000,NULL,NULL),('TR0016','28-08-2022',720000,NULL,NULL),('TR0017','28-08-2022',720000,NULL,NULL),('TR0018','28-08-2022',720000,NULL,NULL),('TR0019','28-08-2022',720000,NULL,NULL),('TR0020','28-08-2022',720000,NULL,NULL),('TR0021','28-08-2022',720000,NULL,NULL),('TR0022','28-08-2022',540000,NULL,NULL),('TR0023','28-08-2022',360000,NULL,NULL),('TR0024','29-08-2022',2160000,NULL,NULL),('TR0025','29-08-2022',179000,NULL,NULL),('TR0026','31-08-2022',895000,NULL,NULL),('TR0027','17-09-2022',537000,NULL,NULL),('TR0028','17-09-2022',900000,NULL,NULL),('TR0029','13-11-2022',800000,NULL,NULL),('TR0030','13-11-2022',1000000,NULL,NULL),('TR0031','13-11-2022',1000000,NULL,NULL),('TR0032','13-11-2022',450000,NULL,NULL),('TR0033','23-11-2022',900000,NULL,NULL);
/*!40000 ALTER TABLE `pembelian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembelianrinci`
--

DROP TABLE IF EXISTS `pembelianrinci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pembelianrinci` (
  `NoFaktur` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ID_Barang` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_Barang` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Jumlah` int DEFAULT NULL,
  `Harga` decimal(10,0) DEFAULT NULL,
  `Total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembelianrinci`
--

LOCK TABLES `pembelianrinci` WRITE;
/*!40000 ALTER TABLE `pembelianrinci` DISABLE KEYS */;
INSERT INTO `pembelianrinci` VALUES ('TR0025','BR002','AIR PURIFIER SERIES 800 IN / TH AC0820/20',3,180000,540000),('TR0025','BR001','AIR FRYER HD9220/20 BLACK',2,180000,360000),('TR0025','BR002','AIR PURIFIER SERIES 800 IN / TH AC0820/20',5,180000,900000),('TR0025','BR003','AIRFRYER AIRFRYER SPECTRE COM HD9200/90',5,235000,1175000),('TR0025','BR001','AIR FRYER HD9220/20 BLACK',5,180000,900000),('TR0025','BR002','AIR PURIFIER SERIES 800 IN / TH AC0820/20',10,180000,1800000),('TR0025','BR002','AIR PURIFIER SERIES 800 IN / TH AC0820/20',5,180000,900000),('TR0025','BR004','AIRFRYER AIRFRYER SPECTRE COM HD9252/90',1,179000,179000),('TR0026','BR004','AIRFRYER AIRFRYER SPECTRE COM HD9252/90',5,179000,895000),('TR0027','BR004','AIRFRYER AIRFRYER SPECTRE COM HD9252/90',3,179000,537000),('TR0028','BR001','AIR FRYER HD9220/20 BLACK',5,180000,900000),('TR0029','BR010','BLENDER CORE KACA HR 2222/30 DESERTGREEN',4,200000,800000),('TR0032','BR001','AIR FRYER HD9220/20 BLACK',3,150000,450000),('TR0033','BR001','AIR FRYER HD9220/20 BLACK',5,180000,900000);
/*!40000 ALTER TABLE `pembelianrinci` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Tambahstok` AFTER INSERT ON `pembelianrinci` FOR EACH ROW BEGIN
	update barang set stok = stok + new.jumlah
    where ID_Barang = new. ID_Barang;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `penjualan`
--

DROP TABLE IF EXISTS `penjualan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penjualan` (
  `NoFaktur` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Tanggal` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ID_PELANGGAN` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TotalBeli` decimal(10,0) DEFAULT NULL,
  `Pelanggan` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`NoFaktur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penjualan`
--

LOCK TABLES `penjualan` WRITE;
/*!40000 ALTER TABLE `penjualan` DISABLE KEYS */;
INSERT INTO `penjualan` VALUES ('TR0001','28-08-2022','109',360000,NULL),('TR0002','28-08-2022','',360000,NULL),('TR0003','28-08-2022','HUA',705000,NULL),('TR0004','29-08-2022','iuwfyiu',540000,NULL),('TR0005','29-08-2022','892',180000,NULL),('TR0006','29-08-2022','782',920000,NULL),('TR0007','29-08-2022','761',200000,NULL),('TR0008','17-09-2022','hgj',540000,NULL),('TR0009','13-11-2022','',750000,NULL),('TR0010','13-11-2022','',900000,NULL),('TR0011','23-11-2022','123',900000,NULL);
/*!40000 ALTER TABLE `penjualan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penjualanrinci`
--

DROP TABLE IF EXISTS `penjualanrinci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penjualanrinci` (
  `NoFaktur` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ID_Barang` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_Barang` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Jumlah` int DEFAULT NULL,
  `Harga` decimal(10,0) DEFAULT NULL,
  `Total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penjualanrinci`
--

LOCK TABLES `penjualanrinci` WRITE;
/*!40000 ALTER TABLE `penjualanrinci` DISABLE KEYS */;
INSERT INTO `penjualanrinci` VALUES ('TR0001','yu','yugj',2,50000,100000),('TR0002','','djkshndks',5000,2000,10000000),('TR0003','BR009','BLENDER CORE KACA HR 2222/00 LAVENDER',1,167000,167000),('TR0005','BR001','AIR FRYER HD9220/20 BLACK',12,180000,2160000),('TR0001','BR001','AIR FRYER HD9220/20 BLACK',2,180000,360000),('TR0002','BR002','AIR PURIFIER SERIES 800 IN / TH AC0820/20',2,180000,360000),('TR0003','BR003','AIRFRYER AIRFRYER SPECTRE COM HD9200/90',3,235000,705000),('TR0004','BR001','AIR FRYER HD9220/20 BLACK',3,180000,540000),('TR0005','BR002','AIR PURIFIER SERIES 800 IN / TH AC0820/20',1,180000,180000),('TR0006','BR005','AIRFRYER DEEP BLACK BELUGA HD9723/10',4,230000,920000),('TR0007','BR020','HAND BLENDER HR1603/00',1,200000,200000),('TR0008','BR001','AIR FRYER HD9220/20 BLACK',3,180000,540000),('TR0009','BR010','BLENDER CORE KACA HR 2222/30 DESERTGREEN',5,150000,750000),('TR0010','BR001','AIR FRYER HD9220/20 BLACK',5,180000,900000),('TR0011','BR001','AIR FRYER HD9220/20 BLACK',5,180000,900000);
/*!40000 ALTER TABLE `penjualanrinci` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Kurangstok` AFTER INSERT ON `penjualanrinci` FOR EACH ROW BEGIN 
	UPDATE barang SET stok=stok - NEW.Jumlah
    WHERE ID_Barang = NEW. ID_Barang;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `ID_SUPPLIER` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `NAMA` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TELEPON` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ALAMAT` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_SUPPLIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'penjualan-2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-30 22:57:04
