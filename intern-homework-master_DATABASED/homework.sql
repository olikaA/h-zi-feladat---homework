-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Már 15. 20:41
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `homework`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `brokers`
--

CREATE TABLE `brokers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` double(8,2) DEFAULT NULL,
  `has_inactivity_fee` int(10) UNSIGNED DEFAULT NULL,
  `review_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `brokers`
--

INSERT INTO `brokers` (`id`, `name`, `type`, `score`, `has_inactivity_fee`, `review_date`, `created_at`, `updated_at`) VALUES
(1, 'Interactive Brokers', 'Stock', 4.90, 0, '2021-03-19', NULL, NULL),
(2, 'DEGIRO', 'Stock', 4.30, 0, '2021-09-01', NULL, NULL),
(3, 'eToro', 'CFD', 4.70, 0, '2021-04-28', NULL, NULL),
(4, 'Revolut', 'Stock', 4.20, 0, '2020-06-22', NULL, NULL),
(5, 'flatex', 'Other', 3.20, 1, '2021-09-13', NULL, NULL),
(6, 'Trading 212', 'CFD', 2.10, 0, '2021-01-07', NULL, NULL),
(7, 'TradeStation', 'CFD', 4.80, 1, '2020-11-17', NULL, NULL),
(8, 'Questrade', 'Stock', 3.60, 0, '2020-02-26', NULL, NULL),
(9, 'Swissquote', 'Stock', 4.10, 0, '2020-07-06', NULL, NULL),
(10, 'Saxo Bank', 'Other', 4.60, 1, '2021-12-12', NULL, NULL),
(11, 'Capital.com', 'Stock', 3.90, 0, '2021-08-03', NULL, NULL),
(12, 'XTB', 'Stock', 3.80, 1, '2021-04-12', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
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
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_13_190928_create_brokers_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Laverne Steuber', 'mariam17@example.com', '2022-03-15 09:13:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1zdY4JXUPR', '2022-03-15 09:13:51', '2022-03-15 09:13:51'),
(2, 'Otto Schultz', 'zhuels@example.org', '2022-03-15 09:13:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H3YIxfOgeJ', '2022-03-15 09:13:51', '2022-03-15 09:13:51'),
(3, 'Dr. Elbert Koepp Jr.', 'marina17@example.com', '2022-03-15 09:13:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZQH0ruAb1b', '2022-03-15 09:13:51', '2022-03-15 09:13:51'),
(4, 'Prof. Mauricio Schaefer I', 'gutmann.samir@example.net', '2022-03-15 09:13:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RSQwvEUVXm', '2022-03-15 09:13:51', '2022-03-15 09:13:51'),
(5, 'Mr. Hoyt Franecki IV', 'ariel.funk@example.com', '2022-03-15 09:13:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z31ye00V4T', '2022-03-15 09:13:51', '2022-03-15 09:13:51'),
(6, 'Dr. Dessie Koepp II', 'reilly.hardy@example.com', '2022-03-15 09:13:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aaKeSqoVJX', '2022-03-15 09:13:51', '2022-03-15 09:13:51'),
(7, 'Cedrick Lockman', 'everardo58@example.org', '2022-03-15 09:13:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mgik8lT3Nl', '2022-03-15 09:13:51', '2022-03-15 09:13:51'),
(8, 'Ephraim Rutherford', 'reinhold63@example.net', '2022-03-15 09:13:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sNomRLSvvt', '2022-03-15 09:13:51', '2022-03-15 09:13:51'),
(9, 'Hester Gibson', 'cordelia.beer@example.com', '2022-03-15 09:13:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm6zHiVjIYF', '2022-03-15 09:13:51', '2022-03-15 09:13:51'),
(10, 'Lilly Hahn', 'rusty86@example.net', '2022-03-15 09:13:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y9oAgeGsyq', '2022-03-15 09:13:51', '2022-03-15 09:13:51'),
(11, 'Miss Lucienne Bernhard', 'branson11@example.org', '2022-03-15 09:15:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AqZlpWIxPj', '2022-03-15 09:15:20', '2022-03-15 09:15:20'),
(12, 'Dr. Cecil Schulist', 'emilia49@example.net', '2022-03-15 09:15:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kkJNua5Pye', '2022-03-15 09:15:20', '2022-03-15 09:15:20'),
(13, 'Prof. Kevin Olson DDS', 'cstreich@example.com', '2022-03-15 09:15:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3jqdi1FBMM', '2022-03-15 09:15:20', '2022-03-15 09:15:20'),
(14, 'Emily Bode', 'leopoldo51@example.net', '2022-03-15 09:15:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rmIP5nY0g1', '2022-03-15 09:15:20', '2022-03-15 09:15:20'),
(15, 'Alek Stokes', 'irempel@example.net', '2022-03-15 09:15:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7zi8KEwQeq', '2022-03-15 09:15:20', '2022-03-15 09:15:20'),
(16, 'Andres Johnston', 'franecki.demarco@example.net', '2022-03-15 09:15:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nguOD5AlQK', '2022-03-15 09:15:20', '2022-03-15 09:15:20'),
(17, 'Ismael Turcotte V', 'ydenesik@example.net', '2022-03-15 09:15:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rFf75409RZ', '2022-03-15 09:15:20', '2022-03-15 09:15:20'),
(18, 'Mr. Jess Farrell I', 'hyman.quigley@example.net', '2022-03-15 09:15:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7d9XRuMErL', '2022-03-15 09:15:20', '2022-03-15 09:15:20'),
(19, 'Dr. Guadalupe Hahn Jr.', 'batz.trevor@example.com', '2022-03-15 09:15:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3PUteewD8O', '2022-03-15 09:15:20', '2022-03-15 09:15:20'),
(20, 'Cullen Johns', 'leanna.daniel@example.com', '2022-03-15 09:15:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HQ2giMDLfW', '2022-03-15 09:15:20', '2022-03-15 09:15:20');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `brokers`
--
ALTER TABLE `brokers`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `brokers`
--
ALTER TABLE `brokers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
