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
-- Table structure for table `adres_hurtownik`
--

DROP TABLE IF EXISTS `adres_hurtownik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adres_hurtownik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ulica` varchar(60) DEFAULT NULL,
  `nr_domu` smallint(6) NOT NULL,
  `nr_mieszkania` smallint(6) DEFAULT NULL,
  `kod_pocztowy` char(6) NOT NULL,
  `miejscowosc` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adres_hurtownik`
--

LOCK TABLES `adres_hurtownik` WRITE;
/*!40000 ALTER TABLE `adres_hurtownik` DISABLE KEYS */;
INSERT INTO `adres_hurtownik` VALUES (1,'Kujawska',22,24,'06-856','Olsztyn'),(2,'Leśna',6,64,'80-314','Szczecin'),(3,'Długa',18,85,'14-259','Opole'),(4,'Miodowa',56,17,'74-310','Piotrków Trybunalski'),(5,'Klasztorna',42,57,'22-435','Łomża');
/*!40000 ALTER TABLE `adres_hurtownik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adres_klient`
--

DROP TABLE IF EXISTS `adres_klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adres_klient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ulica` varchar(60) DEFAULT NULL,
  `nr_domu` smallint(6) NOT NULL,
  `nr_mieszkania` smallint(6) DEFAULT NULL,
  `kod_pocztowy` char(6) NOT NULL,
  `miejscowosc` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adres_klient`
--

