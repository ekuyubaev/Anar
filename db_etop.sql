-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_etop
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `attestacia`
--

DROP TABLE IF EXISTS `attestacia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attestacia` (
  `ID_attestacia` int(11) NOT NULL AUTO_INCREMENT,
  `Data_attestacia` datetime NOT NULL,
  `ID_vid_attestacia` int(11) NOT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_attestacia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attestacia`
--

LOCK TABLES `attestacia` WRITE;
/*!40000 ALTER TABLE `attestacia` DISABLE KEYS */;
INSERT INTO `attestacia` VALUES (1,'2017-05-20 00:00:00',1,NULL),(4,'2018-05-17 00:00:00',1,NULL);
/*!40000 ALTER TABLE `attestacia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dolzhnost`
--

DROP TABLE IF EXISTS `dolzhnost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dolzhnost` (
  `ID_dolzhnost` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_dolzhnost`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dolzhnost`
--

LOCK TABLES `dolzhnost` WRITE;
/*!40000 ALTER TABLE `dolzhnost` DISABLE KEYS */;
INSERT INTO `dolzhnost` VALUES (1,'Ведущий специалист','занимается тем-то и тем-то'),(2,'Специалист','занимается чем-то и чем-то');
/*!40000 ALTER TABLE `dolzhnost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edinica_izmerenia`
--

DROP TABLE IF EXISTS `edinica_izmerenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edinica_izmerenia` (
  `ID_EI` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `Oboznachenie` varchar(64) NOT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_EI`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edinica_izmerenia`
--

LOCK TABLES `edinica_izmerenia` WRITE;
/*!40000 ALTER TABLE `edinica_izmerenia` DISABLE KEYS */;
INSERT INTO `edinica_izmerenia` VALUES (1,'Часы','ч',NULL),(2,'Минуты','мин',NULL),(3,'Секунды','с',NULL),(4,'Штук','шт',NULL),(5,'Литр','л',NULL);
/*!40000 ALTER TABLE `edinica_izmerenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gsm`
--

DROP TABLE IF EXISTS `gsm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gsm` (
  `ID_GSM` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `Kolichestvo` float(12,2) NOT NULL DEFAULT '0.00',
  `Kriticheskoe_kolichestvo` float(12,2) DEFAULT NULL,
  `ID_EI` int(11) NOT NULL,
  `Tip` varchar(45) DEFAULT NULL,
  `GOST` varchar(45) DEFAULT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_GSM`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gsm`
--

LOCK TABLES `gsm` WRITE;
/*!40000 ALTER TABLE `gsm` DISABLE KEYS */;
INSERT INTO `gsm` VALUES (1,'Солярка',50.00,NULL,5,NULL,NULL,NULL),(2,'Бензин',100.00,NULL,5,NULL,NULL,NULL);
/*!40000 ALTER TABLE `gsm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ispolnitel`
--

DROP TABLE IF EXISTS `ispolnitel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ispolnitel` (
  `ID_ispolnitel` int(11) NOT NULL AUTO_INCREMENT,
  `ID_rabota` int(11) NOT NULL,
  `ID_sotrudnik` int(11) NOT NULL,
  `ID_dolzhnost` int(11) DEFAULT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_ispolnitel`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ispolnitel`
--

LOCK TABLES `ispolnitel` WRITE;
/*!40000 ALTER TABLE `ispolnitel` DISABLE KEYS */;
INSERT INTO `ispolnitel` VALUES (1,2,2,NULL,NULL),(3,2,1,NULL,NULL),(4,1,3,NULL,NULL),(5,7,2,NULL,NULL),(6,7,3,NULL,NULL),(7,8,1,NULL,NULL),(8,6,1,NULL,NULL),(11,10,1,NULL,NULL),(12,10,2,NULL,NULL);
/*!40000 ALTER TABLE `ispolnitel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto`
--

DROP TABLE IF EXISTS `mto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto` (
  `ID_MTO` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `Kolichestvo` float(12,2) NOT NULL DEFAULT '0.00',
  `ID_EI` int(11) DEFAULT NULL,
  `Tip` varchar(45) DEFAULT NULL,
  `GOST` varchar(45) DEFAULT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_MTO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto`
--

LOCK TABLES `mto` WRITE;
/*!40000 ALTER TABLE `mto` DISABLE KEYS */;
INSERT INTO `mto` VALUES (1,'Перчатки одноразовые',14.00,4,NULL,NULL,NULL),(2,'Тест материал 1',4.00,4,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `naimenovanie_rabot`
--

DROP TABLE IF EXISTS `naimenovanie_rabot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `naimenovanie_rabot` (
  `ID_naimenovanie` int(11) NOT NULL AUTO_INCREMENT,
  `Naimnovanie` varchar(256) NOT NULL,
  `Periodichnost` int(11) NOT NULL DEFAULT '0',
  `Primechanie` longtext,
  PRIMARY KEY (`ID_naimenovanie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `naimenovanie_rabot`
--

LOCK TABLES `naimenovanie_rabot` WRITE;
/*!40000 ALTER TABLE `naimenovanie_rabot` DISABLE KEYS */;
INSERT INTO `naimenovanie_rabot` VALUES (1,'Осмотр РУ',30,NULL),(2,'Тест пересечения с пусками',180,NULL);
/*!40000 ALTER TABLE `naimenovanie_rabot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `narabotka`
--

DROP TABLE IF EXISTS `narabotka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `narabotka` (
  `ID_narabotka` int(11) NOT NULL AUTO_INCREMENT,
  `ID_oborudovanie` int(11) NOT NULL,
  `Data_narabotka` datetime DEFAULT NULL,
  `Narabotka` float(12,2) DEFAULT NULL,
  `ID_EI` int(11) DEFAULT NULL,
  `Narabotka_vsego` float(12,2) DEFAULT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_narabotka`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `narabotka`
--

LOCK TABLES `narabotka` WRITE;
/*!40000 ALTER TABLE `narabotka` DISABLE KEYS */;
INSERT INTO `narabotka` VALUES (2,2,'2018-03-21 10:16:00',8.00,1,30.00,NULL),(3,2,'2018-03-21 12:15:00',2.00,1,29.00,NULL),(4,2,'2018-03-21 18:00:00',6.00,1,22.00,NULL),(5,1,'2018-03-21 10:20:00',8.00,1,32.00,NULL),(6,1,'2018-03-21 18:00:00',8.00,1,24.00,NULL),(7,2,'2018-03-21 23:00:00',5.00,1,27.00,NULL),(8,2,'2018-03-22 08:00:00',4.00,1,31.00,NULL);
/*!40000 ALTER TABLE `narabotka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oborudovanie`
--

DROP TABLE IF EXISTS `oborudovanie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oborudovanie` (
  `ID_oborudovanie` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `N_zavodskoi` varchar(64) DEFAULT NULL,
  `N_inventarnyi` varchar(64) DEFAULT NULL,
  `Data_vvedeno` datetime DEFAULT NULL,
  `Periodichnost_TO` varchar(255) DEFAULT NULL,
  `ID_sostoianie` int(11) DEFAULT NULL,
  `ID_sooruzhenie` int(11) DEFAULT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_oborudovanie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oborudovanie`
--

LOCK TABLES `oborudovanie` WRITE;
/*!40000 ALTER TABLE `oborudovanie` DISABLE KEYS */;
INSERT INTO `oborudovanie` VALUES (1,'Насос','12345','И12345','1999-01-27 00:00:00','6 мес;',1,5,'Примечание оборудование Насос'),(2,'Трансформатор','1242','И1242','2014-06-04 00:00:00','12 мес;',1,4,'Примечание оборудование Трансформатор');
/*!40000 ALTER TABLE `oborudovanie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poverka`
--

DROP TABLE IF EXISTS `poverka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poverka` (
  `ID_poverka` int(11) NOT NULL AUTO_INCREMENT,
  `ID_sredstvo_izmerenia` int(11) NOT NULL,
  `Poveriaiushi` varchar(255) DEFAULT NULL,
  `Data_poverka` datetime DEFAULT NULL,
  `ID_rezultat_poverka` int(11) DEFAULT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_poverka`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poverka`
--

LOCK TABLES `poverka` WRITE;
/*!40000 ALTER TABLE `poverka` DISABLE KEYS */;
INSERT INTO `poverka` VALUES (1,1,'Тест поверяющий','2017-04-15 00:00:00',1,'Тест примечание'),(2,1,'Тест поверяющий','2016-04-15 00:00:00',1,'Тест примечание'),(3,2,'Тест','2018-04-17 00:00:00',1,NULL),(4,1,'Тест поверяющий','2018-05-15 00:00:00',1,NULL),(5,2,'Тест','2019-04-10 00:00:00',1,NULL);
/*!40000 ALTER TABLE `poverka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prihod_gsm`
--

DROP TABLE IF EXISTS `prihod_gsm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prihod_gsm` (
  `ID_prihod_GSM` int(11) NOT NULL AUTO_INCREMENT,
  `ID_GSM` int(11) NOT NULL,
  `Data_priniato` datetime NOT NULL,
  `Prinial` varchar(255) DEFAULT NULL,
  `Kolichestvo` float(12,2) NOT NULL DEFAULT '0.00',
  `ID_EI` int(11) NOT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_prihod_GSM`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prihod_gsm`
--

LOCK TABLES `prihod_gsm` WRITE;
/*!40000 ALTER TABLE `prihod_gsm` DISABLE KEYS */;
INSERT INTO `prihod_gsm` VALUES (1,1,'2018-03-05 00:00:00',NULL,50.00,5,NULL),(2,1,'2018-03-12 00:00:00',NULL,25.00,5,NULL);
/*!40000 ALTER TABLE `prihod_gsm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prihod_mto`
--

DROP TABLE IF EXISTS `prihod_mto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prihod_mto` (
  `ID_prihod_MTO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_MTO` int(11) NOT NULL,
  `Data_prihod` datetime NOT NULL,
  `Priniato_kem` varchar(64) DEFAULT NULL,
  `Kolichestvo` float(12,2) NOT NULL DEFAULT '0.00',
  `ID_EI` int(11) NOT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_prihod_MTO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prihod_mto`
--

LOCK TABLES `prihod_mto` WRITE;
/*!40000 ALTER TABLE `prihod_mto` DISABLE KEYS */;
INSERT INTO `prihod_mto` VALUES (1,1,'2018-03-06 00:00:00',NULL,15.00,4,NULL),(2,1,'2018-03-20 00:00:00',NULL,25.00,4,NULL),(3,2,'2018-04-18 00:00:00','Иванов В.А.',15.00,4,NULL);
/*!40000 ALTER TABLE `prihod_mto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pusk`
--

DROP TABLE IF EXISTS `pusk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pusk` (
  `ID_pusk` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `Data_nachalo` datetime NOT NULL,
  `Data_okonchanie` datetime NOT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_pusk`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pusk`
--

LOCK TABLES `pusk` WRITE;
/*!40000 ALTER TABLE `pusk` DISABLE KEYS */;
INSERT INTO `pusk` VALUES (1,'Союз 2Б','2018-03-28 00:00:00','2018-03-30 00:00:00',NULL),(3,'Протон М','2018-04-04 00:00:00','2018-04-05 00:00:00',NULL);
/*!40000 ALTER TABLE `pusk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rabota`
--

DROP TABLE IF EXISTS `rabota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rabota` (
  `ID_rabota` int(11) NOT NULL AUTO_INCREMENT,
  `ID_naimenovanie` int(11) DEFAULT NULL,
  `ID_vid_rabota` int(11) DEFAULT NULL,
  `ID_oborudovanie` int(11) DEFAULT NULL,
  `Nachalo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Okonchanie` datetime DEFAULT NULL,
  `Prodlen_po` datetime DEFAULT NULL,
  `Po_rasporiazheniu` bit(1) NOT NULL DEFAULT b'0',
  `Nomer_rasporiazhenie` varchar(64) DEFAULT NULL,
  `Po_nariadu_dopusku` bit(1) NOT NULL DEFAULT b'0',
  `Nomer_nariad` varchar(64) DEFAULT NULL,
  `Vypolnena` bit(1) NOT NULL DEFAULT b'0',
  `Primechanie` longtext,
  `Otvetstvennyi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_rabota`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rabota`
--

LOCK TABLES `rabota` WRITE;
/*!40000 ALTER TABLE `rabota` DISABLE KEYS */;
INSERT INTO `rabota` VALUES (3,NULL,1,2,'2018-03-05 00:00:00','2018-03-06 00:00:00',NULL,'\0',NULL,'\0',NULL,'',NULL,'Вася Пупкин'),(4,NULL,1,2,'2018-04-02 00:00:00','2018-04-02 00:00:00',NULL,'\0',NULL,'\0',NULL,'\0',NULL,NULL),(5,NULL,NULL,2,'2018-04-04 00:00:00','2018-04-05 00:00:00',NULL,'\0',NULL,'\0',NULL,'\0',NULL,NULL),(6,1,1,NULL,'2018-03-29 00:00:00','2018-03-31 00:00:00',NULL,'','Р16-3','\0',NULL,'',NULL,NULL),(7,NULL,1,2,'2018-04-23 00:00:00','2018-04-24 00:00:00',NULL,'\0',NULL,'\0',NULL,'\0',NULL,NULL),(8,1,1,1,'2018-04-23 00:00:00','2018-04-24 00:00:00',NULL,'\0',NULL,'\0',NULL,'\0',NULL,NULL),(10,1,1,1,'2018-01-02 00:00:00','2018-01-04 00:00:00',NULL,'\0',NULL,'\0',NULL,'',NULL,'Иванов Иван Иванович'),(11,1,1,1,'2018-06-13 11:08:46','2018-06-14 00:00:00',NULL,'\0',NULL,'\0',NULL,'\0',NULL,NULL),(12,1,1,1,'2018-03-21 11:14:33','2018-03-22 00:00:00',NULL,'\0',NULL,'\0',NULL,'',NULL,NULL),(13,1,1,NULL,'2018-05-29 21:35:20','2018-05-30 00:00:00',NULL,'\0',NULL,'\0',NULL,'\0',NULL,NULL);
/*!40000 ALTER TABLE `rabota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rashod_gsm`
--

DROP TABLE IF EXISTS `rashod_gsm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rashod_gsm` (
  `ID_rashod_GSM` int(11) NOT NULL AUTO_INCREMENT,
  `ID_rabota` int(11) NOT NULL,
  `ID_GSM` int(11) NOT NULL,
  `Kolichestvo` float(12,2) NOT NULL DEFAULT '0.00',
  `Data_vydano` datetime DEFAULT NULL,
  `Primechanie` longtext,
  `ID_EI` int(11) NOT NULL,
  PRIMARY KEY (`ID_rashod_GSM`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rashod_gsm`
--

LOCK TABLES `rashod_gsm` WRITE;
/*!40000 ALTER TABLE `rashod_gsm` DISABLE KEYS */;
INSERT INTO `rashod_gsm` VALUES (3,8,1,10.00,'2018-04-23 00:00:00',NULL,4),(4,8,1,20.00,'2018-05-23 00:00:00',NULL,4),(5,8,1,30.00,'2018-04-23 00:00:00',NULL,4),(6,8,1,50.00,'2018-03-23 00:00:00',NULL,4),(7,8,1,35.00,'2017-06-23 00:00:00',NULL,4),(8,8,2,80.00,'2018-04-23 00:00:00',NULL,4),(9,8,2,60.00,'2018-05-23 00:00:00',NULL,4),(10,8,2,70.00,'2018-06-23 00:00:00',NULL,4);
/*!40000 ALTER TABLE `rashod_gsm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rashod_mto`
--

DROP TABLE IF EXISTS `rashod_mto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rashod_mto` (
  `ID_rashod_MTO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_rabota` int(11) NOT NULL,
  `ID_MTO` int(11) NOT NULL,
  `Kolichestvo` float(12,2) NOT NULL DEFAULT '0.00',
  `Data_vydano` datetime DEFAULT NULL,
  `ID_EI` int(11) DEFAULT NULL,
  `Vydano_komu` varchar(64) DEFAULT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_rashod_MTO`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rashod_mto`
--

LOCK TABLES `rashod_mto` WRITE;
/*!40000 ALTER TABLE `rashod_mto` DISABLE KEYS */;
INSERT INTO `rashod_mto` VALUES (6,7,1,5.00,'2018-04-23 00:00:00',4,NULL,NULL),(7,7,2,5.00,'2018-04-23 00:00:00',4,NULL,NULL),(8,8,1,6.00,'2018-04-23 00:00:00',4,NULL,NULL),(9,8,2,6.00,'2018-04-23 00:00:00',4,NULL,NULL),(10,2,1,5.00,'2018-02-28 00:00:00',4,NULL,NULL),(11,6,1,10.00,'2018-03-29 00:00:00',4,NULL,NULL);
/*!40000 ALTER TABLE `rashod_mto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezultat_attestacia`
--

DROP TABLE IF EXISTS `rezultat_attestacia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rezultat_attestacia` (
  `ID_rezultat_attestacia` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_rezultat_attestacia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezultat_attestacia`
--

LOCK TABLES `rezultat_attestacia` WRITE;
/*!40000 ALTER TABLE `rezultat_attestacia` DISABLE KEYS */;
INSERT INTO `rezultat_attestacia` VALUES (1,'Соответствует занимаемой должности',NULL),(2,'Не соответствует занимаемой должности',NULL);
/*!40000 ALTER TABLE `rezultat_attestacia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezultat_poverka`
--

DROP TABLE IF EXISTS `rezultat_poverka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rezultat_poverka` (
  `ID_rezultat_poverka` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_rezultat_poverka`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezultat_poverka`
--

LOCK TABLES `rezultat_poverka` WRITE;
/*!40000 ALTER TABLE `rezultat_poverka` DISABLE KEYS */;
INSERT INTO `rezultat_poverka` VALUES (1,'Пригоден',NULL),(3,'Не пригоден',NULL);
/*!40000 ALTER TABLE `rezultat_poverka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sooruzhenie`
--

DROP TABLE IF EXISTS `sooruzhenie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sooruzhenie` (
  `ID_sooruzhenie` int(11) NOT NULL AUTO_INCREMENT,
  `Nomer` varchar(255) NOT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_sooruzhenie`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sooruzhenie`
--

LOCK TABLES `sooruzhenie` WRITE;
/*!40000 ALTER TABLE `sooruzhenie` DISABLE KEYS */;
INSERT INTO `sooruzhenie` VALUES (4,'1А','Примечание 1А'),(5,'1Б','Примечание 1Б');
/*!40000 ALTER TABLE `sooruzhenie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sostoianie`
--

DROP TABLE IF EXISTS `sostoianie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sostoianie` (
  `ID_sostoianie` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_sostoianie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sostoianie`
--

LOCK TABLES `sostoianie` WRITE;
/*!40000 ALTER TABLE `sostoianie` DISABLE KEYS */;
INSERT INTO `sostoianie` VALUES (1,'исправен','а'),(2,'не исправен',NULL);
/*!40000 ALTER TABLE `sostoianie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sotrudnik`
--

DROP TABLE IF EXISTS `sotrudnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sotrudnik` (
  `ID_sotrudnik` int(11) NOT NULL AUTO_INCREMENT,
  `FIO` varchar(256) NOT NULL,
  `ID_dolzhnost` int(11) NOT NULL,
  `DR` datetime DEFAULT NULL,
  `Adress` varchar(256) DEFAULT NULL,
  `Telefon` varchar(256) DEFAULT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_sotrudnik`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sotrudnik`
--

LOCK TABLES `sotrudnik` WRITE;
/*!40000 ALTER TABLE `sotrudnik` DISABLE KEYS */;
INSERT INTO `sotrudnik` VALUES (1,'Кадилов Вадим Ибрагимович',1,'2018-03-20 00:00:00',NULL,NULL,NULL),(2,'Иванов Олег Никитович',2,NULL,NULL,NULL,NULL),(3,'Мкртчян Олег Митросович',1,'1970-03-05 00:00:00',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sotrudnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sredstvo_izmerenia`
--

DROP TABLE IF EXISTS `sredstvo_izmerenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sredstvo_izmerenia` (
  `ID_sredstvo_izmerenia` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `Tip` varchar(64) DEFAULT NULL,
  `N_zavodskoi` varchar(64) DEFAULT NULL,
  `N_inventarnyi` varchar(64) DEFAULT NULL,
  `Data_vvedeno` datetime DEFAULT NULL,
  `Periodichnost_poverka` int(11) NOT NULL DEFAULT '0',
  `ID_sostoianie` int(11) DEFAULT NULL,
  `Diapazon` varchar(64) DEFAULT NULL,
  `Pogreshnost` varchar(64) DEFAULT NULL,
  `Otvetstvennyi` varchar(45) DEFAULT NULL,
  `Izgotovitel` varchar(256) DEFAULT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_sredstvo_izmerenia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sredstvo_izmerenia`
--

LOCK TABLES `sredstvo_izmerenia` WRITE;
/*!40000 ALTER TABLE `sredstvo_izmerenia` DISABLE KEYS */;
INSERT INTO `sredstvo_izmerenia` VALUES (1,'Вольтметр',NULL,'123','И456','2009-01-28 00:00:00',12,1,NULL,NULL,NULL,NULL,NULL),(2,'Мультиметр',NULL,'234','И234','1998-03-06 00:00:00',12,2,NULL,NULL,NULL,NULL,'Пирмечание Мультиметр');
/*!40000 ALTER TABLE `sredstvo_izmerenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vid_attestacia`
--

DROP TABLE IF EXISTS `vid_attestacia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vid_attestacia` (
  `ID_vid_attestacia` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_vid_attestacia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vid_attestacia`
--

LOCK TABLES `vid_attestacia` WRITE;
/*!40000 ALTER TABLE `vid_attestacia` DISABLE KEYS */;
INSERT INTO `vid_attestacia` VALUES (1,'Очередная',NULL),(2,'Внеочередная','ллщлщ');
/*!40000 ALTER TABLE `vid_attestacia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vid_rabota`
--

DROP TABLE IF EXISTS `vid_rabota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vid_rabota` (
  `ID_vid_rabota` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_vid_rabota`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vid_rabota`
--

LOCK TABLES `vid_rabota` WRITE;
/*!40000 ALTER TABLE `vid_rabota` DISABLE KEYS */;
INSERT INTO `vid_rabota` VALUES (1,'Техническое обслуживание',NULL);
/*!40000 ALTER TABLE `vid_rabota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vybor`
--

DROP TABLE IF EXISTS `vybor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vybor` (
  `ID_vybor` int(11) NOT NULL AUTO_INCREMENT,
  `ID_sotrudnik` int(11) NOT NULL,
  `ID_dolzhnost` int(11) DEFAULT NULL,
  `Vybran` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID_vybor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vybor`
--

LOCK TABLES `vybor` WRITE;
/*!40000 ALTER TABLE `vybor` DISABLE KEYS */;
INSERT INTO `vybor` VALUES (4,1,1,-1),(5,2,2,-1),(6,3,1,0);
/*!40000 ALTER TABLE `vybor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vydacha_zip`
--

DROP TABLE IF EXISTS `vydacha_zip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vydacha_zip` (
  `ID_vydacha_ZIP` int(11) NOT NULL AUTO_INCREMENT,
  `ID_ZIP` int(11) NOT NULL,
  `ID_rabota` int(11) DEFAULT NULL,
  `Data_vydano` datetime DEFAULT NULL,
  `Data_vozvrata` datetime DEFAULT NULL,
  `Otvetstvennyi` varchar(255) DEFAULT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_vydacha_ZIP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vydacha_zip`
--

LOCK TABLES `vydacha_zip` WRITE;
/*!40000 ALTER TABLE `vydacha_zip` DISABLE KEYS */;
/*!40000 ALTER TABLE `vydacha_zip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zachet`
--

DROP TABLE IF EXISTS `zachet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zachet` (
  `ID_zachet` int(11) NOT NULL AUTO_INCREMENT,
  `ID_attestacia` int(11) NOT NULL,
  `ID_sotrudnik` int(11) NOT NULL,
  `ID_rezultat_attestacia` int(11) DEFAULT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_zachet`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zachet`
--

LOCK TABLES `zachet` WRITE;
/*!40000 ALTER TABLE `zachet` DISABLE KEYS */;
INSERT INTO `zachet` VALUES (15,4,2,1,NULL),(16,4,3,1,NULL);
/*!40000 ALTER TABLE `zachet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zip`
--

DROP TABLE IF EXISTS `zip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip` (
  `ID_ZIP` int(11) NOT NULL AUTO_INCREMENT,
  `Naimenovanie` varchar(255) NOT NULL,
  `Data_vvedeno` datetime DEFAULT NULL,
  `Data_spisano` datetime DEFAULT NULL,
  `N_zavodskoi` varchar(255) DEFAULT NULL,
  `N_inventarnyi` varchar(255) DEFAULT NULL,
  `ID_sostoianie` int(11) DEFAULT NULL,
  `Primechanie` longtext,
  PRIMARY KEY (`ID_ZIP`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zip`
--

LOCK TABLES `zip` WRITE;
/*!40000 ALTER TABLE `zip` DISABLE KEYS */;
INSERT INTO `zip` VALUES (1,'Перфоратор','2015-06-10 00:00:00',NULL,'135','И135',1,NULL);
/*!40000 ALTER TABLE `zip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-06 22:09:22
