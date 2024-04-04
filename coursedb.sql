-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: coursedb
-- ------------------------------------------------------
-- Server version	8.0.29

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add category',6,'add_category'),(22,'Can change category',6,'change_category'),(23,'Can delete category',6,'delete_category'),(24,'Can view category',6,'view_category'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add course',8,'add_course'),(30,'Can change course',8,'change_course'),(31,'Can delete course',8,'delete_course'),(32,'Can view course',8,'view_course'),(33,'Can add tag',9,'add_tag'),(34,'Can change tag',9,'change_tag'),(35,'Can delete tag',9,'delete_tag'),(36,'Can view tag',9,'view_tag'),(37,'Can add lesson',10,'add_lesson'),(38,'Can change lesson',10,'change_lesson'),(39,'Can delete lesson',10,'delete_lesson'),(40,'Can view lesson',10,'view_lesson'),(41,'Can add comment',11,'add_comment'),(42,'Can change comment',11,'change_comment'),(43,'Can delete comment',11,'delete_comment'),(44,'Can view comment',11,'view_comment'),(45,'Can add like',12,'add_like'),(46,'Can change like',12,'change_like'),(47,'Can delete like',12,'delete_like'),(48,'Can view like',12,'view_like'),(49,'Can add application',13,'add_application'),(50,'Can change application',13,'change_application'),(51,'Can delete application',13,'delete_application'),(52,'Can view application',13,'view_application'),(53,'Can add access token',14,'add_accesstoken'),(54,'Can change access token',14,'change_accesstoken'),(55,'Can delete access token',14,'delete_accesstoken'),(56,'Can view access token',14,'view_accesstoken'),(57,'Can add grant',15,'add_grant'),(58,'Can change grant',15,'change_grant'),(59,'Can delete grant',15,'delete_grant'),(60,'Can view grant',15,'view_grant'),(61,'Can add refresh token',16,'add_refreshtoken'),(62,'Can change refresh token',16,'change_refreshtoken'),(63,'Can delete refresh token',16,'delete_refreshtoken'),(64,'Can view refresh token',16,'view_refreshtoken'),(65,'Can add id token',17,'add_idtoken'),(66,'Can change id token',17,'change_idtoken'),(67,'Can delete id token',17,'delete_idtoken'),(68,'Can view id token',17,'view_idtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_category`
--

DROP TABLE IF EXISTS `courses_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_category`
--

LOCK TABLES `courses_category` WRITE;
/*!40000 ALTER TABLE `courses_category` DISABLE KEYS */;
INSERT INTO `courses_category` VALUES (1,'Category1'),(2,'Category2');
/*!40000 ALTER TABLE `courses_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_comment`
--

DROP TABLE IF EXISTS `courses_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `content` varchar(255) NOT NULL,
  `lesson_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_comment_lesson_id_ce88c0d1_fk_courses_lesson_id` (`lesson_id`),
  KEY `courses_comment_user_id_089d2325_fk_courses_user_id` (`user_id`),
  CONSTRAINT `courses_comment_lesson_id_ce88c0d1_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`),
  CONSTRAINT `courses_comment_user_id_089d2325_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_comment`
--

LOCK TABLES `courses_comment` WRITE;
/*!40000 ALTER TABLE `courses_comment` DISABLE KEYS */;
INSERT INTO `courses_comment` VALUES (1,'2024-04-04 00:46:15.785570','2024-04-04 00:46:15.785570',1,'ok',1,1),(2,'2024-04-04 00:46:21.592634','2024-04-04 00:46:21.592634',1,'bad',1,1),(3,'2024-04-04 00:46:26.594632','2024-04-04 00:46:26.594632',1,'good',1,1),(4,'2024-04-04 00:46:35.207291','2024-04-04 00:46:35.207291',1,'nice',1,1),(5,'2024-04-04 00:46:40.612543','2024-04-04 00:46:40.612543',1,'asdasd',1,1),(6,'2024-04-04 00:47:12.291182','2024-04-04 00:47:12.291182',1,'ttt',2,1);
/*!40000 ALTER TABLE `courses_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `image` varchar(255) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_category_id_d64b93bf_fk_courses_category_id` (`category_id`),
  CONSTRAINT `courses_course_category_id_d64b93bf_fk_courses_category_id` FOREIGN KEY (`category_id`) REFERENCES `courses_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES (1,'2024-04-04 00:37:41.665906','2024-04-04 00:37:41.665906',1,'Course1','<p>assad</p>','image/upload/v1712191062/bfgny5xwii9yncjojuf2.tiff',1),(2,'2024-04-04 00:38:11.645976','2024-04-04 00:38:11.646972',1,'Course2','<p>ffff</p>','image/upload/v1712191091/f0z75olitrnc8tfimkgz.bmp',2);
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_lesson`
--

DROP TABLE IF EXISTS `courses_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_lesson` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` longtext,
  `image` varchar(255) NOT NULL,
  `course_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_lesson`
--

LOCK TABLES `courses_lesson` WRITE;
/*!40000 ALTER TABLE `courses_lesson` DISABLE KEYS */;
INSERT INTO `courses_lesson` VALUES (1,'2024-04-04 00:38:30.112218','2024-04-04 00:46:00.487836',1,'Lesson1','<p>asdasdasda</p>','image/upload/v1712191110/wqqt36w4zxkslhf2qvfm.tiff',2),(2,'2024-04-04 00:45:49.307643','2024-04-04 00:45:49.307643',1,'Lesson2','<p>asdasdaaaaaaaa</p>','image/upload/v1712191549/gxbjxpk75pnxtbhsbgmt.bmp',1);
/*!40000 ALTER TABLE `courses_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_lesson_tags`
--

DROP TABLE IF EXISTS `courses_lesson_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_lesson_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lesson_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_lesson_tags_lesson_id_tag_id_bae65f7d_uniq` (`lesson_id`,`tag_id`),
  KEY `courses_lesson_tags_tag_id_5f430326_fk_courses_tag_id` (`tag_id`),
  CONSTRAINT `courses_lesson_tags_lesson_id_0f6df217_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`),
  CONSTRAINT `courses_lesson_tags_tag_id_5f430326_fk_courses_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `courses_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_lesson_tags`
--

LOCK TABLES `courses_lesson_tags` WRITE;
/*!40000 ALTER TABLE `courses_lesson_tags` DISABLE KEYS */;
INSERT INTO `courses_lesson_tags` VALUES (1,1,2),(2,2,2);
/*!40000 ALTER TABLE `courses_lesson_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_like`
--

DROP TABLE IF EXISTS `courses_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_like` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `lesson_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_like_user_id_lesson_id_73a3e904_uniq` (`user_id`,`lesson_id`),
  KEY `courses_like_lesson_id_0ec13320_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_like_lesson_id_0ec13320_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`),
  CONSTRAINT `courses_like_user_id_6ceadc5f_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_like`
--

LOCK TABLES `courses_like` WRITE;
/*!40000 ALTER TABLE `courses_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_tag`
--

DROP TABLE IF EXISTS `courses_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_tag`
--

LOCK TABLES `courses_tag` WRITE;
/*!40000 ALTER TABLE `courses_tag` DISABLE KEYS */;
INSERT INTO `courses_tag` VALUES (1,'2024-04-04 00:38:23.193532','2024-04-04 00:38:23.193532',1,'Tag1'),(2,'2024-04-04 00:38:27.816271','2024-04-04 00:38:27.816271',1,'Tag2');
/*!40000 ALTER TABLE `courses_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_user`
--

DROP TABLE IF EXISTS `courses_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_user`
--

LOCK TABLES `courses_user` WRITE;
/*!40000 ALTER TABLE `courses_user` DISABLE KEYS */;
INSERT INTO `courses_user` VALUES (1,'pbkdf2_sha256$720000$U7n01dGn39UZmst1VoAqbm$f4ngaNpxjXYC6b2Tct6KVPCvxM24ECLKeQEmzJiPSPc=','2024-04-04 01:43:20.021979',1,'admin','abc','xyz','',1,1,'2024-04-04 00:35:58.367819',NULL);
/*!40000 ALTER TABLE `courses_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_user_groups`
--

DROP TABLE IF EXISTS `courses_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_user_groups_user_id_group_id_b5cd82da_uniq` (`user_id`,`group_id`),
  KEY `courses_user_groups_group_id_f1b5c084_fk_auth_group_id` (`group_id`),
  CONSTRAINT `courses_user_groups_group_id_f1b5c084_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `courses_user_groups_user_id_c63786e3_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_user_groups`
--

LOCK TABLES `courses_user_groups` WRITE;
/*!40000 ALTER TABLE `courses_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_user_user_permissions`
--

DROP TABLE IF EXISTS `courses_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_user_user_permis_user_id_permission_id_e0e9296d_uniq` (`user_id`,`permission_id`),
  KEY `courses_user_user_pe_permission_id_5803efd0_fk_auth_perm` (`permission_id`),
  CONSTRAINT `courses_user_user_pe_permission_id_5803efd0_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `courses_user_user_pe_user_id_699dc51a_fk_courses_u` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_user_user_permissions`
--

LOCK TABLES `courses_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `courses_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_user_user_permissions` ENABLE KEYS */;
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
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_courses_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-04-04 00:36:56.271149','1','Category1',1,'[{\"added\": {}}]',6,1),(2,'2024-04-04 00:37:01.500063','2','Category2',1,'[{\"added\": {}}]',6,1),(3,'2024-04-04 00:37:43.157434','1','Course1',1,'[{\"added\": {}}]',8,1),(4,'2024-04-04 00:38:12.257597','2','Course2',1,'[{\"added\": {}}]',8,1),(5,'2024-04-04 00:38:23.194529','1','Tag1',1,'[{\"added\": {}}]',9,1),(6,'2024-04-04 00:38:27.817268','2','Tag2',1,'[{\"added\": {}}]',9,1),(7,'2024-04-04 00:38:30.802763','1','Course1',1,'[{\"added\": {}}]',10,1),(8,'2024-04-04 00:45:49.967568','2','Lesson2',1,'[{\"added\": {}}]',10,1),(9,'2024-04-04 00:46:00.489833','1','Lesson1',2,'[{\"changed\": {\"fields\": [\"Subject\"]}}]',10,1),(10,'2024-04-04 00:46:15.786566','1','Comment object (1)',1,'[{\"added\": {}}]',11,1),(11,'2024-04-04 00:46:21.593632','2','Comment object (2)',1,'[{\"added\": {}}]',11,1),(12,'2024-04-04 00:46:26.594632','3','Comment object (3)',1,'[{\"added\": {}}]',11,1),(13,'2024-04-04 00:46:35.208289','4','Comment object (4)',1,'[{\"added\": {}}]',11,1),(14,'2024-04-04 00:46:40.612543','5','Comment object (5)',1,'[{\"added\": {}}]',11,1),(15,'2024-04-04 00:47:12.292178','6','Comment object (6)',1,'[{\"added\": {}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(6,'courses','category'),(11,'courses','comment'),(8,'courses','course'),(10,'courses','lesson'),(12,'courses','like'),(9,'courses','tag'),(7,'courses','user'),(14,'oauth2_provider','accesstoken'),(13,'oauth2_provider','application'),(15,'oauth2_provider','grant'),(17,'oauth2_provider','idtoken'),(16,'oauth2_provider','refreshtoken'),(5,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-04 00:33:44.653696'),(2,'contenttypes','0002_remove_content_type_name','2024-04-04 00:33:44.698576'),(3,'auth','0001_initial','2024-04-04 00:33:44.868122'),(4,'auth','0002_alter_permission_name_max_length','2024-04-04 00:33:44.907018'),(5,'auth','0003_alter_user_email_max_length','2024-04-04 00:33:44.912005'),(6,'auth','0004_alter_user_username_opts','2024-04-04 00:33:44.916992'),(7,'auth','0005_alter_user_last_login_null','2024-04-04 00:33:44.920981'),(8,'auth','0006_require_contenttypes_0002','2024-04-04 00:33:44.922975'),(9,'auth','0007_alter_validators_add_error_messages','2024-04-04 00:33:44.925967'),(10,'auth','0008_alter_user_username_max_length','2024-04-04 00:33:44.931952'),(11,'auth','0009_alter_user_last_name_max_length','2024-04-04 00:33:44.935941'),(12,'auth','0010_alter_group_name_max_length','2024-04-04 00:33:44.947910'),(13,'auth','0011_update_proxy_permissions','2024-04-04 00:33:44.952896'),(14,'auth','0012_alter_user_first_name_max_length','2024-04-04 00:33:44.957882'),(15,'courses','0001_initial','2024-04-04 00:33:45.181285'),(16,'admin','0001_initial','2024-04-04 00:33:45.269050'),(17,'admin','0002_logentry_remove_auto_add','2024-04-04 00:33:45.274037'),(18,'admin','0003_logentry_add_action_flag_choices','2024-04-04 00:33:45.280020'),(19,'courses','0002_course','2024-04-04 00:33:45.332880'),(20,'courses','0003_alter_course_description','2024-04-04 00:33:45.335871'),(21,'courses','0004_tag_lesson','2024-04-04 00:33:45.498436'),(22,'courses','0005_alter_course_image_alter_lesson_image','2024-04-04 00:33:45.525364'),(23,'courses','0006_alter_course_options_alter_lesson_options_and_more','2024-04-04 00:33:45.739792'),(24,'courses','0007_user_avatar','2024-04-04 00:33:45.769712'),(25,'sessions','0001_initial','2024-04-04 00:33:45.793647'),(26,'oauth2_provider','0001_initial','2024-04-04 01:18:30.222521'),(27,'oauth2_provider','0002_auto_20190406_1805','2024-04-04 01:18:30.274887'),(28,'oauth2_provider','0003_auto_20201211_1314','2024-04-04 01:18:30.325188'),(29,'oauth2_provider','0004_auto_20200902_2022','2024-04-04 01:18:30.645702'),(30,'oauth2_provider','0005_auto_20211222_2352','2024-04-04 01:18:30.705917'),(31,'oauth2_provider','0006_alter_application_client_secret','2024-04-04 01:18:30.728047'),(32,'oauth2_provider','0007_application_post_logout_redirect_uris','2024-04-04 01:18:30.798686');
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
INSERT INTO `django_session` VALUES ('25m4jhiphodw8iz5w859f8pey1xj0zfi','.eJxVjMEOwiAQRP-FsyFQKLt69O43kIUFqRpISnsy_rtt0oNe5jDvzbyFp3Upfu1p9hOLi9Di9NsFis9Ud8APqvcmY6vLPAW5K_KgXd4ap9f1cP8OCvWyrekMilGTyskFNKhYW0A3EobMWyqLZJTmIaAGBMholM0pI0SKbhjF5wvU_DeA:1rsC8O:vOSCdarl5skZ3TLluyLMQ6COsya60DFVwvW3ukJA_zg','2024-04-18 01:43:20.023973');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_courses_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'HnFioBKBqTaQdM5QMFFMEA8sDVnPIb','2024-04-04 11:36:32.181401','read write',1,1,'2024-04-04 01:36:32.181401','2024-04-04 01:36:32.181401',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) NOT NULL,
  `post_logout_redirect_uris` longtext NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_user_id_79829054_fk_courses_user_id` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_application_user_id_79829054_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'zPKhJbyFlvwOua2u97phF3y4leEeI4wOlY2tK61F','','confidential','password','pbkdf2_sha256$720000$K7rj4RAhINLIWSFWarSFAv$igOtpwY9vHeHpuY9UiD5rDoVWveqX1H1XCepDPFUZbE=','MyCourseApp',1,0,'2024-04-04 01:21:25.624012','2024-04-04 01:21:25.624012','','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) NOT NULL,
  `code_challenge_method` varchar(10) NOT NULL,
  `nonce` varchar(255) NOT NULL,
  `claims` longtext NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_courses_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_courses_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refreshtoken_user_id_da837fce_fk_courses_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refreshtoken_user_id_da837fce_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'jKViMRZvo1guMGCAgYCuInc5Llacdz',1,1,1,'2024-04-04 01:36:32.189380','2024-04-04 01:36:32.189380',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04 11:25:46
