# Host: localhost  (Version 8.0.18)
# Date: 2020-06-22 07:50:26
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "failed_jobs"
#

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "failed_jobs"
#


#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_06_19_144533_create_table_products',1),(5,'2020_06_19_234400_create_table_products',2),(6,'2020_06_19_235919_create_table_products',3);

#
# Structure for table "password_resets"
#

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "password_resets"
#


#
# Structure for table "products"
#

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cod_product_kit` text COLLATE utf8mb4_unicode_ci,
  `kit` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "products"
#

INSERT INTO `products` VALUES (117,'Lego XBOX 360','Video Games',100.00,'Jogo do Lego para Xbox 360','images/hT3tS4Cujwh6Ro5ZjY5fF7QtPEosTtBmbmCO0hrP.jpeg',NULL,0,'2020-06-22 10:09:18','2020-06-22 10:09:18'),(118,'Joystick PS4','Video Games',50.00,'Joystick para PS4','images/k2Nh6GZhDt3RFT2crJKqQwnbg7hre9nFlLyEUasx.jpeg',NULL,0,'2020-06-22 10:10:54','2020-06-22 10:10:54'),(119,'Jogo Fifa 2019 p/  PS4','Video Games',100.00,'Jogo do FIFA 2019 para PS4','images/u7JZmZZHmlBvorIAVrZE0dSLZJGSuL4zRXv7tgLi.jpeg',NULL,0,'2020-06-22 10:11:41','2020-06-22 10:11:41'),(120,'Playstation 4','Video Games',2100.00,'Console Playstation 4 2020','images/j1ALwVxdGEoKupAMrmEzOs6olBtlueWL4kFcTv24.jpeg',NULL,0,'2020-06-22 10:12:18','2020-06-22 10:12:18'),(121,'Kit Gamer PS4 II 2020','Video Games',2500.00,'Kit Gamer completo para amantes do console Playstation 4 2020.','images/9QXFlnceDzuXAvReWsgZFALBAAo1m5lL4YLjC4wW.jpeg|images/xhmMPRjU4yWSf8Bb6m4OlUTfi1LLfnQnxDTBRAHX.jpeg|images/FHrG1AS9wQsaxnHNimdfc4X1w6LMmeHnBlPaNEom.jpeg','2 x Joystick PS4 | 1 x Jogo Fifa 2019 p/  PS4 | 1 x Playstation 4',1,'2020-06-22 10:14:05','2020-06-22 10:14:05'),(122,'Video Game Master System Portátil','Consoles',200.00,'Video Game Master System Portátil','images/HSNnXN7J7IvSYaeJhBHFQ2fZUIUGCPQa0j1SGhxN.jpeg',NULL,0,'2020-06-22 10:15:27','2020-06-22 10:15:27'),(123,'Joystick PS4 Wifi','Controles Remotos',100.00,'Joystick PS4 Wifi - Sem Fio','images/xwRGW9oeebXwaWz12dxt9RdsQRjcB49I5LBRztgg.jpeg',NULL,0,'2020-06-22 10:16:21','2020-06-22 10:16:21');

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'Caio','bladellano@gmail.com',NULL,'$2y$12$YlooCyNvyTji8bPRcrfNfOKnVMmZA9ViM2A3IpFjmrpIbp5ovNmga',NULL,'2020-06-18 00:00:00','2020-06-18 00:00:00'),(2,'Admin','admin',NULL,'$2y$12$YlooCyNvyTji8bPRcrfNfOKnVMmZA9ViM2A3IpFjmrpIbp5ovNmga',NULL,'2020-06-19 00:00:00','2020-06-19 00:00:00');
