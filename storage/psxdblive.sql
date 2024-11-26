-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2024 at 04:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psxdblive`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adminname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$12$DrHlFILfdy5TF9BM6/GqPuBe5gs/S4P2Wk/J.jfEG/mMjirvGxA12', NULL, '2024-10-05 14:42:58', '2024-10-05 14:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `admin_bank_details`
--

CREATE TABLE `admin_bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_title` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `admin_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank`, `status`, `created_at`, `updated_at`) VALUES
(1, 'EasyPasia', '0', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(2, 'JazzCash', '0', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(3, 'Bank Alfalah', '0', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(4, 'United Bank Limited', '0', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(5, 'Allied Bank', '0', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(6, 'HBL', '0', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(7, 'MCB Bank', '0', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(8, 'Natianol Bank Of Pakistan', '0', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(9, 'Meezan Bank', '0', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(10, 'Bank Islami', '0', '2024-10-05 14:42:58', '2024-10-05 14:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `claimed_rewards`
--

CREATE TABLE `claimed_rewards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reward_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_deposit` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comissions`
--

CREATE TABLE `comissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `member_id` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `commission` double NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `depositrequests`
--

CREATE TABLE `depositrequests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `accountholder` varchar(255) NOT NULL,
  `accountnumber` varchar(255) NOT NULL,
  `depositamount` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `scheme_ref_id` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `end_date_timestamp` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `referral_user_id` varchar(255) DEFAULT NULL,
  `deposit_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_03_04_181322_create_admins_table', 1),
(7, '2024_03_06_153700_create_schemes_table', 1),
(8, '2024_03_07_145439_create_investments_table', 1),
(9, '2024_03_07_175748_create_banks_table', 1),
(10, '2024_03_07_190328_create_admin_bank_details_table', 1),
(11, '2024_03_08_215624_create_user__bank__details_table', 1),
(12, '2024_03_13_110018_create_send_notifications_table', 1),
(13, '2024_03_14_104919_create_withdrawrequests_table', 1),
(14, '2024_03_16_094329_create_depositrequests_table', 1),
(15, '2024_03_18_081243_create_members_table', 1),
(16, '2024_03_24_105725_create_transaction_tables_table', 1),
(17, '2024_04_23_133605_create_passwordresetrequests_table', 1),
(18, '2024_05_02_074632_create_notifications', 1),
(19, '2024_06_16_020939_create_settings', 1),
(20, '2024_06_16_033846_create_sales', 1),
(21, '2024_08_07_110518_create_rewards', 1),
(22, '2024_08_07_110640_create_claimed_rewards', 1),
(23, '2024_08_07_173715_info', 1),
(24, '2024_08_08_140800_create_comissions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `payload` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passwordresetrequests`
--

CREATE TABLE `passwordresetrequests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `timeperiod` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reward_title` varchar(255) NOT NULL,
  `reward_description` longtext DEFAULT NULL,
  `amount` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `reward_title`, `reward_description`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Total Team deposit reward', NULL, 2000, 1, '2024-10-05 14:42:59', '2024-10-05 14:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profit` double NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schemes`
--

CREATE TABLE `schemes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `user_investment_limit` int(11) NOT NULL DEFAULT 0,
  `starting_investment` int(11) NOT NULL DEFAULT 0,
  `ending_investment` int(11) NOT NULL DEFAULT 0,
  `bg_image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schemes`
--

INSERT INTO `schemes` (`id`, `title`, `sub_title`, `profit`, `duration`, `user_investment_limit`, `starting_investment`, `ending_investment`, `bg_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ZCASH (6%)', 'Daily Profit (60 - 180) PKR', '6', '2', 3, 0, 0, '1709717638.jpg', '1', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(2, 'CARDANO(ADA) (3%)', 'Daily Profit (150 - 450) PKR', '3', '7', 3, 0, 0, '1709717638.jpg', '1', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(3, 'RIPPLE(XRP) (3.4%)', 'Daily Profit (1750 - 2450) PKR', '3.4', '10', 3, 0, 0, '1709717638.jpg', '1', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(4, 'BNB (3.1%)', 'Daily Profit (600 - 2000) PKR', '3.1', '15', 3, 0, 0, '1709717638.jpg', '1', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(5, 'BINANCE (3.2%)', 'Daily Profit (1260 - 4200) PKR', '3.2', '22', 3, 0, 0, '1709717638.jpg', '1', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(6, 'ETHEREUM(ETH) (3.5%)', 'Daily Profit (2250 - 6750) PKR', '3.5', '30', 3, 0, 0, '1709717638.jpg', '1', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(7, 'BITCOIN(BTC) (4%)', 'Daily Profit (3500 - 15000) PKR', '4', '45', 3, 0, 0, '1709717638.jpg', '1', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(8, 'STELLAR(XLM) (5%)', 'Daily Profit (7500 - 7500) PKR', '5', '60', 3, 0, 0, '1709717638.jpg', '1', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(9, 'OKEX (5.5%)	', 'Daily Profit (11000 - 11000) PKR	', '5.5', '90', 3, 0, 0, '1709717638.jpg', '1', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(10, 'BITCOIN CASH(BCH)(6%)	', 'Daily Profit (600 - 3000) PKR	', '6', '120', 3, 0, 0, '1709717638.jpg', '1', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(11, 'BUSD (7%)	', 'Daily Profit (700 - 7000) PKR', '7', '180', 3, 0, 0, '1709717638.jpg', '1', '2024-10-05 14:42:58', '2024-10-05 14:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `send_notifications`
--

