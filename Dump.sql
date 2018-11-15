-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: django-styleshare
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add application',6,'add_application'),(22,'Can change application',6,'change_application'),(23,'Can delete application',6,'delete_application'),(24,'Can view application',6,'view_application'),(25,'Can add access token',7,'add_accesstoken'),(26,'Can change access token',7,'change_accesstoken'),(27,'Can delete access token',7,'delete_accesstoken'),(28,'Can view access token',7,'view_accesstoken'),(29,'Can add grant',8,'add_grant'),(30,'Can change grant',8,'change_grant'),(31,'Can delete grant',8,'delete_grant'),(32,'Can view grant',8,'view_grant'),(33,'Can add refresh token',9,'add_refreshtoken'),(34,'Can change refresh token',9,'change_refreshtoken'),(35,'Can delete refresh token',9,'delete_refreshtoken'),(36,'Can view refresh token',9,'view_refreshtoken'),(37,'Can add Authentication User',10,'add_user'),(38,'Can change Authentication User',10,'change_user'),(39,'Can delete Authentication User',10,'delete_user'),(40,'Can view Authentication User',10,'view_user'),(41,'Can add goods',11,'add_goods'),(42,'Can change goods',11,'change_goods'),(43,'Can delete goods',11,'delete_goods'),(44,'Can view goods',11,'view_goods'),(45,'Can add option',12,'add_option'),(46,'Can change option',12,'change_option'),(47,'Can delete option',12,'delete_option'),(48,'Can view option',12,'view_option'),(49,'Can add provider',13,'add_provider'),(50,'Can change provider',13,'change_provider'),(51,'Can delete provider',13,'delete_provider'),(52,'Can view provider',13,'view_provider'),(53,'Can add shipping',14,'add_shipping'),(54,'Can change shipping',14,'change_shipping'),(55,'Can delete shipping',14,'delete_shipping'),(56,'Can view shipping',14,'view_shipping');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-11-12 06:24:08.976016','1','Provider object (1)',1,'[{\"added\": {}}]',13,1),(2,'2018-11-12 06:24:26.230312','1','Provider object (1)',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',13,1),(3,'2018-11-12 06:24:42.707851','2','Provider object (2)',1,'[{\"added\": {}}]',13,1),(4,'2018-11-12 06:24:50.187246','3','Provider object (3)',1,'[{\"added\": {}}]',13,1),(5,'2018-11-12 06:25:14.365228','4','Provider object (4)',1,'[{\"added\": {}}]',13,1),(6,'2018-11-12 06:28:49.739477','1','Shipping object (1)',1,'[{\"added\": {}}]',14,1),(7,'2018-11-12 06:29:08.827485','2','Shipping object (2)',1,'[{\"added\": {}}]',14,1),(8,'2018-11-12 06:30:17.370971','1','Python Hood T-Shirts',1,'[{\"added\": {}}]',11,1),(9,'2018-11-12 06:33:17.046374','3','PREPAY|3000|묶음 가능',1,'[{\"added\": {}}]',14,1),(10,'2018-11-12 06:33:33.277470','4','PREPAY|5000|묶음 불가',1,'[{\"added\": {}}]',14,1),(11,'2018-11-12 06:33:44.850625','5','FREE|0|묶음 가능',1,'[{\"added\": {}}]',14,1),(12,'2018-11-12 06:34:05.930669','6','FREE|0|묶음 가능',1,'[{\"added\": {}}]',14,1),(13,'2018-11-12 06:38:13.748451','5','FREE|0|묶음 가능',3,'',14,1),(14,'2018-11-12 06:38:21.727984','2','FREE|0|묶음 가능',3,'',14,1),(15,'2018-11-12 06:39:01.454328','7','PREPAY|2500|묶음 가능',1,'[{\"added\": {}}]',14,1),(16,'2018-11-12 06:39:48.365048','2','JAVA Round T-Shirts',1,'[{\"added\": {}}]',11,1),(17,'2018-11-12 06:40:15.647916','3','PHP V Neck T-Shirts',1,'[{\"added\": {}}]',11,1),(18,'2018-11-12 06:40:33.695814','4','Flask Jacket',1,'[{\"added\": {}}]',11,1),(19,'2018-11-12 06:40:54.872058','5','Spring Boot Jacket',1,'[{\"added\": {}}]',11,1),(20,'2018-11-12 06:41:29.612555','6','Codeigniter Jacket',1,'[{\"added\": {}}]',11,1),(21,'2018-11-12 06:41:54.132637','7','Django Jacket',1,'[{\"added\": {}}]',11,1),(22,'2018-11-12 06:49:33.838077','1','[Python Hood T-Shirts]yellow|S',1,'[{\"added\": {}}]',12,1),(23,'2018-11-12 06:49:44.494528','2','[Python Hood T-Shirts]yellow|M',1,'[{\"added\": {}}]',12,1),(24,'2018-11-12 06:50:00.275095','3','[Python Hood T-Shirts]yellow|L',1,'[{\"added\": {}}]',12,1),(25,'2018-11-12 06:50:20.116179','4','[Python Hood T-Shirts]blue|S',1,'[{\"added\": {}}]',12,1),(26,'2018-11-12 06:50:29.415660','5','[Python Hood T-Shirts]blue|M',1,'[{\"added\": {}}]',12,1),(27,'2018-11-12 06:50:41.299339','6','[Python Hood T-Shirts]blue|L',1,'[{\"added\": {}}]',12,1),(28,'2018-11-12 06:51:00.033203','7','[JAVA Round T-Shirts]green|S',1,'[{\"added\": {}}]',12,1),(29,'2018-11-12 06:51:29.141644','8','[JAVA Round T-Shirts]green|M',1,'[{\"added\": {}}]',12,1),(30,'2018-11-12 06:54:14.802202','9','[JAVA Round T-Shirts]green|L',1,'[{\"added\": {}}]',12,1),(31,'2018-11-12 06:54:30.272460','10','[PHP V Neck T-Shirts]violet|S',1,'[{\"added\": {}}]',12,1),(32,'2018-11-12 06:54:37.982742','11','[PHP V Neck T-Shirts]violet|M',1,'[{\"added\": {}}]',12,1),(33,'2018-11-12 06:54:48.252836','12','[PHP V Neck T-Shirts]violet|L',1,'[{\"added\": {}}]',12,1),(34,'2018-11-12 06:55:01.861668','13','[Flask Jacket]black|S',1,'[{\"added\": {}}]',12,1),(35,'2018-11-12 06:55:10.453135','14','[Flask Jacket]black|M',1,'[{\"added\": {}}]',12,1),(36,'2018-11-12 06:55:21.025169','15','[Flask Jacket]black|L',1,'[{\"added\": {}}]',12,1),(37,'2018-11-12 06:55:39.279171','16','[Spring Boot Jacket]yellowgreen|S',1,'[{\"added\": {}}]',12,1),(38,'2018-11-12 06:55:52.747326','17','[Spring Boot Jacket]yellowgreen|M',1,'[{\"added\": {}}]',12,1),(39,'2018-11-12 06:56:01.386293','18','[Spring Boot Jacket]yellowgreen|L',1,'[{\"added\": {}}]',12,1),(40,'2018-11-12 07:09:45.459155','19','[Spring Boot Jacket]yellowgreen|XL',1,'[{\"added\": {}}]',12,1),(41,'2018-11-12 07:10:07.922196','20','[Codeigniter Jacket]red|S',1,'[{\"added\": {}}]',12,1),(42,'2018-11-12 07:10:18.254925','21','[Codeigniter Jacket]red|M',1,'[{\"added\": {}}]',12,1),(43,'2018-11-12 07:10:42.934446','22','[Django Jacket]green|M',1,'[{\"added\": {}}]',12,1),(44,'2018-11-12 07:10:56.674595','23','[Django Jacket]green|L',1,'[{\"added\": {}}]',12,1),(45,'2018-11-13 22:44:38.793298','8','엣지있는 리액트 티셔츠',1,'[{\"added\": {}}]',11,1),(46,'2018-11-13 22:45:05.185764','9','화려한 리액트 부츠',1,'[{\"added\": {}}]',11,1),(47,'2018-11-13 22:45:31.935402','10','Reactive Glasses',1,'[{\"added\": {}}]',11,1),(48,'2018-11-13 22:46:05.713418','11','30cm Ruler Pin',1,'[{\"added\": {}}]',11,1),(49,'2018-11-13 22:46:38.479886','12','28cm Socks',1,'[{\"added\": {}}]',11,1),(50,'2018-11-13 22:47:29.350206','24','[엣지있는 리액트 티셔츠]yellow|M',1,'[{\"added\": {}}]',12,1),(51,'2018-11-13 22:47:40.579530','25','[화려한 리액트 부츠]black|XL',1,'[{\"added\": {}}]',12,1),(52,'2018-11-13 22:47:53.829072','26','[Reactive Glasses]blue|M',1,'[{\"added\": {}}]',12,1),(53,'2018-11-13 22:48:03.173999','27','[Reactive Glasses]yellowgreen|M',1,'[{\"added\": {}}]',12,1),(54,'2018-11-13 22:48:16.816490','28','[30cm Ruler Pin]red|L',1,'[{\"added\": {}}]',12,1),(55,'2018-11-13 22:48:27.239032','29','[30cm Ruler Pin]green|L',1,'[{\"added\": {}}]',12,1),(56,'2018-11-13 22:48:38.868407','30','[28cm Socks]blue|S',1,'[{\"added\": {}}]',12,1),(57,'2018-11-13 22:48:52.974461','31','[28cm Socks]black|L',1,'[{\"added\": {}}]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(11,'goods','goods'),(12,'goods','option'),(13,'goods','provider'),(14,'goods','shipping'),(7,'oauth2_provider','accesstoken'),(6,'oauth2_provider','application'),(8,'oauth2_provider','grant'),(9,'oauth2_provider','refreshtoken'),(5,'sessions','session'),(10,'user','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-11-12 06:14:27.813847'),(2,'contenttypes','0002_remove_content_type_name','2018-11-12 06:14:27.877026'),(3,'auth','0001_initial','2018-11-12 06:14:28.070212'),(4,'auth','0002_alter_permission_name_max_length','2018-11-12 06:14:28.103668'),(5,'auth','0003_alter_user_email_max_length','2018-11-12 06:14:28.126509'),(6,'auth','0004_alter_user_username_opts','2018-11-12 06:14:28.138045'),(7,'auth','0005_alter_user_last_login_null','2018-11-12 06:14:28.163551'),(8,'auth','0006_require_contenttypes_0002','2018-11-12 06:14:28.168124'),(9,'auth','0007_alter_validators_add_error_messages','2018-11-12 06:14:28.194588'),(10,'auth','0008_alter_user_username_max_length','2018-11-12 06:14:28.209927'),(11,'auth','0009_alter_user_last_name_max_length','2018-11-12 06:14:28.228663'),(12,'user','0001_initial','2018-11-12 06:14:28.439353'),(13,'admin','0001_initial','2018-11-12 06:14:28.519581'),(14,'admin','0002_logentry_remove_auto_add','2018-11-12 06:14:28.529308'),(15,'admin','0003_logentry_add_action_flag_choices','2018-11-12 06:14:28.550796'),(16,'goods','0001_initial','2018-11-12 06:14:28.775827'),(17,'oauth2_provider','0001_initial','2018-11-12 06:14:29.169646'),(18,'oauth2_provider','0002_08_updates','2018-11-12 06:14:29.364445'),(19,'oauth2_provider','0003_auto_20160316_1503','2018-11-12 06:14:29.443250'),(20,'oauth2_provider','0004_auto_20160525_1623','2018-11-12 06:14:29.581007'),(21,'oauth2_provider','0005_auto_20170514_1141','2018-11-12 06:14:30.600229'),(22,'oauth2_provider','0006_auto_20171214_2232','2018-11-12 06:14:30.851873'),(23,'sessions','0001_initial','2018-11-12 06:14:30.900570'),(24,'goods','0002_auto_20181112_0637','2018-11-12 06:37:59.357408'),(25,'user','0002_auto_20181112_0637','2018-11-12 06:37:59.386284'),(26,'goods','0003_auto_20181112_0649','2018-11-12 06:49:10.604142');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2bbkg5nj1y19yy2ajiuhpv4flekjfsuj','Mjg0MTI0ZTdjNTA1ZWNmNmUwZTlkY2NkOWU1N2YxNzRhYTc4YTQyOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NzEyNTVhMDA3MGE3NzViZDQ0MDc2Njc1MjQyMjlkZGVlOWEzOWE3In0=','2018-11-26 06:19:52.697443');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_goods`
--

DROP TABLE IF EXISTS `goods_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `shipping_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goods_provider_id_22d9c27d_fk_goods_provider_id` (`provider_id`),
  KEY `goods_goods_shipping_id_d9fc0562` (`shipping_id`),
  CONSTRAINT `goods_goods_provider_id_22d9c27d_fk_goods_provider_id` FOREIGN KEY (`provider_id`) REFERENCES `goods_provider` (`id`),
  CONSTRAINT `goods_goods_shipping_id_d9fc0562_fk_goods_shipping_id` FOREIGN KEY (`shipping_id`) REFERENCES `goods_shipping` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_goods`
--

LOCK TABLES `goods_goods` WRITE;
/*!40000 ALTER TABLE `goods_goods` DISABLE KEYS */;
INSERT INTO `goods_goods` VALUES (1,'Python Hood T-Shirts',20000,1,1),(2,'JAVA Round T-Shirts',15000,1,3),(3,'PHP V Neck T-Shirts',15000,1,4),(4,'Flask Jacket',3000,1,6),(5,'Spring Boot Jacket',20000,1,6),(6,'Codeigniter Jacket',5000,1,4),(7,'Django Jacket',15000,2,7),(8,'엣지있는 리액트 티셔츠',50000,3,4),(9,'화려한 리액트 부츠',43000,3,3),(10,'Reactive Glasses',12000,4,7),(11,'30cm Ruler Pin',3000,2,3),(12,'28cm Socks',3000,2,6);
/*!40000 ALTER TABLE `goods_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_option`
--

DROP TABLE IF EXISTS `goods_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(55) NOT NULL,
  `size` varchar(55) NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_option_goods_id_ac0aac66_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_option_goods_id_ac0aac66_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_option`
--

LOCK TABLES `goods_option` WRITE;
/*!40000 ALTER TABLE `goods_option` DISABLE KEYS */;
INSERT INTO `goods_option` VALUES (1,'yellow','S',10,1),(2,'yellow','M',10,1),(3,'yellow','L',10,1),(4,'blue','S',20,1),(5,'blue','M',25,1),(6,'blue','L',18,1),(7,'green','S',10,2),(8,'green','M',12,2),(9,'green','L',20,2),(10,'violet','S',10,3),(11,'violet','M',10,3),(12,'violet','L',10,3),(13,'black','S',10,4),(14,'black','M',10,4),(15,'black','L',10,4),(16,'yellowgreen','S',30,5),(17,'yellowgreen','M',30,5),(18,'yellowgreen','L',30,5),(19,'yellowgreen','XL',10,5),(20,'red','S',100,6),(21,'red','M',120,6),(22,'green','M',0,7),(23,'green','L',30,7),(24,'yellow','M',30,8),(25,'black','XL',11,9),(26,'blue','M',10,10),(27,'yellowgreen','M',20,10),(28,'red','L',33,11),(29,'green','L',43,11),(30,'blue','S',150,12),(31,'black','L',230,12);
/*!40000 ALTER TABLE `goods_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_provider`
--

DROP TABLE IF EXISTS `goods_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_provider`
--

LOCK TABLES `goods_provider` WRITE;
/*!40000 ALTER TABLE `goods_provider` DISABLE KEYS */;
INSERT INTO `goods_provider` VALUES (1,'Style Share'),(2,'29CM'),(3,'JAYNE'),(4,'Reactive Fashion');
/*!40000 ALTER TABLE `goods_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_shipping`
--

DROP TABLE IF EXISTS `goods_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(10) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `can_bundle` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_shipping`
--

LOCK TABLES `goods_shipping` WRITE;
/*!40000 ALTER TABLE `goods_shipping` DISABLE KEYS */;
INSERT INTO `goods_shipping` VALUES (1,'PREPAY',5000,1),(3,'PREPAY',3000,1),(4,'PREPAY',5000,0),(6,'FREE',0,1),(7,'PREPAY',2500,1);
/*!40000 ALTER TABLE `goods_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_provider_accesstoken_token_8af090f8_uniq` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  KEY `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_user_user_id` (`user_id`),
  KEY `oauth2_provider_accesstoken_application_id_b22886e1_fk` (`application_id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_accesstoken_application_id_b22886e1_fk` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  KEY `oauth2_provider_application_user_id_79829054_fk_user_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_application_user_id_79829054_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_provider_grant_code_49ab4ddf_uniq` (`code`),
  KEY `oauth2_provider_grant_application_id_81923564_fk` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_user_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_grant_application_id_81923564_fk` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `access_token_id` bigint(20) DEFAULT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refreshtoken_application_id_2d1c311b_fk` (`application_id`),
  KEY `oauth2_provider_refreshtoken_user_id_da837fce_fk_user_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refreshtoken_application_id_2d1c311b_fk` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refreshtoken_user_id_da837fce_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user`
--

DROP TABLE IF EXISTS `user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user`
--

LOCK TABLES `user_user` WRITE;
/*!40000 ALTER TABLE `user_user` DISABLE KEYS */;
INSERT INTO `user_user` VALUES (1,'pbkdf2_sha256$120000$eecnFg9Bbea7$rEQC2hSHlMxqOS3IMmZyfDekjdnCgDXpqN67mcM7LdE=','2018-11-12 06:19:52.694946',1,'admin','2018-11-12 06:17:16.666161');
/*!40000 ALTER TABLE `user_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_groups`
--

DROP TABLE IF EXISTS `user_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_groups_user_id_group_id_bb60391f_uniq` (`user_id`,`group_id`),
  KEY `user_user_groups_group_id_c57f13c0_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_user_groups_group_id_c57f13c0_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_user_groups_user_id_13f9a20d_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_groups`
--

LOCK TABLES `user_user_groups` WRITE;
/*!40000 ALTER TABLE `user_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_user_permissions`
--

DROP TABLE IF EXISTS `user_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq` (`user_id`,`permission_id`),
  KEY `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_user_user_permissions_user_id_31782f58_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_user_permissions`
--

LOCK TABLES `user_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `user_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-15 11:02:34
