CREATE DATABASE  IF NOT EXISTS `assignment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `assignment`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: assignment
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '文章標號',
  `title` varchar(45) NOT NULL COMMENT '標題',
  `content` text NOT NULL COMMENT '內容',
  `user_id` int NOT NULL COMMENT '作者標號',
  PRIMARY KEY (`id`),
  KEY `fk_article_user_idx` (`user_id`),
  CONSTRAINT `fk_article_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文章資料表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'用戶體驗設計的重要性','本文探討了在現代數位產品開發中，用戶體驗設計的重要性及其對成功的影響。',1),(2,'如何學習Java程式設計','Java是一種功能強大的程式設計語言。本文介紹了初學者如何有效地學習Java。',1),(3,'AI與未來的科技發展','人工智慧正在迅速改變我們的生活。本文探討了AI技術的現狀及其未來的發展方向。',1),(4,'現代Web開發框架比較','本文比較了幾個主流的現代Web開發框架，包括React、Vue和Angular。',1),(5,'大數據分析的應用','大數據分析在商業中的應用越來越廣泛。本文探討了大數據分析的基本概念及其應用場景。',1),(6,'區塊鏈技術的潛力','區塊鏈技術不僅僅適用於加密貨幣，本文探討了其在其他領域的潛在應用。',1),(7,'雲計算的優勢與挑戰','雲計算技術為企業帶來了諸多好處，但同時也面臨一些挑戰。本文深入分析了雲計算的優勢與挑戰。',1),(8,'網絡安全的基本概念','隨著網絡威脅的增加，了解網絡安全的基本概念變得尤為重要。本文介紹了基本的網絡安全知識。',1),(9,'Python在數據科學中的應用','Python因其簡單易用和強大的數據處理能力而成為數據科學家的首選工具。本文介紹了Python在數據科學中的應用。',1),(10,'敏捷開發方法論','敏捷開發方法論是一種有效的項目管理方法。本文探討了敏捷開發的核心概念和實踐。',1),(11,'深度學習的基礎','本文介紹了深度學習的基本概念和技術，並探討了其在人工智慧中的應用。',2),(12,'物聯網技術概述','物聯網技術正在改變我們的生活。本文介紹了物聯網的基本概念及其應用場景。',2),(13,'數位營銷策略','數位營銷在現代商業中變得越來越重要。本文探討了幾種有效的數位營銷策略。',2),(14,'開源軟體的發展與挑戰','開源軟體已經成為軟體開發的重要部分。本文探討了開源軟體的歷史、發展及其面臨的挑戰。',2),(15,'手機應用開發指南','本文介紹了手機應用開發的基本流程和工具，幫助開發者快速入門。',2),(16,'自動化測試的優勢','自動化測試在軟體開發中具有諸多優勢。本文探討了自動化測試的基本概念和實踐。',2),(17,'區塊鏈與加密貨幣','加密貨幣是區塊鏈技術的一個重要應用。本文探討了加密貨幣的基本概念和技術。',2),(18,'數據庫優化技術','數據庫性能優化是提升應用性能的關鍵。本文介紹了幾種常見的數據庫優化技術。',2),(19,'前端開發工具','本文介紹了幾種常用的前端開發工具及其使用方法，幫助開發者提高開發效率。',2),(20,'虛擬現實技術的應用','虛擬現實技術正在被越來越多的應用場景採用。本文探討了虛擬現實技術的發展及其應用。',2),(21,'人機交互設計的基本原則','人機交互設計是一門重要的學科。本文介紹了人機交互設計的基本原則和實踐。',3),(22,'資料庫設計基礎','良好的資料庫設計是應用開發的基礎。本文探討了資料庫設計的基本原則。',3),(23,'如何提高編程效率','編程效率對於開發者來說至關重要。本文介紹了幾種提高編程效率的方法。',3),(24,'軟體開發中的團隊合作','團隊合作是軟體開發成功的關鍵。本文探討了如何在軟體開發中進行有效的團隊合作。',3),(25,'數據可視化技術','數據可視化有助於更好地理解數據。本文介紹了幾種常見的數據可視化技術。',3),(26,'雲原生應用開發','雲原生應用開發正在成為主流。本文介紹了雲原生應用的基本概念和技術。',3),(27,'機器學習算法簡介','機器學習是人工智慧的重要分支。本文介紹了幾種常見的機器學習算法。',3),(28,'網站性能優化技巧','網站性能優化對於提升用戶體驗至關重要。本文介紹了幾種網站性能優化的技巧。',3),(29,'大數據技術概述','本文介紹了大數據技術的基本概念和發展歷史，並探討了其在現代商業中的應用。',3),(30,'如何有效管理軟體專案','專案管理在軟體開發中非常重要。本文探討了幾種有效的軟體專案管理方法。',3);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'123@gmail.com','A123'),(2,'456@gmail.com','A456'),(3,'qaz29zaq34@gmail.com','123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11 14:42:50
