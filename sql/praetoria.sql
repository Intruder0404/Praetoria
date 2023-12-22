-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 12:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praetoria`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `type`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Description', 'textArea', 1, NULL, '2023-04-06 17:58:27'),
(2, 'Logo', 'text', 1, NULL, NULL),
(3, 'Population', 'text', 1, NULL, NULL),
(4, 'Animal', 'text', 1, '2022-10-12 18:06:56', '2022-10-12 18:06:56'),
(5, 'Name', 'text', 1, '2022-10-13 07:23:16', '2022-10-13 07:23:16'),
(6, 'Family', 'select', 1, '2023-04-06 02:37:40', '2023-04-06 08:27:55'),
(7, 'Religion', 'select', 1, '2023-04-06 02:38:39', '2023-04-06 08:26:08'),
(8, 'Kingdom', 'select', 1, '2023-04-06 02:38:41', '2023-04-06 05:51:14'),
(9, 'Email', 'text', 1, '2023-04-06 08:32:03', '2023-04-06 08:32:27'),
(10, 'Username', 'text', 1, '2023-04-06 08:33:01', '2023-04-06 08:33:28'),
(15, 'Politics', 'text', 1, '2023-04-07 05:31:29', '2023-04-07 05:32:07'),
(16, 'Location', 'text', 1, '2023-04-07 05:54:12', '2023-04-07 05:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `user_create_id` int(11) DEFAULT NULL,
  `user_update_id` int(11) DEFAULT NULL,
  `user_delete_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`id`, `title`, `start`, `end`, `user_create_id`, `user_update_id`, `user_delete_id`, `created_at`, `updated_at`) VALUES
(15, '[object Object]', '2022-09-08 00:00:00', '2022-09-09 00:00:00', 1, 1, 1, NULL, '2022-09-10 17:01:32'),
(16, 'asfaw', '2022-09-06 00:00:00', '2022-09-07 00:00:00', 1, 1, 1, NULL, '2022-09-10 17:01:47'),
(17, 'fawffwaf', '2022-09-07 00:00:00', '2022-09-08 00:00:00', 1, 1, 1, NULL, '2022-09-10 17:01:40');

-- --------------------------------------------------------

--
-- Table structure for table `character`
--

CREATE TABLE `character` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `character`
--

