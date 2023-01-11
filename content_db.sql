-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: fnaf
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `animatronics`
--

DROP TABLE IF EXISTS `animatronics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animatronics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) CHARACTER SET cp1251 COLLATE cp1251_bin DEFAULT NULL,
  `nick` varchar(300) CHARACTER SET cp1251 COLLATE cp1251_bin DEFAULT NULL,
  `avatar` varchar(300) CHARACTER SET cp1251 COLLATE cp1251_general_ci DEFAULT NULL,
  `about` varchar(2000) CHARACTER SET cp1251 COLLATE cp1251_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animatronics`
--

LOCK TABLES `animatronics` WRITE;
/*!40000 ALTER TABLE `animatronics` DISABLE KEYS */;
INSERT INTO `animatronics` VALUES (1,'Фредди','freddy','/images/Freddy.jpg','Аниматроник Фредди Фазбер представляет собой антропоморфного медведя грязного светло-коричневого с рыжеватым оттенком окраса. Его обшивка сделана из плюша, покрытого небольшими, но вполне заметными пятнами и царапинами. Подобно другим членам классического трио, Фредди обладает довольно плотным телосложением. Туловище Фредди по форме напоминает грушу. Аниматроник обладает внушительным круглым животом со светло-коричневым пятном посередине.'),(2,'Бонни','bonnie','/images/Bonnie.jpg','Бонни имеет толстые конечности с плотно прилегающими накладками на плечах и коленях. У него большие цельные ладони. Как и у других Классических аниматроников, на руках Бонни всего по 4 пальца, а на ногах — 3. Туловище кролика напоминает по форме грушу с внушительным круглым животом светло-сиреневого цвета со светлым пятном.'),(3,'Чика','chica','/images/Chica.jpg','Чика является антропоморфным аниматроником-курицей жёлтого окраса. Корпус персонажа состоит из матовой тканевой обшивки, покрытой тёмными запятнанными участками. Чика имеет округлую голову, формой напоминающую яблоко. На её макушке установлен пучок из тр?х небольших, составленных кольцом, каплевидных, расширенных к верху, фрагментов, имитирующие перья.'),(4,'Фокси','foxy','/images/Foxy.png','Фокси представляет из себя антропоморфного лиса-пирата грязно-красного окраса. Он обладает стройным телосложением и средним ростом. Корпус Фокси сделан из потрёпанного плюша, в дырах которого виден эндоскелет. Фокси имеет тонкие конечности с плотно прилегающими накладками на плечах. У него суставчатые металлические ладони. Как и у других Классических аниматроников, на руках Фокси всего по 4 пальца, на голых ногах — только 2. Туловище лиса вытянутое, c животом светло-рыжего цвета.');
/*!40000 ALTER TABLE `animatronics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('07DDh106CDnZD9SbXn8_nKUbczisrmb_',1673459207,'{\"cookie\":{\"originalMaxAge\":60000,\"expires\":\"2023-01-11T17:46:46.668Z\",\"httpOnly\":true,\"path\":\"/\"},\"counter\":20,\"greeting\":\"Hi!!!\",\"user\":3}'),('1QpbI69EZUUi_ekBK2eAW5cTpoHERN9B',1673458269,'{\"cookie\":{\"originalMaxAge\":60000,\"expires\":\"2023-01-11T17:31:09.063Z\",\"httpOnly\":true,\"path\":\"/\"},\"counter\":6,\"greeting\":\"Hi!!!\"}'),('BlX0xqxgco32VlhNYLc-TzNfbbLVN6SZ',1673459072,'{\"cookie\":{\"originalMaxAge\":59996,\"expires\":\"2023-01-11T17:44:31.699Z\",\"httpOnly\":true,\"path\":\"/\"},\"counter\":25,\"greeting\":\"Hi!!!\",\"user\":1}'),('CpUaIRFXY2VBCvwy7GA43eWRN3cc164H',1673458757,'{\"cookie\":{\"originalMaxAge\":60000,\"expires\":\"2023-01-11T17:39:17.219Z\",\"httpOnly\":true,\"path\":\"/\"},\"counter\":11,\"greeting\":\"Hi!!!\",\"user\":1}'),('T5JChwshvBfMDtAD2-f2BXXCk3b5KEZa',1673458926,'{\"cookie\":{\"originalMaxAge\":59999,\"expires\":\"2023-01-11T17:42:06.261Z\",\"httpOnly\":true,\"path\":\"/\"},\"counter\":19,\"greeting\":\"Hi!!!\",\"user\":1}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin'),(2,'admin','admin'),(3,'dima','qwerty');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fnaf'
--

--
-- Dumping routines for database 'fnaf'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-11 21:32:29