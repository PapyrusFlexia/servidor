-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2020 a las 20:37:17
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_servidor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorials`
--

CREATE TABLE `editorials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `editorials`
--

INSERT INTO `editorials` (`id`, `name`, `genre`, `address`, `email`, `created_at`, `updated_at`) VALUES
(3, 'Chaosium', 'Juegos de Misterio', 'Mordor', 'cha@gmail.com', '2020-02-20 16:57:57', '2020-02-20 16:57:57'),
(4, 'Wizards of the COast', 'Juegos de Fantasía', 'PenePolis', 'wotc@gmail.com', '2020-02-20 18:13:07', '2020-02-20 18:13:07'),
(5, 'Holocubata Ediciones', 'General', 'Españita', 'he@gmail.com', '2020-02-20 18:18:09', '2020-02-20 18:18:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `games`
--

CREATE TABLE `games` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editorial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `games`
--

INSERT INTO `games` (`id`, `name`, `genre`, `editorial`, `creator`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Dungeons & Dragons', 'Fantasia', 'Wizards of the Coast', 'Gary Gigax', 50, '2020-02-20 16:57:57', '2020-02-20 16:57:57'),
(2, 'La Marca del Este', 'Fantasia', 'Holocubierta Ediciones', 'Pedro Gil Steinkel', 50, '2020-02-20 16:57:57', '2020-02-20 16:57:57'),
(3, 'La llamada de Cthulhu', 'Misterio', 'Chaosium', 'Sandy Petersen', 50, '2020-02-20 16:57:57', '2020-02-20 16:57:57'),
(4, 'Descent, Viaje de las Tinieblas', 'Aventuras', 'Fanatsy Flight Games', 'Kevin Wilson', 75, '2020-02-20 17:09:40', '2020-02-20 17:45:49'),
(5, 'asdfsf', 'dfdsfds', 'dsfdsf', 'fdsf', 10, '2020-02-20 17:59:37', '2020-02-20 17:59:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2014_10_12_100000_create_users_table', 1),
(3, '2020_01_28_163821_create_professions_table', 1),
(4, '2020_01_30_155628_add_profession_id_to_users', 1),
(5, '2020_02_10_162725_create_skills_table', 1),
(6, '2020_02_15_141441_create_game_table', 1),
(7, '2020_02_20_141441_create_editorial_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `professions`
--

CREATE TABLE `professions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `professions`
--

INSERT INTO `professions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Desarrollador back-end', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(2, 'Desarrollador front-end', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(3, 'Diseñador web', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(4, 'Voluptatem est.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(5, 'Quos quasi rem.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(6, 'Voluptas ipsum voluptatum.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(7, 'Consequuntur deserunt.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(8, 'Velit in.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(9, 'Ut nisi molestiae.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(10, 'In possimus nemo.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(11, 'Ipsam adipisci et.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(12, 'Ullam est.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(13, 'Vero nemo.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(14, 'Sit voluptatum.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(15, 'Accusantium nostrum autem.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(16, 'Officia et.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(17, 'Asperiores quas.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(18, 'Cum alias nihil.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(19, 'Ullam veritatis.', '2020-02-20 16:57:56', '2020-02-20 16:57:56'),
(20, 'Architecto quas.', '2020-02-20 16:57:56', '2020-02-20 16:57:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profession_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`, `profession_id`) VALUES
(1, 'Pablo Vega', 'prueba@gmail.com', '$2y$10$iXNy2Fasf36V.mOz4QuYWeK6XQcE7sk6vDv1s8R6uJ1W1o8HfBJoC', 1, 'xbTm1HKX5HG7HcYeJqlvBKjG8GqFV4OuhLlCbAxyFk4QJGgX7p3wEDBBhfzA', '2020-02-20 16:57:56', '2020-02-20 16:58:39', 1),
(2, 'Eulah Mayert', 'turcotte.enola@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'ydWvSr20wP', '2020-02-20 16:57:56', '2020-02-20 16:57:56', 1),
(3, 'Dortha Schuster', 'gleason.audra@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'lTqMNyr5tl', '2020-02-20 16:57:56', '2020-02-20 16:57:56', NULL),
(4, 'Kitty Dickinson', 'amparo39@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'beb6s00wKx', '2020-02-20 16:57:56', '2020-02-20 16:57:56', NULL),
(5, 'Ms. Elisabeth Swaniawski DDS', 'judd27@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, '34pcSGm5Eb', '2020-02-20 16:57:56', '2020-02-20 16:57:56', NULL),
(6, 'Roselyn Langworth', 'savion90@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'OPYNMJgjjt', '2020-02-20 16:57:56', '2020-02-20 16:57:56', NULL),
(7, 'Dr. Brendan Windler', 'leilani.hahn@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'RBtIiWXNPC', '2020-02-20 16:57:56', '2020-02-20 16:57:56', NULL),
(8, 'Pete Donnelly IV', 'cjerde@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'Ur8pOSHhVd', '2020-02-20 16:57:56', '2020-02-20 16:57:56', NULL),
(9, 'Prof. Zion Koepp IV', 'ritchie.solon@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'Qof3egWWbu', '2020-02-20 16:57:56', '2020-02-20 16:57:56', NULL),
(10, 'Mason Kihn', 'hill.rowland@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'hTEiWhrHFR', '2020-02-20 16:57:56', '2020-02-20 16:57:56', NULL),
(11, 'Dr. Houston Brown Sr.', 'darius62@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'qGcWc8Nd0T', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(12, 'Zola Bahringer', 'walker49@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'HLBp3K4DWS', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(13, 'Vita Beer', 'gaylord.selina@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'peeSb2wxoQ', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(14, 'Rusty Bruen V', 'fritsch.mina@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'yB8Mqk1Nwl', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(15, 'Ms. Cassie Hintz Sr.', 'dangelo00@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'yMoVg6MNH1', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(16, 'Ms. Estel Donnelly I', 'jovani33@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, '4ZYxiGDr4b', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(17, 'General Ritchie', 'dschuppe@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'c1RnGc7iGS', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(18, 'Melvina Bechtelar', 'ashleigh52@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'jMlrW6ZZvz', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(19, 'Prof. Phyllis Pollich', 'dino.ziemann@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'dOTEOFjmOE', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(20, 'Mckayla Howell', 'guido.smitham@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'PjKneQg6dk', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(21, 'Mac Wehner', 'consuelo.deckow@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, '3JhJWxncIh', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(22, 'Shana Gaylord', 'ifeeney@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'D2vwAm09Ht', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(23, 'Rahul Schoen', 'xzboncak@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'nOYcuHHHOb', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(24, 'Irma Harvey', 'randal63@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'Rb0GNM8Rbx', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(25, 'Graham Huels', 'ilesch@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'XxCIudQnGF', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(26, 'Ozella Dibbert', 'aglae66@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'b77Hivu0Ex', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(27, 'Cassandre Connelly', 'shaina.rempel@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'jR4WISEPZ4', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(28, 'Xavier Marvin', 'kristina21@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'MwBsCCSATX', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(29, 'Linnea Maggio', 'jazmin56@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'UGCGTWHJD9', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(30, 'Milford Kuhlman', 'oconner.winona@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'HakjzMNjwn', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(31, 'Wilfredo Heller', 'kvandervort@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'xWkUsWHpWV', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(32, 'Dr. Travis McCullough II', 'hank24@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'z6ILxTix4W', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(33, 'Rashawn Leuschke IV', 'abe.hettinger@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'xqyDnTjvYx', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(34, 'Dandre Mitchell', 'leopold24@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'tHtYSMe9qJ', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(35, 'Dr. Brenna Heaney V', 'rosa.abbott@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, '8a0fVXgILC', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(36, 'Abby Lockman', 'britney93@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'DDpmJjt45O', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(37, 'Rollin Crooks III', 'efrain58@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'K8o92UPoEY', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(38, 'Ramona Sporer', 'bart.kreiger@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'NFbGWmK3Nj', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(39, 'Dr. Norberto Marks I', 'molly77@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'PX6htGTI7R', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(40, 'Regan Doyle', 'odessa.robel@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'zL7ke7Hqef', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(41, 'Itzel Swaniawski', 'jack67@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, '78a3A5it5W', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(42, 'Aubrey Kunde', 'jennie21@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'SsvkzACM4J', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(43, 'Ida Lindgren PhD', 'josiah47@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'jKAgYWtMas', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(44, 'Miss Elta Shanahan IV', 'mcruickshank@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, '68SgJx67bF', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(45, 'Prof. Randal Block', 'zrunolfsson@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'nHa4RaiZQF', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(46, 'Linnie Conroy', 'pkeebler@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'OsOeX0bIXL', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(47, 'Rubie Baumbach', 'jleffler@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'EfgaUM7DAg', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(48, 'Prof. Katharina Turcotte II', 'zmoen@example.com', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'h6lVv7JxeN', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(49, 'Mr. Geoffrey Beatty', 'moen.pinkie@example.org', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, 'Br5DLRBnUf', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(50, 'Henderson Mertz IV', 'feest.jacinthe@example.net', '$2y$10$KS3xQ6usuOrqckEoniTg8uYidGVMh/YJ5B/JnMAGK.Nvth2lBU8E6', 0, '12y0yhfaIj', '2020-02-20 16:57:57', '2020-02-20 16:57:57', NULL),
(51, 'afd', 'afd@gmail.com', '$2y$10$styKdN1NkAz0XDE2Xjspq.u2J1RJrPRL9GlLiOjLtxkACrZqwnJqe', 0, 'UCpziEbozEtHdAIVMWL6oaXMJGjkrla4ftsBfd3P6PwssoDyf217dhMWGXCA', '2020-02-20 18:34:28', '2020-02-20 18:34:28', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `editorials`
--
ALTER TABLE `editorials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `editorials_name_unique` (`name`);

--
-- Indices de la tabla `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `games_name_unique` (`name`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `professions_title_unique` (`title`);

--
-- Indices de la tabla `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_profession_id_foreign` (`profession_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `editorials`
--
ALTER TABLE `editorials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `games`
--
ALTER TABLE `games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_profession_id_foreign` FOREIGN KEY (`profession_id`) REFERENCES `professions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
