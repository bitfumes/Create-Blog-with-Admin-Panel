# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: blog-series
# Generation Time: 2017-08-30 09:04:34 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role`;

CREATE TABLE `admin_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role` WRITE;
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;

INSERT INTO `admin_role` (`id`, `admin_id`, `role_id`, `created_at`, `updated_at`)
VALUES
	(1,3,4,NULL,NULL),
	(4,7,3,NULL,NULL),
	(6,3,3,NULL,NULL),
	(7,1,1,NULL,NULL);

/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'Sarthak','sarthak@gmail.com','$2y$10$l4ODE.jAzImO5cL7KJuK7Obok1VXHsDonQX9U/6aishfDfEyiyfaC','9999999999',1,'2017-07-28 06:52:47','2017-07-30 14:19:48'),
	(3,'Sarthak Shrivastava','bitfumes@gmail.com','$2y$10$XlYHnFdjf.jb0ez1ojkq9e6aPUOPhn4VhFu7oN3nPJ7QP1MyrVeuS','7987569077',1,'2017-07-28 06:52:47','2017-07-28 08:01:39');

/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'sarthak','sarthak','2017-06-26 07:47:23','2017-06-26 07:47:23'),
	(2,'bitfumes','bitfumes','2017-06-26 07:47:29','2017-06-26 07:47:29');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table category_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category_posts`;

CREATE TABLE `category_posts` (
  `post_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `category_posts_post_id_index` (`post_id`),
  KEY `category_posts_category_id_index` (`category_id`),
  CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `category_posts` WRITE;
/*!40000 ALTER TABLE `category_posts` DISABLE KEYS */;

INSERT INTO `category_posts` (`post_id`, `category_id`, `created_at`, `updated_at`)
VALUES
	(2,1,'2017-06-26 07:54:20','2017-06-26 07:54:20'),
	(2,2,'2017-07-01 06:44:45','2017-07-01 06:44:45'),
	(161,1,'2017-07-04 08:14:04','2017-07-04 08:14:04'),
	(162,1,'2017-07-04 08:14:24','2017-07-04 08:14:24'),
	(163,1,'2017-07-04 08:14:41','2017-07-04 08:14:41'),
	(164,2,'2017-07-04 08:14:56','2017-07-04 08:14:56'),
	(165,1,'2017-07-04 08:15:30','2017-07-04 08:15:30'),
	(166,2,'2017-07-04 08:15:49','2017-07-04 08:15:49'),
	(167,2,'2017-07-04 08:16:46','2017-07-04 08:16:46'),
	(168,2,'2017-07-04 08:17:01','2017-07-04 08:17:01'),
	(169,2,'2017-07-04 08:17:20','2017-07-04 08:17:20'),
	(170,2,'2017-07-10 16:32:47','2017-07-10 16:32:47');

