-- MySQL dump 10.13  Distrib 8.1.0, for Linux (x86_64)
--
-- Host: localhost    Database: master
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (6,'admin'),(1,'applicant'),(5,'approving'),(2,'checking'),(4,'issuing'),(3,'processing');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,13),(2,1,14),(3,1,15),(4,1,16),(5,1,17),(6,1,18),(7,1,19),(8,1,20),(9,1,21),(10,1,22),(11,1,23),(12,1,24),(13,1,37),(14,1,38),(15,1,39),(16,1,40),(17,1,41),(18,1,42),(19,1,43),(20,1,44),(57,2,5),(58,2,6),(59,2,7),(60,2,8),(21,2,13),(22,2,14),(23,2,15),(24,2,16),(25,2,17),(26,2,18),(27,2,19),(28,2,20),(29,2,21),(30,2,22),(31,2,23),(32,2,24),(41,2,25),(42,2,26),(43,2,27),(44,2,28),(45,2,29),(46,2,30),(47,2,31),(48,2,32),(49,2,33),(50,2,34),(51,2,35),(52,2,36),(33,2,37),(34,2,38),(35,2,39),(36,2,40),(37,2,41),(38,2,42),(39,2,43),(40,2,44),(53,2,45),(54,2,46),(55,2,47),(56,2,48),(97,3,5),(98,3,6),(99,3,7),(100,3,8),(61,3,13),(62,3,14),(63,3,15),(64,3,16),(65,3,17),(66,3,18),(67,3,19),(68,3,20),(69,3,21),(70,3,22),(71,3,23),(72,3,24),(81,3,25),(82,3,26),(83,3,27),(84,3,28),(85,3,29),(86,3,30),(87,3,31),(88,3,32),(89,3,33),(90,3,34),(91,3,35),(92,3,36),(73,3,37),(74,3,38),(75,3,39),(76,3,40),(77,3,41),(78,3,42),(79,3,43),(80,3,44),(93,3,45),(94,3,46),(95,3,47),(96,3,48),(177,4,5),(178,4,6),(179,4,7),(180,4,8),(141,4,13),(142,4,14),(143,4,15),(144,4,16),(145,4,17),(146,4,18),(147,4,19),(148,4,20),(149,4,21),(150,4,22),(151,4,23),(152,4,24),(161,4,25),(162,4,26),(163,4,27),(164,4,28),(165,4,29),(166,4,30),(167,4,31),(168,4,32),(169,4,33),(170,4,34),(171,4,35),(172,4,36),(153,4,37),(154,4,38),(155,4,39),(156,4,40),(157,4,41),(158,4,42),(159,4,43),(160,4,44),(173,4,45),(174,4,46),(175,4,47),(176,4,48),(137,5,5),(138,5,6),(139,5,7),(140,5,8),(101,5,13),(102,5,14),(103,5,15),(104,5,16),(105,5,17),(106,5,18),(107,5,19),(108,5,20),(109,5,21),(110,5,22),(111,5,23),(112,5,24),(121,5,25),(122,5,26),(123,5,27),(124,5,28),(125,5,29),(126,5,30),(127,5,31),(128,5,32),(129,5,33),(130,5,34),(131,5,35),(132,5,36),(113,5,37),(114,5,38),(115,5,39),(116,5,40),(117,5,41),(118,5,42),(119,5,43),(120,5,44),(133,5,45),(134,5,46),(135,5,47),(136,5,48),(181,6,1),(182,6,2),(183,6,3),(184,6,4),(229,6,5),(230,6,6),(231,6,7),(232,6,8),(233,6,9),(234,6,10),(235,6,11),(236,6,12),(245,6,13),(246,6,14),(247,6,15),(248,6,16),(253,6,17),(254,6,18),(255,6,19),(256,6,20),(205,6,21),(206,6,22),(207,6,23),(208,6,24),(213,6,25),(214,6,26),(215,6,27),(216,6,28),(249,6,29),(250,6,30),(251,6,31),(252,6,32),(201,6,33),(202,6,34),(203,6,35),(204,6,36),(221,6,37),(222,6,38),(223,6,39),(224,6,40),(225,6,41),(226,6,42),(227,6,43),(228,6,44),(217,6,45),(218,6,46),(219,6,47),(220,6,48),(209,6,49),(210,6,50),(211,6,51),(212,6,52),(237,6,53),(238,6,54),(239,6,55),(240,6,56),(269,6,57),(270,6,58),(271,6,59),(272,6,60),(241,6,61),(242,6,62),(243,6,63),(244,6,64),(257,6,65),(258,6,66),(259,6,67),(260,6,68),(261,6,69),(262,6,70),(263,6,71),(264,6,72),(265,6,73),(266,6,74),(267,6,75),(268,6,76),(189,6,77),(190,6,78),(191,6,79),(192,6,80),(185,6,81),(186,6,82),(187,6,83),(188,6,84),(193,6,85),(194,6,86),(195,6,87),(196,6,88),(197,6,89),(198,6,90),(199,6,91),(200,6,92),(273,6,93),(274,6,94),(275,6,95),(276,6,96),(277,6,97),(278,6,98),(279,6,99),(280,6,100),(281,6,101),(282,6,102),(283,6,103),(284,6,104);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add notes',2,'add_notes'),(6,'Can change notes',2,'change_notes'),(7,'Can delete notes',2,'delete_notes'),(8,'Can view notes',2,'view_notes'),(9,'Can add notes timeline',3,'add_notestimeline'),(10,'Can change notes timeline',3,'change_notestimeline'),(11,'Can delete notes timeline',3,'delete_notestimeline'),(12,'Can view notes timeline',3,'view_notestimeline'),(13,'Can add person',4,'add_person'),(14,'Can change person',4,'change_person'),(15,'Can delete person',4,'delete_person'),(16,'Can view person',4,'view_person'),(17,'Can add picture',5,'add_picture'),(18,'Can change picture',5,'change_picture'),(19,'Can delete picture',5,'delete_picture'),(20,'Can view picture',5,'view_picture'),(21,'Can add document',6,'add_document'),(22,'Can change document',6,'change_document'),(23,'Can delete document',6,'delete_document'),(24,'Can view document',6,'view_document'),(25,'Can add file timeline',7,'add_filetimeline'),(26,'Can change file timeline',7,'change_filetimeline'),(27,'Can delete file timeline',7,'delete_filetimeline'),(28,'Can view file timeline',7,'view_filetimeline'),(29,'Can add phone timeline',8,'add_phonetimeline'),(30,'Can change phone timeline',8,'change_phonetimeline'),(31,'Can delete phone timeline',8,'delete_phonetimeline'),(32,'Can view phone timeline',8,'view_phonetimeline'),(33,'Can add chat timeline',9,'add_chattimeline'),(34,'Can change chat timeline',9,'change_chattimeline'),(35,'Can delete chat timeline',9,'delete_chattimeline'),(36,'Can view chat timeline',9,'view_chattimeline'),(37,'Can add message',10,'add_message'),(38,'Can change message',10,'change_message'),(39,'Can delete message',10,'delete_message'),(40,'Can view message',10,'view_message'),(41,'Can add message file',11,'add_messagefile'),(42,'Can change message file',11,'change_messagefile'),(43,'Can delete message file',11,'delete_messagefile'),(44,'Can view message file',11,'view_messagefile'),(45,'Can add issued file',12,'add_issuedfile'),(46,'Can change issued file',12,'change_issuedfile'),(47,'Can delete issued file',12,'delete_issuedfile'),(48,'Can view issued file',12,'view_issuedfile'),(49,'Can add email',13,'add_email'),(50,'Can change email',13,'change_email'),(51,'Can delete email',13,'delete_email'),(52,'Can view email',13,'view_email'),(53,'Can add organization',14,'add_organization'),(54,'Can change organization',14,'change_organization'),(55,'Can delete organization',14,'delete_organization'),(56,'Can view organization',14,'view_organization'),(57,'Can add user organization',15,'add_userorganization'),(58,'Can change user organization',15,'change_userorganization'),(59,'Can delete user organization',15,'delete_userorganization'),(60,'Can view user organization',15,'view_userorganization'),(61,'Can add organization routes',16,'add_organizationroutes'),(62,'Can change organization routes',16,'change_organizationroutes'),(63,'Can delete organization routes',16,'delete_organizationroutes'),(64,'Can view organization routes',16,'view_organizationroutes'),(65,'Can add url test modle',17,'add_urltestmodle'),(66,'Can change url test modle',17,'change_urltestmodle'),(67,'Can delete url test modle',17,'delete_urltestmodle'),(68,'Can view url test modle',17,'view_urltestmodle'),(69,'Can add user data',18,'add_userdata'),(70,'Can change user data',18,'change_userdata'),(71,'Can delete user data',18,'delete_userdata'),(72,'Can view user data',18,'view_userdata'),(73,'Can add user data org',19,'add_userdataorg'),(74,'Can change user data org',19,'change_userdataorg'),(75,'Can delete user data org',19,'delete_userdataorg'),(76,'Can view user data org',19,'view_userdataorg'),(77,'Can add permission',20,'add_permission'),(78,'Can change permission',20,'change_permission'),(79,'Can delete permission',20,'delete_permission'),(80,'Can view permission',20,'view_permission'),(81,'Can add group',21,'add_group'),(82,'Can change group',21,'change_group'),(83,'Can delete group',21,'delete_group'),(84,'Can view group',21,'view_group'),(85,'Can add user',22,'add_user'),(86,'Can change user',22,'change_user'),(87,'Can delete user',22,'delete_user'),(88,'Can view user',22,'view_user'),(89,'Can add content type',23,'add_contenttype'),(90,'Can change content type',23,'change_contenttype'),(91,'Can delete content type',23,'delete_contenttype'),(92,'Can view content type',23,'view_contenttype'),(93,'Can add session',24,'add_session'),(94,'Can change session',24,'change_session'),(95,'Can delete session',24,'delete_session'),(96,'Can view session',24,'view_session'),(97,'Can add blacklisted token',25,'add_blacklistedtoken'),(98,'Can change blacklisted token',25,'change_blacklistedtoken'),(99,'Can delete blacklisted token',25,'delete_blacklistedtoken'),(100,'Can view blacklisted token',25,'view_blacklistedtoken'),(101,'Can add outstanding token',26,'add_outstandingtoken'),(102,'Can change outstanding token',26,'change_outstandingtoken'),(103,'Can delete outstanding token',26,'delete_outstandingtoken'),(104,'Can view outstanding token',26,'view_outstandingtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$GASj43kd15QKN2p23kKOn0$VVVArIKd6+IlM8HyhlXjVKuJXbkW/RBCSQEL5ZQ8xhk=','2023-09-10 12:51:28.319328',1,'blixtflowuser','','','',1,1,'2023-09-10 12:50:54.196793'),(8,'pbkdf2_sha256$390000$HLN3dFaW5H23kF2ra43Pm6$m4J2EGTLLNvaa8OIaau3281T+jFuqL3onGrB6C0McFk=',NULL,0,'admin','trial','trial','contact@blixtflow.se',0,1,'2023-09-24 11:07:10.100243');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-09-10 12:52:13.948323','2','admin',1,'[{\"added\": {}}]',22,1),(2,'2023-09-10 12:52:53.809881','2','admin',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\", \"User permissions\"]}}]',22,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_chattimeline`
--

DROP TABLE IF EXISTS `django_app_chattimeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_chattimeline` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL,
  `chattl` varchar(2000) DEFAULT NULL,
  `chattl_date` datetime(6) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_chattimeline`
--

LOCK TABLES `django_app_chattimeline` WRITE;
/*!40000 ALTER TABLE `django_app_chattimeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_chattimeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_document`
--

DROP TABLE IF EXISTS `django_app_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_document` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uploaded_files_names` json NOT NULL,
  `url` json NOT NULL,
  `person_id` char(32) NOT NULL,
  `upload_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_app_document_person_id_d516844e_fk_django_app_person_uuid` (`person_id`),
  CONSTRAINT `django_app_document_person_id_d516844e_fk_django_app_person_uuid` FOREIGN KEY (`person_id`) REFERENCES `django_app_person` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_document`
--

LOCK TABLES `django_app_document` WRITE;
/*!40000 ALTER TABLE `django_app_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_email`
--

DROP TABLE IF EXISTS `django_app_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_email` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `sent_at` datetime(6) NOT NULL,
  `recipient_id` char(32) NOT NULL,
  `sender_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_app_email_recipient_id_5c626779_fk_django_app_person_uuid` (`recipient_id`),
  KEY `django_app_email_sender_id_aa3ea205_fk_auth_user_id` (`sender_id`),
  CONSTRAINT `django_app_email_recipient_id_5c626779_fk_django_app_person_uuid` FOREIGN KEY (`recipient_id`) REFERENCES `django_app_person` (`uuid`),
  CONSTRAINT `django_app_email_sender_id_aa3ea205_fk_auth_user_id` FOREIGN KEY (`sender_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_email`
--

LOCK TABLES `django_app_email` WRITE;
/*!40000 ALTER TABLE `django_app_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_filetimeline`
--

DROP TABLE IF EXISTS `django_app_filetimeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_filetimeline` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL,
  `fileurl` varchar(2000) DEFAULT NULL,
  `upload_date` datetime(6) NOT NULL,
  `filename` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_filetimeline`
--

LOCK TABLES `django_app_filetimeline` WRITE;
/*!40000 ALTER TABLE `django_app_filetimeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_filetimeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_issuedfile`
--

DROP TABLE IF EXISTS `django_app_issuedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_issuedfile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL,
  `upload_date` datetime(6) NOT NULL,
  `filename` varchar(1000) DEFAULT NULL,
  `fileurl` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_issuedfile`
--

LOCK TABLES `django_app_issuedfile` WRITE;
/*!40000 ALTER TABLE `django_app_issuedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_issuedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_message`
--

DROP TABLE IF EXISTS `django_app_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `message_date` datetime(6) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_message`
--

LOCK TABLES `django_app_message` WRITE;
/*!40000 ALTER TABLE `django_app_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_messagefile`
--

DROP TABLE IF EXISTS `django_app_messagefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_messagefile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL,
  `upload_date` datetime(6) NOT NULL,
  `filename` varchar(1000) DEFAULT NULL,
  `fileurl` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_messagefile`
--

LOCK TABLES `django_app_messagefile` WRITE;
/*!40000 ALTER TABLE `django_app_messagefile` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_messagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_notes`
--

DROP TABLE IF EXISTS `django_app_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_notes` (
  `note_id` int NOT NULL AUTO_INCREMENT,
  `check_notes` varchar(2000) DEFAULT NULL,
  `check_notes_date` datetime(6) DEFAULT NULL,
  `process_notes` varchar(2000) DEFAULT NULL,
  `process_notes_date` datetime(6) DEFAULT NULL,
  `approval_notes` varchar(2000) DEFAULT NULL,
  `approval_notes_date` datetime(6) DEFAULT NULL,
  `issue_notes` varchar(2000) DEFAULT NULL,
  `issue_notes_date` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `note_check_duration` bigint DEFAULT NULL,
  `note_create_date` datetime(6) DEFAULT NULL,
  `note_approval_duration` bigint DEFAULT NULL,
  `note_issue_duration` bigint DEFAULT NULL,
  `note_process_duration` bigint DEFAULT NULL,
  `total_duration` bigint DEFAULT NULL,
  `uuid` char(32) DEFAULT NULL,
  `note_number` varchar(255) DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `tobedeleated` tinyint(1) NOT NULL,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_notes`
--

LOCK TABLES `django_app_notes` WRITE;
/*!40000 ALTER TABLE `django_app_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_notestimeline`
--

DROP TABLE IF EXISTS `django_app_notestimeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_notestimeline` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL,
  `notetl` varchar(2000) DEFAULT NULL,
  `notetl_date` datetime(6) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_notestimeline`
--

LOCK TABLES `django_app_notestimeline` WRITE;
/*!40000 ALTER TABLE `django_app_notestimeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_notestimeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_organization`
--

DROP TABLE IF EXISTS `django_app_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_organization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(255) NOT NULL,
  `organization_id` char(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `date_of_creation` datetime(6) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `app_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_app_organization_database_name_e02c119c_uniq` (`database_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_organization`
--

LOCK TABLES `django_app_organization` WRITE;
/*!40000 ALTER TABLE `django_app_organization` DISABLE KEYS */;
INSERT INTO `django_app_organization` VALUES (2,'Trial Organization','187a4271b74644c5bdb5703d832cad27','','',NULL,'','','','2023-09-24 11:07:10.524022',NULL,'cms1','Trial');
/*!40000 ALTER TABLE `django_app_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_organizationroutes`
--

DROP TABLE IF EXISTS `django_app_organizationroutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_organizationroutes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `database_name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `organization_name` varchar(255) DEFAULT NULL,
  `app_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_organizationroutes`
--

LOCK TABLES `django_app_organizationroutes` WRITE;
/*!40000 ALTER TABLE `django_app_organizationroutes` DISABLE KEYS */;
INSERT INTO `django_app_organizationroutes` VALUES (7,'master','\"/\"','BlixtFlow',NULL),(8,'cms1','my-trial-org','Trial Organization','Trial');
/*!40000 ALTER TABLE `django_app_organizationroutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_person`
--

DROP TABLE IF EXISTS `django_app_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_person` (
  `uuid` char(32) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `case_id` varchar(4) NOT NULL,
  `personid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `case_completion_date` datetime(6) DEFAULT NULL,
  `case_completion_duration` bigint DEFAULT NULL,
  `user_id` varchar(4) DEFAULT NULL,
  `assigned_to_id` int DEFAULT NULL,
  `processing_officer_id` int DEFAULT NULL,
  `issuing_officer_id` int DEFAULT NULL,
  `approving_officer_id` int DEFAULT NULL,
  `case_detail` varchar(2000) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `django_app_person_assigned_to_id_0e8c83a0_fk_auth_user_id` (`assigned_to_id`),
  KEY `django_app_person_processing_officer_id_dec1d5af_fk_auth_user_id` (`processing_officer_id`),
  KEY `django_app_person_issuing_officer_id_13d853a1_fk_auth_user_id` (`issuing_officer_id`),
  KEY `django_app_person_approving_officer_id_1880a5b5_fk_auth_user_id` (`approving_officer_id`),
  CONSTRAINT `django_app_person_approving_officer_id_1880a5b5_fk_auth_user_id` FOREIGN KEY (`approving_officer_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_app_person_assigned_to_id_0e8c83a0_fk_auth_user_id` FOREIGN KEY (`assigned_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_app_person_issuing_officer_id_13d853a1_fk_auth_user_id` FOREIGN KEY (`issuing_officer_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_app_person_processing_officer_id_dec1d5af_fk_auth_user_id` FOREIGN KEY (`processing_officer_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_person`
--

LOCK TABLES `django_app_person` WRITE;
/*!40000 ALTER TABLE `django_app_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_phonetimeline`
--

DROP TABLE IF EXISTS `django_app_phonetimeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_phonetimeline` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `phone_date` datetime(6) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `person_talked_to` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_phonetimeline`
--

LOCK TABLES `django_app_phonetimeline` WRITE;
/*!40000 ALTER TABLE `django_app_phonetimeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_phonetimeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_picture`
--

DROP TABLE IF EXISTS `django_app_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_picture` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` json DEFAULT NULL,
  `uploaded_picture_file` json DEFAULT NULL,
  `person_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `person_id` (`person_id`),
  CONSTRAINT `django_app_picture_person_id_e14e97b8_fk_django_app_person_uuid` FOREIGN KEY (`person_id`) REFERENCES `django_app_person` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_picture`
--

LOCK TABLES `django_app_picture` WRITE;
/*!40000 ALTER TABLE `django_app_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_urltestmodle`
--

DROP TABLE IF EXISTS `django_app_urltestmodle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_urltestmodle` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_urltestmodle`
--

LOCK TABLES `django_app_urltestmodle` WRITE;
/*!40000 ALTER TABLE `django_app_urltestmodle` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_urltestmodle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_userdata`
--

DROP TABLE IF EXISTS `django_app_userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_userdata` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `Organization_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_app_userdata_user_id_1c6d337d_uniq` (`user_id`),
  KEY `django_app_userdata_Organization_id_d3cdd3ac_fk_django_ap` (`Organization_id`),
  CONSTRAINT `django_app_userdata_Organization_id_d3cdd3ac_fk_django_ap` FOREIGN KEY (`Organization_id`) REFERENCES `django_app_organization` (`id`),
  CONSTRAINT `django_app_userdata_user_id_1c6d337d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_userdata`
--

LOCK TABLES `django_app_userdata` WRITE;
/*!40000 ALTER TABLE `django_app_userdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_userdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_userdataorg`
--

DROP TABLE IF EXISTS `django_app_userdataorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_userdataorg` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `django_app_userdataorg_user_id_b80d4060_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_userdataorg`
--

LOCK TABLES `django_app_userdataorg` WRITE;
/*!40000 ALTER TABLE `django_app_userdataorg` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_app_userdataorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_app_userorganization`
--

DROP TABLE IF EXISTS `django_app_userorganization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_app_userorganization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  `organization_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_app_userorgan_organization_id_eb35c2eb_fk_django_ap` (`organization_id`),
  KEY `django_app_userorganization_user_id_8d6173ac_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_app_userorgan_organization_id_eb35c2eb_fk_django_ap` FOREIGN KEY (`organization_id`) REFERENCES `django_app_organization` (`id`),
  CONSTRAINT `django_app_userorganization_user_id_8d6173ac_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_app_userorganization`
--

LOCK TABLES `django_app_userorganization` WRITE;
/*!40000 ALTER TABLE `django_app_userorganization` DISABLE KEYS */;
INSERT INTO `django_app_userorganization` VALUES (2,'admin',2,8);
/*!40000 ALTER TABLE `django_app_userorganization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(21,'auth','group'),(20,'auth','permission'),(22,'auth','user'),(23,'contenttypes','contenttype'),(9,'django_app','chattimeline'),(6,'django_app','document'),(13,'django_app','email'),(7,'django_app','filetimeline'),(12,'django_app','issuedfile'),(10,'django_app','message'),(11,'django_app','messagefile'),(2,'django_app','notes'),(3,'django_app','notestimeline'),(14,'django_app','organization'),(16,'django_app','organizationroutes'),(4,'django_app','person'),(8,'django_app','phonetimeline'),(5,'django_app','picture'),(17,'django_app','urltestmodle'),(18,'django_app','userdata'),(19,'django_app','userdataorg'),(15,'django_app','userorganization'),(24,'sessions','session'),(25,'token_blacklist','blacklistedtoken'),(26,'token_blacklist','outstandingtoken');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-09-10 12:49:47.015867'),(2,'auth','0001_initial','2023-09-10 12:49:49.981981'),(3,'admin','0001_initial','2023-09-10 12:49:50.606912'),(4,'admin','0002_logentry_remove_auto_add','2023-09-10 12:49:50.646148'),(5,'admin','0003_logentry_add_action_flag_choices','2023-09-10 12:49:50.679986'),(6,'contenttypes','0002_remove_content_type_name','2023-09-10 12:49:51.146306'),(7,'auth','0002_alter_permission_name_max_length','2023-09-10 12:49:51.436431'),(8,'auth','0003_alter_user_email_max_length','2023-09-10 12:49:51.522705'),(9,'auth','0004_alter_user_username_opts','2023-09-10 12:49:51.569443'),(10,'auth','0005_alter_user_last_login_null','2023-09-10 12:49:51.804863'),(11,'auth','0006_require_contenttypes_0002','2023-09-10 12:49:51.834719'),(12,'auth','0007_alter_validators_add_error_messages','2023-09-10 12:49:51.872057'),(13,'auth','0008_alter_user_username_max_length','2023-09-10 12:49:52.125594'),(14,'auth','0009_alter_user_last_name_max_length','2023-09-10 12:49:52.371804'),(15,'auth','0010_alter_group_name_max_length','2023-09-10 12:49:52.435178'),(16,'auth','0011_update_proxy_permissions','2023-09-10 12:49:52.517962'),(17,'auth','0012_alter_user_first_name_max_length','2023-09-10 12:49:52.752607'),(18,'django_app','0001_initial','2023-09-10 12:49:53.732912'),(19,'django_app','0002_alter_notestimeline_notetl_id','2023-09-10 12:49:53.981666'),(20,'django_app','0003_remove_notestimeline_notetl_id','2023-09-10 12:49:54.075290'),(21,'django_app','0004_filetimeline','2023-09-10 12:49:54.210398'),(22,'django_app','0005_phonetimeline','2023-09-10 12:49:54.334941'),(23,'django_app','0006_chattimeline_person_status','2023-09-10 12:49:54.568357'),(24,'django_app','0007_alter_notes_approval_notes_date_and_more','2023-09-10 12:49:55.048145'),(25,'django_app','0008_notes_note_check_duration_notes_note_create_date','2023-09-10 12:49:55.246251'),(26,'django_app','0009_notes_note_approval_duration_and_more','2023-09-10 12:49:55.542309'),(27,'django_app','0010_person_case_completion_date_and_more','2023-09-10 12:49:55.859851'),(28,'django_app','0011_person_user_id','2023-09-10 12:49:55.989487'),(29,'django_app','0012_notestimeline_user_id','2023-09-10 12:49:56.080346'),(30,'django_app','0013_remove_notestimeline_user_id_chattimeline_user_id','2023-09-10 12:49:56.236781'),(31,'django_app','0014_chattimeline_user_name','2023-09-10 12:49:56.341481'),(32,'django_app','0015_message','2023-09-10 12:49:56.474759'),(33,'django_app','0016_messagefile','2023-09-10 12:49:56.595574'),(34,'django_app','0017_notestimeline_user_id','2023-09-10 12:49:56.693812'),(35,'django_app','0018_remove_messagefile_filename_and_more','2023-09-10 12:49:57.062696'),(36,'django_app','0019_rename_uploaded_files_names_messagefile_filename_and_more','2023-09-10 12:49:57.229732'),(37,'django_app','0020_alter_messagefile_filename_alter_messagefile_fileurl','2023-09-10 12:49:57.684362'),(38,'django_app','0021_document_upload_date','2023-09-10 12:49:57.850314'),(39,'django_app','0022_person_assigned_to','2023-09-10 12:49:58.136056'),(40,'django_app','0023_remove_notes_uuid_alter_notes_note_id','2023-09-10 12:49:58.529272'),(41,'django_app','0024_notes_uuid','2023-09-10 12:49:58.623597'),(42,'django_app','0025_alter_notes_note_id','2023-09-10 12:49:58.653786'),(43,'django_app','0026_notes_note_number_alter_notes_note_id','2023-09-10 12:49:58.947140'),(44,'django_app','0027_notes_locked','2023-09-10 12:49:59.073369'),(45,'django_app','0028_person_approval_officer_person_processing_officer','2023-09-10 12:49:59.652079'),(46,'django_app','0029_person_issuing_officer','2023-09-10 12:49:59.987405'),(47,'django_app','0030_remove_person_approval_officer_and_more','2023-09-10 12:50:00.648676'),(48,'django_app','0031_issuedfile','2023-09-10 12:50:00.794020'),(49,'django_app','0032_email','2023-09-10 12:50:01.414220'),(50,'django_app','0033_organization','2023-09-10 12:50:01.789591'),(51,'django_app','0034_alter_organization_organization_id','2023-09-10 12:50:01.825335'),(52,'django_app','0035_alter_organization_organization_id','2023-09-10 12:50:01.865980'),(53,'django_app','0036_remove_organization_contact_person_and_more','2023-09-10 12:50:02.110795'),(54,'django_app','0037_alter_organization_database_name','2023-09-10 12:50:02.214502'),(55,'django_app','0038_userorganization','2023-09-10 12:50:02.824914'),(56,'django_app','0039_remove_organization_user','2023-09-10 12:50:03.138761'),(57,'django_app','0040_organizationroutes','2023-09-10 12:50:03.476505'),(58,'django_app','0041_urltestmodle','2023-09-10 12:50:03.598982'),(59,'django_app','0042_rename_component_organizationroutes_database_name_and_more','2023-09-10 12:50:04.032470'),(60,'django_app','0043_userdata','2023-09-10 12:50:05.066872'),(61,'django_app','0044_alter_userdata_user','2023-09-10 12:50:05.599117'),(62,'django_app','0045_userdataorg','2023-09-10 12:50:05.976371'),(63,'django_app','0046_notestimeline_user_name_organization_app_mode_and_more','2023-09-10 12:50:06.229972'),(64,'django_app','0047_organizationroutes_app_mode','2023-09-10 12:50:06.338406'),(65,'django_app','0048_organizationroutes_app_title','2023-09-10 12:50:06.440909'),(66,'django_app','0049_person_case_detail_person_gender_and_more','2023-09-10 12:50:08.223484'),(67,'sessions','0001_initial','2023-09-10 12:50:08.431354'),(68,'token_blacklist','0001_initial','2023-09-10 12:50:09.148380'),(69,'token_blacklist','0002_outstandingtoken_jti_hex','2023-09-10 12:50:09.249953'),(70,'token_blacklist','0003_auto_20171017_2007','2023-09-10 12:50:09.378423'),(71,'token_blacklist','0004_auto_20171017_2013','2023-09-10 12:50:09.664429'),(72,'token_blacklist','0005_remove_outstandingtoken_jti','2023-09-10 12:50:09.910245'),(73,'token_blacklist','0006_auto_20171017_2113','2023-09-10 12:50:10.019322'),(74,'token_blacklist','0007_auto_20171017_2214','2023-09-10 12:50:10.832839'),(75,'token_blacklist','0008_migrate_to_bigautofield','2023-09-10 12:50:11.831251'),(76,'token_blacklist','0010_fix_migrate_to_bigautofield','2023-09-10 12:50:11.876629'),(77,'token_blacklist','0011_linearizes_history','2023-09-10 12:50:11.903457'),(78,'token_blacklist','0012_alter_outstandingtoken_user','2023-09-10 12:50:11.944344'),(79,'django_app','0050_remove_organization_app_mode','2023-09-24 07:10:52.161631'),(80,'django_app','0051_remove_organizationroutes_app_mode','2023-09-24 07:10:52.468781'),(81,'django_app','0052_notes_tobedeleated','2023-09-24 07:10:52.878136');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ruj5a4doonxafyhxjun6pil4qodeh1j6','.eJxVjMsOwiAURP-FtSG85bp07zeQC1ykaiAp7cr477ZJF5rMas6ZebOA61LDOmgOU2YXJtnpt4uYntR2kB_Y7p2n3pZ5inxX-EEHv_VMr-vh_h1UHHVbGwFaESoDJp6V9ig1OXImiVIsWvBaekEKso1-ixYFvLXSiawclgTs8wW6ezbw:1qfJuS:YtSO4To9Dqc6ue5AyYUfsEcl3YF12hRSolGpjGctpOc','2023-09-24 12:51:28.340747');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_blacklistedtoken` VALUES (6,'2023-09-24 11:03:46.155510',12);
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_auth_user` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (12,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5NTYzOTgxOSwiaWF0IjoxNjk1NTUzNDE5LCJqdGkiOiI1NjdlNTYyMTYxYzg0ZDM4ODlkOTdiMjczNDM2ODc2NCIsInVzZXJfaWQiOjF9.CCCyWGL4JDtZrVtRqfoolaUUHsENodiLLl6bcwJ-6dM','2023-09-24 11:03:39.249540','2023-09-25 11:03:39.000000',1,'567e562161c84d3889d97b2734368764');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20 19:04:19
