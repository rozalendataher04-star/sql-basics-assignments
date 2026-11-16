-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: sql practice
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `CustomerID` varchar(10) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `OrderDate` date NOT NULL,
  `ShipDate` date DEFAULT NULL,
  `Quantity` int NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL,
  `Sales` decimal(10,2) NOT NULL,
  `Discount` decimal(4,2) DEFAULT NULL,
  `Profit` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  CONSTRAINT `orders_chk_1` CHECK ((`Quantity` > 0)),
  CONSTRAINT `orders_chk_2` CHECK ((`UnitPrice` >= 0)),
  CONSTRAINT `orders_chk_3` CHECK ((`Sales` >= 0)),
  CONSTRAINT `orders_chk_4` CHECK ((`Discount` between 0 and 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'c101','office chair','furniture','usa','2023-01-15','2023-01-18',2,250.00,500.00,0.10,80.00),(2,'c102','gaming chair','furniture','usa','2023-03-10','2023-03-12',1,700.00,700.00,0.20,120.00),(3,'a103','laptop','technology','germany','2023-05-05','2023-05-08',3,400.00,1200.00,0.15,250.00),(4,'b104','desk lamp','office supplies','uk','2022-11-20','2022-11-25',5,40.00,200.00,0.05,30.00),(5,'c105','tablet','technology','usa','2023-07-01',NULL,1,350.00,350.00,NULL,-20.00),(6,'d106','bookshelf','furniture','canada','2024-01-12','2024-01-15',4,150.00,600.00,0.25,90.00),(7,'c107','monitor','technology','usa','2023-09-09','2023-09-14',2,275.00,550.00,0.00,60.00),(8,'e108','printer','technology','france','2023-04-18',NULL,1,180.00,180.00,0.10,-15.00),(9,'c109','wooden chair','furniture','uk','2023-12-05','2023-12-09',6,120.00,720.00,0.30,140.00),(10,'f110','mouse','technology','germany','2023-06-22','2023-06-24',10,25.00,250.00,0.05,40.00),(11,'c111','conference chair','furniture','usa','2022-08-14','2022-08-19',3,320.00,960.00,0.10,-50.00),(12,'g112','phone','technology','india','2023-02-11','2023-02-15',2,500.00,1000.00,0.20,200.00),(13,'h113','binder','office supplies','usa','2023-10-01','2023-10-03',1,15.00,15.00,0.00,5.00),(14,'c114','standing desk','furniture','germany','2023-11-19','2023-11-22',2,650.00,1300.00,0.10,300.00),(15,'i115','headphones','technology','usa','2024-02-05','2024-02-07',4,80.00,320.00,0.05,45.00),(16,'c116','study chair','furniture','usa','2023-08-08',NULL,5,210.00,1050.00,0.40,180.00),(17,'j117','router','technology','uk','2023-03-30','2023-04-02',2,150.00,300.00,NULL,-10.00),(18,'c118','filing cabinet','furniture','canada','2023-05-21','2023-05-25',1,450.00,450.00,0.20,70.00),(19,'k119','desk chair pro','furniture','usa','2023-06-01','2023-06-05',2,480.00,960.00,0.10,150.00),(20,'c120','server rack','technology','germany','2023-07-17','2023-07-20',1,1100.00,1100.00,0.05,220.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-15 19:23:18
