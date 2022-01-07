-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: s23575
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `KIEROWCA`
--

DROP TABLE IF EXISTS `KIEROWCA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KIEROWCA` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(30) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL,
  `kategoria` char(1) DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL,
  `miasto` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KIEROWCA`
--

LOCK TABLES `KIEROWCA` WRITE;
/*!40000 ALTER TABLE `KIEROWCA` DISABLE KEYS */;
INSERT INTO `KIEROWCA` VALUES (1,'jan','kowal','B',28,'Gdańsk'),(2,'damian','dowbor','B',25,'Przejazdowo'),(3,'justyna','lis','B',30,'Gdynia'),(4,'pawel','cis','C',40,'Gdańsk'),(5,'paulina','wilk','A',50,'Wejcherowo'),(6,'pawel','lis','B',20,'Reda');
/*!40000 ALTER TABLE `KIEROWCA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PASAZER`
--

DROP TABLE IF EXISTS `PASAZER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PASAZER` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(30) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL,
  `id_pojazdu` int(11) DEFAULT NULL,
  `miasto` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PASAZER`
--

LOCK TABLES `PASAZER` WRITE;
/*!40000 ALTER TABLE `PASAZER` DISABLE KEYS */;
INSERT INTO `PASAZER` VALUES (1,'kaziu','kowal',1,'Gdańsk'),(2,'gawel','cis',2,'Przejazdowo'),(3,'Ola','bodo',3,'Gdynia'),(4,'ala','kowalska',1,'Gdańsk'),(5,'pawel','lis',2,'Reda');
/*!40000 ALTER TABLE `PASAZER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POJAZD`
--

DROP TABLE IF EXISTS `POJAZD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `POJAZD` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marka` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `nr_rej` varchar(30) DEFAULT NULL,
  `id_kierowcy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POJAZD`
--

LOCK TABLES `POJAZD` WRITE;
/*!40000 ALTER TABLE `POJAZD` DISABLE KEYS */;
INSERT INTO `POJAZD` VALUES (1,'Vw','polo','GD 1234s',1),(2,'Vw','golf','GD 1884s',2),(3,'audi','q7','GDA 652mn',1),(4,'mazda','cx-3','GA LOPEK',3),(5,'renault','clio','GD 1234s',NULL);
/*!40000 ALTER TABLE `POJAZD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_w`
--

DROP TABLE IF EXISTS `c_w`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_w` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `liczba_szt` tinyint(4) DEFAULT NULL,
  `wizyta_id` int(11) DEFAULT NULL,
  `czesc_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_w`
--

LOCK TABLES `c_w` WRITE;
/*!40000 ALTER TABLE `c_w` DISABLE KEYS */;
INSERT INTO `c_w` VALUES (1,2,4,1),(2,1,5,2),(3,1,6,3),(4,1,7,4),(5,1,8,5);
/*!40000 ALTER TABLE `c_w` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `czesc`
--

DROP TABLE IF EXISTS `czesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `czesc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opis` varchar(255) DEFAULT NULL,
  `cena` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `czesc`
--

LOCK TABLES `czesc` WRITE;
/*!40000 ALTER TABLE `czesc` DISABLE KEYS */;
INSERT INTO `czesc` VALUES (1,'Pasek rozrzadu',400.00),(2,'Wahacz',1200.00),(3,'Blok silnika',8000.00),(4,'Kolo dwumasowe',3000.00),(5,'Olej',100.00);
/*!40000 ALTER TABLE `czesc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klient`
--

DROP TABLE IF EXISTS `klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(40) DEFAULT NULL,
  `pesel` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klient`
--

LOCK TABLES `klient` WRITE;
/*!40000 ALTER TABLE `klient` DISABLE KEYS */;
INSERT INTO `klient` VALUES (1,'Jan','Kowalski','1022345678'),(3,'Andrzej','Nowak','102234567'),(4,'Marek','Iksinski','87120124678'),(5,'Wladyslaw','Nowakowski','8003124623'),(6,'Stanislaw','Bartosz','97040134623');
/*!40000 ALTER TABLE `klient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `czas` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tekst` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marka`
--

DROP TABLE IF EXISTS `marka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marka` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marka`
--

LOCK TABLES `marka` WRITE;
/*!40000 ALTER TABLE `marka` DISABLE KEYS */;
INSERT INTO `marka` VALUES (1,'Fiat'),(2,'Subaru'),(3,'Citroen'),(4,'Opel'),(5,'Audi');
/*!40000 ALTER TABLE `marka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanik`
--

DROP TABLE IF EXISTS `mechanik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mechanik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(40) DEFAULT NULL,
  `pesel` char(11) DEFAULT NULL,
  `nr_konta` varchar(26) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanik`
--

LOCK TABLES `mechanik` WRITE;
/*!40000 ALTER TABLE `mechanik` DISABLE KEYS */;
INSERT INTO `mechanik` VALUES (1,'Iksinski','Igrekowski','1022345678','12 3822 3921 0321 0293'),(2,'Robert','Boguslawski','9003234576','18 0384 3221 2342 2334'),(3,'Andrzej','Stanislawski','87021335476','19 0384 2221 2442 1034'),(4,'Bronislaw','Regulski','96030333276','20 3114 3421 1142 0084'),(5,'Grzegorz','Grzegorzewski','88012398276','10 0031 3221 8742 1184');
/*!40000 ALTER TABLE `mechanik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(20) DEFAULT NULL,
  `marka_id` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'126p',1),(2,'Forester',2),(3,'C3',3),(4,'Corsa',4),(5,'Q3',5);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `samochod`
--

DROP TABLE IF EXISTS `samochod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `samochod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vin` char(17) DEFAULT NULL,
  `data_prod` date DEFAULT NULL,
  `nr_rej` varchar(7) DEFAULT NULL,
  `klient_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samochod`
--

LOCK TABLES `samochod` WRITE;
/*!40000 ALTER TABLE `samochod` DISABLE KEYS */;
INSERT INTO `samochod` VALUES (2,'0123456789ABCDEG','1980-01-01','XR151ER',1,1),(3,'3452561289IKDEGD','1990-03-23','UJ786XS',3,2),(4,'2435564289LKDDGD','1996-03-23','KB865PO',4,3),(5,'1135364485CDKUDD','2001-03-23','PO765SD',5,4),(6,'2133464385DPAUDD','2010-08-10','SW765DA',6,5);
/*!40000 ALTER TABLE `samochod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testowa_klient`
--

DROP TABLE IF EXISTS `testowa_klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testowa_klient` (
  `id` int(11) DEFAULT NULL,
  `nazwisko` varchar(40) DEFAULT NULL,
  `imie2` varchar(5) DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL,
  `pesel` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testowa_klient`
--

LOCK TABLES `testowa_klient` WRITE;
/*!40000 ALTER TABLE `testowa_klient` DISABLE KEYS */;
INSERT INTO `testowa_klient` VALUES (1,'0','Mikoł',20,NULL),(1,'0','Mikoł',20,NULL),(1,'0','Mikoł',20,NULL),(1,'0','Mikoł',20,NULL),(1,'0','Krzyś',25,NULL),(1,'0','Krzyś',25,NULL),(NULL,'0','Krzyś',25,NULL),(1,'0','Krzyś',25,NULL),(NULL,'0',NULL,25,NULL);
/*!40000 ALTER TABLE `testowa_klient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usluga`
--

DROP TABLE IF EXISTS `usluga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usluga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opis` varchar(255) DEFAULT NULL,
  `cena_rbg` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usluga`
--

LOCK TABLES `usluga` WRITE;
/*!40000 ALTER TABLE `usluga` DISABLE KEYS */;
INSERT INTO `usluga` VALUES (1,'Naprawa silnika',100.00),(2,'Naprawa zawieszenia',120.00),(3,'Wymiana silnika',140.00),(4,'Wymiana sprzęgła',140.00),(5,'Przeglad okresowy',100.00);
/*!40000 ALTER TABLE `usluga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w_u`
--

DROP TABLE IF EXISTS `w_u`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `w_u` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `liczba_rbg` decimal(5,1) DEFAULT NULL,
  `wizyta_id` int(11) DEFAULT NULL,
  `usluga_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w_u`
--

LOCK TABLES `w_u` WRITE;
/*!40000 ALTER TABLE `w_u` DISABLE KEYS */;
INSERT INTO `w_u` VALUES (1,23.0,4,1),(2,18.0,5,2),(3,87.0,6,3),(4,67.0,7,4),(5,5.0,8,5);
/*!40000 ALTER TABLE `w_u` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wizyta`
--

DROP TABLE IF EXISTS `wizyta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wizyta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_in` datetime DEFAULT NULL,
  `data_out` datetime DEFAULT NULL,
  `samochod_id` int(11) DEFAULT NULL,
  `mechanik_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wizyta`
--

LOCK TABLES `wizyta` WRITE;
/*!40000 ALTER TABLE `wizyta` DISABLE KEYS */;
INSERT INTO `wizyta` VALUES (4,'2021-01-01 00:00:00','2021-03-03 00:00:00',1,1),(5,'2021-06-02 00:00:00','2021-08-03 00:00:00',2,1),(6,'2021-07-13 00:00:00','2021-08-18 00:00:00',3,2),(7,'2021-08-01 00:00:00','2021-08-18 00:00:00',4,3),(8,'2021-09-01 00:00:00','2021-10-18 00:00:00',5,3);
/*!40000 ALTER TABLE `wizyta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-29 10:02:38
