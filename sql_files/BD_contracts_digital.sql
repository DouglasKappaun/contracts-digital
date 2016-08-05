CREATE DATABASE  IF NOT EXISTS `contracts_digital` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `contracts_digital`;
-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: contracts_digital
-- ------------------------------------------------------
-- Server version	5.5.50-0ubuntu0.14.04.1

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
-- Table structure for table `apartments`
--

DROP TABLE IF EXISTS `apartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartments` (
  `id` char(36) NOT NULL,
  `number` int(11) NOT NULL,
  `utilized` tinyint(1) DEFAULT '0',
  `state` varchar(255) NOT NULL,
  `contract_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contract_id` (`contract_id`),
  CONSTRAINT `apartments_ibfk_1` FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartments`
--

LOCK TABLES `apartments` WRITE;
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts` (
  `id` char(36) NOT NULL,
  `start_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  `value` decimal(10,0) NOT NULL,
  `tenant_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_id` (`tenant_id`),
  CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_contracts`
--

DROP TABLE IF EXISTS `payment_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_contracts` (
  `id` char(36) NOT NULL,
  `paid_out` tinyint(1) NOT NULL,
  `expiration_date` date NOT NULL,
  `contract_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contract_id` (`contract_id`),
  CONSTRAINT `payment_contracts_ibfk_1` FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_contracts`
--

LOCK TABLES `payment_contracts` WRITE;
/*!40000 ALTER TABLE `payment_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_wireless`
--

DROP TABLE IF EXISTS `payment_wireless`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_wireless` (
  `id` char(36) NOT NULL,
  `expiration` date DEFAULT NULL,
  `value` decimal(10,0) DEFAULT NULL,
  `paid_out` tinyint(1) DEFAULT NULL,
  `date_payment` date DEFAULT NULL,
  `type` varchar(255) DEFAULT 'Dinheiro',
  `id_wireless` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_wireless` (`id_wireless`),
  CONSTRAINT `payment_wireless_ibfk_1` FOREIGN KEY (`id_wireless`) REFERENCES `wireless` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_wireless`
--

LOCK TABLES `payment_wireless` WRITE;
/*!40000 ALTER TABLE `payment_wireless` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_wireless` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsibles`
--

DROP TABLE IF EXISTS `responsibles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsibles` (
  `id` char(36) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `nationality` varchar(100) DEFAULT 'Brasileiro',
  `profession` varchar(100) DEFAULT 'Estudante',
  `rg` char(10) NOT NULL,
  `cpf` char(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `n_house` int(11) DEFAULT '0',
  `cep` int(8) DEFAULT '0',
  `state` varchar(255) DEFAULT 'Rio Grande do Sul',
  `phone` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsibles`
--

LOCK TABLES `responsibles` WRITE;
/*!40000 ALTER TABLE `responsibles` DISABLE KEYS */;
/*!40000 ALTER TABLE `responsibles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenants` (
  `id` char(36) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `nationality` varchar(100) DEFAULT 'Brasileiro',
  `profession` varchar(100) DEFAULT 'Estudante',
  `rg` char(10) NOT NULL,
  `cpf` char(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `n_house` int(11) DEFAULT '0',
  `cep` int(8) DEFAULT '0',
  `state` varchar(255) DEFAULT 'Rio Grande do Sul',
  `phone` int(11) NOT NULL,
  `responsible_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `responsible_id` (`responsible_id`),
  CONSTRAINT `tenants_ibfk_1` FOREIGN KEY (`responsible_id`) REFERENCES `responsibles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wireless`
--

DROP TABLE IF EXISTS `wireless`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wireless` (
  `id` char(36) NOT NULL,
  `device` varchar(100) NOT NULL,
  `mac` char(12) NOT NULL,
  `ip` char(13) DEFAULT '000.000.0.000',
  `active` tinyint(1) DEFAULT '1',
  `date_register` datetime DEFAULT NULL,
  `date_renovation` datetime DEFAULT NULL,
  `id_tenant` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tenant` (`id_tenant`),
  CONSTRAINT `wireless_ibfk_1` FOREIGN KEY (`id_tenant`) REFERENCES `tenants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wireless`
--

LOCK TABLES `wireless` WRITE;
/*!40000 ALTER TABLE `wireless` DISABLE KEYS */;
/*!40000 ALTER TABLE `wireless` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-04 22:54:01