CREATE TABLE `send_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'name', 'PSX_I', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(2, 'logo', '/images/logo.png', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(3, 'fcm_token', 'AAAABmDste4:APA91bGcXkxulcwZy-XwdLVTj102k6wlTnzDdSuIr2Qo9UBkiAQZ0VHAKnqy2Wv4VscgBrHMPwPdTUAGuGirf_Jzt2qS7xHaoKT3J8j4e5xS7xGy267vWtDf2-EfL7lob0AZ4unXi8qT', '2024-10-05 14:42:58', '2024-10-05 14:42:58'),
(4, 'defualt_currency', 'PKR', '2024-10-05 14:42:59', '2024-10-05 14:42:59'),
(5, 'default_currency_symbol', 'RS', '2024-10-05 14:42:59', '2024-10-05 14:42:59'),
(6, 'deposit_bonus_percentage', '5', '2024-10-05 14:42:59', '2024-10-05 14:42:59'),
(7, 'withdraw_fee_percentage', '5', '2024-10-05 14:42:59', '2024-10-05 14:42:59'),
(8, 'level_1_commission_percentage', '2.1', '2024-10-05 14:42:59', '2024-10-05 14:42:59'),
(9, 'level_2_commission_percentage', '4.3', '2024-10-05 14:42:59', '2024-10-05 14:42:59'),
(10, 'level_3_commission_percentage', '6.5', '2024-10-05 14:42:59', '2024-10-05 14:42:59'),
(11, 'android_app_version', '1.0.1', '2024-10-05 14:42:59', '2024-10-05 14:42:59'),
(12, 'android_app_url', 'https://example.com', '2024-10-05 14:42:59', '2024-10-05 14:42:59'),
(13, 'ios_app_url', 'https://example.com', '2024-10-05 14:42:59', '2024-10-05 14:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_tables`
--

CREATE TABLE `transaction_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `avaiable_amount` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `deposit_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `withdraw_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `investment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `referral_link` varchar(255) NOT NULL,
  `referral_id` varchar(255) DEFAULT NULL,
  `level` varchar(255) NOT NULL DEFAULT '1',
  `status` varchar(255) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `image`, `referral_link`, `referral_id`, `level`, `status`, `email_verified_at`, `otp`, `device_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abdullah', 'abdullah@gmail.com', '$2y$12$xPGYIE8icgP5LbmC1kHt/eZXS/I.HyjZc2z98SwewEqqYGXb0EeCq', '123456789', NULL, 'TMtc0GMj', NULL, '1', '1', NULL, NULL, NULL, NULL, '2024-10-05 14:42:58', '2024-10-05 14:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_details`
--

CREATE TABLE `user_bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_title` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawrequests`
--

CREATE TABLE `withdrawrequests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `accountholder` varchar(255) NOT NULL,
  `accountnumber` varchar(255) NOT NULL,
  `withdrawamount` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_bank_details`
--
ALTER TABLE `admin_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claimed_rewards`
--
ALTER TABLE `claimed_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comissions`
--
ALTER TABLE `comissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depositrequests`
--
ALTER TABLE `depositrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passwordresetrequests`
--
ALTER TABLE `passwordresetrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schemes`
--
ALTER TABLE `schemes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_notifications`
--
ALTER TABLE `send_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `transaction_tables`
--
ALTER TABLE `transaction_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_password_unique` (`password`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_referral_link_unique` (`referral_link`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawrequests`
--
ALTER TABLE `withdrawrequests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_bank_details`
--
ALTER TABLE `admin_bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `claimed_rewards`
--
ALTER TABLE `claimed_rewards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comissions`
--
ALTER TABLE `comissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `depositrequests`
--
ALTER TABLE `depositrequests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passwordresetrequests`
--
ALTER TABLE `passwordresetrequests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schemes`
--
ALTER TABLE `schemes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `send_notifications`
--
ALTER TABLE `send_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transaction_tables`
--
ALTER TABLE `transaction_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawrequests`
--
ALTER TABLE `withdrawrequests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