INSERT INTO `character` (`id`, `user_id`, `name`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 1, 'Diogenus', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `character_attribute`
--

CREATE TABLE `character_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `character_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_attribute_value`
--

CREATE TABLE `character_attribute_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_type`
--

CREATE TABLE `data_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_type`
--

INSERT INTO `data_type` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'integer', NULL, NULL),
(2, 'string', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`id`, `name`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Octavii', 1, NULL, NULL),
(17, 'Scipii', 1, '2023-04-01 08:01:46', '2023-04-01 08:03:39'),
(18, 'Rapax', 1, '2023-04-01 08:04:08', '2023-04-01 08:04:21'),
(19, 'Fortii', 1, '2023-04-01 08:04:10', '2023-04-01 08:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `family_attributes`
--

CREATE TABLE `family_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_attributes`
--

INSERT INTO `family_attributes` (`id`, `attribute_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `family_attribute_value`
--

CREATE TABLE `family_attribute_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `value_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `family_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_attribute_value`
--

INSERT INTO `family_attribute_value` (`id`, `attribute_id`, `value_id`, `type_id`, `created_at`, `updated_at`, `family_id`) VALUES
(1, 1, 1, 1, NULL, NULL, 1),
(2, 2, 2, 1, NULL, NULL, 1),
(3, 3, 3, 1, NULL, NULL, 1),
(28, 4, 28, 1, '2022-10-12 20:11:04', '2022-10-12 20:11:04', 1),
(29, 4, 29, 1, '2022-10-12 20:11:04', '2022-10-12 20:11:04', 2),
(30, 4, 30, 1, '2022-10-12 20:11:04', '2022-10-12 20:11:04', 3),
(31, 4, 31, 1, '2022-10-12 20:11:04', '2022-10-12 20:11:04', 4),
(44, 5, 44, 1, '2022-10-13 07:24:48', '2022-10-13 07:24:48', 1),
(45, 5, 45, 1, '2022-10-13 07:24:48', '2022-10-13 07:24:48', 2),
(46, 5, 46, 1, '2022-10-13 07:24:48', '2022-10-13 07:24:48', 3),
(47, 5, 47, 1, '2022-10-13 07:24:48', '2022-10-13 07:24:48', 4),
(66, 1, 66, 1, '2023-04-01 08:01:46', '2023-04-01 08:01:46', 17),
(67, 2, 67, 1, '2023-04-01 08:01:46', '2023-04-01 08:01:46', 17),
(68, 3, 68, 1, '2023-04-01 08:01:46', '2023-04-01 08:01:46', 17),
(69, 4, 69, 1, '2023-04-01 08:01:46', '2023-04-01 08:01:46', 17),
(70, 5, 70, 1, '2023-04-01 08:01:46', '2023-04-01 08:01:46', 17),
(71, 1, 71, 1, '2023-04-01 08:04:08', '2023-04-01 08:04:08', 18),
(72, 2, 72, 1, '2023-04-01 08:04:08', '2023-04-01 08:04:08', 18),
(73, 3, 73, 1, '2023-04-01 08:04:08', '2023-04-01 08:04:08', 18),
(74, 4, 74, 1, '2023-04-01 08:04:08', '2023-04-01 08:04:08', 18),
(75, 5, 75, 1, '2023-04-01 08:04:08', '2023-04-01 08:04:08', 18),
(76, 1, 76, 1, '2023-04-01 08:04:10', '2023-04-01 08:04:10', 19),
(77, 2, 77, 1, '2023-04-01 08:04:10', '2023-04-01 08:04:10', 19),
(78, 3, 78, 1, '2023-04-01 08:04:10', '2023-04-01 08:04:10', 19),
(79, 4, 79, 1, '2023-04-01 08:04:10', '2023-04-01 08:04:10', 19),
(80, 5, 80, 1, '2023-04-01 08:04:10', '2023-04-01 08:04:10', 19),
(1334, 1, 1523, 1, '2023-04-06 02:37:40', '2023-04-06 02:37:40', 6),
(1335, 2, 1524, 1, '2023-04-06 02:37:40', '2023-04-06 02:37:40', 6),
(1336, 3, 1525, 1, '2023-04-06 02:37:40', '2023-04-06 02:37:40', 6),
(1337, 4, 1526, 1, '2023-04-06 02:37:40', '2023-04-06 02:37:40', 6),
(1338, 5, 1527, 1, '2023-04-06 02:37:40', '2023-04-06 02:37:40', 6),
(1339, 1, 1528, 1, '2023-04-06 02:38:39', '2023-04-06 02:38:39', 7),
(1340, 2, 1529, 1, '2023-04-06 02:38:39', '2023-04-06 02:38:39', 7),
(1341, 3, 1530, 1, '2023-04-06 02:38:39', '2023-04-06 02:38:39', 7),
(1342, 4, 1531, 1, '2023-04-06 02:38:39', '2023-04-06 02:38:39', 7),
(1343, 5, 1532, 1, '2023-04-06 02:38:39', '2023-04-06 02:38:39', 7),
(1344, 1, 1533, 1, '2023-04-06 02:38:41', '2023-04-06 02:38:41', 8),
(1345, 2, 1534, 1, '2023-04-06 02:38:41', '2023-04-06 02:38:41', 8),
(1346, 3, 1535, 1, '2023-04-06 02:38:41', '2023-04-06 02:38:41', 8),
(1347, 4, 1536, 1, '2023-04-06 02:38:41', '2023-04-06 02:38:41', 8),
(1348, 5, 1537, 1, '2023-04-06 02:38:41', '2023-04-06 02:38:41', 8),
(1349, 1, 1721, 1, '2023-04-06 08:32:03', '2023-04-06 08:32:03', 9),
(1350, 2, 1722, 1, '2023-04-06 08:32:03', '2023-04-06 08:32:03', 9),
(1351, 3, 1723, 1, '2023-04-06 08:32:03', '2023-04-06 08:32:03', 9),
(1352, 4, 1724, 1, '2023-04-06 08:32:03', '2023-04-06 08:32:03', 9),
(1353, 5, 1725, 1, '2023-04-06 08:32:03', '2023-04-06 08:32:03', 9),
(1354, 1, 1726, 1, '2023-04-06 08:33:01', '2023-04-06 08:33:01', 10),
(1355, 2, 1727, 1, '2023-04-06 08:33:01', '2023-04-06 08:33:01', 10),
(1356, 3, 1728, 1, '2023-04-06 08:33:01', '2023-04-06 08:33:01', 10),
(1357, 4, 1729, 1, '2023-04-06 08:33:01', '2023-04-06 08:33:01', 10),
(1358, 5, 1730, 1, '2023-04-06 08:33:01', '2023-04-06 08:33:01', 10),
(1359, 1, 1731, 1, '2023-04-06 17:56:17', '2023-04-06 17:56:17', 30),
(1360, 2, 1732, 1, '2023-04-06 17:56:17', '2023-04-06 17:56:17', 30),
(1361, 3, 1733, 1, '2023-04-06 17:56:17', '2023-04-06 17:56:17', 30),
(1362, 4, 1734, 1, '2023-04-06 17:56:17', '2023-04-06 17:56:17', 30),
(1363, 5, 1735, 1, '2023-04-06 17:56:17', '2023-04-06 17:56:17', 30);

-- --------------------------------------------------------

--
-- Table structure for table `forum_categories`
--

CREATE TABLE `forum_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepts_threads` tinyint(1) NOT NULL DEFAULT 0,
  `newest_thread_id` int(10) UNSIGNED DEFAULT NULL,
  `latest_active_thread_id` int(10) UNSIGNED DEFAULT NULL,
  `thread_count` int(11) NOT NULL DEFAULT 0,
  `post_count` int(11) NOT NULL DEFAULT 0,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_categories`
--

INSERT INTO `forum_categories` (`id`, `title`, `description`, `accepts_threads`, `newest_thread_id`, `latest_active_thread_id`, `thread_count`, `post_count`, `is_private`, `created_at`, `updated_at`, `_lft`, `_rgt`, `parent_id`, `color`) VALUES
(1, 'Senat', '', 1, 1, 1, 1, 2, 0, '2023-04-06 03:26:37', '2023-04-06 03:26:37', 1, 2, NULL, '#673AB7');

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `sequence` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_posts`
--

INSERT INTO `forum_posts` (`id`, `thread_id`, `author_id`, `content`, `post_id`, `sequence`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'testing forum', NULL, 1, '2023-04-06 03:30:08', '2023-04-06 03:30:08', NULL),
(2, 1, 1, 'test 2', NULL, 2, '2023-04-06 03:47:19', '2023-04-06 03:47:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forum_threads`
--

CREATE TABLE `forum_threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinned` tinyint(1) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `first_post_id` int(10) UNSIGNED DEFAULT NULL,
  `last_post_id` int(10) UNSIGNED DEFAULT NULL,
  `reply_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_threads`
--

INSERT INTO `forum_threads` (`id`, `category_id`, `author_id`, `title`, `pinned`, `locked`, `first_post_id`, `last_post_id`, `reply_count`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'test', 0, 0, 1, 2, 1, '2023-04-06 03:30:08', '2023-04-06 03:47:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forum_threads_read`
--

CREATE TABLE `forum_threads_read` (
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_threads_read`
--

INSERT INTO `forum_threads_read` (`thread_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-04-06 03:47:07', '2023-04-06 03:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `guilds`
--

CREATE TABLE `guilds` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guilds`
--

INSERT INTO `guilds` (`id`, `name`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Legio Praetoria', 1, NULL, NULL),
(2, 'Brabancourt', 1, NULL, NULL),
(3, 'Gorghor Baey', 1, NULL, NULL),
(4, 'Légion Infernale', 1, NULL, NULL),
(5, 'Compagnons de Lambertrand', 1, NULL, NULL),
(6, 'Kabbale', 1, NULL, NULL),
(7, 'Phoenix', 1, NULL, NULL),
(8, 'Vieux Garou', 1, NULL, NULL),
(9, 'Hullsbourg', 1, NULL, NULL),
(10, 'Salmarak', 1, NULL, NULL),
(11, 'Famille Cordélian	', 1, NULL, NULL),
(12, 'La Meute', 1, NULL, NULL),
(13, 'Mac Rae', 1, NULL, NULL),
(14, 'Ordre de la Rédemption', 1, NULL, NULL),
(15, 'Castenza', 1, NULL, NULL),
(16, 'Fer de Lance', 1, NULL, NULL),
(17, 'Gaïa', 1, NULL, NULL),
(18, 'Hibou d\'Argent', 1, NULL, NULL),
(19, 'Lotus No Chi', 1, NULL, NULL),
(20, 'Montfort', 1, NULL, NULL),
(21, 'Rangers', 1, NULL, NULL),
(22, 'Saint-Ordre du Poing de Fer', 1, NULL, NULL),
(23, 'Tératos', 1, NULL, NULL),
(24, 'Vand\'Hals', 1, NULL, NULL),
(25, 'Fhaîn', 1, NULL, NULL),
(26, 'Mages de Diedne', 1, NULL, NULL),
(27, 'Ordre du Lys d\'Argent', 1, NULL, NULL),
(28, 'Saint-Ordre des Templiers', 1, NULL, NULL),
(29, 'Chiens de Guerre', 1, NULL, NULL),
(30, 'Clan du Sanglier', 1, NULL, NULL),
(31, 'Dragoniers', 1, NULL, NULL),
(32, 'Guerriers de la Montagne', 1, NULL, NULL),
(33, 'Taureau Fertile', 1, NULL, NULL),
(34, 'Chimère', 1, NULL, NULL),
(35, 'Compagnie du Bélier', 1, NULL, NULL),
(36, 'Culte de Daolok', 1, NULL, NULL),
(37, 'Hellequins', 1, NULL, NULL),
(38, 'Los Conkistadores', 1, NULL, NULL),
(39, 'Némésis', 1, NULL, NULL),
(40, 'Bocks de Fer', 1, NULL, NULL),
(41, 'Coque Rouge', 1, NULL, NULL),
(42, 'Ertuen', 1, NULL, NULL),
(43, 'Flibustiers', 1, NULL, NULL),
(44, 'Frontaliers d\'Irendille', 1, NULL, NULL),
(45, 'Le Crâne', 1, NULL, NULL),
(46, 'Marmara', 1, NULL, NULL),
(47, 'Arrachés', 1, NULL, NULL),
(48, 'Sombres Lames', 1, NULL, NULL),
(49, 'Cernos', 1, NULL, NULL),
(50, 'Saint-Ordre du Vinier', 1, NULL, NULL),
(51, 'Vignerons', 1, NULL, NULL),
(52, 'White Lion', 1, NULL, NULL),
(53, 'Armateurs de Ranvier', 1, NULL, NULL),
(54, 'Lance du Sergent Viktor', 1, NULL, NULL),
(55, 'Mayol', 1, NULL, NULL),
(56, 'Von Shlaffenmark', 1, NULL, NULL),
(57, 'Arrogance', 1, NULL, NULL),
(58, 'Dragons de Sang', 1, NULL, NULL),
(59, 'Émissaires de la Cité des Sables', 1, NULL, NULL),
(60, 'Fils de Polignac', 1, NULL, NULL),
(61, 'Frères d\'Armes', 1, NULL, NULL),
(62, 'Griffon', 1, NULL, NULL),
(63, 'Mek Dyude', 1, NULL, NULL),
(64, 'Tarpignan', 1, NULL, NULL),
(65, 'Vieux Chêne', 1, NULL, NULL),
(66, 'Arcs Noirs', 1, NULL, NULL),
(67, 'Dame d\'Argent', 1, NULL, NULL),
(68, 'Gaurydrim', 1, NULL, NULL),
(69, 'Gueul\'ki\'Mor', 1, NULL, NULL),
(70, 'Oeil du Vâhana', 1, NULL, NULL),
(71, 'Phratrie des Malandrins', 1, NULL, NULL),
(72, 'Traqueurs', 1, NULL, NULL),
(73, 'Cavaliers du Bouc', 1, NULL, NULL),
(74, 'Confrérie des Maîtres Nains', 1, NULL, NULL),
(75, 'Insoumis', 1, NULL, NULL),
(76, 'Lys Royal', 1, NULL, NULL),
(77, 'Mages du Roy', 1, NULL, NULL),
(78, 'Ordre du Saint-Sépulcre', 1, NULL, NULL),
(79, 'Ost du St-Reliquaire', 1, NULL, NULL),
(80, 'Tchakalouÿ', 1, NULL, NULL),
(81, 'Doigts Cassés', 1, NULL, NULL),
(82, 'Midgardiens', 1, NULL, NULL),
(83, 'Ragnarok', 1, NULL, NULL),
(84, 'Trésorerie Impériale', 1, NULL, NULL),
(85, 'Fils Bâtards', 1, NULL, NULL),
(86, 'Vakten', 1, NULL, NULL),
(87, 'Couronne d\'Eir', 1, NULL, NULL),
(88, 'Ordo Cervi', 1, NULL, NULL),
(89, 'Ordre du Loup Céleste', 1, NULL, NULL),
(90, 'Aile Noire', 1, NULL, NULL),
(91, 'Confrérie', 1, NULL, NULL),
(92, 'Fils du Vent', 1, NULL, NULL),
(93, 'Raktaar', 1, NULL, NULL),
(94, 'Codex', 1, NULL, NULL),
(95, 'Concile du Reffahc', 1, NULL, NULL),
(96, 'Hydre', 1, NULL, NULL),
(97, 'Ordre du Kik\'wa\'ju', 1, NULL, NULL),
(98, 'Beaux Bâtards', 1, NULL, NULL),
(99, 'Covenant of the Black Rose', 1, NULL, NULL),
(100, 'Ferrata Fidelis', 1, NULL, NULL),
(101, 'Hirda', 1, NULL, NULL),
(102, 'Lions du Nord', 1, NULL, NULL),
(103, 'Marchwardens', 1, NULL, NULL),
(104, 'Mille Visages', 1, NULL, NULL),
(105, 'Oathsworn', 1, NULL, NULL),
(106, 'Ratatosk', 1, NULL, NULL),
(107, 'Realms Embassy', 1, NULL, NULL),
(108, 'Valraven', 1, NULL, NULL),
(109, 'Caldwell', 1, NULL, NULL),
(110, 'Capharnaüm', 1, NULL, NULL),
(111, 'Confrérie de Mjöllnir', 1, NULL, NULL),
(112, 'Darganof Trading Company', 1, NULL, NULL),
(113, 'Derthorn', 1, NULL, NULL),
(114, 'Famille de Liastis', 1, NULL, NULL),
(115, 'Famillia Debeauchamps', 1, NULL, NULL),
(116, 'Garde Immergée', 1, NULL, NULL),
(117, 'Haute-Garde', 1, NULL, NULL),
(118, 'Hurleurs Blancs', 1, NULL, NULL),
(119, 'Nains-Génieurs', 1, NULL, NULL),
(120, 'U.P.I.R.', 1, NULL, NULL),
(121, 'Wild Dawn', 1, NULL, NULL),
(122, 'Argentiers du Centre', 1, NULL, NULL),
(123, 'Clan Croc-Ardent', 1, NULL, NULL),
(124, 'Colibrille', 1, NULL, NULL),
(125, 'Compagnie des huit voiles', 1, NULL, NULL),
(126, 'Écaille', 1, NULL, NULL),
(127, 'Horse and Hound', 1, NULL, NULL),
(128, 'Lys noir', 1, NULL, NULL),
(129, 'Terribles Serpents à Sonnettes', 1, NULL, NULL),
(130, '105e compagnie', 1, NULL, NULL),
(131, 'Cercle d\'or', 1, NULL, NULL),
(132, 'Corbeaux d\'Odin', 1, NULL, NULL),
(133, 'Famille Oséric', 1, NULL, NULL),
(134, 'Inévitables', 1, NULL, NULL),
(135, 'Maîtres Brasseurs', 1, NULL, NULL),
(136, 'Oeil de Mimir', 1, NULL, NULL),
(137, 'Paysans', 1, NULL, NULL),
(138, 'Tirion', 1, NULL, NULL),
(139, 'Varègues', 1, NULL, NULL),
(140, 'Archivistes', 1, NULL, NULL),
(141, 'Chasseurs de Helheim', 1, NULL, NULL),
(142, 'Cour des cendres', 1, NULL, NULL),
(143, 'Free Company', 1, NULL, NULL),
(144, 'Karn Gobo', 1, NULL, NULL),
(145, 'Marine Marchande', 1, NULL, NULL),
(146, 'Ordo Magus', 1, NULL, NULL),
(147, 'Pilum Occultum Redemptio', 1, NULL, NULL),
(148, 'Tresseux d\'paniers', 1, NULL, NULL),
(149, 'Veuves Noires', 1, NULL, NULL),
(150, 'Banca Interregionala', 1, NULL, NULL),
(151, 'Coalition sylvestre', 1, NULL, NULL),
(152, 'Créatura Mortis', 1, NULL, NULL),
(153, 'Garde rouge', 1, NULL, NULL),
(154, 'Las Velas de la Sombra', 1, NULL, NULL),
(155, 'Mille et une mains', 1, NULL, NULL),
(156, 'Ordo Militum', 1, NULL, NULL),
(157, 'Reiksritters', 1, NULL, NULL),
(158, 'Très Saintes Vinières', 1, NULL, NULL),
(159, 'Voelhoorn', 1, NULL, NULL),
(160, 'Berserk', 1, NULL, NULL),
(161, 'Compagnie du cheval ailé', 1, NULL, NULL),
(162, 'Écorcheurs', 1, NULL, NULL),
(163, 'Griffe', 1, NULL, NULL),
(164, 'Legio Mortem', 1, NULL, NULL),
(165, 'Morningstar', 1, NULL, NULL),
(166, 'Ordo Mortis', 1, NULL, NULL),
(167, 'Saint-Siège', 1, NULL, NULL),
(168, 'Tribu de Zardok', 1, NULL, NULL),
(169, 'Von Couleng Bark', 1, NULL, NULL),
(170, 'Botulik', 1, NULL, NULL),
(171, 'Confusion', 1, NULL, NULL),
(172, 'Équipage du Capitaine Wig', 1, NULL, NULL),
(173, 'Hashashins', 1, NULL, NULL),
(174, 'Main Rouge', 1, NULL, NULL),
(175, 'Nephilim', 1, NULL, NULL),
(176, 'Orobore', 1, NULL, NULL),
(177, 'The Pelt', 1, NULL, NULL),
(178, 'Twilight Dreamers', 1, NULL, NULL),
(179, 'Warborn', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guild_attributes`
--

CREATE TABLE `guild_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guild_attributes`
--

INSERT INTO `guild_attributes` (`id`, `attribute_id`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 8),
(22, 15),
(23, 15),
(24, 15),
(25, 16);

-- --------------------------------------------------------

--
-- Table structure for table `guild_attribute_value`
--

CREATE TABLE `guild_attribute_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `value_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `guild_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guild_attribute_value`
--

INSERT INTO `guild_attribute_value` (`id`, `attribute_id`, `value_id`, `type_id`, `created_at`, `updated_at`, `guild_id`) VALUES
(1, 1, 1, 1, NULL, NULL, 0),
(2, 1, 1344, 1, '2023-04-05 23:47:20', '2023-04-05 23:47:20', 1),
(3, 1, 1345, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 2),
(4, 1, 1346, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 3),
(5, 1, 1347, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 4),
(6, 1, 1348, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 5),
(7, 1, 1349, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 6),
(8, 1, 1350, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 7),
(9, 1, 1351, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 8),
(10, 1, 1352, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 9),
(11, 1, 1353, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 10),
(12, 1, 1354, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 11),
(13, 1, 1355, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 12),
(14, 1, 1356, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 13),
(15, 1, 1357, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 14),
(16, 1, 1358, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 15),
(17, 1, 1359, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 16),
(18, 1, 1360, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 17),
(19, 1, 1361, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 18),
(20, 1, 1362, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 19),
(21, 1, 1363, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 20),
(22, 1, 1364, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 21),
(23, 1, 1365, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 22),
(24, 1, 1366, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 23),
(25, 1, 1367, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 24),
(26, 1, 1368, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 25),
(27, 1, 1369, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 26),
(28, 1, 1370, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 27),
(29, 1, 1371, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 28),
(30, 1, 1372, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 29),
(31, 1, 1373, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 30),
(32, 1, 1374, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 31),
(33, 1, 1375, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 32),
(34, 1, 1376, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 33),
(35, 1, 1377, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 34),
(36, 1, 1378, 1, '2023-04-05 23:47:27', '2023-04-05 23:47:27', 35),
(37, 1, 1379, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 36),
(38, 1, 1380, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 37),
(39, 1, 1381, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 38),
(40, 1, 1382, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 39),
(41, 1, 1383, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 40),
(42, 1, 1384, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 41),
(43, 1, 1385, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 42),
(44, 1, 1386, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 43),
(45, 1, 1387, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 44),
(46, 1, 1388, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 45),
(47, 1, 1389, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 46),
(48, 1, 1390, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 47),
(49, 1, 1391, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 48),
(50, 1, 1392, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 49),
(51, 1, 1393, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 50),
(52, 1, 1394, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 51),
(53, 1, 1395, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 52),
(54, 1, 1396, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 53),
(55, 1, 1397, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 54),
(56, 1, 1398, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 55),
(57, 1, 1399, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 56),
(58, 1, 1400, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 57),
(59, 1, 1401, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 58),
(60, 1, 1402, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 59),
(61, 1, 1403, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 60),
(62, 1, 1404, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 61),
(63, 1, 1405, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 62),
(64, 1, 1406, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 63),
(65, 1, 1407, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 64),
(66, 1, 1408, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 65),
(67, 1, 1409, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 66),
(68, 1, 1410, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 67),
(69, 1, 1411, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 68),
(70, 1, 1412, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 69),
(71, 1, 1413, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 70),
(72, 1, 1414, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 71),
(73, 1, 1415, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 72),
(74, 1, 1416, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 73),
(75, 1, 1417, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 74),
(76, 1, 1418, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 75),
(77, 1, 1419, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 76),
(78, 1, 1420, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 77),
(79, 1, 1421, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 78),
(80, 1, 1422, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 79),
(81, 1, 1423, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 80),
(82, 1, 1424, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 81),
(83, 1, 1425, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 82),
(84, 1, 1426, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 83),
(85, 1, 1427, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 84),
(86, 1, 1428, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 85),
(87, 1, 1429, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 86),
(88, 1, 1430, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 87),
(89, 1, 1431, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 88),
(90, 1, 1432, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 89),
(91, 1, 1433, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 90),
(92, 1, 1434, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 91),
(93, 1, 1435, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 92),
(94, 1, 1436, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 93),
(95, 1, 1437, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 94),
(96, 1, 1438, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 95),
(97, 1, 1439, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 96),
(98, 1, 1440, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 97),
(99, 1, 1441, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 98),
(100, 1, 1442, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 99),
(101, 1, 1443, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 100),
(102, 1, 1444, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 101),
(103, 1, 1445, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 102),
(104, 1, 1446, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 103),
(105, 1, 1447, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 104),
(106, 1, 1448, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 105),
(107, 1, 1449, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 106),
(108, 1, 1450, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 107),
(109, 1, 1451, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 108),
(110, 1, 1452, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 109),
(111, 1, 1453, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 110),
(112, 1, 1454, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 111),
(113, 1, 1455, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 112),
(114, 1, 1456, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 113),
(115, 1, 1457, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 114),
(116, 1, 1458, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 115),
(117, 1, 1459, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 116),
(118, 1, 1460, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 117),
(119, 1, 1461, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 118),
(120, 1, 1462, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 119),
(121, 1, 1463, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 120),
(122, 1, 1464, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 121),
(123, 1, 1465, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 122),
(124, 1, 1466, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 123),
(125, 1, 1467, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 124),
(126, 1, 1468, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 125),
(127, 1, 1469, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 126),
(128, 1, 1470, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 127),
(129, 1, 1471, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 128),
(130, 1, 1472, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 129),
(131, 1, 1473, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 130),
(132, 1, 1474, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 131),
(133, 1, 1475, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 132),
(134, 1, 1476, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 133),
(135, 1, 1477, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 134),
(136, 1, 1478, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 135),
(137, 1, 1479, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 136),
(138, 1, 1480, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 137),
(139, 1, 1481, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 138),
(140, 1, 1482, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 139),
(141, 1, 1483, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 140),
(142, 1, 1484, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 141),
(143, 1, 1485, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 142),
(144, 1, 1486, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 143),
(145, 1, 1487, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 144),
(146, 1, 1488, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 145),
(147, 1, 1489, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 146),
(148, 1, 1490, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 147),
(149, 1, 1491, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 148),
(150, 1, 1492, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 149),
(151, 1, 1493, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 150),
(152, 1, 1494, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 151),
(153, 1, 1495, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 152),
(154, 1, 1496, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 153),
(155, 1, 1497, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 154),
(156, 1, 1498, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 155),
(157, 1, 1499, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 156),
(158, 1, 1500, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 157),
(159, 1, 1501, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 158),
(160, 1, 1502, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 159),
(161, 1, 1503, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 160),
(162, 1, 1504, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 161),
(163, 1, 1505, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 162),
(164, 1, 1506, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 163),
(165, 1, 1507, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 164),
(166, 1, 1508, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 165),
(167, 1, 1509, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 166),
(168, 1, 1510, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 167),
(169, 1, 1511, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 168),
(170, 1, 1512, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 169),
(171, 1, 1513, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 170),
(172, 1, 1514, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 171),
(173, 1, 1515, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 172),
(174, 1, 1516, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 173),
(175, 1, 1517, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 174),
(176, 1, 1518, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 175),
(177, 1, 1519, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 176),
(178, 1, 1520, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 177),
(179, 1, 1521, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 178),
(180, 1, 1522, 1, '2023-04-05 23:47:28', '2023-04-05 23:47:28', 179),
(181, 8, 1542, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 1),
(182, 8, 1543, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 2),
(183, 8, 1544, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 3),
(184, 8, 1545, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 4),
(185, 8, 1546, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 5),
(186, 8, 1547, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 6),
(187, 8, 1548, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 7),
(188, 8, 1549, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 8),
(189, 8, 1550, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 9),
(190, 8, 1551, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 10),
(191, 8, 1552, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 11),
(192, 8, 1553, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 12),
(193, 8, 1554, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 13),
(194, 8, 1555, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 14),
(195, 8, 1556, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 15),
(196, 8, 1557, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 16),
(197, 8, 1558, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 17),
(198, 8, 1559, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 18),
(199, 8, 1560, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 19),
(200, 8, 1561, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 20),
(201, 8, 1562, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 21),
(202, 8, 1563, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 22),
(203, 8, 1564, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 23),
(204, 8, 1565, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 24),
(205, 8, 1566, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 25),
(206, 8, 1567, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 26),
(207, 8, 1568, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 27),
(208, 8, 1569, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 28),
(209, 8, 1570, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 29),
(210, 8, 1571, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 30),
(211, 8, 1572, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 31),
(212, 8, 1573, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 32),
(213, 8, 1574, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 33),
(214, 8, 1575, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 34),
(215, 8, 1576, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 35),
(216, 8, 1577, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 36),
(217, 8, 1578, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 37),
(218, 8, 1579, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 38),
(219, 8, 1580, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 39),
(220, 8, 1581, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 40),
(221, 8, 1582, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 41),
(222, 8, 1583, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 42),
(223, 8, 1584, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 43),
(224, 8, 1585, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 44),
(225, 8, 1586, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 45),
(226, 8, 1587, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 46),
(227, 8, 1588, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 47),
(228, 8, 1589, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 48),
(229, 8, 1590, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 49),
(230, 8, 1591, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 50),
(231, 8, 1592, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 51),
(232, 8, 1593, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 52),
(233, 8, 1594, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 53),
(234, 8, 1595, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 54),
(235, 8, 1596, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 55),
(236, 8, 1597, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 56),
(237, 8, 1598, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 57),
(238, 8, 1599, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 58),
(239, 8, 1600, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 59),
(240, 8, 1601, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 60),
(241, 8, 1602, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 61),
(242, 8, 1603, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 62),
(243, 8, 1604, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 63),
(244, 8, 1605, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 64),
(245, 8, 1606, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 65),
(246, 8, 1607, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 66),
(247, 8, 1608, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 67),
(248, 8, 1609, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 68),
(249, 8, 1610, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 69),
(250, 8, 1611, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 70),
(251, 8, 1612, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 71),
(252, 8, 1613, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 72),
(253, 8, 1614, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 73),
(254, 8, 1615, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 74),
(255, 8, 1616, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 75),
(256, 8, 1617, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 76),
(257, 8, 1618, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 77),
(258, 8, 1619, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 78),
(259, 8, 1620, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 79),
(260, 8, 1621, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 80),
(261, 8, 1622, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 81),
(262, 8, 1623, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 82),
(263, 8, 1624, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 83),
(264, 8, 1625, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 84),
(265, 8, 1626, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 85),
(266, 8, 1627, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 86),
(267, 8, 1628, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 87),
(268, 8, 1629, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 88),
(269, 8, 1630, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 89),
(270, 8, 1631, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 90),
(271, 8, 1632, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 91),
(272, 8, 1633, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 92),
(273, 8, 1634, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 93),
(274, 8, 1635, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 94),
(275, 8, 1636, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 95),
(276, 8, 1637, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 96),
(277, 8, 1638, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 97),
(278, 8, 1639, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 98),
(279, 8, 1640, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 99),
(280, 8, 1641, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 100),
(281, 8, 1642, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 101),
(282, 8, 1643, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 102),
(283, 8, 1644, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 103),
(284, 8, 1645, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 104),
(285, 8, 1646, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 105),
(286, 8, 1647, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 106),
(287, 8, 1648, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 107),
(288, 8, 1649, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 108),
(289, 8, 1650, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 109),
(290, 8, 1651, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 110),
(291, 8, 1652, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 111),
(292, 8, 1653, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 112),
(293, 8, 1654, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 113),
(294, 8, 1655, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 114),
(295, 8, 1656, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 115),
(296, 8, 1657, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 116),
(297, 8, 1658, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 117),
(298, 8, 1659, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 118),
(299, 8, 1660, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 119),
(300, 8, 1661, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 120),
(301, 8, 1662, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 121),
(302, 8, 1663, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 122),
(303, 8, 1664, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 123),
(304, 8, 1665, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 124),
(305, 8, 1666, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 125),
(306, 8, 1667, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 126),
(307, 8, 1668, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 127),
(308, 8, 1669, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 128),
(309, 8, 1670, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 129),
(310, 8, 1671, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 130),
(311, 8, 1672, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 131),
(312, 8, 1673, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 132),
(313, 8, 1674, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 133),
(314, 8, 1675, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 134),
(315, 8, 1676, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 135),
(316, 8, 1677, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 136),
(317, 8, 1678, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 137),
(318, 8, 1679, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 138),
(319, 8, 1680, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 139),
(320, 8, 1681, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 140),
(321, 8, 1682, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 141),
(322, 8, 1683, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 142),
(323, 8, 1684, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 143),
(324, 8, 1685, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 144),
(325, 8, 1686, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 145),
(326, 8, 1687, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 146),
(327, 8, 1688, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 147),
(328, 8, 1689, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 148),
(329, 8, 1690, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 149),
(330, 8, 1691, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 150),
(331, 8, 1692, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 151),
(332, 8, 1693, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 152),
(333, 8, 1694, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 153),
(334, 8, 1695, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 154),
(335, 8, 1696, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 155),
(336, 8, 1697, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 156),
(337, 8, 1698, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 157),
(338, 8, 1699, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 158),
(339, 8, 1700, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 159),
(340, 8, 1701, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 160),
(341, 8, 1702, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 161),
(342, 8, 1703, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 162),
(343, 8, 1704, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 163),
(344, 8, 1705, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 164),
(345, 8, 1706, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 165),
(346, 8, 1707, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 166),
(347, 8, 1708, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 167),
(348, 8, 1709, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 168),
(349, 8, 1710, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 169),
(350, 8, 1711, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 170),
(351, 8, 1712, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 171),
(352, 8, 1713, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 172),
(353, 8, 1714, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 173),
(354, 8, 1715, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 174),
(355, 8, 1716, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 175),
(356, 8, 1717, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 176),
(357, 8, 1718, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 177),
(358, 8, 1719, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 178),
(359, 8, 1720, 1, '2023-04-06 02:48:01', '2023-04-06 02:48:01', 179),
(360, 15, 1738, 1, '2023-04-07 05:50:06', '2023-04-07 05:50:06', 1),
(361, 15, 1739, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 2),
(362, 15, 1740, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 3),
(363, 15, 1741, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 4),
(364, 15, 1742, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 5),
(365, 15, 1743, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 6),
(366, 15, 1744, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 7),
(367, 15, 1745, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 8),
(368, 15, 1746, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 9),
(369, 15, 1747, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 10),
(370, 15, 1748, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 11),
(371, 15, 1749, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 12),
(372, 15, 1750, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 13),
(373, 15, 1751, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 14),
(374, 15, 1752, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 15),
(375, 15, 1753, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 16),
(376, 15, 1754, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 17),
(377, 15, 1755, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 18),
(378, 15, 1756, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 19),
(379, 15, 1757, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 20),
(380, 15, 1758, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 21),
(381, 15, 1759, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 22),
(382, 15, 1760, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 23),
(383, 15, 1761, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 24),
(384, 15, 1762, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 25),
(385, 15, 1763, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 26),
(386, 15, 1764, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 27),
(387, 15, 1765, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 28),
(388, 15, 1766, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 29),
(389, 15, 1767, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 30),
(390, 15, 1768, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 31),
(391, 15, 1769, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 32),
(392, 15, 1770, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 33),
(393, 15, 1771, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 34),
(394, 15, 1772, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 35),
(395, 15, 1773, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 36),
(396, 15, 1774, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 37),
(397, 15, 1775, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 38),
(398, 15, 1776, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 39),
(399, 15, 1777, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 40),
(400, 15, 1778, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 41),
(401, 15, 1779, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 42),
(402, 15, 1780, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 43),
(403, 15, 1781, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 44),
(404, 15, 1782, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 45),
(405, 15, 1783, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 46),
(406, 15, 1784, 1, '2023-04-07 05:50:11', '2023-04-07 05:50:11', 47),
(407, 15, 1785, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 48),
(408, 15, 1786, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 49),
(409, 15, 1787, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 50),
(410, 15, 1788, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 51),
(411, 15, 1789, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 52),
(412, 15, 1790, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 53),
(413, 15, 1791, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 54),
(414, 15, 1792, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 55),
(415, 15, 1793, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 56),
(416, 15, 1794, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 57),
(417, 15, 1795, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 58),
(418, 15, 1796, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 59),
(419, 15, 1797, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 60),
(420, 15, 1798, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 61),
(421, 15, 1799, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 62),
(422, 15, 1800, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 63),
(423, 15, 1801, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 64),
(424, 15, 1802, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 65),
(425, 15, 1803, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 66),
(426, 15, 1804, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 67),
(427, 15, 1805, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 68),
(428, 15, 1806, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 69),
(429, 15, 1807, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 70),
(430, 15, 1808, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 71),
(431, 15, 1809, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 72),
(432, 15, 1810, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 73),
(433, 15, 1811, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 74),
(434, 15, 1812, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 75),
(435, 15, 1813, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 76),
(436, 15, 1814, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 77),
(437, 15, 1815, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 78),
(438, 15, 1816, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 79),
(439, 15, 1817, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 80),
(440, 15, 1818, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 81),
(441, 15, 1819, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 82),
(442, 15, 1820, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 83),
(443, 15, 1821, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 84),
(444, 15, 1822, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 85),
(445, 15, 1823, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 86),
(446, 15, 1824, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 87),
(447, 15, 1825, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 88),
(448, 15, 1826, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 89),
(449, 15, 1827, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 90),
(450, 15, 1828, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 91),
(451, 15, 1829, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 92),
(452, 15, 1830, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 93),
(453, 15, 1831, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 94),
(454, 15, 1832, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 95),
(455, 15, 1833, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 96),
(456, 15, 1834, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 97),
(457, 15, 1835, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 98),
(458, 15, 1836, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 99),
(459, 15, 1837, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 100),
(460, 15, 1838, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 101),
(461, 15, 1839, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 102),
(462, 15, 1840, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 103),
(463, 15, 1841, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 104),
(464, 15, 1842, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 105),
(465, 15, 1843, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 106),
(466, 15, 1844, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 107),
(467, 15, 1845, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 108),
(468, 15, 1846, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 109),
(469, 15, 1847, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 110),
(470, 15, 1848, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 111),
(471, 15, 1849, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 112),
(472, 15, 1850, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 113),
(473, 15, 1851, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 114),
(474, 15, 1852, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 115),
(475, 15, 1853, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 116),
(476, 15, 1854, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 117),
(477, 15, 1855, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 118),
(478, 15, 1856, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 119),
(479, 15, 1857, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 120),
(480, 15, 1858, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 121),
(481, 15, 1859, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 122),
(482, 15, 1860, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 123),
(483, 15, 1861, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 124),
(484, 15, 1862, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 125),
(485, 15, 1863, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 126),
(486, 15, 1864, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 127),
(487, 15, 1865, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 128),
(488, 15, 1866, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 129),
(489, 15, 1867, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 130),
(490, 15, 1868, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 131),
(491, 15, 1869, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 132),
(492, 15, 1870, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 133),
(493, 15, 1871, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 134),
(494, 15, 1872, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 135),
(495, 15, 1873, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 136),
(496, 15, 1874, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 137),
(497, 15, 1875, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 138),
(498, 15, 1876, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 139),
(499, 15, 1877, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 140),
(500, 15, 1878, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 141),
(501, 15, 1879, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 142),
(502, 15, 1880, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 143),
(503, 15, 1881, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 144),
(504, 15, 1882, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 145),
(505, 15, 1883, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 146),
(506, 15, 1884, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 147),
(507, 15, 1885, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 148),
(508, 15, 1886, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 149),
(509, 15, 1887, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 150),
(510, 15, 1888, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 151),
(511, 15, 1889, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 152),
(512, 15, 1890, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 153),
(513, 15, 1891, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 154),
(514, 15, 1892, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 155),
(515, 15, 1893, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 156),
(516, 15, 1894, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 157),
(517, 15, 1895, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 158),
(518, 15, 1896, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 159),
(519, 15, 1897, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 160),
(520, 15, 1898, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 161),
(521, 15, 1899, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 162),
(522, 15, 1900, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 163),
(523, 15, 1901, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 164),
(524, 15, 1902, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 165),
(525, 15, 1903, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 166),
(526, 15, 1904, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 167),
(527, 15, 1905, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 168),
(528, 15, 1906, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 169),
(529, 15, 1907, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 170),
(530, 15, 1908, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 171),
(531, 15, 1909, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 172),
(532, 15, 1910, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 173),
(533, 15, 1911, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 174),
(534, 15, 1912, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 175),
(535, 15, 1913, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 176),
(536, 15, 1914, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 177),
(537, 15, 1915, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 178),
(538, 15, 1916, 1, '2023-04-07 05:50:12', '2023-04-07 05:50:12', 179),
(539, 16, 1917, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 1),
(540, 16, 1918, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 2),
(541, 16, 1919, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 3),
(542, 16, 1920, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 4),
(543, 16, 1921, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 5),
(544, 16, 1922, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 6),
(545, 16, 1923, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 7),
(546, 16, 1924, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 8),
(547, 16, 1925, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 9),
(548, 16, 1926, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 10),
(549, 16, 1927, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 11),
(550, 16, 1928, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 12),
(551, 16, 1929, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 13),
(552, 16, 1930, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 14),
(553, 16, 1931, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 15),
(554, 16, 1932, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 16),
(555, 16, 1933, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 17),
(556, 16, 1934, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 18),
(557, 16, 1935, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 19),
(558, 16, 1936, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 20),
(559, 16, 1937, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 21),
(560, 16, 1938, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 22),
(561, 16, 1939, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 23),
(562, 16, 1940, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 24),
(563, 16, 1941, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 25),
(564, 16, 1942, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 26),
(565, 16, 1943, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 27),
(566, 16, 1944, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 28),
(567, 16, 1945, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 29),
(568, 16, 1946, 1, '2023-04-07 05:54:57', '2023-04-07 05:54:57', 30),
(569, 16, 1947, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 31),
(570, 16, 1948, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 32),
(571, 16, 1949, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 33),
(572, 16, 1950, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 34),
(573, 16, 1951, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 35),
(574, 16, 1952, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 36),
(575, 16, 1953, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 37),
(576, 16, 1954, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 38),
(577, 16, 1955, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 39),
(578, 16, 1956, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 40),
(579, 16, 1957, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 41),
(580, 16, 1958, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 42),
(581, 16, 1959, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 43),
(582, 16, 1960, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 44),
(583, 16, 1961, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 45),
(584, 16, 1962, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 46),
(585, 16, 1963, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 47),
(586, 16, 1964, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 48),
(587, 16, 1965, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 49),
(588, 16, 1966, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 50),
(589, 16, 1967, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 51),
(590, 16, 1968, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 52),
(591, 16, 1969, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 53),
(592, 16, 1970, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 54),
(593, 16, 1971, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 55),
(594, 16, 1972, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 56),
(595, 16, 1973, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 57),
(596, 16, 1974, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 58),
(597, 16, 1975, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 59),
(598, 16, 1976, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 60),
(599, 16, 1977, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 61),
(600, 16, 1978, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 62),
(601, 16, 1979, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 63),
(602, 16, 1980, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 64),
(603, 16, 1981, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 65),
(604, 16, 1982, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 66),
(605, 16, 1983, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 67),
(606, 16, 1984, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 68),
(607, 16, 1985, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 69),
(608, 16, 1986, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 70),
(609, 16, 1987, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 71),
(610, 16, 1988, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 72),
(611, 16, 1989, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 73),
(612, 16, 1990, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 74),
(613, 16, 1991, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 75),
(614, 16, 1992, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 76),
(615, 16, 1993, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 77),
(616, 16, 1994, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 78),
(617, 16, 1995, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 79),
(618, 16, 1996, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 80),
(619, 16, 1997, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 81),
(620, 16, 1998, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 82),
(621, 16, 1999, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 83),
(622, 16, 2000, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 84),
(623, 16, 2001, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 85),
(624, 16, 2002, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 86),
(625, 16, 2003, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 87),
(626, 16, 2004, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 88),
(627, 16, 2005, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 89),
(628, 16, 2006, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 90),
(629, 16, 2007, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 91),
(630, 16, 2008, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 92),
(631, 16, 2009, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 93),
(632, 16, 2010, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 94),
(633, 16, 2011, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 95),
(634, 16, 2012, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 96),
(635, 16, 2013, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 97),
(636, 16, 2014, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 98),
(637, 16, 2015, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 99),
(638, 16, 2016, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 100),
(639, 16, 2017, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 101),
(640, 16, 2018, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 102),
(641, 16, 2019, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 103),
(642, 16, 2020, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 104),
(643, 16, 2021, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 105),
(644, 16, 2022, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 106),
(645, 16, 2023, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 107),
(646, 16, 2024, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 108),
(647, 16, 2025, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 109),
(648, 16, 2026, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 110),
(649, 16, 2027, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 111),
(650, 16, 2028, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 112),
(651, 16, 2029, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 113),
(652, 16, 2030, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 114),
(653, 16, 2031, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 115),
(654, 16, 2032, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 116),
(655, 16, 2033, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 117),
(656, 16, 2034, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 118),
(657, 16, 2035, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 119),
(658, 16, 2036, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 120),
(659, 16, 2037, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 121),
(660, 16, 2038, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 122),
(661, 16, 2039, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 123),
(662, 16, 2040, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 124),
(663, 16, 2041, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 125),
(664, 16, 2042, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 126),
(665, 16, 2043, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 127),
(666, 16, 2044, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 128),
(667, 16, 2045, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 129),
(668, 16, 2046, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 130),
(669, 16, 2047, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 131),
(670, 16, 2048, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 132),
(671, 16, 2049, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 133),
(672, 16, 2050, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 134),
(673, 16, 2051, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 135),
(674, 16, 2052, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 136),
(675, 16, 2053, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 137),
(676, 16, 2054, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 138),
(677, 16, 2055, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 139),
(678, 16, 2056, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 140),
(679, 16, 2057, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 141),
(680, 16, 2058, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 142),
(681, 16, 2059, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 143),
(682, 16, 2060, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 144),
(683, 16, 2061, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 145),
(684, 16, 2062, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 146),
(685, 16, 2063, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 147),
(686, 16, 2064, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 148),
(687, 16, 2065, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 149),
(688, 16, 2066, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 150),
(689, 16, 2067, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 151),
(690, 16, 2068, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 152),
(691, 16, 2069, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 153),
(692, 16, 2070, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 154),
(693, 16, 2071, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 155),
(694, 16, 2072, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 156),
(695, 16, 2073, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 157),
(696, 16, 2074, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 158),
(697, 16, 2075, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 159),
(698, 16, 2076, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 160),
(699, 16, 2077, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 161),
(700, 16, 2078, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 162),
(701, 16, 2079, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 163),
(702, 16, 2080, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 164),
(703, 16, 2081, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 165),
(704, 16, 2082, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 166),
(705, 16, 2083, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 167),
(706, 16, 2084, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 168),
(707, 16, 2085, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 169),
(708, 16, 2086, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 170),
(709, 16, 2087, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 171),
(710, 16, 2088, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 172),
(711, 16, 2089, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 173),
(712, 16, 2090, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 174),
(713, 16, 2091, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 175),
(714, 16, 2092, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 176),
(715, 16, 2093, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 177),
(716, 16, 2094, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 178),
(717, 16, 2095, 1, '2023-04-07 05:54:58', '2023-04-07 05:54:58', 179);

-- --------------------------------------------------------

--
-- Table structure for table `kingdoms`
--

CREATE TABLE `kingdoms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kingdoms`
--

INSERT INTO `kingdoms` (`id`, `name`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Empire', 1, NULL, NULL),
(2, 'Fédération Argannaise', 1, NULL, NULL),
(3, 'Nasgaroth', 1, NULL, NULL),
(4, 'Andore', 1, NULL, NULL),
(5, 'Pays de Kafe', 1, NULL, NULL),
(6, 'Irendille', 1, NULL, NULL),
(7, 'Cité des Sables', 1, NULL, NULL),
(8, 'Ozame', 1, NULL, NULL),
(9, 'Terres du Sud', 1, NULL, NULL),
(10, 'Berkwald', 1, NULL, NULL),
(11, 'Terres d\'Auquesse', 1, NULL, NULL),
(12, 'Carcosa', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kingdom_attributes`
--

CREATE TABLE `kingdom_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kingdom_attribute_value`
--

CREATE TABLE `kingdom_attribute_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `value_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kingdom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(81, '2023_03_31_010335_create_attributes_table', 1),
(82, '2023_03_31_010335_create_calendar_events_table', 1),
(83, '2023_03_31_010335_create_failed_jobs_table', 1),
(84, '2023_03_31_010335_create_families_table', 1),
(85, '2023_03_31_010335_create_family_attribute_value_table', 1),
(86, '2023_03_31_010335_create_family_attributes_table', 1),
(87, '2023_03_31_010335_create_guild_attribute_value_table', 1),
(88, '2023_03_31_010335_create_guild_attributes_table', 1),
(89, '2023_03_31_010335_create_guilds_table', 1),
(90, '2023_03_31_010335_create_kingdom_attribute_value_table', 1),
(91, '2023_03_31_010335_create_kingdom_attributes_table', 1),
(92, '2023_03_31_010335_create_kingdoms_table', 1),
(93, '2023_03_31_010335_create_oauth_access_tokens_table', 1),
(94, '2023_03_31_010335_create_oauth_auth_codes_table', 1),
(95, '2023_03_31_010335_create_oauth_clients_table', 1),
(96, '2023_03_31_010335_create_oauth_personal_access_clients_table', 1),
(97, '2023_03_31_010335_create_oauth_refresh_tokens_table', 1),
(98, '2023_03_31_010335_create_password_resets_table', 1),
(99, '2023_03_31_010335_create_personal_access_tokens_table', 1),
(100, '2023_03_31_010335_create_religion_attribute_value_table', 1),
(101, '2023_03_31_010335_create_religion_attributes_table', 1),
(102, '2023_03_31_010335_create_religions_table', 1),
(103, '2023_03_31_010335_create_sessions_table', 1),
(104, '2023_03_31_010335_create_user_attribute_value_table', 1),
(105, '2023_03_31_010335_create_user_attributes_table', 1),
(106, '2023_03_31_010335_create_user_type_table', 1),
(107, '2023_03_31_010335_create_users_table', 1),
(108, '2023_03_31_010335_create_values_table', 1),
(109, '2014_05_19_151759_create_forum_table_categories', 2),
(110, '2014_05_19_152425_create_forum_table_threads', 2),
(111, '2014_05_19_152611_create_forum_table_posts', 2),
(112, '2015_04_14_180344_create_forum_table_threads_read', 3),
(113, '2015_07_22_181406_update_forum_table_categories', 3),
(114, '2015_07_22_181409_update_forum_table_threads', 3),
(115, '2015_07_22_181417_update_forum_table_posts', 3),
(116, '2016_05_24_114302_add_defaults_to_forum_table_threads_columns', 3),
(117, '2016_07_09_111441_add_counts_to_categories_table', 4),
(118, '2016_07_09_122706_add_counts_to_threads_table', 4),
(119, '2016_07_10_134700_add_sequence_to_posts_table', 4),
(120, '2018_11_04_211718_update_categories_table', 4),
(121, '2019_09_07_210904_update_forum_category_booleans', 4),
(122, '2019_09_07_230148_add_color_to_categories', 4),
(123, '2020_03_22_050710_add_thread_ids_to_categories', 5),
(124, '2020_03_22_055827_add_post_id_to_threads', 5),
(125, '2020_05_21_100000_create_teams_table', 5),
(126, '2020_05_21_200000_create_team_user_table', 5),
(127, '2020_05_21_300000_create_team_invitations_table', 5),
(128, '2020_12_02_233754_add_first_post_id_to_threads', 5),
(129, '2021_07_31_094750_add_fk_indices', 5),
(130, '2019_12_14_000001_create_personal_access_tokens_table.php', 0),
(131, '2019_12_14_000001_create_personal_access_tokens_table.php', 1),
(132, '2019_12_14_000001_create_personal_access_tokens_table', 6),
(133, '2023_07_03_185055_create_rank_table', 6),
(134, '2023_07_21_021641_create_data_type', 7),
(135, '2023_07_21_032136_create_character', 8),
(136, '2023_07_21_032322_create_character_attribute', 8),
(137, '2023_07_21_032332_create_character_attribute_value', 8);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User\\User', 1, 'MyApp', 'f91e75ac3e53ebe1deef90b3f8e74d12245dfea90a934bafed62e1b3b6363830', '[\"*\"]', NULL, NULL, '2023-07-03 23:17:23', '2023-07-03 23:17:23'),
(7, 'App\\Models\\User\\User', 1, 'MyApp', '0b5078cec1ec2d559736d599fd81e1c7a48c9f88c91b25a27f6fe75a7940ce62', '[\"*\"]', '2023-07-04 04:33:11', NULL, '2023-07-04 04:30:02', '2023-07-04 04:33:11'),
(8, 'App\\Models\\User\\User', 1, 'MyApp', '174a6e7f6c70efd9efc78319e5d441672917b274edacab709ea81b1ac8376a52', '[\"*\"]', NULL, NULL, '2023-07-04 04:33:26', '2023-07-04 04:33:26'),
(25, 'App\\Models\\User\\User', 1, 'MyApp', '1f2b5b091541463812e40238e39f00791a8dec6b2f5441b14199bad30bd5b912', '[\"*\"]', NULL, NULL, '2023-07-05 04:02:48', '2023-07-05 04:02:48'),
(28, 'App\\Models\\User\\User', 1, 'MyApp', '525f861a231a3015c93ac67d8cbb975c927d21849094620fff855da6fc805f1d', '[\"*\"]', NULL, NULL, '2023-07-16 22:47:37', '2023-07-16 22:47:37'),
(29, 'App\\Models\\User\\User', 1, 'MyApp', '1d920e3bf19b8797ff9cbcdc690c506f4c3665f9429d5239d512ac3f8f4a5348', '[\"*\"]', NULL, NULL, '2023-07-16 22:58:41', '2023-07-16 22:58:41'),
(30, 'App\\Models\\User\\User', 1, 'MyApp', '3cb3e80b50f902b2aaa7fca83ee1ea176845eadd3b3fdbf149470433cd7b86c9', '[\"*\"]', NULL, NULL, '2023-07-16 22:59:29', '2023-07-16 22:59:29'),
(31, 'App\\Models\\User\\User', 1, 'MyApp', 'a3fbc646ff1aef155fc4d28b4d02c0d9b2a49e5993e4651679bd2499fc261698', '[\"*\"]', NULL, NULL, '2023-07-16 23:00:14', '2023-07-16 23:00:14'),
(32, 'App\\Models\\User\\User', 1, 'MyApp', '3b6ffe01a3b46dba708dd66fc449dc9430d80c96f7f4ad194ba3698b66828d20', '[\"*\"]', NULL, NULL, '2023-07-16 23:00:21', '2023-07-16 23:00:21'),
(33, 'App\\Models\\User\\User', 1, 'MyApp', 'e9c8c352e5a6bf5774e69e521beaff40c349c8b88a467cfe84290cdde645fa38', '[\"*\"]', NULL, NULL, '2023-07-16 23:01:02', '2023-07-16 23:01:02'),
(34, 'App\\Models\\User\\User', 1, 'MyApp', 'c2e56c8eb50c0a4db565bbc80c518e168d1a468ed5c06d6ca06839c1f8660a6b', '[\"*\"]', NULL, NULL, '2023-07-16 23:01:24', '2023-07-16 23:01:24'),
(35, 'App\\Models\\User\\User', 1, 'MyApp', '6865a17052763405defdafc209cdcf75c23f7e09fbfeff1dfc6201dacbfe3661', '[\"*\"]', NULL, NULL, '2023-07-16 23:02:15', '2023-07-16 23:02:15'),
(36, 'App\\Models\\User\\User', 1, 'MyApp', '6ed74aef323439a89b96c33580bc24a0c2eec87757bc87f6c1cf279b46adfdf9', '[\"*\"]', NULL, NULL, '2023-07-16 23:04:12', '2023-07-16 23:04:12'),
(37, 'App\\Models\\User\\User', 1, 'MyApp', '98f614252142b6b262d060b154613a43bfb8a08b14b0dead6e747ab1974158e2', '[\"*\"]', NULL, NULL, '2023-07-16 23:04:24', '2023-07-16 23:04:24'),
(38, 'App\\Models\\User\\User', 1, 'MyApp', 'a85101b53283a0ae587c78be534d45dbb593ae59169353dda2ba652b72a8900b', '[\"*\"]', NULL, NULL, '2023-07-16 23:05:05', '2023-07-16 23:05:05'),
(39, 'App\\Models\\User\\User', 1, 'MyApp', '12b6e49b1445f4f0609de479b6f0e091d15a4aeded005ca48b0a264bb38aca20', '[\"*\"]', NULL, NULL, '2023-07-16 23:05:27', '2023-07-16 23:05:27'),
(40, 'App\\Models\\User\\User', 1, 'MyApp', 'aa1c29bbf40100728171bac18358c2964f7d392c220d33bc73e08a4467fbc847', '[\"*\"]', NULL, NULL, '2023-07-16 23:06:20', '2023-07-16 23:06:20'),
(41, 'App\\Models\\User\\User', 1, 'MyApp', '7b8dcd9a076641153906661aa1e2b6429875c12b75a4293743ac260a639b47c6', '[\"*\"]', NULL, NULL, '2023-07-16 23:06:28', '2023-07-16 23:06:28'),
(42, 'App\\Models\\User\\User', 1, 'MyApp', '4dca69c474705fc4257a4e080ecdc289ac7346120803fe7605cbab6d11de0614', '[\"*\"]', NULL, NULL, '2023-07-16 23:07:41', '2023-07-16 23:07:41'),
(43, 'App\\Models\\User\\User', 1, 'MyApp', '643abc93aad31831585b061fb49fe81072e7bd9c80161d54f81c2959832b46bc', '[\"*\"]', NULL, NULL, '2023-07-16 23:12:20', '2023-07-16 23:12:20'),
(44, 'App\\Models\\User\\User', 1, 'MyApp', 'fabf4687e44cf6976f1d43126d47aab879211a3a99e7ba880ad72330164096f4', '[\"*\"]', NULL, NULL, '2023-07-16 23:15:36', '2023-07-16 23:15:36'),
(45, 'App\\Models\\User\\User', 1, 'MyApp', '751c5f2ea95cfa15a2929e2bc60744dc8563a5155e317f46172aa881d3a526fe', '[\"*\"]', NULL, NULL, '2023-07-16 23:19:07', '2023-07-16 23:19:07'),
(46, 'App\\Models\\User\\User', 1, 'MyApp', 'cd1dd0ce1bba5aadf85b789a42198c5a061aa77e376c28d86643ca9bd17200f8', '[\"*\"]', NULL, NULL, '2023-07-16 23:26:15', '2023-07-16 23:26:15'),
(47, 'App\\Models\\User\\User', 1, 'MyApp', '1f1c471af7609a490562db7f4bf21e97fcf47597df3398e21c786658f51e0a4d', '[\"*\"]', NULL, NULL, '2023-07-16 23:28:36', '2023-07-16 23:28:36'),
(48, 'App\\Models\\User\\User', 1, 'MyApp', '94131f7ff4ab31e839fe05bfdff9cedd2fff8ebf5dfe3f65b5b04d090128b8c7', '[\"*\"]', NULL, NULL, '2023-07-16 23:29:28', '2023-07-16 23:29:28'),
(49, 'App\\Models\\User\\User', 1, 'MyApp', '4401fb6924040f42460ff2a1360ae22f76465141a7b2c4754ed709c4d48a0236', '[\"*\"]', NULL, NULL, '2023-07-16 23:30:52', '2023-07-16 23:30:52'),
(50, 'App\\Models\\User\\User', 1, 'MyApp', 'd7c760e08212c1cebf4828fb8601dbce6f76a9cbbc3ec819b73b48f4519f4903', '[\"*\"]', NULL, NULL, '2023-07-16 23:31:38', '2023-07-16 23:31:38'),
(51, 'App\\Models\\User\\User', 1, 'MyApp', '4073ad4202b86deb792fa32d0b35518a29fa014c602507fd935934c66f624286', '[\"*\"]', NULL, NULL, '2023-07-16 23:32:50', '2023-07-16 23:32:50'),
(52, 'App\\Models\\User\\User', 1, 'MyApp', 'ea586a89323e753049df368d7258b771130b2b7ff600344c8548e906c1a98a8a', '[\"*\"]', NULL, NULL, '2023-07-16 23:33:24', '2023-07-16 23:33:24'),
(53, 'App\\Models\\User\\User', 1, 'MyApp', '6b9fa9a7c94f084ae8ce4015a814e1a6b36c43e7c105fcf0a35318cbcf5e1300', '[\"*\"]', NULL, NULL, '2023-07-16 23:34:25', '2023-07-16 23:34:25'),
(54, 'App\\Models\\User\\User', 1, 'MyApp', '8110db1334ded96b2643b534058db52c1c4c28797360f56c581f03c5884c73cf', '[\"*\"]', NULL, NULL, '2023-07-16 23:35:27', '2023-07-16 23:35:27'),
(55, 'App\\Models\\User\\User', 1, 'MyApp', '124444a527d315119403ca952cb7359faa7e2b634079f292ccd5c189cea8f55a', '[\"*\"]', NULL, NULL, '2023-07-16 23:38:08', '2023-07-16 23:38:08'),
(56, 'App\\Models\\User\\User', 1, 'MyApp', '8a3acd249e7334b29f2aab0c1e9acbb1c41b46eee29a0566ab25d7fd2277c2cd', '[\"*\"]', NULL, NULL, '2023-07-16 23:40:29', '2023-07-16 23:40:29'),
(57, 'App\\Models\\User\\User', 1, 'MyApp', '72ea1e1b318190a0665a14ab890d8d35fe11502e97c1ef6d9bc04be88df3e991', '[\"*\"]', NULL, NULL, '2023-07-16 23:41:21', '2023-07-16 23:41:21'),
(58, 'App\\Models\\User\\User', 1, 'MyApp', '1995d22cdfbaeebf122445c5d35fcb9ea19f94aa6cb4be713d7178e464c34e49', '[\"*\"]', NULL, NULL, '2023-07-16 23:46:09', '2023-07-16 23:46:09'),
(59, 'App\\Models\\User\\User', 1, 'MyApp', 'bdc9e087cf16303a70c933540372903790c3186b93d2cff78257e39576cfb319', '[\"*\"]', NULL, NULL, '2023-07-16 23:46:35', '2023-07-16 23:46:35'),
(60, 'App\\Models\\User\\User', 1, 'MyApp', 'cdee743b51ea072b5ce1af3505b1652b4e44b0347db011f1f9aa34f49ee920c2', '[\"*\"]', NULL, NULL, '2023-07-16 23:48:04', '2023-07-16 23:48:04'),
(61, 'App\\Models\\User\\User', 1, 'MyApp', '006c2c389bf650586d0ce703f94d507f0244db1c82ced137637cc3580bf88c93', '[\"*\"]', NULL, NULL, '2023-07-16 23:49:17', '2023-07-16 23:49:17'),
(62, 'App\\Models\\User\\User', 1, 'MyApp', 'e8469f3efcb0d5d4cd3e92c0fb04c93a01ad3f4b6be60b23dbd36182e37dae7e', '[\"*\"]', NULL, NULL, '2023-07-16 23:52:50', '2023-07-16 23:52:50'),
(63, 'App\\Models\\User\\User', 1, 'MyApp', '281d87834ba8cb7917fc99e5c51e5999bfe3f16a92a492092d115e0016bb1f99', '[\"*\"]', NULL, NULL, '2023-07-16 23:53:38', '2023-07-16 23:53:38'),
(64, 'App\\Models\\User\\User', 1, 'MyApp', 'c1953ecd680ab3d20835e5f68a1540146d997e1ed6ab4149dbb38601baec8bd3', '[\"*\"]', NULL, NULL, '2023-07-17 03:22:49', '2023-07-17 03:22:49'),
(65, 'App\\Models\\User\\User', 1, 'MyApp', '18fc2d1e99d6df195fb024750771ddf3015c26647f3f2ac43e00ccdc122181e7', '[\"*\"]', NULL, NULL, '2023-07-17 03:24:12', '2023-07-17 03:24:12'),
(66, 'App\\Models\\User\\User', 1, 'MyApp', 'cd9d7975621c32146742d6c4ba71b26622e21e64e98f8627c222c46b7de09bf5', '[\"*\"]', NULL, NULL, '2023-07-17 03:29:50', '2023-07-17 03:29:50'),
(67, 'App\\Models\\User\\User', 1, 'MyApp', '2245f18785097b9cbb41945aac8a79f220320e6cac0e1c79a7035c262aeb4e83', '[\"*\"]', NULL, NULL, '2023-07-17 03:29:58', '2023-07-17 03:29:58'),
(68, 'App\\Models\\User\\User', 1, 'MyApp', 'a1a782155808913895be4527087f0c3e18ad8de08837186fe4b95cd2d08dbb82', '[\"*\"]', NULL, NULL, '2023-07-17 03:30:41', '2023-07-17 03:30:41'),
(69, 'App\\Models\\User\\User', 1, 'MyApp', 'd25c838221ecad9b59c59e7774976ace663820ad2402b6886cc4da143c5d0f57', '[\"*\"]', NULL, NULL, '2023-07-17 03:34:04', '2023-07-17 03:34:04'),
(70, 'App\\Models\\User\\User', 1, 'MyApp', 'ec0c4a203807551fa4b213c8ec52f82fae52b046419c10f0d8fb2adbd24041cd', '[\"*\"]', NULL, NULL, '2023-07-17 03:34:16', '2023-07-17 03:34:16'),
(71, 'App\\Models\\User\\User', 1, 'MyApp', 'b7e800503ceb45085a9f6d231af8bed6b36072bbabc8baf316e7ae72d5233cb6', '[\"*\"]', NULL, NULL, '2023-07-17 03:35:48', '2023-07-17 03:35:48'),
(72, 'App\\Models\\User\\User', 1, 'MyApp', '9c3898885f56e1b1df42511e8b3fb6124bbd0b3184af62af383a767d4849ec2a', '[\"*\"]', NULL, NULL, '2023-07-17 03:43:05', '2023-07-17 03:43:05'),
(73, 'App\\Models\\User\\User', 1, 'MyApp', 'dc6ea402e065156ec399b1c1d1eb962fa6472055d3eff5dde7569a8ab500faa6', '[\"*\"]', NULL, NULL, '2023-07-17 03:44:22', '2023-07-17 03:44:22'),
(74, 'App\\Models\\User\\User', 1, 'MyApp', '4c6578de9ee5c0598c5398cc3e46329ca3d6c695a2cdff9a8f68de8a8c3047f8', '[\"*\"]', NULL, NULL, '2023-07-17 03:44:52', '2023-07-17 03:44:52'),
(75, 'App\\Models\\User\\User', 1, 'MyApp', 'a636f0883fd499de34b58c1b79c80dd1c94e41b3865b2c87908d052f3935d29b', '[\"*\"]', NULL, NULL, '2023-07-17 03:48:28', '2023-07-17 03:48:28'),
(76, 'App\\Models\\User\\User', 1, 'MyApp', '35b22a85dc332b67de8ebc621b13e8a4dca4da60be615ad20b490eed99b15867', '[\"*\"]', NULL, NULL, '2023-07-17 03:51:57', '2023-07-17 03:51:57'),
(77, 'App\\Models\\User\\User', 1, 'MyApp', '3f60e8f98fac24eb336714e7df481202d6c362a3bca44431dfd91a753dd4f69b', '[\"*\"]', NULL, NULL, '2023-07-17 03:58:35', '2023-07-17 03:58:35'),
(78, 'App\\Models\\User\\User', 1, 'MyApp', '3cc1933956490b0c836d09574c63621273deb36f5ce6618e5a89b22cceab5633', '[\"*\"]', NULL, NULL, '2023-07-17 04:31:31', '2023-07-17 04:31:31'),
(79, 'App\\Models\\User\\User', 1, 'MyApp', '0a070abcd51e084c144758d3b52df86c006116cfce18030a64a91f60e9da1b9a', '[\"*\"]', NULL, NULL, '2023-07-17 04:32:27', '2023-07-17 04:32:27'),
(80, 'App\\Models\\User\\User', 1, 'MyApp', '3e6f28d06ccaea464ff5378ff925c9f113dc07d4bf5467da5877e3bad4abb4d1', '[\"*\"]', NULL, NULL, '2023-07-17 04:33:41', '2023-07-17 04:33:41'),
(81, 'App\\Models\\User\\User', 1, 'MyApp', '6d79ee2371dc19a5c27e84058667c84aad4dbd4d0cbd46d6f0a948bf3e2109f7', '[\"*\"]', NULL, NULL, '2023-07-17 04:34:33', '2023-07-17 04:34:33'),
(82, 'App\\Models\\User\\User', 1, 'MyApp', '6b2ec4b2e02c19b67a8436754f9852319bf2c4925c4dbfeadd9667067b29826a', '[\"*\"]', NULL, NULL, '2023-07-17 04:35:35', '2023-07-17 04:35:35'),
(83, 'App\\Models\\User\\User', 1, 'MyApp', '042f36e86cdf3f38f2cc0a30f535f7b82f36a7b158d6c914ca1e98ef64b4d374', '[\"*\"]', NULL, NULL, '2023-07-17 04:37:32', '2023-07-17 04:37:32'),
(84, 'App\\Models\\User\\User', 1, 'MyApp', '18a53ba8caddd5605f70582dfe30039b3dcfcf5e13cb0412b9afcce3d0e76379', '[\"*\"]', NULL, NULL, '2023-07-17 04:38:58', '2023-07-17 04:38:58'),
(85, 'App\\Models\\User\\User', 1, 'MyApp', '37ea77a2fcad4fadab430eef010a48ae6d1aea8924bf8de8ce835db118276968', '[\"*\"]', NULL, NULL, '2023-07-17 04:43:56', '2023-07-17 04:43:56'),
(86, 'App\\Models\\User\\User', 1, 'MyApp', 'd4db13d3bc3a2ba852bbce961e3f4f8e354d873d480ece4d4731d2a950b41e61', '[\"*\"]', NULL, NULL, '2023-07-17 04:45:17', '2023-07-17 04:45:17'),
(87, 'App\\Models\\User\\User', 1, 'MyApp', '204a61b09de343166cac247693676b4b4f227e6cc15f42bc9fea61f8fd4725e4', '[\"*\"]', NULL, NULL, '2023-07-17 04:47:39', '2023-07-17 04:47:39'),
(88, 'App\\Models\\User\\User', 1, 'MyApp', '26d6687bb312dae239546e0602fd716b6a32d1ab9be9c0a1b02667ee689ab56c', '[\"*\"]', NULL, NULL, '2023-07-17 04:48:10', '2023-07-17 04:48:10'),
(89, 'App\\Models\\User\\User', 1, 'MyApp', '20d19f4ff356db8e4f670b64cb5f1e31df3ca7a450f0a9553c3af0787bf58a36', '[\"*\"]', NULL, NULL, '2023-07-17 04:50:03', '2023-07-17 04:50:03'),
(90, 'App\\Models\\User\\User', 1, 'MyApp', '5671142c2999190a6f1527df51f421015463d40755e601cf62fa5761b3320b61', '[\"*\"]', NULL, NULL, '2023-07-17 04:50:24', '2023-07-17 04:50:24'),
(91, 'App\\Models\\User\\User', 1, 'MyApp', '2f8f19605041dc30718e5986d0f4833d9d5d781808a194824932252f326850a3', '[\"*\"]', NULL, NULL, '2023-07-17 04:51:19', '2023-07-17 04:51:19'),
(92, 'App\\Models\\User\\User', 1, 'MyApp', '0b983673c02948c19eea8c4a1be5a7538229703edfd7fe258f0063018abaeef6', '[\"*\"]', NULL, NULL, '2023-07-21 04:30:59', '2023-07-21 04:30:59'),
(93, 'App\\Models\\User\\User', 1, 'MyApp', '989d7a80b073e60a2aee205133c9c22e1719556b1058928a707ce4bfde375d31', '[\"*\"]', NULL, NULL, '2023-07-21 04:35:34', '2023-07-21 04:35:34'),
(97, 'App\\Models\\User\\User', 1, 'MyApp', '752b8efcf09050bfa24d2910ad9e6ac62fbd47f04d069caf2b162f1c365f5425', '[\"*\"]', NULL, NULL, '2023-07-21 07:15:00', '2023-07-21 07:15:00'),
(98, 'App\\Models\\User\\User', 1, 'MyApp', '1184a6a67d4e194b2b19d8afb711c6fe4ba3ad9e96195e7ef4fe6bd2a0a7e75f', '[\"*\"]', NULL, NULL, '2023-07-21 07:15:32', '2023-07-21 07:15:32'),
(103, 'App\\Models\\User\\User', 1, 'MyApp', '6ca644608f097f98aaf0a4b59b5811288622555d8537a88b9b9e173dff0a287c', '[\"*\"]', NULL, NULL, '2023-07-21 16:09:29', '2023-07-21 16:09:29'),
(105, 'App\\Models\\User\\User', 1, 'MyApp', 'fc5c57d01b727e28e458d507932adb351e43b04884b60e097e153651d789bab4', '[\"*\"]', NULL, NULL, '2023-07-21 16:51:49', '2023-07-21 16:51:49'),
(107, 'App\\Models\\User\\User', 1, 'MyApp', '0e09dfd6c3c64a2459f7a9a1a6ef27c3af8dd62a0d42ce3a5f93176295f7dec2', '[\"*\"]', NULL, NULL, '2023-07-22 05:05:45', '2023-07-22 05:05:45'),
(108, 'App\\Models\\User\\User', 1, 'MyApp', '23dc7e5a39cacb1aa9b894213f4b2f01344aefe91d534101bd76b5c740052ed5', '[\"*\"]', NULL, NULL, '2023-07-23 03:32:48', '2023-07-23 03:32:48'),
(109, 'App\\Models\\User\\User', 1, 'MyApp', '1fdf2514224990f2c3d38f9617070d48d7636a5a9cd89aa86e90e5c6c9f63e15', '[\"*\"]', NULL, NULL, '2023-07-23 03:33:21', '2023-07-23 03:33:21'),
(110, 'App\\Models\\User\\User', 1, 'MyApp', '6a3dfa9020ac14735b8e1b629af77b97608815f5187e88015881e6b801c78cb8', '[\"*\"]', NULL, NULL, '2023-07-23 03:35:36', '2023-07-23 03:35:36'),
(111, 'App\\Models\\User\\User', 1, 'MyApp', 'bfeae065aac3ea4e674a74be6edc798fde01c4303581d84191fbe8e40faedab4', '[\"*\"]', NULL, NULL, '2023-07-23 03:56:56', '2023-07-23 03:56:56'),
(115, 'App\\Models\\User\\User', 1, 'MyApp', 'fb25c0dd4ab6bd755e21994c17f1b1b04328c2945b1aee0918311aece1fbb0d8', '[\"*\"]', '2023-07-23 05:04:45', NULL, '2023-07-23 05:04:38', '2023-07-23 05:04:45'),
(116, 'App\\Models\\User\\User', 1, 'MyApp', '17c90ac54af94d7ca2f6c31312d222ad7e750a80aad5a03e6ac02fa975ba5842', '[\"*\"]', NULL, NULL, '2023-08-08 05:20:54', '2023-08-08 05:20:54'),
(117, 'App\\Models\\User\\User', 1, 'MyApp', 'b927cae2161d370346b4f5d9cfa7c5dfd5f3b185da23a4b697e512649ec11ad4', '[\"*\"]', NULL, NULL, '2023-08-08 05:22:25', '2023-08-08 05:22:25'),
(118, 'App\\Models\\User\\User', 1, 'MyApp', 'f142a3f7eebd4432223821d68c6d261174e351fe8c36caa21d5f79aae558bc84', '[\"*\"]', NULL, NULL, '2023-08-08 05:22:40', '2023-08-08 05:22:40'),
(119, 'App\\Models\\User\\User', 1, 'MyApp', 'ef6f2c116385d03d6a1553e370f2d586721f45b0269c773558d48a7cbfa53f0c', '[\"*\"]', NULL, NULL, '2023-08-08 05:23:56', '2023-08-08 05:23:56'),
(120, 'App\\Models\\User\\User', 1, 'MyApp', '4afebe2de4d0aa2b853b3249fbb58b3bd4257ef2c3465e5a8b9425fe7e292212', '[\"*\"]', NULL, NULL, '2023-08-08 05:24:54', '2023-08-08 05:24:54'),
(121, 'App\\Models\\User\\User', 1, 'MyApp', '96fe92e7064258bb3c09e7bb1a8c3bc54f68368361007fabf9b1b40628dac16a', '[\"*\"]', NULL, NULL, '2023-08-08 05:25:04', '2023-08-08 05:25:04'),
(122, 'App\\Models\\User\\User', 1, 'MyApp', '9e3c0fc7cb399657798a1851cfbda42f1505e825e04100964b75d417df97a116', '[\"*\"]', NULL, NULL, '2023-08-08 05:26:09', '2023-08-08 05:26:09'),
(123, 'App\\Models\\User\\User', 1, 'MyApp', '82be004a3b0da6d21722bdc85cd240579d13b88d38ba736bf38e2bdde5dadc05', '[\"*\"]', NULL, NULL, '2023-08-08 05:27:14', '2023-08-08 05:27:14'),
(124, 'App\\Models\\User\\User', 1, 'MyApp', '9cc707bcef007d0e61b494a7185fee453df6f2f1994db1548fddafeac121c3ed', '[\"*\"]', NULL, NULL, '2023-08-08 05:27:35', '2023-08-08 05:27:35'),
(125, 'App\\Models\\User\\User', 1, 'MyApp', '3f32bb8387d7d02a78798d0c36fd6857354cf87dfcc3298056b09b185ab6397e', '[\"*\"]', NULL, NULL, '2023-08-08 05:28:55', '2023-08-08 05:28:55'),
(127, 'App\\Models\\User\\User', 1, 'MyApp', 'b3a622807bdcdba64e761f6c62dd50ddd6d44f0e6eb3a30d81f7046509f57341', '[\"*\"]', NULL, NULL, '2023-08-08 05:44:22', '2023-08-08 05:44:22'),
(128, 'App\\Models\\User\\User', 1, 'MyApp', '7ee3c92c3af994df6f3f35ab4957d10d85abd4aeee7d2b8a1b7f0f4ad4b8edfe', '[\"*\"]', NULL, NULL, '2023-08-08 05:46:46', '2023-08-08 05:46:46'),
(129, 'App\\Models\\User\\User', 1, 'MyApp', '1185c72e31ceb639c35d72a1310cde771b773f86292ca273cc326df0a2724fbc', '[\"*\"]', NULL, NULL, '2023-08-08 05:46:51', '2023-08-08 05:46:51'),
(130, 'App\\Models\\User\\User', 1, 'MyApp', '086166f50133b80708090b8a9861f9056c20ff4f58e51bbe20d5143c07a51dcc', '[\"*\"]', NULL, NULL, '2023-08-08 05:47:12', '2023-08-08 05:47:12'),
(131, 'App\\Models\\User\\User', 1, 'MyApp', 'b55454b14543084f784b045afb8ea54ad6c8a07167a239dab9deaf7bdf2c1c3f', '[\"*\"]', NULL, NULL, '2023-08-08 05:47:16', '2023-08-08 05:47:16'),
(132, 'App\\Models\\User\\User', 1, 'MyApp', '284e6a8db282c98f7c3d79f0a05fb47c94f8fdbcefa1cc390affd63c4f8598ea', '[\"*\"]', NULL, NULL, '2023-08-08 05:47:35', '2023-08-08 05:47:35'),
(133, 'App\\Models\\User\\User', 1, 'MyApp', '701f1b1cd0b87ea014e61537aaa9042c8dcf9782562086b01dce8ec7ab6c879b', '[\"*\"]', NULL, NULL, '2023-08-08 05:49:50', '2023-08-08 05:49:50'),
(138, 'App\\Models\\User\\User', 1, 'MyApp', 'f4583fc4fd1847880b8e0c566d99e798e59a0dde8c2afbd8aa1b9b04a810414a', '[\"*\"]', NULL, NULL, '2023-08-08 07:31:58', '2023-08-08 07:31:58'),
(139, 'App\\Models\\User\\User', 1, 'MyApp', '223eba14669c5d1ff0bdab2511c8118f5c04c87a98f84640ab3b9ce68221f43e', '[\"*\"]', NULL, NULL, '2023-08-08 07:43:13', '2023-08-08 07:43:13'),
(140, 'App\\Models\\User\\User', 1, 'MyApp', '238fe3bb5bf86444960863fec128c347f9a38634a85ab132d9ea3a228f239a09', '[\"*\"]', NULL, NULL, '2023-08-08 07:43:26', '2023-08-08 07:43:26'),
(141, 'App\\Models\\User\\User', 1, 'MyApp', '1ab492bad759528e83d064d26cf630e98825fa240db1f9e1a9e755925c415a97', '[\"*\"]', NULL, NULL, '2023-08-08 07:43:36', '2023-08-08 07:43:36'),
(142, 'App\\Models\\User\\User', 1, 'MyApp', '1fb27b75a367ad19560ec538ffaae96acf85e5c90c68d8311e50a9873a4a62f9', '[\"*\"]', NULL, NULL, '2023-08-08 07:50:21', '2023-08-08 07:50:21'),
(143, 'App\\Models\\User\\User', 1, 'MyApp', 'f249138aee09561d2535ebd4d290b913a39bb559269928a12a8ecdd1f1765614', '[\"*\"]', NULL, NULL, '2023-08-08 07:53:26', '2023-08-08 07:53:26'),
(149, 'App\\Models\\User\\User', 1, 'MyApp', '0aed81516d1ca7777f8c555694ad84fccf0aafc4c0a136494a458ff1e47b1260', '[\"*\"]', NULL, NULL, '2023-08-09 03:07:57', '2023-08-09 03:07:57'),
(184, 'App\\Models\\User\\User', 1, 'MyApp', '965f1f6aacffa9549809b21fcc0fe59429dd7183cb49369550a5768c3a0cf276', '[\"*\"]', NULL, NULL, '2023-12-04 21:29:35', '2023-12-04 21:29:35'),
(191, 'App\\Models\\User\\User', 1, 'MyApp', 'd35076ad9038a2c5d646ccd7d9f75ce6bd8155d2ab23abdbbe586b3d036aaf97', '[\"*\"]', NULL, NULL, '2023-12-04 21:40:40', '2023-12-04 21:40:40'),
(203, 'App\\Models\\User\\User', 1, 'MyApp', '0eb3adc50df0b16441a5172c8cd6b5e49319a8426e3190d9fa3655886bdc962e', '[\"*\"]', NULL, NULL, '2023-12-07 06:22:55', '2023-12-07 06:22:55'),
(213, 'App\\Models\\User\\User', 1, 'MyApp', '44d4c3caa68c8171da96c56c40fb2eb06f62476067b03d5a7e2f9d2c0133c0be', '[\"*\"]', '2023-12-07 08:18:20', NULL, '2023-12-07 08:06:00', '2023-12-07 08:18:20'),
(215, 'App\\Models\\User\\User', 1, 'MyApp', '66a52b1c727777021a3e34377b91f7c9b0eb3eaae96c538442f91a9aada10460', '[\"*\"]', '2023-12-07 09:12:58', NULL, '2023-12-07 08:31:22', '2023-12-07 09:12:58'),
(225, 'App\\Models\\User\\User', 1, 'MyApp', '18d38bb44ecd0df4c19e691ade6f84117f0159709ff52b64974bd4cbc4122ebd', '[\"*\"]', NULL, NULL, '2023-12-22 02:39:38', '2023-12-22 02:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `name`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'legionary', 1, '2023-07-04 01:45:25', NULL),
(2, 'centurion', 1, '2023-07-04 01:45:25', NULL),
(3, 'senator', 1, '2023-07-04 01:45:25', NULL),
(4, 'consul', 1, '2023-07-04 01:45:25', NULL),
(5, 'praetor', 1, '2023-07-04 01:45:25', NULL),
(6, 'quaestors', 1, '2023-07-04 01:45:25', NULL),
(7, 'tribune', 1, '2023-07-04 01:45:25', NULL),
(8, 'citizen', 1, '2023-07-04 01:45:25', NULL),
(9, 'slave', 1, '2023-07-04 01:45:25', NULL),
(10, 'patrician', 1, '2023-07-04 01:45:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Sol Invictus', 1, NULL, NULL),
(2, 'Al-Tariqa Fii-salaam', 1, NULL, NULL),
(3, 'Althing Sacré', 1, NULL, NULL),
(4, 'Arathi', 1, NULL, NULL),
(5, 'Cercle', 1, NULL, NULL),
(6, 'Codex des étoiles', 1, NULL, NULL),
(7, 'Culte du Grand Chien', 1, NULL, NULL),
(8, 'Culte du guerrier', 1, NULL, NULL),
(9, 'Fel’Lökla', 1, NULL, NULL),
(10, 'Flamme Ardente', 1, NULL, NULL),
(11, 'Grand Corbeau', 1, NULL, NULL),
(12, 'Grande Chasse', 1, NULL, NULL),
(13, 'Grimmorgog', 1, NULL, NULL),
(14, 'Haeresis', 1, NULL, NULL),
(15, 'Jabba Hal', 1, NULL, NULL),
(16, 'Kanna Andheim', 1, NULL, NULL),
(17, 'Naak’e’Tuun', 1, NULL, NULL),
(18, 'Noisehoc', 1, NULL, NULL),
(19, 'Octo Armis', 1, NULL, NULL),
(20, 'Ordre du Savoir', 1, NULL, NULL),
(21, 'Reikskult', 1, NULL, NULL),
(22, 'Rite de Saint Clément\r', 1, NULL, NULL),
(23, 'Sainte Église de l’Unique\r', 1, NULL, NULL),
(24, 'Sang Sans Peur', 1, NULL, NULL),
(25, 'Sin’Doreï', 1, NULL, NULL),
(26, 'Solara', 1, NULL, NULL),
(27, 'Tératos', 1, NULL, NULL),
(28, 'Valkfadir', 1, NULL, NULL),
(29, 'Vraie Foi\r', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `religion_attributes`
--

CREATE TABLE `religion_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `religion_attribute_value`
--

CREATE TABLE `religion_attribute_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `value_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `religion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('619qMM8QpbP86E5iXb6YsLZelBrabYStzDbTdKDd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoielpCaTA0Y2pYYmNPMVJQelVuNXoxYjhteWU5WFo5akp4dzlDa3FiaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690068739),
('Kva2SqLraia3q46Pru5uviechLcZDIV79QPIYjBN', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVJ2TnJUYXFqQmxuQWNPZ3BMMlVUQ2k2eUxHQkRMd2RZNXNHUzZSdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9sb2NhbGhvc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690065559),
('rmeh7p9Nqn1922GUBxhwve6NykUcwOlkehgSfhLd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFluOElaNHBCb3NoVUk0am8zenI5bjZlWkVZYm1udHNsRHB5Tnp1VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1689899439),
('uQB5G4GCKhBNmMLP9CEtsXGPVexM65Dw4WNCf4yC', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEtVMWxOaUNlQjZUZmVUeVRjc2RJVXBiR0tlQ0ludGM3RWt4aG92SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9sb2NhbGhvc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689898627),
('XaNGbPtiPNl75g7NW7wUZzKCRlZkXfwUMR2Az5Pf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTBVelh1SHZWUnNnWVZhbzhkTFJLb2Q4VERHZk9Db1pLWlJtQVZXaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1692280317),
('ZxBhFVFBQo4J9w0RfvaIBDiiPTrIFdqXJFdqJHFm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEZsNU1Ya2Zma2lxcUxpMzlEeGlZYTBSbkgxTWpCQmQ4N0pBSDN4OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1689911644);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `isActive`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `type`, `rank`) VALUES
(1, 'Diogenus', 'Christopher', 'R Murray', 'christopher.r.murray@protonmail.com', NULL, '$2y$10$aBypCGUGyDBCpWFjeHgvJea8r1xY6yv1WbQ/max9vI1ypRpRmNi7C', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 03:56:11', '2023-12-07 09:12:58', 2, 1),
(2, 'test', '', '', 'test@test.com', NULL, '$2y$10$XkjCx3AeKuYbId3vjC1hQ.rdMTGZjdaGTnwL.gtgFx7.QYTgtJ0Im', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-10 06:40:47', '2022-09-10 06:40:47', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_attributes`
--

CREATE TABLE `user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_attributes`
--

INSERT INTO `user_attributes` (`id`, `attribute_id`) VALUES
(1, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_attribute_value`
--

CREATE TABLE `user_attribute_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `value_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_attribute_value`
--

INSERT INTO `user_attribute_value` (`id`, `attribute_id`, `value_id`, `type_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 6, 1538, 1, '2023-04-06 02:45:33', '2023-04-06 02:45:33', 1),
(2, 6, 1539, 1, '2023-04-06 02:45:33', '2023-04-06 02:45:33', 2),
(3, 7, 1540, 1, '2023-04-06 02:47:28', '2023-04-06 02:47:28', 1),
(4, 7, 1541, 1, '2023-04-06 02:47:28', '2023-04-06 02:47:28', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `name`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

CREATE TABLE `values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `values`
--

INSERT INTO `values` (`id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', NULL, '2023-04-01 06:54:07'),
(2, 'octavii-1-transparent.png', NULL, NULL),
(3, '4', NULL, '2023-04-01 08:06:20'),
(4, '', '2022-10-12 04:15:55', '2022-10-12 04:15:55'),
(5, '', '2022-10-12 04:15:55', '2022-10-12 04:15:55'),
(6, '', '2022-10-12 04:15:55', '2022-10-12 04:15:55'),
(7, '', '2022-10-12 07:34:11', '2022-10-12 07:34:11'),
(8, '', '2022-10-12 07:34:11', '2022-10-12 07:34:11'),
(9, '', '2022-10-12 07:34:11', '2022-10-12 07:34:11'),
(10, '', '2022-10-12 07:35:19', '2022-10-12 07:35:19'),
(11, '', '2022-10-12 07:35:19', '2022-10-12 07:35:19'),
(12, '', '2022-10-12 07:35:19', '2022-10-12 07:35:19'),
(13, '', '2022-10-12 08:04:29', '2022-10-12 08:04:29'),
(14, '', '2022-10-12 08:04:29', '2022-10-12 08:04:29'),
(15, '', '2022-10-12 08:04:29', '2022-10-12 08:04:29'),
(16, '', '2022-10-12 08:10:54', '2022-10-12 08:10:54'),
(17, '', '2022-10-12 08:10:54', '2022-10-12 08:10:54'),
(18, '', '2022-10-12 08:10:54', '2022-10-12 08:10:54'),
(19, '', '2022-10-12 08:17:47', '2022-10-12 08:17:47'),
(20, '', '2022-10-12 08:17:47', '2022-10-12 08:17:47'),
(21, '', '2022-10-12 08:17:47', '2022-10-12 08:17:47'),
(22, '', '2022-10-12 08:17:58', '2022-10-12 08:17:58'),
(23, '', '2022-10-12 08:17:58', '2022-10-12 08:17:58'),
(24, '', '2022-10-12 08:17:58', '2022-10-12 08:17:58'),
(25, '', '2022-10-12 08:18:41', '2022-10-12 08:18:41'),
(26, '', '2022-10-12 08:18:41', '2022-10-12 08:18:41'),
(27, '', '2022-10-12 08:18:41', '2022-10-12 08:18:41'),
(28, '', '2022-10-12 20:11:04', '2022-10-12 20:11:04'),
(29, 'test4', '2022-10-12 20:11:04', '2023-04-01 07:00:17'),
(30, 'test12345', '2022-10-12 20:11:04', '2023-04-01 07:00:32'),
(31, '', '2022-10-12 20:11:04', '2022-10-12 20:11:04'),
(32, '', '2022-10-12 20:11:04', '2022-10-12 20:11:04'),
(33, '', '2022-10-12 20:11:04', '2022-10-12 20:11:04'),
(34, '', '2022-10-12 20:11:04', '2022-10-12 20:11:04'),
(35, '', '2022-10-12 20:11:04', '2022-10-12 20:11:04'),
(36, '', '2022-10-12 20:11:04', '2022-10-12 20:11:04'),
(37, '', '2022-10-12 20:11:04', '2022-10-12 20:11:04'),
(38, '', '2022-10-12 20:11:04', '2022-10-12 20:11:04'),
(39, '', '2022-10-12 20:11:04', '2022-10-12 20:11:04'),
(40, '', '2022-10-13 07:23:16', '2022-10-13 07:23:16'),
(41, '', '2022-10-13 07:23:16', '2022-10-13 07:23:16'),
(42, '', '2022-10-13 07:23:16', '2022-10-13 07:23:16'),
(43, '', '2022-10-13 07:23:16', '2022-10-13 07:23:16'),
(44, 'Octavii', '2022-10-13 07:24:48', '2022-10-13 07:24:48'),
(45, 'octavii-1-transparent.png', '2022-10-13 07:24:48', '2023-04-01 07:06:11'),
(46, 'octavii-1-transparent.png', '2022-10-13 07:24:48', '2023-04-01 07:06:21'),
(47, 'octavii-1-transparent.png', '2022-10-13 07:24:48', '2023-04-01 07:06:30'),
(48, '', '2022-10-13 07:24:48', '2022-10-13 07:24:48'),
(49, '', '2022-10-13 07:24:48', '2022-10-13 07:24:48'),
(50, '', '2022-10-13 07:24:48', '2022-10-13 07:24:48'),
(51, '', '2022-10-13 07:24:48', '2022-10-13 07:24:48'),
(52, '', '2022-10-13 07:24:48', '2022-10-13 07:24:48'),
(53, '', '2022-10-13 07:24:48', '2022-10-13 07:24:48'),
(54, '', '2022-10-13 07:24:48', '2022-10-13 07:24:48'),
(55, '', '2022-10-13 07:24:48', '2022-10-13 07:24:48'),
(56, '', '2023-04-01 02:58:12', '2023-04-01 02:58:12'),
(57, '', '2023-04-01 02:58:12', '2023-04-01 02:58:12'),
(58, '', '2023-04-01 02:58:12', '2023-04-01 02:58:12'),
(59, '', '2023-04-01 02:58:12', '2023-04-01 02:58:12'),
(60, '', '2023-04-01 02:58:12', '2023-04-01 02:58:12'),
(61, '', '2023-04-01 03:07:39', '2023-04-01 03:07:39'),
(62, '', '2023-04-01 03:07:39', '2023-04-01 03:07:39'),
(63, '', '2023-04-01 03:07:39', '2023-04-01 03:07:39'),
(64, '', '2023-04-01 03:07:39', '2023-04-01 03:07:39'),
(65, '', '2023-04-01 03:07:39', '2023-04-01 03:07:39'),
(66, '', '2023-04-01 08:01:46', '2023-04-01 08:01:46'),
(67, 'scipii-1.png', '2023-04-01 08:01:46', '2023-04-01 08:03:54'),
(68, '', '2023-04-01 08:01:46', '2023-04-01 08:01:46'),
(69, '', '2023-04-01 08:01:46', '2023-04-01 08:01:46'),
(70, 'Scipii', '2023-04-01 08:01:46', '2023-04-07 06:52:44'),
(71, '', '2023-04-01 08:04:08', '2023-04-01 08:04:08'),
(72, 'rapax-1.jpg', '2023-04-01 08:04:08', '2023-04-01 08:05:27'),
(73, '', '2023-04-01 08:04:08', '2023-04-01 08:04:08'),
(74, '', '2023-04-01 08:04:08', '2023-04-01 08:04:08'),
(75, 'Rapax', '2023-04-01 08:04:08', '2023-04-07 06:52:53'),
(76, '', '2023-04-01 08:04:10', '2023-04-01 08:04:10'),
(77, 'fortii-1-transparent.png', '2023-04-01 08:04:10', '2023-04-01 08:05:55'),
(78, '', '2023-04-01 08:04:10', '2023-04-01 08:04:10'),
(79, '', '2023-04-01 08:04:10', '2023-04-01 08:04:10'),
(80, 'Fortii', '2023-04-01 08:04:10', '2023-04-07 06:53:00'),
(81, '', '2023-04-05 23:17:31', '2023-04-05 23:17:31'),
(82, '', '2023-04-05 23:19:00', '2023-04-05 23:19:00'),
(83, '', '2023-04-05 23:21:56', '2023-04-05 23:21:56'),
(84, '', '2023-04-05 23:24:31', '2023-04-05 23:24:31'),
(85, '', '2023-04-05 23:24:32', '2023-04-05 23:24:32'),
(86, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(87, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(88, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(89, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(90, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(91, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(92, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(93, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(94, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(95, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(96, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(97, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(98, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(99, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(100, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(101, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(102, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(103, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(104, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(105, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(106, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(107, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(108, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(109, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(110, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(111, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(112, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(113, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(114, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(115, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(116, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(117, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(118, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(119, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(120, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(121, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(122, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(123, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(124, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(125, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(126, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(127, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(128, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(129, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(130, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(131, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(132, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(133, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(134, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(135, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(136, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(137, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(138, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(139, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(140, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(141, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(142, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(143, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(144, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(145, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(146, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(147, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(148, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(149, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(150, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(151, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(152, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(153, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(154, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(155, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(156, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(157, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(158, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(159, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(160, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(161, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(162, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(163, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(164, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(165, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(166, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(167, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(168, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(169, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(170, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(171, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(172, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(173, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(174, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(175, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(176, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(177, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(178, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(179, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(180, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(181, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(182, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(183, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(184, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(185, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(186, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(187, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(188, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(189, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(190, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(191, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(192, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(193, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(194, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(195, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(196, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(197, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(198, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(199, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(200, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(201, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(202, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(203, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(204, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(205, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(206, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(207, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(208, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(209, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(210, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(211, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(212, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(213, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(214, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(215, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(216, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(217, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(218, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(219, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(220, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(221, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(222, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(223, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(224, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(225, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(226, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(227, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(228, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(229, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(230, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(231, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(232, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(233, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(234, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(235, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(236, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(237, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(238, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(239, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(240, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(241, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(242, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(243, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(244, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(245, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(246, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(247, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(248, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(249, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(250, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(251, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(252, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(253, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(254, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(255, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(256, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(257, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(258, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(259, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(260, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(261, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(262, '', '2023-04-05 23:24:37', '2023-04-05 23:24:37'),
(263, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(264, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(265, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(266, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(267, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(268, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(269, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(270, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(271, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(272, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(273, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(274, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(275, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(276, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(277, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(278, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(279, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(280, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(281, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(282, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(283, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(284, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(285, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(286, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(287, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(288, '', '2023-04-05 23:25:25', '2023-04-05 23:25:25'),
(289, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(290, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(291, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(292, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(293, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(294, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(295, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(296, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(297, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(298, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(299, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(300, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(301, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(302, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(303, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(304, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(305, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(306, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(307, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(308, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(309, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(310, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(311, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(312, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(313, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(314, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(315, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(316, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(317, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(318, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(319, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(320, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(321, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(322, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(323, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(324, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(325, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(326, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(327, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(328, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(329, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(330, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(331, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(332, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(333, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(334, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(335, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(336, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(337, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(338, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(339, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(340, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(341, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(342, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(343, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(344, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(345, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(346, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(347, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(348, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(349, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(350, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(351, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(352, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(353, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(354, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(355, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(356, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(357, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(358, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(359, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(360, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(361, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(362, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(363, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(364, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(365, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(366, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(367, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(368, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(369, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(370, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(371, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(372, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(373, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(374, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(375, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(376, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(377, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(378, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(379, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(380, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(381, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(382, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(383, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(384, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(385, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(386, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(387, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(388, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(389, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(390, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(391, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(392, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(393, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(394, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(395, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(396, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(397, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(398, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(399, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(400, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(401, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(402, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(403, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(404, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(405, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(406, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(407, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(408, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(409, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(410, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(411, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(412, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(413, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(414, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(415, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(416, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(417, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(418, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(419, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(420, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(421, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(422, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(423, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(424, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(425, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(426, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(427, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(428, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(429, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(430, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(431, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(432, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(433, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(434, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(435, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(436, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(437, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(438, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(439, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(440, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(441, '', '2023-04-05 23:25:26', '2023-04-05 23:25:26'),
(442, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(443, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(444, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(445, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(446, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(447, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(448, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(449, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(450, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(451, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(452, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(453, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(454, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(455, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(456, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(457, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(458, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(459, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(460, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(461, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(462, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(463, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(464, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(465, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(466, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(467, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(468, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(469, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(470, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(471, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(472, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(473, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(474, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(475, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(476, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(477, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(478, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(479, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(480, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(481, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(482, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(483, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(484, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(485, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(486, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(487, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(488, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(489, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(490, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(491, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(492, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(493, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(494, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(495, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(496, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(497, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(498, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(499, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(500, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(501, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(502, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(503, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(504, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(505, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(506, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(507, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(508, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(509, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(510, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(511, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(512, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(513, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(514, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(515, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(516, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(517, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(518, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(519, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(520, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(521, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(522, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(523, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(524, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(525, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(526, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(527, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(528, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(529, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(530, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(531, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(532, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(533, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(534, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(535, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(536, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(537, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(538, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(539, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(540, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(541, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(542, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(543, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(544, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(545, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(546, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(547, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(548, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(549, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(550, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(551, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(552, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(553, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(554, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(555, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(556, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(557, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(558, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(559, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(560, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(561, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(562, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(563, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(564, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(565, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(566, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(567, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(568, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(569, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(570, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(571, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(572, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(573, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(574, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(575, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(576, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(577, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(578, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(579, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(580, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(581, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(582, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(583, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(584, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(585, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(586, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(587, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(588, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(589, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(590, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(591, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(592, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(593, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(594, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(595, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(596, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(597, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(598, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(599, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(600, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(601, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(602, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(603, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(604, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(605, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(606, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(607, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(608, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(609, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(610, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(611, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(612, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(613, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(614, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(615, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(616, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(617, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(618, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(619, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(620, '', '2023-04-05 23:26:50', '2023-04-05 23:26:50'),
(621, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(622, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(623, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(624, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(625, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(626, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(627, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(628, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(629, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(630, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(631, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(632, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(633, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(634, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(635, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(636, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(637, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(638, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(639, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(640, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(641, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(642, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(643, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(644, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(645, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(646, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(647, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(648, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(649, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(650, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(651, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(652, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(653, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(654, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(655, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(656, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(657, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(658, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(659, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(660, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(661, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(662, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(663, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(664, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(665, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(666, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(667, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(668, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(669, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(670, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(671, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(672, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(673, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(674, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(675, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(676, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(677, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(678, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(679, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(680, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(681, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(682, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(683, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(684, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(685, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(686, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(687, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(688, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(689, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(690, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(691, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(692, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(693, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(694, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(695, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(696, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(697, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(698, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(699, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(700, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(701, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(702, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(703, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(704, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(705, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(706, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(707, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(708, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(709, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(710, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(711, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(712, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(713, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(714, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(715, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(716, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(717, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(718, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(719, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(720, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(721, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(722, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(723, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(724, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(725, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(726, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(727, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(728, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(729, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(730, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(731, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(732, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(733, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(734, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(735, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(736, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(737, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(738, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(739, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(740, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(741, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(742, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(743, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(744, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(745, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(746, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(747, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(748, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(749, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(750, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(751, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(752, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(753, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(754, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(755, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(756, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(757, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(758, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(759, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(760, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(761, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(762, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(763, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(764, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(765, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(766, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(767, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(768, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(769, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(770, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(771, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(772, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(773, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(774, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(775, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(776, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(777, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(778, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(779, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(780, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(781, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(782, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(783, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(784, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(785, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(786, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(787, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(788, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(789, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(790, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(791, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(792, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(793, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(794, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(795, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(796, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(797, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(798, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(799, '', '2023-04-05 23:33:33', '2023-04-05 23:33:33'),
(800, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(801, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(802, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(803, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(804, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(805, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(806, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(807, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(808, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(809, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(810, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(811, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(812, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(813, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(814, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(815, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(816, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(817, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(818, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(819, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(820, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(821, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(822, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(823, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(824, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(825, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(826, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(827, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(828, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(829, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(830, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(831, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(832, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(833, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(834, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(835, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(836, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(837, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(838, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(839, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(840, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(841, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(842, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(843, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(844, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(845, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(846, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(847, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(848, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(849, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(850, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(851, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(852, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(853, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(854, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(855, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(856, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(857, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(858, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(859, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(860, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(861, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(862, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(863, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(864, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(865, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(866, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(867, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(868, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(869, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(870, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(871, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(872, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(873, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(874, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(875, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(876, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(877, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(878, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(879, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(880, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(881, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(882, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(883, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(884, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(885, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(886, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(887, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(888, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(889, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(890, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(891, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(892, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(893, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(894, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(895, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(896, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(897, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(898, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(899, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(900, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(901, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(902, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(903, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(904, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(905, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(906, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16');
INSERT INTO `values` (`id`, `value`, `created_at`, `updated_at`) VALUES
(907, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(908, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(909, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(910, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(911, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(912, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(913, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(914, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(915, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(916, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(917, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(918, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(919, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(920, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(921, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(922, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(923, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(924, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(925, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(926, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(927, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(928, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(929, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(930, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(931, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(932, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(933, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(934, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(935, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(936, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(937, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(938, '', '2023-04-05 23:34:16', '2023-04-05 23:34:16'),
(939, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(940, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(941, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(942, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(943, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(944, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(945, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(946, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(947, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(948, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(949, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(950, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(951, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(952, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(953, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(954, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(955, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(956, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(957, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(958, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(959, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(960, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(961, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(962, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(963, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(964, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(965, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(966, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(967, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(968, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(969, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(970, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(971, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(972, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(973, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(974, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(975, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(976, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(977, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(978, '', '2023-04-05 23:34:17', '2023-04-05 23:34:17'),
(979, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(980, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(981, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(982, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(983, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(984, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(985, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(986, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(987, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(988, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(989, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(990, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(991, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(992, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(993, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(994, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(995, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(996, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(997, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(998, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(999, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1000, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1001, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1002, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1003, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1004, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1005, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1006, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1007, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1008, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1009, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1010, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1011, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1012, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1013, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1014, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1015, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1016, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1017, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1018, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1019, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1020, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1021, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1022, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1023, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1024, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1025, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1026, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1027, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1028, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1029, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1030, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1031, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1032, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1033, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1034, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1035, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1036, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1037, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1038, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1039, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1040, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1041, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1042, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1043, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1044, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1045, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1046, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1047, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1048, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1049, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1050, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1051, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1052, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1053, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1054, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1055, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1056, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1057, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1058, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1059, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1060, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1061, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1062, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1063, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1064, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1065, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1066, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1067, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1068, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1069, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1070, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1071, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1072, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1073, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1074, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1075, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1076, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1077, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1078, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1079, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1080, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1081, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1082, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1083, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1084, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1085, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1086, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1087, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1088, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1089, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1090, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1091, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1092, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1093, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1094, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1095, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1096, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1097, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1098, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1099, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1100, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1101, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1102, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1103, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1104, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1105, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1106, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1107, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1108, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1109, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1110, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1111, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1112, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1113, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1114, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1115, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1116, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1117, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1118, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1119, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1120, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1121, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1122, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1123, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1124, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1125, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1126, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1127, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1128, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1129, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1130, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1131, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1132, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1133, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1134, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1135, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1136, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1137, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1138, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1139, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1140, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1141, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1142, '', '2023-04-05 23:34:25', '2023-04-05 23:34:25'),
(1143, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1144, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1145, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1146, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1147, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1148, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1149, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1150, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1151, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1152, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1153, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1154, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1155, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1156, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1157, '', '2023-04-05 23:34:26', '2023-04-05 23:34:26'),
(1158, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1159, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1160, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1161, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1162, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1163, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1164, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1165, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1166, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1167, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1168, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1169, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1170, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1171, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1172, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1173, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1174, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1175, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1176, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1177, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1178, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1179, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1180, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1181, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1182, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1183, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1184, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1185, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1186, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1187, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1188, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1189, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1190, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1191, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1192, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1193, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1194, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1195, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1196, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1197, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1198, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1199, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1200, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1201, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1202, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1203, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1204, '', '2023-04-05 23:36:58', '2023-04-05 23:36:58'),
(1205, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1206, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1207, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1208, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1209, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1210, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1211, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1212, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1213, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1214, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1215, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1216, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1217, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1218, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1219, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1220, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1221, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1222, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1223, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1224, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1225, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1226, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1227, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1228, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1229, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1230, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1231, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1232, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1233, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1234, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1235, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1236, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1237, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1238, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1239, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1240, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1241, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1242, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1243, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1244, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1245, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1246, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1247, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1248, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1249, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1250, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1251, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1252, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1253, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1254, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1255, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1256, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1257, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1258, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1259, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1260, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1261, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1262, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1263, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1264, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1265, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1266, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1267, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1268, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1269, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1270, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1271, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1272, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1273, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1274, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1275, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1276, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1277, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1278, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1279, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1280, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1281, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1282, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1283, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1284, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1285, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1286, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1287, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1288, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1289, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1290, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1291, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1292, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1293, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1294, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1295, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1296, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1297, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1298, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1299, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1300, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1301, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1302, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1303, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1304, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1305, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1306, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1307, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1308, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1309, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1310, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1311, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1312, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1313, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1314, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1315, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1316, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1317, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1318, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1319, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1320, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1321, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1322, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1323, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1324, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1325, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1326, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1327, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1328, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1329, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1330, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1331, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1332, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1333, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1334, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1335, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1336, '', '2023-04-05 23:36:59', '2023-04-05 23:36:59'),
(1337, '', '2023-04-05 23:38:21', '2023-04-05 23:38:21'),
(1338, '', '2023-04-05 23:39:07', '2023-04-05 23:39:07'),
(1339, '', '2023-04-05 23:40:17', '2023-04-05 23:40:17'),
(1340, '', '2023-04-05 23:41:25', '2023-04-05 23:41:25'),
(1341, '', '2023-04-05 23:43:58', '2023-04-05 23:43:58'),
(1342, '', '2023-04-05 23:44:49', '2023-04-05 23:44:49'),
(1343, '', '2023-04-05 23:45:51', '2023-04-05 23:45:51'),
(1344, 'La Legion Praetoria est une guilde du jeu medieval et fantastique du Duche de Bicolline.      Le Theme principal de notre groupe est le peuple Romain et plus specifiquement la garde Praetorienne.      La garde Praetorienne est une unite d\'elite du temps de l\'empire qui avait pour but la securite de l\'empereur      Les couleur traditionel de la division sont le mauve byzantin, du a sa rarete et par consequant son prestige, et l\'Or.', '2023-04-05 23:47:20', '2023-04-06 00:02:17'),
(1345, '', '2023-04-05 23:47:21', '2023-04-05 23:47:21'),
(1346, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1347, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1348, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1349, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1350, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1351, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1352, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1353, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1354, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1355, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1356, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1357, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1358, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1359, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1360, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1361, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1362, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1363, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1364, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1365, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1366, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1367, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1368, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1369, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1370, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1371, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1372, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1373, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1374, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1375, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1376, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1377, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1378, '', '2023-04-05 23:47:27', '2023-04-05 23:47:27'),
(1379, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1380, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1381, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1382, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1383, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1384, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1385, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1386, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1387, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1388, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1389, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1390, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1391, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1392, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1393, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1394, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1395, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1396, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1397, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1398, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1399, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1400, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1401, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1402, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1403, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1404, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1405, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1406, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1407, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1408, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1409, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1410, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1411, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1412, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1413, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1414, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1415, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1416, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1417, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1418, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1419, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1420, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1421, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1422, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1423, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1424, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1425, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1426, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1427, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1428, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1429, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1430, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1431, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1432, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1433, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1434, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1435, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1436, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1437, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1438, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1439, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1440, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1441, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1442, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1443, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1444, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1445, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1446, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1447, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1448, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1449, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1450, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1451, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1452, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1453, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1454, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1455, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1456, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1457, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1458, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1459, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1460, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1461, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1462, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1463, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1464, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1465, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1466, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1467, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1468, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1469, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1470, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1471, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1472, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1473, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1474, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1475, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1476, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1477, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1478, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1479, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1480, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1481, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1482, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1483, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1484, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1485, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1486, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1487, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1488, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1489, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1490, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1491, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1492, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1493, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1494, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1495, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1496, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1497, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1498, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1499, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1500, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1501, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1502, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1503, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1504, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1505, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1506, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1507, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1508, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1509, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1510, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1511, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1512, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1513, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1514, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1515, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1516, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1517, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1518, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1519, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1520, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1521, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1522, '', '2023-04-05 23:47:28', '2023-04-05 23:47:28'),
(1523, '', '2023-04-06 02:37:40', '2023-04-06 02:37:40'),
(1524, '', '2023-04-06 02:37:40', '2023-04-06 02:37:40'),
(1525, '', '2023-04-06 02:37:40', '2023-04-06 02:37:40'),
(1526, '', '2023-04-06 02:37:40', '2023-04-06 02:37:40'),
(1527, '', '2023-04-06 02:37:40', '2023-04-06 02:37:40'),
(1528, '', '2023-04-06 02:38:39', '2023-04-06 02:38:39'),
(1529, '', '2023-04-06 02:38:39', '2023-04-06 02:38:39'),
(1530, '', '2023-04-06 02:38:39', '2023-04-06 02:38:39'),
(1531, '', '2023-04-06 02:38:39', '2023-04-06 02:38:39'),
(1532, '', '2023-04-06 02:38:39', '2023-04-06 02:38:39'),
(1533, '', '2023-04-06 02:38:41', '2023-04-06 02:38:41'),
(1534, '', '2023-04-06 02:38:41', '2023-04-06 02:38:41'),
(1535, '', '2023-04-06 02:38:41', '2023-04-06 02:38:41'),
(1536, '', '2023-04-06 02:38:41', '2023-04-06 02:38:41'),
(1537, '', '2023-04-06 02:38:41', '2023-04-06 02:38:41'),
(1538, '1', '2023-04-06 02:45:33', '2023-12-07 09:11:37'),
(1539, '', '2023-04-06 02:45:33', '2023-04-06 02:45:33'),
(1540, '1', '2023-04-06 02:47:28', '2023-12-07 09:11:47'),
(1541, '', '2023-04-06 02:47:28', '2023-04-06 02:47:28'),
(1542, '11', '2023-04-06 02:48:01', '2023-04-06 17:41:50'),
(1543, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1544, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1545, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1546, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1547, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1548, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1549, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1550, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1551, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1552, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1553, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1554, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1555, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1556, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1557, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1558, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1559, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1560, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1561, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1562, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1563, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1564, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1565, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1566, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1567, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1568, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1569, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1570, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1571, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1572, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1573, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1574, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1575, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1576, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1577, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1578, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1579, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1580, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1581, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1582, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1583, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1584, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1585, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1586, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1587, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1588, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1589, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1590, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1591, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1592, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1593, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1594, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1595, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1596, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1597, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1598, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1599, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1600, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1601, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1602, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1603, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1604, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1605, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1606, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1607, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1608, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1609, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1610, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1611, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1612, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1613, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1614, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1615, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1616, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1617, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1618, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1619, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1620, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1621, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1622, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1623, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1624, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1625, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1626, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1627, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1628, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1629, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1630, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1631, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1632, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1633, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1634, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1635, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1636, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1637, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1638, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1639, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1640, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1641, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1642, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1643, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1644, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1645, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1646, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1647, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1648, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1649, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1650, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1651, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1652, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1653, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1654, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1655, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1656, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1657, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1658, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1659, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1660, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1661, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1662, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1663, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1664, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1665, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1666, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1667, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1668, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1669, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1670, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1671, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1672, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1673, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1674, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1675, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1676, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1677, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1678, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1679, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1680, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1681, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1682, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1683, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1684, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1685, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1686, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1687, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1688, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1689, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1690, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1691, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1692, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1693, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1694, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1695, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1696, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1697, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1698, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1699, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1700, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1701, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1702, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1703, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1704, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1705, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1706, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1707, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1708, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1709, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1710, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1711, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1712, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1713, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1714, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1715, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1716, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1717, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1718, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1719, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1720, '', '2023-04-06 02:48:01', '2023-04-06 02:48:01'),
(1721, '', '2023-04-06 08:32:03', '2023-04-06 08:32:03'),
(1722, '', '2023-04-06 08:32:03', '2023-04-06 08:32:03'),
(1723, '', '2023-04-06 08:32:03', '2023-04-06 08:32:03'),
(1724, '', '2023-04-06 08:32:03', '2023-04-06 08:32:03'),
(1725, '', '2023-04-06 08:32:03', '2023-04-06 08:32:03'),
(1726, '', '2023-04-06 08:33:01', '2023-04-06 08:33:01'),
(1727, '', '2023-04-06 08:33:01', '2023-04-06 08:33:01'),
(1728, '', '2023-04-06 08:33:01', '2023-04-06 08:33:01'),
(1729, '', '2023-04-06 08:33:01', '2023-04-06 08:33:01'),
(1730, '', '2023-04-06 08:33:01', '2023-04-06 08:33:01'),
(1731, '', '2023-04-06 17:56:17', '2023-04-06 17:56:17'),
(1732, '', '2023-04-06 17:56:17', '2023-04-06 17:56:17'),
(1733, '', '2023-04-06 17:56:17', '2023-04-06 17:56:17'),
(1734, '', '2023-04-06 17:56:17', '2023-04-06 17:56:17'),
(1735, '', '2023-04-06 17:56:17', '2023-04-06 17:56:17'),
(1736, '', '2023-04-07 05:43:32', '2023-04-07 05:43:32'),
(1737, '', '2023-04-07 05:45:04', '2023-04-07 05:45:04'),
(1738, 'Republic', '2023-04-07 05:50:06', '2023-04-07 05:50:53'),
(1739, '', '2023-04-07 05:50:07', '2023-04-07 05:50:07'),
(1740, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1741, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1742, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1743, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1744, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1745, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1746, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1747, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1748, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1749, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1750, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1751, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1752, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1753, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1754, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1755, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1756, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1757, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1758, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1759, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1760, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1761, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1762, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1763, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1764, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1765, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1766, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1767, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1768, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1769, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1770, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1771, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1772, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1773, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1774, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1775, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1776, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1777, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1778, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1779, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1780, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1781, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1782, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1783, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1784, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1785, '', '2023-04-07 05:50:11', '2023-04-07 05:50:11'),
(1786, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1787, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1788, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1789, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1790, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1791, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12');
INSERT INTO `values` (`id`, `value`, `created_at`, `updated_at`) VALUES
(1792, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1793, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1794, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1795, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1796, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1797, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1798, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1799, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1800, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1801, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1802, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1803, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1804, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1805, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1806, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1807, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1808, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1809, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1810, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1811, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1812, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1813, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1814, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1815, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1816, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1817, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1818, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1819, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1820, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1821, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1822, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1823, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1824, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1825, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1826, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1827, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1828, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1829, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1830, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1831, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1832, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1833, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1834, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1835, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1836, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1837, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1838, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1839, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1840, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1841, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1842, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1843, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1844, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1845, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1846, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1847, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1848, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1849, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1850, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1851, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1852, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1853, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1854, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1855, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1856, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1857, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1858, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1859, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1860, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1861, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1862, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1863, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1864, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1865, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1866, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1867, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1868, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1869, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1870, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1871, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1872, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1873, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1874, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1875, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1876, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1877, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1878, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1879, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1880, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1881, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1882, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1883, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1884, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1885, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1886, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1887, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1888, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1889, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1890, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1891, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1892, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1893, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1894, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1895, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1896, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1897, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1898, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1899, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1900, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1901, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1902, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1903, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1904, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1905, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1906, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1907, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1908, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1909, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1910, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1911, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1912, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1913, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1914, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1915, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1916, '', '2023-04-07 05:50:12', '2023-04-07 05:50:12'),
(1917, 'Bryas', '2023-04-07 05:54:57', '2023-04-07 05:55:54'),
(1918, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1919, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1920, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1921, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1922, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1923, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1924, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1925, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1926, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1927, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1928, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1929, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1930, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1931, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1932, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1933, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1934, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1935, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1936, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1937, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1938, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1939, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1940, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1941, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1942, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1943, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1944, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1945, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1946, '', '2023-04-07 05:54:57', '2023-04-07 05:54:57'),
(1947, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1948, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1949, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1950, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1951, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1952, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1953, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1954, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1955, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1956, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1957, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1958, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1959, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1960, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1961, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1962, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1963, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1964, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1965, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1966, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1967, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1968, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1969, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1970, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1971, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1972, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1973, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1974, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1975, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1976, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1977, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1978, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1979, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1980, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1981, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1982, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1983, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1984, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1985, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1986, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1987, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1988, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1989, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1990, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1991, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1992, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1993, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1994, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1995, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1996, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1997, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1998, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(1999, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2000, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2001, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2002, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2003, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2004, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2005, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2006, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2007, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2008, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2009, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2010, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2011, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2012, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2013, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2014, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2015, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2016, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2017, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2018, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2019, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2020, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2021, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2022, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2023, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2024, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2025, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2026, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2027, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2028, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2029, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2030, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2031, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2032, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2033, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2034, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2035, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2036, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2037, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2038, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2039, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2040, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2041, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2042, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2043, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2044, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2045, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2046, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2047, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2048, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2049, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2050, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2051, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2052, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2053, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2054, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2055, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2056, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2057, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2058, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2059, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2060, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2061, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2062, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2063, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2064, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2065, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2066, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2067, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2068, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2069, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2070, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2071, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2072, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2073, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2074, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2075, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2076, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2077, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2078, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2079, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2080, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2081, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2082, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2083, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2084, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2085, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2086, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2087, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2088, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2089, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2090, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2091, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2092, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2093, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2094, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58'),
(2095, '', '2023-04-07 05:54:58', '2023-04-07 05:54:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character`
--
ALTER TABLE `character`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_attribute`
--
ALTER TABLE `character_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_attribute_value`
--
ALTER TABLE `character_attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_type`
--
ALTER TABLE `data_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_attributes`
--
ALTER TABLE `family_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_attribute_value`
--
ALTER TABLE `family_attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_categories`
--
ALTER TABLE `forum_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_posts_thread_id_index` (`thread_id`);

--
-- Indexes for table `forum_threads`
--
ALTER TABLE `forum_threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_threads_category_id_index` (`category_id`);

--
-- Indexes for table `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guild_attributes`
--
ALTER TABLE `guild_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guild_attribute_value`
--
ALTER TABLE `guild_attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kingdoms`
--
ALTER TABLE `kingdoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kingdom_attributes`
--
ALTER TABLE `kingdom_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kingdom_attribute_value`
--
ALTER TABLE `kingdom_attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religion_attributes`
--
ALTER TABLE `religion_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religion_attribute_value`
--
ALTER TABLE `religion_attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_attributes`
--
ALTER TABLE `user_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_attribute_value`
--
ALTER TABLE `user_attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `character`
--
ALTER TABLE `character`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `character_attribute`
--
ALTER TABLE `character_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_attribute_value`
--
ALTER TABLE `character_attribute_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_type`
--
ALTER TABLE `data_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `family_attributes`
--
ALTER TABLE `family_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `family_attribute_value`
--
ALTER TABLE `family_attribute_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1364;

--
-- AUTO_INCREMENT for table `forum_categories`
--
ALTER TABLE `forum_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `forum_threads`
--
ALTER TABLE `forum_threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `guild_attributes`
--
ALTER TABLE `guild_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `guild_attribute_value`
--
ALTER TABLE `guild_attribute_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=718;

--
-- AUTO_INCREMENT for table `kingdoms`
--
ALTER TABLE `kingdoms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kingdom_attributes`
--
ALTER TABLE `kingdom_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kingdom_attribute_value`
--
ALTER TABLE `kingdom_attribute_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `religion_attributes`
--
ALTER TABLE `religion_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `religion_attribute_value`
--
ALTER TABLE `religion_attribute_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_attributes`
--
ALTER TABLE `user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_attribute_value`
--
ALTER TABLE `user_attribute_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `values`
--
ALTER TABLE `values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2096;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
