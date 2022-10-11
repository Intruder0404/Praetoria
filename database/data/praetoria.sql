-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2022 at 06:54 AM
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Description', NULL, NULL),
(2, 'Logo', NULL, NULL),
(3, 'Population', NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Octavii', NULL, NULL),
(2, 'Scipii', NULL, NULL),
(3, 'Rapax', NULL, NULL),
(4, 'Fortii', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `family_attributes`
--

CREATE TABLE `family_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `family_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `family_attribute_value`
--

CREATE TABLE `family_attribute_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `family_attribute_id` int(10) UNSIGNED NOT NULL,
  `value_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guilds`
--

CREATE TABLE `guilds` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guilds`
--

INSERT INTO `guilds` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Legio Praetoria', NULL, NULL),
(2, 'Brabancourt', NULL, NULL),
(3, 'Gorghor Baey', NULL, NULL),
(4, 'Légion Infernale', NULL, NULL),
(5, 'Compagnons de Lambertrand', NULL, NULL),
(6, 'Kabbale', NULL, NULL),
(7, 'Phoenix', NULL, NULL),
(8, 'Vieux Garou', NULL, NULL),
(9, 'Hullsbourg', NULL, NULL),
(10, 'Salmarak', NULL, NULL),
(11, 'Famille Cordélian	', NULL, NULL),
(12, 'La Meute', NULL, NULL),
(13, 'Mac Rae', NULL, NULL),
(14, 'Ordre de la Rédemption', NULL, NULL),
(15, 'Castenza', NULL, NULL),
(16, 'Fer de Lance', NULL, NULL),
(17, 'Gaïa', NULL, NULL),
(18, 'Hibou d\'Argent', NULL, NULL),
(19, 'Lotus No Chi', NULL, NULL),
(20, 'Montfort', NULL, NULL),
(21, 'Rangers', NULL, NULL),
(22, 'Saint-Ordre du Poing de Fer', NULL, NULL),
(23, 'Tératos', NULL, NULL),
(24, 'Vand\'Hals', NULL, NULL),
(25, 'Fhaîn', NULL, NULL),
(26, 'Mages de Diedne', NULL, NULL),
(27, 'Ordre du Lys d\'Argent', NULL, NULL),
(28, 'Saint-Ordre des Templiers', NULL, NULL),
(29, 'Chiens de Guerre', NULL, NULL),
(30, 'Clan du Sanglier', NULL, NULL),
(31, 'Dragoniers', NULL, NULL),
(32, 'Guerriers de la Montagne', NULL, NULL),
(33, 'Taureau Fertile', NULL, NULL),
(34, 'Chimère', NULL, NULL),
(35, 'Compagnie du Bélier', NULL, NULL),
(36, 'Culte de Daolok', NULL, NULL),
(37, 'Hellequins', NULL, NULL),
(38, 'Los Conkistadores', NULL, NULL),
(39, 'Némésis', NULL, NULL),
(40, 'Bocks de Fer', NULL, NULL),
(41, 'Coque Rouge', NULL, NULL),
(42, 'Ertuen', NULL, NULL),
(43, 'Flibustiers', NULL, NULL),
(44, 'Frontaliers d\'Irendille', NULL, NULL),
(45, 'Le Crâne', NULL, NULL),
(46, 'Marmara', NULL, NULL),
(47, 'Arrachés', NULL, NULL),
(48, 'Sombres Lames', NULL, NULL),
(49, 'Cernos', NULL, NULL),
(50, 'Saint-Ordre du Vinier', NULL, NULL),
(51, 'Vignerons', NULL, NULL),
(52, 'White Lion', NULL, NULL),
(53, 'Armateurs de Ranvier', NULL, NULL),
(54, 'Lance du Sergent Viktor', NULL, NULL),
(55, 'Mayol', NULL, NULL),
(56, 'Von Shlaffenmark', NULL, NULL),
(57, 'Arrogance', NULL, NULL),
(58, 'Dragons de Sang', NULL, NULL),
(59, 'Émissaires de la Cité des Sables', NULL, NULL),
(60, 'Fils de Polignac', NULL, NULL),
(61, 'Frères d\'Armes', NULL, NULL),
(62, 'Griffon', NULL, NULL),
(63, 'Mek Dyude', NULL, NULL),
(64, 'Tarpignan', NULL, NULL),
(65, 'Vieux Chêne', NULL, NULL),
(66, 'Arcs Noirs', NULL, NULL),
(67, 'Dame d\'Argent', NULL, NULL),
(68, 'Gaurydrim', NULL, NULL),
(69, 'Gueul\'ki\'Mor', NULL, NULL),
(70, 'Oeil du Vâhana', NULL, NULL),
(71, 'Phratrie des Malandrins', NULL, NULL),
(72, 'Traqueurs', NULL, NULL),
(73, 'Cavaliers du Bouc', NULL, NULL),
(74, 'Confrérie des Maîtres Nains', NULL, NULL),
(75, 'Insoumis', NULL, NULL),
(76, 'Lys Royal', NULL, NULL),
(77, 'Mages du Roy', NULL, NULL),
(78, 'Ordre du Saint-Sépulcre', NULL, NULL),
(79, 'Ost du St-Reliquaire', NULL, NULL),
(80, 'Tchakalouÿ', NULL, NULL),
(81, 'Doigts Cassés', NULL, NULL),
(82, 'Midgardiens', NULL, NULL),
(83, 'Ragnarok', NULL, NULL),
(84, 'Trésorerie Impériale', NULL, NULL),
(85, 'Fils Bâtards', NULL, NULL),
(86, 'Vakten', NULL, NULL),
(87, 'Couronne d\'Eir', NULL, NULL),
(88, 'Ordo Cervi', NULL, NULL),
(89, 'Ordre du Loup Céleste', NULL, NULL),
(90, 'Aile Noire', NULL, NULL),
(91, 'Confrérie', NULL, NULL),
(92, 'Fils du Vent', NULL, NULL),
(93, 'Raktaar', NULL, NULL),
(94, 'Codex', NULL, NULL),
(95, 'Concile du Reffahc', NULL, NULL),
(96, 'Hydre', NULL, NULL),
(97, 'Ordre du Kik\'wa\'ju', NULL, NULL),
(98, 'Beaux Bâtards', NULL, NULL),
(99, 'Covenant of the Black Rose', NULL, NULL),
(100, 'Ferrata Fidelis', NULL, NULL),
(101, 'Hirda', NULL, NULL),
(102, 'Lions du Nord', NULL, NULL),
(103, 'Marchwardens', NULL, NULL),
(104, 'Mille Visages', NULL, NULL),
(105, 'Oathsworn', NULL, NULL),
(106, 'Ratatosk', NULL, NULL),
(107, 'Realms Embassy', NULL, NULL),
(108, 'Valraven', NULL, NULL),
(109, 'Caldwell', NULL, NULL),
(110, 'Capharnaüm', NULL, NULL),
(111, 'Confrérie de Mjöllnir', NULL, NULL),
(112, 'Darganof Trading Company', NULL, NULL),
(113, 'Derthorn', NULL, NULL),
(114, 'Famille de Liastis', NULL, NULL),
(115, 'Famillia Debeauchamps', NULL, NULL),
(116, 'Garde Immergée', NULL, NULL),
(117, 'Haute-Garde', NULL, NULL),
(118, 'Hurleurs Blancs', NULL, NULL),
(119, 'Nains-Génieurs', NULL, NULL),
(120, 'U.P.I.R.', NULL, NULL),
(121, 'Wild Dawn', NULL, NULL),
(122, 'Argentiers du Centre', NULL, NULL),
(123, 'Clan Croc-Ardent', NULL, NULL),
(124, 'Colibrille', NULL, NULL),
(125, 'Compagnie des huit voiles', NULL, NULL),
(126, 'Écaille', NULL, NULL),
(127, 'Horse and Hound', NULL, NULL),
(128, 'Lys noir', NULL, NULL),
(129, 'Terribles Serpents à Sonnettes', NULL, NULL),
(130, '105e compagnie', NULL, NULL),
(131, 'Cercle d\'or', NULL, NULL),
(132, 'Corbeaux d\'Odin', NULL, NULL),
(133, 'Famille Oséric', NULL, NULL),
(134, 'Inévitables', NULL, NULL),
(135, 'Maîtres Brasseurs', NULL, NULL),
(136, 'Oeil de Mimir', NULL, NULL),
(137, 'Paysans', NULL, NULL),
(138, 'Tirion', NULL, NULL),
(139, 'Varègues', NULL, NULL),
(140, 'Archivistes', NULL, NULL),
(141, 'Chasseurs de Helheim', NULL, NULL),
(142, 'Cour des cendres', NULL, NULL),
(143, 'Free Company', NULL, NULL),
(144, 'Karn Gobo', NULL, NULL),
(145, 'Marine Marchande', NULL, NULL),
(146, 'Ordo Magus', NULL, NULL),
(147, 'Pilum Occultum Redemptio', NULL, NULL),
(148, 'Tresseux d\'paniers', NULL, NULL),
(149, 'Veuves Noires', NULL, NULL),
(150, 'Banca Interregionala', NULL, NULL),
(151, 'Coalition sylvestre', NULL, NULL),
(152, 'Créatura Mortis', NULL, NULL),
(153, 'Garde rouge', NULL, NULL),
(154, 'Las Velas de la Sombra', NULL, NULL),
(155, 'Mille et une mains', NULL, NULL),
(156, 'Ordo Militum', NULL, NULL),
(157, 'Reiksritters', NULL, NULL),
(158, 'Très Saintes Vinières', NULL, NULL),
(159, 'Voelhoorn', NULL, NULL),
(160, 'Berserk', NULL, NULL),
(161, 'Compagnie du cheval ailé', NULL, NULL),
(162, 'Écorcheurs', NULL, NULL),
(163, 'Griffe', NULL, NULL),
(164, 'Legio Mortem', NULL, NULL),
(165, 'Morningstar', NULL, NULL),
(166, 'Ordo Mortis', NULL, NULL),
(167, 'Saint-Siège', NULL, NULL),
(168, 'Tribu de Zardok', NULL, NULL),
(169, 'Von Couleng Bark', NULL, NULL),
(170, 'Botulik', NULL, NULL),
(171, 'Confusion', NULL, NULL),
(172, 'Équipage du Capitaine Wig', NULL, NULL),
(173, 'Hashashins', NULL, NULL),
(174, 'Main Rouge', NULL, NULL),
(175, 'Nephilim', NULL, NULL),
(176, 'Orobore', NULL, NULL),
(177, 'The Pelt', NULL, NULL),
(178, 'Twilight Dreamers', NULL, NULL),
(179, 'Warborn', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guild_attributes`
--

CREATE TABLE `guild_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `guild_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guild_attributes`
--

INSERT INTO `guild_attributes` (`id`, `guild_id`, `attribute_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `guild_attribute_value`
--

CREATE TABLE `guild_attribute_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guild_attribute_id` int(10) UNSIGNED NOT NULL,
  `value_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guild_attribute_value`
--

INSERT INTO `guild_attribute_value` (`id`, `guild_attribute_id`, `value_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kingdoms`
--

CREATE TABLE `kingdoms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kingdoms`
--

INSERT INTO `kingdoms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Empire', NULL, NULL),
(2, 'Fédération Argannaise', NULL, NULL),
(3, 'Nasgaroth', NULL, NULL),
(4, 'Andore', NULL, NULL),
(5, 'Pays de Kafe', NULL, NULL),
(6, 'Irendille', NULL, NULL),
(7, 'Cité des Sables', NULL, NULL),
(8, 'Ozame', NULL, NULL),
(9, 'Terres du Sud', NULL, NULL),
(10, 'Berkwald', NULL, NULL),
(11, 'Terres d\'Auquesse', NULL, NULL),
(12, 'Carcosa', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kingdom_attributes`
--

CREATE TABLE `kingdom_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `kingdom_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kingdom_attribute_value`
--

CREATE TABLE `kingdom_attribute_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kingdom_attribute_id` int(10) UNSIGNED NOT NULL,
  `value_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(9, 'create_calendar_event', 1),
(10, '2014_10_12_000000_create_users_table', 2),
(11, '2014_10_12_100000_create_password_resets_table', 2),
(12, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(13, '2019_08_19_000000_create_failed_jobs_table', 2),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(15, '2022_09_01_160510_create_sessions_table', 2),
(16, '2022_09_05_235007_create_calendar_events_table', 3),
(26, '2022_09_13_142120_create_families_table', 4),
(27, '2022_09_13_142310_create_attributes_table', 4),
(28, '2022_09_13_143444_create_values_table', 4),
(31, '2022_10_06_231732_create_guilds_table', 5),
(32, '2022_10_07_022005_create_kingdoms_table', 6),
(33, '2022_10_07_022615_create_religions_table', 7),
(38, '2022_10_06_231610_create_guild_attributes_table', 9),
(39, '2022_10_07_142115_create_user_attribute_table', 10),
(40, '2022_10_07_142256_create_kingdom_attributes_table', 10),
(41, '2022_10_07_142308_create_religion_attributes_table', 10),
(42, '2022_10_07_171017_create_religion_attribute_value_table', 10),
(43, '2022_10_07_171043_create_family_attribute_value_table', 10),
(44, '2022_10_07_171131_create_guild_attribute_value_table', 10),
(45, '2022_10_07_171146_create_kingdom_attribute_value_table', 10),
(46, '2022_10_07_171220_create_user_attribute_value_table', 10),
(47, '2022_09_13_170021_create_family_attributes_table', 11);

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

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sol Invictus', NULL, NULL),
(2, 'Al-Tariqa Fii-salaam', NULL, NULL),
(3, 'Althing Sacré', NULL, NULL),
(4, 'Arathi', NULL, NULL),
(5, 'Cercle', NULL, NULL),
(6, 'Codex des étoiles', NULL, NULL),
(7, 'Culte du Grand Chien', NULL, NULL),
(8, 'Culte du guerrier', NULL, NULL),
(9, 'Fel’Lökla', NULL, NULL),
(10, 'Flamme Ardente', NULL, NULL),
(11, 'Grand Corbeau', NULL, NULL),
(12, 'Grande Chasse', NULL, NULL),
(13, 'Grimmorgog', NULL, NULL),
(14, 'Haeresis', NULL, NULL),
(15, 'Jabba Hal', NULL, NULL),
(16, 'Kanna Andheim', NULL, NULL),
(17, 'Naak’e’Tuun', NULL, NULL),
(18, 'Noisehoc', NULL, NULL),
(19, 'Octo Armis', NULL, NULL),
(20, 'Ordre du Savoir', NULL, NULL),
(21, 'Reikskult', NULL, NULL),
(22, 'Rite de Saint Clément\r', NULL, NULL),
(23, 'Sainte Église de l’Unique\r', NULL, NULL),
(24, 'Sang Sans Peur', NULL, NULL),
(25, 'Sin’Doreï', NULL, NULL),
(26, 'Solara', NULL, NULL),
(27, 'Tératos', NULL, NULL),
(28, 'Valkfadir', NULL, NULL),
(29, 'Vraie Foi\r', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `religion_attributes`
--

CREATE TABLE `religion_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `religion_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `religion_attribute_value`
--

CREATE TABLE `religion_attribute_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `religion_attribute_id` int(10) UNSIGNED NOT NULL,
  `value_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
('dVYFfTMHpCiqAJV4iWmn2UK6jodO3JcyfTKHPWUf', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVVmN1o0UlJjSVRYeFhJWGVMOUhOaHJMRDRLb21uaTdvOWxoeXMxdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9sb2NhbGhvc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1665235730),
('qObLTyyHk2MpSEcBA6kdEA0PS17m3qiiya1e5EVU', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVkRHaWp0Y0VEeDNSRndWNG9vcnJEZlVYZVpJSWxkZFFPVThVZUxZUyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozODoiaHR0cDovL2xvY2FsaG9zdC9hZG1pbmlzdHJhdGlvbi9ndWlsZHMiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMjoiaHR0cDovL2xvY2FsaG9zdC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1665228279),
('SsnqLshzDqOBSIEK3bUFVHwTNBhhPq0HTcZk3Y25', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQWdZbk9iMjRIZkMxQlZIMjU4VWNtTzdmM0xVVWozNmtMNmFWR0NhYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW5pc3RyYXRpb24vZ3VpbGRzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRhQnlwQ0dVR3lEQkNwV0ZqZUhndkplYThyMXhZNnl2MVdiUS9tYXg5dkkxeXBScFJtTmk3QyI7fQ==', 1665168127);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `type`) VALUES
(1, 'diogenus', 'christopher.r.murray@protonmail.com', NULL, '$2y$10$aBypCGUGyDBCpWFjeHgvJea8r1xY6yv1WbQ/max9vI1ypRpRmNi7C', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 03:56:11', '2022-09-06 03:56:11', 2),
(2, 'test', 'test@test.com', NULL, '$2y$10$XkjCx3AeKuYbId3vjC1hQ.rdMTGZjdaGTnwL.gtgFx7.QYTgtJ0Im', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-10 06:40:47', '2022-09-10 06:40:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_attributes`
--

CREATE TABLE `user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_attribute_value`
--

CREATE TABLE `user_attribute_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_attribute_id` int(10) UNSIGNED NOT NULL,
  `value_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,', NULL, NULL),
(2, 'octavii-1-transparent.png', NULL, NULL),
(3, '25', NULL, NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `family_attributes`
--
ALTER TABLE `family_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `family_attribute_value`
--
ALTER TABLE `family_attribute_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `guild_attributes`
--
ALTER TABLE `guild_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guild_attribute_value`
--
ALTER TABLE `guild_attribute_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_attributes`
--
ALTER TABLE `user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_attribute_value`
--
ALTER TABLE `user_attribute_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `values`
--
ALTER TABLE `values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