LOCK TABLES `adres_klient` WRITE;
/*!40000 ALTER TABLE `adres_klient` DISABLE KEYS */;
INSERT INTO `adres_klient` VALUES (1,'Matejki',67,87,'46-559','Gdańsk'),(2,'Bema',48,62,'94-293','Tarnobrzeg'),(3,'Orki',85,5,'17-289','Konin'),(4,'Piastowska',32,61,'67-390','Wałbrzych'),(5,'Jarzębinowa',50,21,'27-801','Częstochowa'),(6,'Widok',20,23,'38-208','Płock'),(7,'Orzeszkowej',24,95,'02-969','Jelenia Góra'),(8,'Herbaciana',4,73,'83-488','Gdańsk'),(9,'Kadetów',87,76,'73-781','Katowice'),(10,'Sosnowa',81,57,'67-970','Zabrze'),(11,'Modra',94,78,'81-113','Sosnowiec'),(12,'Kujawska',12,92,'87-486','Kielce'),(13,'Słowiańska',86,63,'20-416','Nowy Sącz'),(14,'PCK',8,79,'59-372','Sosnowiec'),(15,'Struga',73,42,'44-655','Kielce');
/*!40000 ALTER TABLE `adres_klient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(30) DEFAULT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `data_ur` smallint(6) DEFAULT NULL,
  `data_sm` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Fiodor','Dostojewski',1821,1881),(2,'Jacek','Dukaj',1974,NULL),(3,'Joseph','Conrad',1857,1924),(4,'Andrzej','Stasiuk',1960,NULL),(5,'Władysław','Reymont',1867,1925),(6,'Terry','Pratchett',1948,2015),(7,'Herman','Melville',1819,1891),(8,'Giuseppe','Tomasi di Lampedusa',1896,1957),(9,'James','Joyce',1882,1941),(10,'Michaił','Bułhakow',1891,1940),(11,'Szczepan','Twardoch',1979,NULL),(12,'Marcel','Proust',1871,1922),(13,'Olga','Tokarczuk',1962,NULL),(14,'Marek','Hłasko',1934,1969),(15,'Samuel','Beckett',1906,1989);
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hurtownik`
--

DROP TABLE IF EXISTS `hurtownik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hurtownik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firma` varchar(60) NOT NULL,
  `nip` char(10) NOT NULL,
  `rachunek` char(26) NOT NULL,
  `telefon` varchar(9) NOT NULL,
  `email` varchar(45) NOT NULL,
  `adres_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adres_id` (`adres_id`),
  CONSTRAINT `hurtownik_ibfk_1` FOREIGN KEY (`adres_id`) REFERENCES `adres_hurtownik` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hurtownik`
--

LOCK TABLES `hurtownik` WRITE;
/*!40000 ALTER TABLE `hurtownik` DISABLE KEYS */;
INSERT INTO `hurtownik` VALUES (1,'Maria Górecka Hurtownia Książek','6112801659','59195000726373426397822790','891907963','maria_gorecka@icloud.edu',1),(2,'Marika Bednarczyk Hurtownik','7273023162','21105073179148959773683270','838697752','marika_bednarczyk@aol.com',2),(3,'Sprzedaż Hurtowa Książek Marcin Stasiak','8573657210','46101048778583610156774097','671424076','marcin_stasiak@hotmail.net',3),(4,'Działalność Handlowa Aurelia Chmielewska','4292232652','89103014941718207129926749','826257554','aurelia_chmielewska@aol.edu',4),(5,'Marzanna Piątek Hurt i Detal','4879109760','76105012698281215798589496','840788726','marzanna_piatek@hotmail.com',5);
/*!40000 ALTER TABLE `hurtownik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_a`
--

DROP TABLE IF EXISTS `k_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_a` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ksiazka_id` int(11) NOT NULL,
  `autor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ksiazka_id` (`ksiazka_id`),
  KEY `autor_id` (`autor_id`),
  CONSTRAINT `k_a_ibfk_1` FOREIGN KEY (`ksiazka_id`) REFERENCES `ksiazka` (`id`),
  CONSTRAINT `k_a_ibfk_2` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_a`
--

LOCK TABLES `k_a` WRITE;
/*!40000 ALTER TABLE `k_a` DISABLE KEYS */;
INSERT INTO `k_a` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,3),(6,6,3),(7,7,3),(8,8,4),(9,9,5),(10,10,6),(11,11,7),(12,12,8),(13,13,9),(14,14,10),(15,15,11),(16,16,11),(17,17,12),(18,18,13),(19,19,14),(20,20,15),(21,21,2);
/*!40000 ALTER TABLE `k_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klient`
--

DROP TABLE IF EXISTS `klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `firma` varchar(60) DEFAULT NULL,
  `nip` char(10) DEFAULT NULL,
  `login` varchar(30) NOT NULL,
  `haslo` varchar(30) NOT NULL,
  `telefon` varchar(9) NOT NULL,
  `email` varchar(45) NOT NULL,
  `adres_id` int(11) NOT NULL,
  `potwierdzony` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adres_id` (`adres_id`),
  CONSTRAINT `klient_ibfk_1` FOREIGN KEY (`adres_id`) REFERENCES `adres_klient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klient`
--

LOCK TABLES `klient` WRITE;
/*!40000 ALTER TABLE `klient` DISABLE KEYS */;
INSERT INTO `klient` VALUES (1,'Nataniel','Jankowski',NULL,NULL,'nataniel_517','!GzMj)jf','966583298','nataniel_517@aol.com',1,1),(2,'Teofila','Wiśniewska',NULL,NULL,'teofila_36','m^u1jiTT,:','986321064','teofila_36@aol.com',2,1),(3,'Oleksandr','Nowicki','Oleksandr Nowicki działalność gospodarcza','6125294880','oleksandr_880','-]:7n[','725380912','oleksandr_880@google.edu',3,1),(4,'Kinga','Kopeć',NULL,NULL,'kinga_300','h.ZYscg','837725807','kinga_300@icloud.edu',4,1),(5,'Marianna','Sosnowska',NULL,NULL,'marianna_704','8kcdbjQ','758616180','marianna_704@aol.com',5,1),(6,'Ludmiła','Stefańska','Ludmiła Stefańska działalność gospodarcza','3598813690','ludmila_337','?S.2gq<','999276968','ludmila_337@hotmail.net',6,1),(7,'Bartłomiej','Sikora',NULL,NULL,'bartlomiej_645','z8Tlx&','661536237','bartlomiej_645@aol.edu',7,1),(8,'Kuba','Krajewski',NULL,NULL,'kuba_465','bXvZ+ew','789299849','kuba_465@hotmail.com',8,1),(9,'Melania','Pawlik','Melania Pawlik działalność gospodarcza','3583693699','melania_955','ft3a,`2Oz','829293828','melania_955@google.edu',9,1),(10,'Henryk','Barański','Henryk Barański działalność gospodarcza','6223500955','henryk_255','WyRZpkOe9','629600387','henryk_255@protonmail.edu',10,1),(11,'Gertruda','Sikorska',NULL,NULL,'gertruda_512','cU)B6q','718180772','gertruda_512@yahoo.couk',11,1),(12,'Mirosław','Nowak',NULL,NULL,'mirosław_926','6BM*?>X','812791477','mirosław_926@google.edu',12,1),(13,'Maksym','Krupa','Maksym Krupa działalność gospodarcza','9555005940','maksym_207','.rP_`]','671734606','maksym_207@aol.net',13,1),(14,'Marlena','Milewska','Marlena Milewska działalność gospodarcza','9588573572','marlena_256','A8ilLm','682692100','marlena_256@icloud.ca',14,0),(15,'Jadwiga','Pawlak',NULL,NULL,'jadwiga_346','_r9Qt`','903414733','jadwiga_346@protonmail.net',15,0);
/*!40000 ALTER TABLE `klient` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`s23575`@`localhost`*/ /*!50003 trigger t_klient_create after insert on klient
    for each row
    begin
    insert into log (czas, zdarzenie, komentarz) values (current_timestamp,concat('Do tabeli "klient" dodano wiersz o numerze (id): ',new.id),concat('Nowy klient zarejestrował się w księgrani: ',new.imie,' ',new.nazwisko));
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ksiazka`
--

DROP TABLE IF EXISTS `ksiazka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ksiazka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tytul` varchar(255) NOT NULL,
  `tytul_oryg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ksiazka`
--

LOCK TABLES `ksiazka` WRITE;
/*!40000 ALTER TABLE `ksiazka` DISABLE KEYS */;
INSERT INTO `ksiazka` VALUES (1,'Zbrodnia i kara','Priestuplenije i nakazanije'),(2,'Bracia Karamazow','Bratya Karamazovy'),(3,'Katedra',NULL),(4,'Imperium chmur',NULL),(5,'Jądro ciemności','Heart of Darkness'),(6,'Serce ciemności','Heart of Darkness'),(7,'Lord Jim','Lord Jim'),(8,'Jadąc do Babadag',NULL),(9,'Ziemia obiecana',NULL),(10,'Kolor magii','The Colour of Magic'),(11,'Moby Dick czyli biały wieloryb','Moby-Dick; or, The Whale'),(12,'Gepard','Il Gattopardo'),(13,'Ulisses','Ulysses'),(14,'Mistrz i Małgorzata','Mastier i Margarita '),(15,'Król',NULL),(16,'Królestwo',NULL),(17,'W stronę Swanna','Du côté de chez Swann'),(18,'Księgi Jakubowe',NULL),(19,'Pierwszy krok w chmurach. Opowiadania',NULL),(20,'Utwory wybrane. Dramaty, słuchowiska, scenariusze',NULL),(21,'Inne pieśni',NULL);
/*!40000 ALTER TABLE `ksiazka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `czas` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zdarzenie` varchar(255) DEFAULT NULL,
  `komentarz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES ('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 1','Nowy klient zarejestrował się w księgrani: Nataniel Jankowski'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 2','Nowy klient zarejestrował się w księgrani: Teofila Wiśniewska'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 3','Nowy klient zarejestrował się w księgrani: Oleksandr Nowicki'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 4','Nowy klient zarejestrował się w księgrani: Kinga Kopeć'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 5','Nowy klient zarejestrował się w księgrani: Marianna Sosnowska'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 6','Nowy klient zarejestrował się w księgrani: Ludmiła Stefańska'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 7','Nowy klient zarejestrował się w księgrani: Bartłomiej Sikora'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 8','Nowy klient zarejestrował się w księgrani: Kuba Krajewski'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 9','Nowy klient zarejestrował się w księgrani: Melania Pawlik'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 10','Nowy klient zarejestrował się w księgrani: Henryk Barański'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 11','Nowy klient zarejestrował się w księgrani: Gertruda Sikorska'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 12','Nowy klient zarejestrował się w księgrani: Mirosław Nowak'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 13','Nowy klient zarejestrował się w księgrani: Maksym Krupa'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 14','Nowy klient zarejestrował się w księgrani: Marlena Milewska'),('2022-01-07 20:09:43','Do tabeli \"klient\" dodano wiersz o numerze (id): 15','Nowy klient zarejestrował się w księgrani: Jadwiga Pawlak');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sposob_dostawy`
--

DROP TABLE IF EXISTS `sposob_dostawy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sposob_dostawy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` enum('kurier','odbior','paczkomat') NOT NULL,
  `czas` tinyint(4) NOT NULL,
  `cena` float(4,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sposob_dostawy`
--

LOCK TABLES `sposob_dostawy` WRITE;
/*!40000 ALTER TABLE `sposob_dostawy` DISABLE KEYS */;
INSERT INTO `sposob_dostawy` VALUES (1,'kurier',2,15.00),(2,'odbior',1,0.00),(3,'paczkomat',3,9.90);
/*!40000 ALTER TABLE `sposob_dostawy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tlumacz`
--

DROP TABLE IF EXISTS `tlumacz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tlumacz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(30) DEFAULT NULL,
  `nazwisko` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tlumacz`
--

LOCK TABLES `tlumacz` WRITE;
/*!40000 ALTER TABLE `tlumacz` DISABLE KEYS */;
INSERT INTO `tlumacz` VALUES (1,'J.P.','Zajączkowski'),(2,'Czesław','Jastrzębiec-Kozłowski'),(3,'Adam','Pomorski'),(4,'Magda ','Heydel'),(5,'Jacek','Dukaj'),(6,'Michał','Kłobukowski'),(7,'Piotr W.','Cholewa'),(8,'Bronisław ','Zieliński'),(9,'Stanisław','Kasprzysiak'),(10,'Maciej','Słomczyński'),(11,'Maciej','Świerkocki'),(12,'Irena','Lewandowska'),(13,'Witold','Dąbrowski'),(14,'Krystyna ','Rodowska'),(15,'Antoni','Libera');
/*!40000 ALTER TABLE `tlumacz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w_h`
--

DROP TABLE IF EXISTS `w_h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `w_h` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wydanie_id` int(11) NOT NULL,
  `hurtownik_id` int(11) NOT NULL,
  `liczba_dostep` smallint(6) NOT NULL,
  `czas` tinyint(4) NOT NULL,
  `koszt` float(4,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wydanie_id` (`wydanie_id`),
  KEY `hurtownik_id` (`hurtownik_id`),
  CONSTRAINT `w_h_ibfk_1` FOREIGN KEY (`wydanie_id`) REFERENCES `wydanie` (`id`),
  CONSTRAINT `w_h_ibfk_2` FOREIGN KEY (`hurtownik_id`) REFERENCES `hurtownik` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w_h`
--

LOCK TABLES `w_h` WRITE;
/*!40000 ALTER TABLE `w_h` DISABLE KEYS */;
INSERT INTO `w_h` VALUES (1,1,5,86,6,36.07),(2,1,1,33,3,39.08),(3,2,2,77,3,14.39),(4,2,5,14,5,16.97),(5,2,3,7,2,15.00),(6,3,5,50,5,41.75),(7,3,1,84,6,48.36),(8,4,2,4,6,19.03),(9,4,5,46,2,18.10),(10,4,1,70,2,15.74),(11,5,3,60,5,36.68),(12,5,5,94,2,31.11),(13,5,4,82,6,44.30),(14,6,1,11,2,36.55),(15,6,4,92,6,32.87),(16,6,3,72,2,36.98),(17,7,5,67,6,25.60),(18,7,2,83,2,16.95),(19,7,1,95,6,22.17),(20,8,1,87,4,42.15),(21,9,2,65,5,24.26),(22,9,4,27,2,28.72),(23,9,1,62,6,24.36),(24,10,5,26,2,22.43),(25,10,1,34,6,35.65),(26,11,2,12,2,28.79),(27,11,4,65,6,30.27),(28,11,5,56,6,32.89),(29,12,2,40,4,21.21),(30,12,1,22,5,21.54),(31,12,3,19,4,20.59),(32,13,1,42,5,16.08),(33,13,4,90,3,23.83),(34,13,2,5,2,16.35),(35,14,2,29,3,53.27),(36,14,3,10,3,37.29),(37,14,5,28,3,32.19),(38,15,4,21,2,32.23),(39,15,3,65,6,31.55),(40,16,5,31,4,37.68),(41,16,2,15,4,53.47),(42,17,4,48,6,48.95),(43,17,2,54,2,45.18),(44,17,5,64,3,40.36),(45,18,2,16,3,52.30),(46,18,4,2,6,36.49),(47,18,1,81,3,41.32),(48,19,2,64,3,32.43),(49,19,4,14,4,39.28),(50,19,5,48,6,27.69),(51,20,1,32,5,30.28),(52,20,3,33,3,34.74),(53,20,4,44,4,23.58),(54,21,3,97,4,29.38),(55,21,1,28,4,34.35),(56,21,4,76,6,29.07),(57,22,5,22,6,45.79),(58,23,3,22,5,70.01),(59,23,2,5,3,72.16),(60,24,3,87,3,18.50),(61,24,4,48,2,22.62),(62,25,4,46,6,37.46),(63,25,1,53,4,42.64),(64,25,2,40,5,34.53);
/*!40000 ALTER TABLE `w_h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w_t`
--

DROP TABLE IF EXISTS `w_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `w_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wydanie_id` int(11) NOT NULL,
  `tlumacz_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wydanie_id` (`wydanie_id`),
  KEY `tlumacz_id` (`tlumacz_id`),
  CONSTRAINT `w_t_ibfk_1` FOREIGN KEY (`wydanie_id`) REFERENCES `wydanie` (`id`),
  CONSTRAINT `w_t_ibfk_2` FOREIGN KEY (`tlumacz_id`) REFERENCES `tlumacz` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w_t`
--

LOCK TABLES `w_t` WRITE;
/*!40000 ALTER TABLE `w_t` DISABLE KEYS */;
INSERT INTO `w_t` VALUES (1,1,1),(2,2,2),(3,3,3),(4,6,4),(5,7,5),(6,8,6),(7,12,7),(8,13,7),(9,14,8),(10,15,9),(11,16,10),(12,17,11),(13,18,12),(14,18,13),(15,22,14),(16,25,15);
/*!40000 ALTER TABLE `w_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w_z`
--

DROP TABLE IF EXISTS `w_z`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `w_z` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wydanie_id` int(11) NOT NULL,
  `zamowienie_id` int(11) NOT NULL,
  `liczba_zamow` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wydanie_id` (`wydanie_id`),
  KEY `zamowienie_id` (`zamowienie_id`),
  CONSTRAINT `w_z_ibfk_1` FOREIGN KEY (`wydanie_id`) REFERENCES `wydanie` (`id`),
  CONSTRAINT `w_z_ibfk_2` FOREIGN KEY (`zamowienie_id`) REFERENCES `zamowienie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w_z`
--

LOCK TABLES `w_z` WRITE;
/*!40000 ALTER TABLE `w_z` DISABLE KEYS */;
INSERT INTO `w_z` VALUES (1,10,1,1),(2,10,2,2),(3,18,2,1),(4,12,3,1),(5,14,3,2),(6,2,3,1),(7,20,4,2),(8,12,4,1),(9,24,4,2),(10,5,4,1),(11,17,5,1),(12,16,6,2),(13,11,6,1),(14,19,7,2),(15,23,7,2),(16,5,7,2),(17,25,8,1),(18,17,8,2),(19,20,8,1),(20,5,8,2),(21,19,9,1),(22,2,10,1),(23,19,10,2),(24,2,11,1),(25,17,11,2),(26,14,11,2),(27,15,12,1),(28,9,12,2),(29,11,12,1),(30,13,12,1),(31,10,13,1),(32,19,14,2),(33,14,14,1),(34,11,15,1),(35,1,15,2),(36,18,15,1),(37,20,16,2),(38,23,16,1),(39,13,16,1),(40,11,16,2),(41,13,17,1),(42,3,18,2),(43,11,18,1),(44,8,19,2),(45,9,19,1),(46,24,19,2),(47,9,20,2),(48,21,20,1),(49,15,20,1),(50,1,20,1);
/*!40000 ALTER TABLE `w_z` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wydanie`
--

DROP TABLE IF EXISTS `wydanie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wydanie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rok` year(4) DEFAULT NULL,
  `numer` tinyint(4) DEFAULT NULL,
  `isbn` varchar(17) NOT NULL,
  `oprawa` enum('miekka','twarda') NOT NULL,
  `cena` float(4,2) NOT NULL,
  `wydawnictwo` varchar(45) NOT NULL,
  `ksiazka_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ksiazka_id` (`ksiazka_id`),
  CONSTRAINT `wydanie_ibfk_1` FOREIGN KEY (`ksiazka_id`) REFERENCES `ksiazka` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wydanie`
--

LOCK TABLES `wydanie` WRITE;
/*!40000 ALTER TABLE `wydanie` DISABLE KEYS */;
INSERT INTO `wydanie` VALUES (1,2015,1,'978-83-777-9221-6','twarda',49.90,'Znak',1),(2,2019,NULL,'978-83-280-6779-0','miekka',24.99,'Wilga',1),(3,2004,1,'978-83-240-1263-3','twarda',65.90,'Znak',2),(4,2017,NULL,'978-83-08-07320-9','miekka',24.90,'Wydawnictwo Literackie',3),(5,2020,1,'978-83-08-07471-8','twarda',49.90,'Wydawnictwo Literackie',4),(6,2021,2,'978-83-240-6405-2','twarda',39.99,'Znak',5),(7,2017,1,'978-83-08-06417-7','twarda',28.00,'Wydawnictwo Literackie',6),(8,2021,2,'978-83-240-6401-4','twarda',49.99,'Znak',7),(9,2021,5,'978-83-8191-140-5','twarda',44.90,'Czarne',8),(10,2008,1,'978-83-8739-197-2','twarda',39.00,'Czarne',8),(11,2014,NULL,'978-83-6105-669-0','twarda',35.00,'Ossolineum',9),(12,2021,NULL,'978-83-8234-081-5','miekka',35.00,'Prószyński i s-ka',10),(13,2005,NULL,'978-83-7469-097-3','miekka',29.90,'Prószyński i s-ka',10),(14,2018,NULL,'978-83-06-03500-1','twarda',59.00,'Państwowy Instytut Wydawniczy',11),(15,2019,NULL,'978-83-950-4558-5','miekka',35.00,'Czuły Barbarzyńca',12),(16,2012,NULL,'978-83-240-1879-6','twarda',64.90,'Znak',13),(17,2021,NULL,'978-83-665-1142-2','twarda',69.90,'Officyna',13),(18,2018,NULL,'978-83-06-03527-8','twarda',59.00,'Państwowy Instytut Wydawniczy',14),(19,2016,1,'978-83-080-6224-1','miekka',44.90,'Znak',15),(20,2020,2,'978-83-080-7095-6','miekka',44.90,'Wydawnictwo Literackie',15),(21,2018,1,'978-83-080-6800-7','miekka',44.90,'Znak',16),(22,2018,NULL,'978-83-624-0979-2','twarda',49.90,'Officyna',17),(23,2021,2,'978-83-080-7328-5','twarda',74.90,'Wydawnictwo Literackie',18),(24,2019,NULL,'978-83-244-1027-9','miekka',29.90,'Iskry',19),(25,2017,NULL,'978-83-06-03406-6','twarda',59.00,'Państwowy Instytut Wydawniczy',20);
/*!40000 ALTER TABLE `wydanie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zamowienie`
--

DROP TABLE IF EXISTS `zamowienie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zamowienie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_zlozenia` datetime NOT NULL,
  `data_platnosci` date DEFAULT NULL,
  `data_wysylki` date DEFAULT NULL,
  `data_doreczenia` date DEFAULT NULL,
  `platnosc` enum('karta','przelew','pobranie') NOT NULL,
  `sposob_dostawy_id` int(11) NOT NULL,
  `klient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sposob_dostawy_id` (`sposob_dostawy_id`),
  KEY `klient_id` (`klient_id`),
  CONSTRAINT `zamowienie_ibfk_1` FOREIGN KEY (`sposob_dostawy_id`) REFERENCES `sposob_dostawy` (`id`),
  CONSTRAINT `zamowienie_ibfk_2` FOREIGN KEY (`klient_id`) REFERENCES `klient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zamowienie`
--

LOCK TABLES `zamowienie` WRITE;
/*!40000 ALTER TABLE `zamowienie` DISABLE KEYS */;
INSERT INTO `zamowienie` VALUES (1,'2021-12-30 22:27:37','2022-01-02','2022-01-02','2022-01-05','przelew',3,7),(2,'2021-12-31 18:25:39','2022-01-07','2022-01-07','2022-01-07','pobranie',2,7),(3,'2021-12-30 09:05:08','2022-01-04','2022-01-06',NULL,'przelew',3,13),(4,'2021-12-31 17:25:19','2022-01-06','2022-01-06','2022-01-06','pobranie',2,2),(5,'2022-01-03 19:12:30',NULL,'2022-01-07',NULL,'pobranie',1,13),(6,'2022-01-03 19:16:59','2022-01-03','2022-01-06','2022-01-07','karta',2,12),(7,'2022-01-03 23:36:50','2022-01-08','2022-01-08','2022-01-08','pobranie',2,9),(8,'2021-12-28 19:16:12','2021-12-30','2022-01-04','2022-01-08','przelew',3,9),(9,'2021-12-30 13:58:58',NULL,NULL,NULL,'przelew',1,7),(10,'2021-12-28 08:08:13','2022-01-03','2022-01-03','2022-01-05','przelew',1,1),(11,'2021-12-29 14:53:51','2021-12-29','2022-01-04',NULL,'karta',2,3),(12,'2022-01-02 16:35:13','2022-01-02',NULL,NULL,'karta',1,7),(13,'2021-12-31 08:09:11','2022-01-08','2022-01-05','2022-01-08','pobranie',3,5),(14,'2022-01-03 11:03:50',NULL,'2022-01-06',NULL,'pobranie',3,7),(15,'2022-01-02 15:22:19','2022-01-03',NULL,NULL,'przelew',1,8),(16,'2022-01-01 23:21:53',NULL,NULL,NULL,'przelew',3,4),(17,'2021-12-29 14:23:26','2021-12-29','2022-01-02','2022-01-05','karta',3,5),(18,'2022-01-01 16:28:03',NULL,'2022-01-07',NULL,'pobranie',1,10),(19,'2021-12-28 13:49:55','2021-12-30','2022-01-01','2022-01-04','przelew',2,2),(20,'2021-12-31 08:57:18','2021-12-31','2022-01-07',NULL,'karta',3,4);
/*!40000 ALTER TABLE `zamowienie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07 21:19:25
