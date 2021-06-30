-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2021 a las 13:50:01
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `codigo`, `descripcion`, `cantidad`, `precio`, `created_at`, `updated_at`) VALUES
(1, '001', 'Galletas de chocolate', 15, '2.50', '2021-06-30 15:14:30', '2021-06-30 15:14:30'),
(2, '002', 'Papitas', 20, '5.00', '2021-06-30 16:15:11', '2021-06-30 16:15:11'),
(3, '003', 'Galletitas', 23, '1.00', '2021-06-30 16:15:33', '2021-06-30 16:15:33'),
(4, '004', 'Chocman', 55, '1.20', '2021-06-30 16:16:00', '2021-06-30 16:16:00'),
(5, '005', 'Doritos', 14, '1.00', '2021-06-30 16:16:24', '2021-06-30 16:16:24'),
(6, '006', 'Gaseosa', 15, '2.50', '2021-06-30 16:37:42', '2021-06-30 16:37:42'),
(7, '007', 'Libro de Historia', 18, '15.00', '2021-06-30 16:38:39', '2021-06-30 16:38:39'),
(8, '008', 'Libro de Ciencias', 34, '18.00', '2021-06-30 16:39:42', '2021-06-30 16:39:42'),
(9, '009', 'Libro de Matematica', 11, '24.00', '2021-06-30 16:40:23', '2021-06-30 16:40:23'),
(10, '010', 'Galletas de vainilla', 40, '38.00', '2021-06-30 16:41:16', '2021-06-30 16:41:16'),
(11, '011', 'Libro de Cuentos', 15, '12.00', '2021-06-30 16:42:53', '2021-06-30 16:42:53'),
(12, '012', 'Piqueo Snack', 8, '8.00', '2021-06-30 16:44:21', '2021-06-30 16:44:21'),
(13, '013', 'Galletas de naranja', 16, '14.50', '2021-06-30 16:44:53', '2021-06-30 16:44:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_12_06_211535_create_sessions_table', 1),
(7, '2020_12_06_212941_create_articulos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('yLQawceJfTFrYFc2HO86BG5qiitaMqA29uMS1p4D', 43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'YTo2OntzOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXJ0aWN1bG9zIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcnRpY3Vsb3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiVHpWUDFMbWJQclRsdkFZbzNyMFUwRXZzM2Nka1ZoMFdCZmhZeko1SSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQ5ckl5MDdidUo5UnAyLmdyOUlZUlZ1ZXVrVC8wMzJaYWNoajJEQmgucE85ZFNpSG56VWVLRyI7fQ==', 1625053494);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Flo Goldner', 'nokon@example.net', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'tpFmKHeSIL', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(2, 'Mr. Darrion Leannon PhD', 'phane@example.net', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'HWFOoVWhsb', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(3, 'Brenna Dare', 'mwill@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'tI0Ekikc0y', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(4, 'Ella Murazik', 'maida07@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Kh7miEAGMK', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(5, 'Mr. Hershel Ebert DDS', 'abartell@example.net', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'EcQ6T0EgCm', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(6, 'Addie Connelly', 'micah.smith@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'TUtYD2CoyS', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(7, 'Angeline Tremblay', 'frederic54@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '5Gi7ohqFUr', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(8, 'Conor Jerde', 'rachael67@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'OzgilgNtzJ', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(9, 'Brenna Goldner', 'lue.mccullough@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ShuA3k3Cae', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(10, 'Laurine Ankunding', 'aroberts@example.net', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'BEpoHseIhL', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(11, 'Bailee Runolfsdottir', 'trevion28@example.net', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '72TsxO4Wew', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(12, 'Mrs. Reina Schaefer III', 'natalia45@example.net', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'iZa8U15sIR', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(13, 'Leopoldo Roberts', 'lenna.hermiston@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'pU829VRADt', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(14, 'Dr. Nasir Schroeder Sr.', 'reyna78@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'KtCZyZ5nfw', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(15, 'Anderson Kub', 'fdickinson@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'hSGN43IKcn', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(16, 'Abigayle Jones V', 'fritsch.brice@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'MI4HilTQG3', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(17, 'Laura Ortiz', 'crooks.tessie@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '9Yb6BAo1af', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(18, 'Prof. Diana Feest', 'berry79@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'qTB8W4WYwb', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(19, 'Maddison Romaguera', 'rolfson.murray@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'SZmabYYnQ8', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(20, 'Ms. Lavina Grimes PhD', 'fae.erdman@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'dCAVx6VjMI', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(21, 'Layne Nienow', 'hagenes.elliott@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '3lZZW2zKVB', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(22, 'Mr. Abraham Robel III', 'ines10@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'hWzKpRnuNe', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(23, 'Delphia Gerlach I', 'imcdermott@example.net', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '6e28UIL3GO', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(24, 'Pinkie King', 'zlittle@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'KMAI1BR6ch', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(25, 'Mr. Jerrell Sawayn I', 'reilly.samantha@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'QK5EQ55Afk', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(26, 'Miss Laury Ondricka MD', 'zpadberg@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'xDy00zjBuj', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(27, 'Deja Gorczany', 'vhegmann@example.net', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'KhkwCctQQv', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(28, 'Elbert Heidenreich', 'isabella.feeney@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'gFbn3J877v', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(29, 'Consuelo Yundt', 'aharris@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ToS489bCmB', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(30, 'Eli Walter', 'marilou25@example.net', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Xn8d6LNKMp', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(31, 'Prof. Felicia Orn Sr.', 'aubrey.blanda@example.net', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'gRQDZvhb4x', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(32, 'Ian Monahan', 'sdooley@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'tVXohzTC3i', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(33, 'Lavern Boehm', 'thelma.langosh@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'lg6EYCPueX', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(34, 'Mrs. Deja O\'Conner II', 'hector.grant@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'pW5Ucsia0F', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(35, 'Dr. Rylan Bartoletti DDS', 'runte.jailyn@example.com', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'aMAOfXj9Fs', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(36, 'Cody Schamberger', 'zdach@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'HLzmDfia9p', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(37, 'Janiya Sporer DDS', 'jakubowski.betty@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'N4P0yEBM8x', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(38, 'Roberta Erdman', 'padberg.jedediah@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '9LRhJ0eYdt', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(39, 'Ettie Schaefer', 'stephon25@example.net', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '5qPAKheMSX', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(40, 'Tina Hyatt MD', 'sauer.jean@example.org', '2021-06-30 14:34:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'xQXqAcCtwP', NULL, NULL, '2021-06-30 14:34:19', '2021-06-30 14:34:19'),
(41, 'Gabriel ', 'prueba3@gmail.com', NULL, '$2y$10$8x1SZwva7g0B9rVTwYJta.BmMISgNNBsBTth1ffsxW7/jguSGzk1e', NULL, NULL, NULL, NULL, NULL, '2021-06-30 14:35:57', '2021-06-30 15:13:29'),
(43, 'Gabriel', 'prueba@gmail.com', NULL, '$2y$10$9rIy07buJ9Rp2.gr9IYRVueukT/032Zachj2DBh.pO9dSiHnzUeKG', NULL, NULL, NULL, NULL, NULL, '2021-06-30 16:34:18', '2021-06-30 16:34:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
