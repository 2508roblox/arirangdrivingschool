-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: arirangdrivingschool
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.22.04.1

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3','i:1;',1738933694),('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer','i:1738933694;',1738933694);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_02_04_104511_create_services_table',2),(5,'2025_02_04_104513_create_registrations_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `pickup_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` bigint unsigned DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `registrations_service_id_foreign` (`service_id`),
  CONSTRAINT `registrations_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrations`
--

LOCK TABLES `registrations` WRITE;
/*!40000 ALTER TABLE `registrations` DISABLE KEYS */;
INSERT INTO `registrations` VALUES (8,'Oliver','Smith','oliver.smith@example.com','+44 20 7946 0958','2025-02-05','123 Main Street, London, NW1 5LT',1,'123 Main Street, London, NW1 5LT\n','2025-02-04 19:04:01','2025-02-04 19:04:01'),(9,'Amelia','Johnson','amelia.johnson@example.com','+44 20 7946 0959','2025-02-06','456 High Road, Manchester, M1 2AB',2,'456 High Road, Manchester, M1 2AB\n','2025-02-04 19:04:26','2025-02-04 19:04:26'),(10,'Harry','Brown','harry.brown@example.com','+44 20 7946 0960','2025-02-05','789 Elm Street, Birmingham, B1 3AA',3,'789 Elm Street, Birmingham, B1 3AA\n','2025-02-04 19:05:03','2025-02-04 19:05:03'),(11,'Isla','Williams','isla.williams@example.com','+44 20 7946 0961','2025-02-05','101 Oak Avenue, Leeds, LS1 4GH',2,'101 Oak Avenue, Leeds, LS1 4GH','2025-02-04 19:05:24','2025-02-04 19:05:24'),(12,'faweg','ăegaw','trangiangzxc@gmail.com','0589317493',NULL,'123123',NULL,'123123','2025-02-06 06:51:05','2025-02-06 06:51:05'),(13,'faweg','ăegaw','trangiangzxc@gmail.com','0589317493','2025-02-06','HCM',1,'123123','2025-02-06 06:53:05','2025-02-06 06:53:05'),(14,'Tommy','Zapes','seorankingtech@gmail.com','1201201200',NULL,'Re: SEO Services',NULL,'Hello arirangdrivingschool.ca,\r\n\r\nLeverage ethical strategies to draw 10 to 20 motivated clients to your business.\r\n\r\nAre you interested in hearing more details?\r\n\r\nWell wishes,\r\nTommy Zapes | Digital Marketing Manager\r\n\r\n\r\n\r\nNote: - If you’re not Interested in our Services, send us  \"opt-out\"','2025-03-26 05:51:39','2025-03-26 05:51:39');
/*!40000 ALTER TABLE `registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `lesson_count` int NOT NULL,
  `benefits` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Single Lesson','60-90 minutes',70.00,1,'[{\"value\": \" $70 for 60 minutes\"}, {\"value\": \" $90 for 90 minutes (saved $15)\"}, {\"value\": \"Recommend for the first try( beginner, intermediate and advanced drivers)\"}]','2025-02-04 04:03:57','2025-02-07 02:31:58'),(2,'H2 Package','2 lessons',175.00,2,'[{\"value\": \" 90 mins / session\"}, {\"value\": \" Saved $5\"}, {\"value\": \"Recommend for intermediate drivers\"}]','2025-02-04 04:37:40','2025-02-06 18:45:47'),(3,'H4 Package','4 lessons',350.00,4,'[{\"value\": \" 90 mins / session\"}, {\"value\": \" Saved $10\"}, {\"value\": \"Recommend for intermediate drivers\"}]','2025-02-04 04:38:18','2025-02-06 18:45:57'),(4,'H6 Package','6 lessons',530.00,6,'[{\"value\": \" 90 mins / session\"}, {\"value\": \" Saved $10\"}, {\"value\": \"Recommend for intermediate drivers\"}]','2025-02-04 04:38:44','2025-02-06 18:46:10'),(5,'H10 Package','10 lessons',880.00,10,'[{\"value\": \" 90 mins / session\"}, {\"value\": \" Saved $20\"}, {\"value\": \"Recommend for beginner drivers \"}]','2025-02-04 04:39:12','2025-02-07 06:07:41'),(6,'Road Test Rental','0',160.00,1,'[{\"value\": \" Includes car rental  \"}, {\"value\": \"Plus one-hour warm-up lesson\"}]','2025-02-04 04:39:43','2025-02-06 18:46:47'),(7,'Car Rental (Test Only)','0',100.00,0,'[{\"value\": \"For advance driver only\"}]','2025-02-05 22:54:19','2025-02-06 18:47:02'),(8,'HR15 Package ','0',1450.00,0,'[{\"value\": \"90mins/ session\"}, {\"value\": \"Includes one road test + 1hour warm-up lesson\"}, {\"value\": \" Save $150\"}, {\"value\": \"Recommend for beginner drivers \"}]','2025-02-06 06:42:35','2025-02-07 06:08:08'),(9,'HR10 Package ','0',1000.00,0,'[{\"value\": \"90mins/ session\"}, {\"value\": \"Includes one road test + 1hour warm-up lesson\"}, {\"value\": \" Save $100\"}, {\"value\": \"Recommend for beginner drivers \"}]','2025-02-06 06:42:52','2025-02-07 06:08:15');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0Ej7OchIgqZ6q65hXucgtxo3W0vI2QPu3zQaOgvv',NULL,'45.154.98.74','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmZRWjQ3Z1ZJMG8wOWZaYmk1Ujdsd21GbFRpZTVod2p4Y0xISE1yNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2E/YXV0aG9yPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744167059),('22QFuHNInthJ0ho7a1nY4hd44vZnOKKZZgSNu9Ty',NULL,'128.199.182.152','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWQ0MEhCWjFqajhPUzdPU3hpY2Jrb1lGUlR2ckV0ZlhTTUhmaHBNTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744214567),('298j3lNBhk6XUExd4wYWa8FrI1ZDLEn01fJW3lSb',NULL,'171.243.49.217','WhatsApp/2','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkNOTDJRNlVyQURWZFRCSmFXdVBtbVRlTThnTGVIR3h4UW14THYwRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744251555),('3QFIqmdqznXmGmVUoKcwKzpzGhG7xNaHLdCUmxDu',NULL,'64.227.70.2','Go-http-client/1.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWZ2OVhwVUxSZkFwQWZQSEZsUUZpUHVnbHBla2dpRFd1OXA3Z2dlMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LmFyaXJhbmdkcml2aW5nc2Nob29sLmNhL2Fib3V0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1744214579),('41EPIChzIRFbrRsexhcVRyFpCU32ssqVCVIZ2TyO',NULL,'157.180.29.204','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 GLS/100.10.9939.100','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGpUMzNzbVh1M1lUb3Y5WkE5M0VQd0VLcHF3RHNJa0JzYVhabFNsWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744219865),('49m3bV6T1jNJB1X9aTfK3yeF3J9jegzmjm5yJitK',NULL,'174.6.120.47','Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.1 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoidGR2aWZ5NWxpb3ZzYUtUUUVnTHpaQUtmclpkMUdmczdBWmJpcEJxNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2Evc2VydmljZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744249255),('95LonjRp4Gxe8JQYWeXkyO3u8q7NC6Av4T79YHRt',NULL,'179.43.149.114','Mozilla/5.0 (Linux; Android 7.0; HUAWEI VNS-L31) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.111 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1ZRZ25jcXhMOGdxN2hRWVZEcnJiV1JIMVdnTExqS3Rpc3lQdmJiTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744230534),('9uO4WxsHtu05NmlMsuZIzg7TfxCwokbS6cQda43B',NULL,'173.209.32.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0Vsa1ROYURlNDJXOEhFeHh0OFIxcHczOVhrajlYNUl1bFlKTXNVdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744192854),('biTq0A0ujTM2DfPybEk7KnPrSK2DaUwIehJsrEqO',NULL,'173.209.32.2','Softaculous','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGlyZFN2MXpvdExlMkpvZXFEcGIyVjVqaGZOWFkyVk1tVTVwM0QwcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744106798),('DLqpPFZYxjAUbqxeEnQRrdIYXcYtdUC3iQEpIaoI',NULL,'128.199.182.152','Go-http-client/1.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS05MQ29ZalRnTWhwUXFEdzNnbHdXcklNUVpkZkpPeWZmbjBkZVFMZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EvYWJvdXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744214572),('eZsE8pij44pHf1crB0yafC6zYRHhgNvucINo8xF0',NULL,'154.5.41.231','Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.1 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoieDlXcTZFZTJiUktocGdIRWhFQjI3Tk9qNjhEWTFESklnS012OGJXOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744221026),('FuWwEBbi6IYPoXEHfrWIikeNeKh4hV5BfqCsTjZ0',NULL,'173.209.32.2','Softaculous','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnNEakNXUXNLaEt1WXpUOTJlN05mZzFxQWltSnp5N0dkV1cyYlJoNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744106795),('G96BH9T0Qdb8UtRmnyAdjhD1pBBXPvlaMxatjShF',NULL,'104.152.52.56','curl/7.61.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWZoaTE1bFhVbkFpVTlDQXBqM3dVTmQyWXl3azRYbDVtNzBmc1lEMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744217918),('gAdf0c3TezjxHyb9OJHvMzUDHZHDnY1ckVBN4se1',NULL,'66.249.72.141','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVZEeUNxdlo5dGRrTjljcVdRWkluUHdJeDlDc3JNQkIwYVYwQ2xtcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744110281),('Gl25bs14Dp0q8lqEZJrFXx5NrSnqvT8JTTXoVRg0',NULL,'3.88.197.40','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidlJqYUQxd1VMSDI1bE5LVjhHOHpkZjZ6SmZsbWM2VkU4aG04bnI1NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd3d3LmFyaXJhbmdkcml2aW5nc2Nob29sLmNhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1744250261),('Gq4M2ZyP2laxVqZp0qF27bBOd38Gx8ikkCqcsxKS',NULL,'93.159.230.84','Mozilla/5.0 (Linux; arm_64; Android 12; CPH2205) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.3.86.00 SA/3 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicmVHMlZDa1lnbXJGcGoxbFpyUGZqTVdpaTV6VURaSGlGMXZJd216YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744058476),('grNg0AhEcbdawLOVzv5WpLVJQQdI6p8AyXykKVBA',NULL,'205.169.39.25','Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidGMxU3RPSVFNZFg1MnN4Q291dE5zQ2g4MEw0RXZ1N0dDWEkyYlV1SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744215941),('IcG2WRiqtETzj5xUmLX5AjT5v9v3c3IooqiXUbp9',NULL,'46.137.7.132','Pandalytics/2.0 (https://domainsbot.com/pandalytics/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoidU1YR0NyUmVpRUdVZlZWbnhiVHZWaDFDdGtXZG9qYzY5NzlmbVp2MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744234350),('IrjyM70HIeQdXUhPsW1ae5tchzzLIZrQwB6kH9xc',NULL,'154.28.229.137','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0RoQnp0aXhxOTBJMEdGOXlnMDZvMm1MU2VhT2E1NDA5SXc1a2hNYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744221782),('iWRKWjoQ1VgXUBPATe9zGo8fCDraDSrTdh5Wkt6l',NULL,'128.199.182.152','Go-http-client/1.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzhwcGRjVjNGRU9aemJmUldrWnR4cjNrTDdSWmgxT0tKWnRRYWxnQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EvP3Jlc3Rfcm91dGU9JTJGd3AlMkZ2MiUyRnVzZXJzJTJGIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1744214580),('IYocl0t0R1gxPEsEs8d5vSFtVGZI5TIgHyVWxc1i',NULL,'143.110.226.49','Mozilla/5.0 (compatible)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlB6ZnFpYnRONG5adjFJSHZEaGtuM3V1dXRJTFFaZ2trZk5mZ3FDWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd3d3LmFyaXJhbmdkcml2aW5nc2Nob29sLmNhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1744246185),('jeQQGPaZ1eK4OVAuY2kLjFJOs8T3hyFqSxO79naH',NULL,'64.227.70.2','Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA390897) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.1024.98 Mobile Safari/537.3','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjRTbWh6TmlzZzFoRndvN0R6MWpobGE0ckpRNEFOY2dyZEVQcGVXeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd3d3LmFyaXJhbmdkcml2aW5nc2Nob29sLmNhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1744214574),('jzelP5JllPCIcaTaTzbH8l13SEF75iejfHmHdAcC',NULL,'109.120.137.11','Mozilla/5.0 (Windows NT 10.0; Win64; x64) Gecko/20100101 Firefox/128.0 (x64 de)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXpicXFGTkxXYTNOOVVWbWI0WmI5RDRwT1RYblNINUlMWTRBU1k5cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744148442),('k2b8aXFunjpjEchq3h3tnVgh6Vjbs2fmYxPowelp',NULL,'64.227.70.2','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnZtRE51UHpycUdpU3FSSTZPRnJEOVhPTHo2cDUyZ0tGVmp3NU1yciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd3d3LmFyaXJhbmdkcml2aW5nc2Nob29sLmNhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1744214568),('Kf3lLoXdk2476TfX3BeazzzmNiupmZbIHmEGKSzp',NULL,'154.28.229.40','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicWxoS2pySU5kT3hUVlJ1eEIwb1dPVUdJdnBNT3JWcjg4bFBRU0psdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744246067),('LmOZDFOEDCv7Y3ls6fs1xagV1PpOq5PJvyJt6RAR',NULL,'31.57.159.126','Mozilla/5.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGYwaDROMHpDRjBVWWJ5RWtaWnNrTEs0VXhIZWloeXFYNEtjMzdBNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744208127),('mN2XuEz1Jc1YFqtcAMeoqIWi6evxuiLAvgrtqvkG',NULL,'66.249.72.141','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.7049.52 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2k1Q2E1QXRNSDdYaHBsNFVjZjVsVUFCWWtVbEc3d0dMZEZxMnBYRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744055064),('nOY7OxgxHx2ggKV6qiUWUo5BWPNGhlqgvfEyTHKE',NULL,'173.209.32.2','Softaculous','YTozOntzOjY6Il90b2tlbiI7czo0MDoiODFyZkdpNVJ6aGpLb2pNZGw5NXpkSDVMSHRMcUpiaXJGbG9wMnJadiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744192860),('NR3jAbeSwnoziq7L46WSokLDhTptqoojpP3NVfV2',NULL,'35.95.105.140','Mozilla/5.0 (compatible; wpbot/1.3; +https://forms.gle/ajBaxygz9jSR8p8G9)','YTozOntzOjY6Il90b2tlbiI7czo0MDoic2ZpYzdqdXFBbERSaXdVU3RrVHYyU1RoUkZXWENaZ2t6cHdhaldobiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744041189),('O9uD8GYmlXsmOQpzZYrtrHVt962jfaqbKXkBdPAR',NULL,'172.233.62.72','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 GLS/100.10.9939.100','YTozOntzOjY6Il90b2tlbiI7czo0MDoia1E1eWNGTTlxY2g4ZlJkRXp6bW4za0VXWFU0azFCamc2Z1lCTkhPSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744214582),('ovQdkhiZamg2Hy9nBMP5hsgKHeGSSfA0mwQDrNVp',NULL,'171.243.49.217','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmRkazRqQlVMdnlQSmE5MUNCVVF3aHJQa2pWNTIwVlE1VVNINzJHbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2Evc2VydmljZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744251521),('q6MwaF36UUUmPebbXLMgSkGOorjW19ZK0MvXt36R',NULL,'128.199.182.152','Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA390897) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.1024.98 Mobile Safari/537.3','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0lOSFhwMlFSUWdha0J4U254NXJYRkwxenpZZmhMYTBkQlYyeEpybyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744214569),('QwQOiartw80oQa7LbmTIh5nzH3Fjw7NLvSlhRz8w',NULL,'54.76.227.173','Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)','YTozOntzOjY6Il90b2tlbiI7czo0MDoibnV1VDFlbXExVjVkRnk4ekJpc3pOY3RPcHFrbjN6MnAwemhVeGxNeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd3d3LmFyaXJhbmdkcml2aW5nc2Nob29sLmNhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1744053644),('R5i7np3OWYnnZ2LaZknyU5g5uWKQsHY9VT5gFrk5',NULL,'64.227.70.2','Go-http-client/1.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXE1c2tGTTBSb0RxaVVZQ1A5R3RYSkhGUG5oZmhxQm4yajVsYmNGUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njk6Imh0dHBzOi8vd3d3LmFyaXJhbmdkcml2aW5nc2Nob29sLmNhLz9yZXN0X3JvdXRlPSUyRndwJTJGdjIlMkZ1c2VycyUyRiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1744214594),('RFbRlKbFV3ANObPrIn7gbdFCTOVjMOck1gmVupOe',NULL,'34.222.196.10','Mozilla/5.0 (compatible; wpbot/1.3; +https://forms.gle/ajBaxygz9jSR8p8G9)','YTozOntzOjY6Il90b2tlbiI7czo0MDoibDgyTUZoeG1lRHBKS2VPdVNhU0hFT0RYZDM5c0dHVkZ2ODFkSUM1dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744040528),('RmzhsiZTepTQSX3NfGCiY6Ifllgajp9toopZr5pQ',NULL,'44.233.155.11','Mozilla/5.0 (compatible; wpbot/1.3; +https://forms.gle/ajBaxygz9jSR8p8G9)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY09ieEY5dmg0ZDNSdndsZktGN3ZqWDJyUUtrRUJ5QUI5NWVLazg2TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd3d3LmFyaXJhbmdkcml2aW5nc2Nob29sLmNhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1744085530),('rS8RDmYR6aEORY1jCgdeLri4vfE0BtX1kaX1U2cU',NULL,'161.35.88.199','Mozilla/5.0 (compatible)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3B1TUZ6OHZvY1pmbVBwZzFPaU1FRmE2b1BHWXlMRUY2TTRYeGxXWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744194704),('RxAHEZ3M3mKa9BGOnHeNN13721WaHMXQXppT2ZZ7',NULL,'44.203.54.222','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjJkbWhVbFRvQmJPRGYyZVJTMjFvbXNMOTZpUGd4T2E2a0g0RENoUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744250263),('sq4UebAt3sfe5tyFerujc47r3VwxNDyaXivyi4Oc',NULL,'35.183.14.196','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoianJYeXRScDQ2aXZlOW4xRGt5aEFBb2lBcHI2Sks3ajB5WWdJdklEaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744155258),('vAEgRSMZzxZYapanKPwgHn6ALefbnl2s1cgZYzgq',NULL,'13.218.190.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlRiMldHQUtQMGNxM2Z4RHpkdUI4cDRWNmhYZFhGbGNzQnhCcUFjaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744037329),('VAM1wjjVdb71FwtBEyMlBhOaugDmQsjjjHf7SRwd',NULL,'82.102.18.222','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWZ3NFU3R3lWN0JRUURKc3FEZmhsZ3RZM3pwR2J6a3NOVlhXblBJTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2E/YXV0aG9yPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744117817),('VIiYJJdqyfjDo65nOe7i8AnSVG5gptfvveYkf4SD',NULL,'173.209.32.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnZNNERWUWoxeXNmOWdVVFhMYVpaa3VUcjFSdmgwQmFSWE1vTGVQTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744106801),('vn8UlXDPH5grALlvpvNqTLg6OSslkm7Snh7vcpJB',NULL,'154.5.41.231','Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.1 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXQxT0xyT1A2YlpvZVR4ZUdaTTRlMUlDNk5sdjlKNXBqQkhpaWdqYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744221088),('wpNc0OLlY6KG7fXuIO2Ddzy6CMOzGj0YGgz2sCas',NULL,'44.203.54.222','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0JWdFlFWWRmemlkZ0kyQlRNVDNwd0ZYVmtPelJjeFFTVDZYRnA5OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744250259),('XB3zABmafLMP8PmC0bWTseJopyaEeOVuOyopi5Xz',NULL,'171.243.49.217','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWZQUjFUWFBXVzRaSkwzM0F4VjhMdzRxZk1Pd3lsR1VCamxYS1E5ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2Evc2VydmljZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744251050),('XFhKNifLVLMM3EY4sVN8VMon6u0cXHDR1XUQH1Ra',NULL,'205.169.39.22','Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVJ6dGZXalBSNHlrYVBCQXprYUF2ZnhFR0Y0QkU2Q01EbzV4c3EzbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd3d3LmFyaXJhbmdkcml2aW5nc2Nob29sLmNhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1744215936),('y5Xb2U5Y76osAwmS8P7LlSAv3JnLH6RzaEakeC5U',NULL,'198.235.24.248','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTZaOHBVd1c4WjNGc1ZlQUhzNThTM0s3bWhIYldlVmFMbldQOThJOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744170671),('YJwjZi7q3RFd2iJxYPUhwkTrGC2LNxRX4wnMO33Y',NULL,'173.209.32.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1hjTjZxYXdmU255TVlXWFpJcHlrRXZKNFBwNG1JdUdKRXdJUk9GRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744192863),('ymLBgSCW2pU8kqOR7VRK2PDv9l5nj9SSX4niloqd',NULL,'173.209.32.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTdMdUVWNWsxOE54aUtYT0hxeHZEczZBVDJCaDJTWG9zQTNNSFlGbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744106786),('YsndN0jWUY8orD6Mnx0Z9JXXCINN7kVNpqWUgsfG',NULL,'34.136.255.179','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2049.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoieUl6c1JsYWZuRWRsc2dOdkpEZ3VTQjV6dlM5UjZnTGNYcTdVZDJsMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744190654),('yXK2iB8y4ubUXPoleV6650IfXeSAnzVgghWsOzA3',NULL,'99.81.216.206','Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20130328 Firefox/21.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjdkUVc1RFE4UXh1S1o2YVhXRWZwZTFFRjlyTnFORURSRm55T3dPaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744076841),('yZ1aXcGLXiMJrpCb66tqYHcmwNwmDH8rBBlKpmDH',NULL,'154.28.229.54','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2lXVHA3aEtIWlB6bEVUZHUwWXQ5dm1uRVptdmxIUFNndlY2b3YwayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744245403),('zTS1B1Mf8Wg9LKzFfjZVRikS3lbd08cFSSaBJdWh',NULL,'3.253.57.215','Pandalytics/2.0 (https://domainsbot.com/pandalytics/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTRXRjlPZjg4VmI5ZHE3ZUF0aHdJcTMwVnRrOGxraWJJYW5RRXFHciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXJpcmFuZ2RyaXZpbmdzY2hvb2wuY2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1744232502);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'giang','trangiangzxc@gmail.com',NULL,'$2y$12$qwDMXJ9GMdkPkKZsuA9W9eRfd74hjVVWsToAeRciVII5GMtb4Uzsu',NULL,'2025-02-04 03:36:58','2025-02-04 03:36:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-10  9:19:55
