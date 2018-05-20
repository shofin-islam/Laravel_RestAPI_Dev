-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 01:37 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ess`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigns`
--

CREATE TABLE `assigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_request_id` int(10) UNSIGNED NOT NULL,
  `AssignTo` int(11) NOT NULL,
  `TechnicalInput` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AssignedBy` int(11) NOT NULL,
  `AssignDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `Name`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', NULL, NULL),
(2, 'LG', NULL, NULL),
(3, 'Sony', NULL, NULL),
(4, 'Siemens', NULL, NULL),
(5, 'Toshiba', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `check_randoms`
--

CREATE TABLE `check_randoms` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderId` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `check_randoms`
--

INSERT INTO `check_randoms` (`id`, `orderId`, `created_at`, `updated_at`) VALUES
(1, 'W0yD1lg', '2018-05-16 02:08:32', '2018-05-16 02:08:32'),
(2, '8yLY2Ca', '2018-05-16 02:08:45', '2018-05-16 02:08:45'),
(3, 'KN9Z3yo', '2018-05-16 02:08:47', '2018-05-16 02:08:48'),
(4, 'nXnD4uN', '2018-05-16 02:08:52', '2018-05-16 02:08:53'),
(5, 'RWR75D9', '2018-05-16 02:08:55', '2018-05-16 02:08:55'),
(6, 'n4r86B7', '2018-05-16 02:09:37', '2018-05-16 02:09:37'),
(7, 'sbLp7j2', '2018-05-16 02:09:39', '2018-05-16 02:09:39'),
(8, 'zCdY8kv', '2018-05-16 02:09:41', '2018-05-16 02:09:41'),
(9, 'KzcB9Y0', '2018-05-16 02:09:42', '2018-05-16 02:09:42'),
(10, 'i5Be10WY', '2018-05-16 02:09:44', '2018-05-16 02:09:44'),
(11, 'DS8r113Z', '2018-05-16 02:09:46', '2018-05-16 02:09:46'),
(12, 'tt2S123I', '2018-05-16 02:09:48', '2018-05-16 02:09:48'),
(13, 'wWmQ13rj', '2018-05-16 02:09:49', '2018-05-16 02:09:49'),
(14, 'jamZ14Ma', '2018-05-16 02:09:51', '2018-05-16 02:09:51'),
(15, 'G4IH15V4', '2018-05-16 02:09:52', '2018-05-16 02:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `Name`, `Phone`, `Group`, `EID`, `NID`, `created_at`, `updated_at`) VALUES
(1, 'Safi 1', '02563215', 'Admin', '011', '3256485612330', NULL, NULL),
(2, 'Munir', '65962', 'HR', '64646464', '5421511643195', NULL, NULL),
(3, 'Mr X', '98659', 'Admin', '987987', '365412365', NULL, NULL),
(4, 'Mr. y', '4562', 'Accounts', '54545454', '3642578952', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_requests`
--

CREATE TABLE `job_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `ServiceId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImageUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` text COLLATE utf8mb4_unicode_ci,
  `Email` text COLLATE utf8mb4_unicode_ci,
  `ServiceItem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RequestType` int(11) DEFAULT NULL,
  `ProblemDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpectedDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpectedTime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Brand` int(11) DEFAULT NULL,
  `DeviceQty` int(10) UNSIGNED DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `ProbableCompletionDate` datetime DEFAULT NULL,
  `PaymentMethod` int(11) DEFAULT NULL,
  `ReqCreatedBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RequestNote` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_requests`
--

INSERT INTO `job_requests` (`id`, `ServiceId`, `ImageUrl`, `Name`, `Phone`, `Address`, `Email`, `ServiceItem`, `RequestType`, `ProblemDescription`, `ExpectedDate`, `ExpectedTime`, `Brand`, `DeviceQty`, `Capacity`, `ProbableCompletionDate`, `PaymentMethod`, `ReqCreatedBy`, `RequestNote`, `created_at`, `updated_at`) VALUES
(1, '5dNe1VO', NULL, 'Safiul', '2233', 'vsdvsdvs', 'safiul@gmail.com', 'abc', NULL, 'test ongoing', '2018-05-16', '3PM - 5PM', 3, 22, 200, NULL, 1, '111', NULL, '2018-05-16 05:15:27', '2018-05-16 05:15:27'),
(2, 'bKnc2rV', NULL, 'Safiul', '2233', 'vsdvsdvs', 'safiul@gmail.com', 'abc', NULL, 'test ongoing', '2018-05-16', '3PM - 5PM', 3, 22, 200, NULL, 1, '111', NULL, '2018-05-16 05:16:44', '2018-05-16 05:16:44');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_04_02_130535_create_request_statuses_table', 1),
(6, '2018_04_21_101600_create_employees_table', 1),
(10, '2016_06_01_000001_create_oauth_auth_codes_table', 5),
(11, '2016_06_01_000002_create_oauth_access_tokens_table', 5),
(12, '2016_06_01_000003_create_oauth_refresh_tokens_table', 5),
(13, '2016_06_01_000004_create_oauth_clients_table', 5),
(14, '2016_06_01_000005_create_oauth_personal_access_clients_table', 5),
(19, '2018_04_26_062308_create_brands_table', 8),
(23, '2018_05_14_093900_create_payments_table', 9),
(27, '2018_05_15_123037_create_check_randoms_table', 11),
(28, '2018_04_20_230908_create_job_requests_table', 12),
(29, '2018_04_21_100351_create_assigns_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('08f933528345f75acaa75a8728e763fc779fb39c5da8db238e0e50ca71ec60b3fe3deb0b93b9bbfd', 1, 2, NULL, '[]', 1, '2018-05-14 03:08:37', '2018-05-14 03:08:37', '2019-05-14 09:08:37'),
('6898e636eb3900b28585656e7293d5ef5e30d6fb7bdb538fb8b4f7301f3215df0fb8af293fe26231', 1, 3, NULL, '[]', 0, '2018-05-14 04:10:01', '2018-05-14 04:10:01', '2019-05-14 10:10:01'),
('6a4d9e6661802043bca9b35ad8eb5e0ca5f290c34b3c0543a529420561c9914cb3ca4d17e887008e', 1, 2, NULL, '[]', 1, '2018-04-25 00:15:22', '2018-04-25 00:15:22', '2019-04-25 06:15:22'),
('894486f5f8a1bc8a4e3755be529171f462bf9c6024af3119e83abf156c8905512515e0dab83a2257', 1, 2, NULL, '[]', 1, '2018-04-26 06:58:38', '2018-04-26 06:58:38', '2019-04-26 12:58:38'),
('ad7b1bd7864f50326c27e5bc2a4b9493df9c5df8f64e82fc016dce158561a9027e16fc262578645e', 1, 2, NULL, '[]', 1, '2018-04-25 00:22:20', '2018-04-25 00:22:20', '2019-04-25 06:22:20'),
('b2d8472a9220b9c727d8ec705995bba38dd86e5ce7954d1ce83e9f9dca09afefaf2663c2272ec9ec', 1, 2, NULL, '[]', 1, '2018-04-26 00:19:03', '2018-04-26 00:19:03', '2019-04-26 06:19:03'),
('d7d8bd282e7a26a39480cf6ab1bc2e61a208d81e55ee10be193dae62945ca129e22b37042a335219', 1, 2, NULL, '[]', 1, '2018-04-25 00:18:13', '2018-04-25 00:18:13', '2019-04-25 06:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'XPwihTx1mrKVKH1mwvFSgGS7zkBdCP7oRHEKoinv', 'http://localhost', 1, 0, 0, '2018-04-24 23:57:09', '2018-04-24 23:57:09'),
(2, NULL, 'Laravel Password Grant Client', 'tHCzyYG6Iv67kVW4mJObOWuKCO0KqfhxzFYEe5DC', 'http://localhost', 0, 1, 1, '2018-04-24 23:57:09', '2018-05-14 03:10:49'),
(3, 1, 'Shofin', '6GdfjnalRsC5fWLvlgfHOQ8BQFiDtyqseKbj4XGo', 'http://localhost:8000', 0, 1, 0, '2018-05-14 04:06:31', '2018-05-14 04:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-04-24 23:57:09', '2018-04-24 23:57:09');

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

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('2de447dd908d84250298298631ce4be9ee12453d0b92dca9df231f2e0bcea4af94e675355a20785d', 'd7d8bd282e7a26a39480cf6ab1bc2e61a208d81e55ee10be193dae62945ca129e22b37042a335219', 0, '2019-04-25 06:18:14'),
('502b30369f1839f6a7388c659a5e6ab1b6997a26c2f185bb9e8258e708f7aba170393ffb7bfb5b34', '894486f5f8a1bc8a4e3755be529171f462bf9c6024af3119e83abf156c8905512515e0dab83a2257', 0, '2019-04-26 12:58:38'),
('59e31e3288b4e1c8ed489342dcd28a4041bd4e134b3178315adafd0cb624779e0165919c359b9411', 'b2d8472a9220b9c727d8ec705995bba38dd86e5ce7954d1ce83e9f9dca09afefaf2663c2272ec9ec', 0, '2019-04-26 06:19:03'),
('84506a982813ee2425729e354404971304f4268c51c8d476b0d5273288b3e58fdeafdac59f9a7c0c', '6898e636eb3900b28585656e7293d5ef5e30d6fb7bdb538fb8b4f7301f3215df0fb8af293fe26231', 0, '2019-05-14 10:10:01'),
('9cb6a5ff7f44fa6984e33d592b5ea5d79865678472b85a9a45073c66b0d0d5bcfc6bc07aa2a1a17e', '08f933528345f75acaa75a8728e763fc779fb39c5da8db238e0e50ca71ec60b3fe3deb0b93b9bbfd', 0, '2019-05-14 09:08:37'),
('b1c12eaef8070b335c3b5e2e7c9050cbed297ae9858446f5280bcd997163b98e74f93de683278a35', '6a4d9e6661802043bca9b35ad8eb5e0ca5f290c34b3c0543a529420561c9914cb3ca4d17e887008e', 0, '2019-04-25 06:15:22'),
('b3b5ff52d02599c42392f532a6316b806357bd285ba30022ea3ab920b9a91698f56fbdc057814700', 'ad7b1bd7864f50326c27e5bc2a4b9493df9c5df8f64e82fc016dce158561a9027e16fc262578645e', 0, '2019-04-25 06:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `Method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `Method`, `created_at`, `updated_at`) VALUES
(1, 'CashOnDelivery', NULL, NULL),
(2, 'bKash', NULL, NULL),
(3, 'VISA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_statuses`
--

CREATE TABLE `request_statuses` (
  `ID` int(10) UNSIGNED NOT NULL,
  `AssignID` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_statuses`
--

INSERT INTO `request_statuses` (`ID`, `AssignID`, `Status`, `Remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'dvsds', NULL, NULL),
(2, 2, 3, 'vsdsdvsd', NULL, NULL),
(3, 3, 1, 'hhhhhh', '2018-04-25 18:00:00', '2018-04-29 18:00:00'),
(4, 4, 2, 'kokoko', '2018-04-16 18:00:00', '2018-04-25 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shofin', 'shofin.cse@gmail.com', '$2y$10$f4z3rT6cm.YtNTXHB7tF8efchfk.iazhfjLDI4rN9mMki0CMY1KS2', 'zwwHylMQq3kwNU6WeljVYvLaBx7lBLAYCj8JLO6IQu4kXrITvUV5Q0MnCbLw', '2018-04-21 08:00:26', '2018-04-21 08:00:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigns`
--
ALTER TABLE `assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigns_job_request_id_index` (`job_request_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_randoms`
--
ALTER TABLE `check_randoms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `check_randoms_orderid_unique` (`orderId`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_requests`
--
ALTER TABLE `job_requests`
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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_statuses`
--
ALTER TABLE `request_statuses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigns`
--
ALTER TABLE `assigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `check_randoms`
--
ALTER TABLE `check_randoms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_requests`
--
ALTER TABLE `job_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `request_statuses`
--
ALTER TABLE `request_statuses`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigns`
--
ALTER TABLE `assigns`
  ADD CONSTRAINT `assigns_job_request_id_foreign` FOREIGN KEY (`job_request_id`) REFERENCES `job_requests` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