/*!40000 ALTER TABLE `category_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table likes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`)
VALUES
	(24,3,170,'2017-08-04 06:24:28','2017-08-04 06:24:28'),
	(25,3,169,'2017-08-04 06:24:30','2017-08-04 06:24:30'),
	(26,3,167,'2017-08-04 06:24:33','2017-08-04 06:24:33'),
	(27,2,169,'2017-08-04 06:25:02','2017-08-04 06:25:02'),
	(28,2,170,'2017-08-04 06:25:24','2017-08-04 06:25:24'),
	(29,2,168,'2017-08-04 06:25:26','2017-08-04 06:25:26'),
	(31,2,166,'2017-08-04 06:25:28','2017-08-04 06:25:28'),
	(32,2,164,'2017-08-04 06:25:32','2017-08-04 06:25:32'),
	(33,2,163,'2017-08-04 06:25:34','2017-08-04 06:25:34');

/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(31,'2014_10_12_000000_create_users_table',1),
	(32,'2014_10_12_100000_create_password_resets_table',1),
	(33,'2017_06_19_070344_create_posts_table',1),
	(34,'2017_06_19_070731_create_tags_table',1),
	(35,'2017_06_19_070801_create_categories_table',1),
	(36,'2017_06_19_070824_create_category_posts_table',1),
	(37,'2017_06_19_070923_create_post_tags_table',1),
	(38,'2017_06_19_071000_create_admins_table',1),
	(39,'2017_06_19_071103_create_roles_table',1),
	(40,'2017_06_19_071125_create_admin_roles_table',1),
	(41,'2017_07_22_070234_create_permissions_table',2),
	(42,'2017_08_04_055752_likes',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`role_id`, `permission_id`)
VALUES
	(3,6),
	(3,10),
	(4,4),
	(4,5),
	(4,11),
	(4,12),
	(5,4),
	(5,9),
	(5,12),
	(1,6),
	(1,4),
	(1,12),
	(1,5),
	(1,10);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `name`, `for`, `created_at`, `updated_at`)
VALUES
	(4,'Post-Create','post','2017-07-22 08:21:37','2017-07-22 08:21:37'),
	(5,'Post-update','post','2017-07-22 08:22:27','2017-07-22 08:22:27'),
	(6,'Post-Delete','post','2017-07-22 08:22:40','2017-07-22 08:22:40'),
	(7,'User-Create','user','2017-07-22 08:23:05','2017-07-22 08:23:05'),
	(8,'User-Update','user','2017-07-22 08:23:24','2017-07-22 08:23:24'),
	(9,'User-Delete','user','2017-07-22 08:23:35','2017-07-22 08:23:35'),
	(10,'Post-Publish','post','2017-07-22 08:23:51','2017-07-22 08:23:51'),
	(11,'Tag-CRUD','other','2017-07-22 08:24:12','2017-07-22 08:24:12'),
	(12,'Category-CRUD','other','2017-07-22 08:24:20','2017-07-22 08:24:20');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_tags`;

CREATE TABLE `post_tags` (
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `post_tags_post_id_index` (`post_id`),
  KEY `post_tags_tag_id_index` (`tag_id`),
  CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;

INSERT INTO `post_tags` (`post_id`, `tag_id`, `created_at`, `updated_at`)
VALUES
	(2,2,'2017-06-26 07:54:20','2017-06-26 07:54:20'),
	(2,1,'2017-07-01 06:46:36','2017-07-01 06:46:36'),
	(161,1,'2017-07-04 08:14:04','2017-07-04 08:14:04'),
	(162,2,'2017-07-04 08:14:24','2017-07-04 08:14:24'),
	(163,1,'2017-07-04 08:14:41','2017-07-04 08:14:41'),
	(164,1,'2017-07-04 08:14:56','2017-07-04 08:14:56'),
	(165,1,'2017-07-04 08:15:30','2017-07-04 08:15:30'),
	(166,2,'2017-07-04 08:15:49','2017-07-04 08:15:49'),
	(167,1,'2017-07-04 08:16:46','2017-07-04 08:16:46'),
	(168,2,'2017-07-04 08:17:01','2017-07-04 08:17:01'),
	(169,1,'2017-07-04 08:17:20','2017-07-04 08:17:20'),
	(170,1,'2017-07-10 16:32:47','2017-07-10 16:32:47');

/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `title`, `subtitle`, `slug`, `body`, `status`, `posted_by`, `image`, `created_at`, `updated_at`)
VALUES
	(2,'This is first title','subtitle','ajax','<p>Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center &mdash; an equal earth which all men occupy as equals. The airman&#39;s earth, if free men make it, will be truly round: a globe in practice, not in theory.</p>\r\n\r\n<p>Science cuts two ways, of course; its products can be used for both good and evil. But there&#39;s no turning back from science. The early warnings about technological dangers also come from science.</p>\r\n\r\n<p>What was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth.</p>\r\n\r\n<p>A Chinese tale tells of some men sent to harm a young girl who, upon seeing her beauty, become her protectors rather than her violators. That&#39;s how I felt seeing the Earth for the first time. I could not help but love and cherish her.</p>\r\n\r\n<p>For those who have seen the Earth from space, and for the hundreds and perhaps thousands more who will, the experience most certainly changes your perspective. The things that we share in our world are far more valuable than those which divide us.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code class=\"language-css\"> p {color :red;} </code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>The Final Frontier</h2>\r\n\r\n<p>There can be no thought of finishing for &lsquo;aiming for the stars.&rsquo; Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>\r\n\r\n<p>There can be no thought of finishing for &lsquo;aiming for the stars.&rsquo; Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>\r\n\r\n<blockquote>The dreams of yesterday are the hopes of today and the reality of tomorrow. Science has not yet mastered prophecy. We predict too much for the next year and yet far too little for the next ten.</blockquote>\r\n\r\n<p>Spaceflights cannot be stopped. This is not the work of any one man or even a group of men. It is a historical process which mankind is carrying out in accordance with the natural laws of human development.</p>\r\n\r\n<h2>Reaching for the Stars</h2>\r\n\r\n<p>As we got further and further away, it [the Earth] diminished in size. Finally it shrank to the size of a marble, the most beautiful you can imagine. That beautiful, warm, living object looked so fragile, so delicate, that if you touched it with a finger it would crumble and fall apart. Seeing this has to change a man.</p>\r\n\r\n<p><a href=\"http://localhost:8000/post#\"><img alt=\"\" src=\"http://localhost:8000/img/post-sample-image.jpg\" /></a>To go places and do things that have never been done before &ndash; that&rsquo;s what living is all about.</p>\r\n\r\n<p>Space, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before.</p>\r\n\r\n<p>As I stand out here in the wonders of the unknown at Hadley, I sort of realize there&rsquo;s a fundamental truth to our nature, Man must explore, and this is exploration at its greatest.</p>\r\n\r\n<p>Placeholder text by&nbsp;<a href=\"http://spaceipsum.com/\">Space Ipsum</a>. Photographs by&nbsp;<a href=\"https://www.flickr.com/photos/nasacommons/\">NASA on The Commons</a>.</p>',1,NULL,'public/O3R4eP4aVHeEIUPBAI4kROs2T86pWFfByzYhcoLi.jpeg','2017-06-26 07:54:20','2017-07-10 16:23:14'),
	(161,'This is second','second','second','<p>this is second</p>',1,NULL,NULL,'2017-07-04 08:14:04','2017-07-04 08:14:04'),
	(162,'this is third','third','third','<p>this is thrid</p>',1,NULL,NULL,'2017-07-04 08:14:24','2017-07-04 08:14:24'),
	(163,'this is fourth','fourth','fourth','<p>this is fourth</p>',1,NULL,NULL,'2017-07-04 08:14:41','2017-07-04 08:14:41'),
	(164,'this is fifth','fifth','fifth','<p>this is fifth</p>',1,NULL,NULL,'2017-07-04 08:14:56','2017-07-04 08:14:56'),
	(165,'this is sixth','sixth','sixth','<p>this is sixth</p>',1,NULL,NULL,'2017-07-04 08:15:30','2017-07-04 08:15:30'),
	(166,'this is seventh','seventh','seventh','<p>this is seventh</p>',1,NULL,NULL,'2017-07-04 08:15:49','2017-07-04 08:15:49'),
	(167,'this is eighth','eighth','eighth','<p>this is eighth</p>',1,NULL,NULL,'2017-07-04 08:16:46','2017-07-04 08:16:46'),
	(168,'this is ninth','ninth','ninth','<p>this is ninth</p>',1,NULL,NULL,'2017-07-04 08:17:01','2017-07-04 08:17:01'),
	(169,'this is tenth','tenth','tenth','<p>this is tenth</p>',1,NULL,'public/ddPbyMEkUBJHXmf3iCUbyu53oXIhwPwBGwfvl1Go.jpeg','2017-07-04 08:17:20','2017-07-10 16:29:05'),
	(170,'This is for file Upload','file upload','file-upload','<h1 style=\"text-align:center\"><strong>Bitfumes</strong></h1>\r\n\r\n<p style=\"text-align:center\">This is very nice because we have uploaded the file</p>',1,NULL,'public/LoyuEI8fLb2z6I2mVKbEGaeqjG0yWMQXoLk2E1mg.jpeg','2017-07-10 16:32:47','2017-08-03 11:28:15');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Editors','2017-07-21 08:17:13','2017-07-21 08:27:48'),
	(3,'Publisher','2017-07-21 08:28:33','2017-07-21 08:28:33'),
	(4,'Writer','2017-07-21 08:28:38','2017-07-21 08:28:38');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'master','master','2017-06-26 07:47:05','2017-06-26 07:47:05'),
	(2,'master1','master1','2017-06-26 07:47:12','2017-06-26 07:47:12');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(2,'Sarthak Shrivastava','bitfumes@gmail.com','$2y$10$5L.QBN0qXSZ8x9KuxSh65.E4aJtw5cAh901VXqHsfiHI72EfdH5dS','ZmfCotzspvRsk7tQVZamZpYyTHSM20SAPmLWjTg9DbWyNmA3Z7zEzTff9PSo','2017-07-12 05:37:55','2017-07-12 05:37:55'),
	(3,'Ankur Shrivastava','ankur@gmail.com','$2y$10$l4ODE.jAzImO5cL7KJuK7Obok1VXHsDonQX9U/6aishfDfEyiyfaC','lMuCX5ZMe0yhEJPL7C2DcjgzKn5J1gY7UJYs35UL0iBmFoTvMdkysFBLTL4D','2017-07-12 05:52:45','2017-07-12 05:52:45');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
