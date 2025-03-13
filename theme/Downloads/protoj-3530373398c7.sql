-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: sdb-76.hosting.stackcp.net
-- Generation Time: Feb 10, 2025 at 04:39 AM
-- Server version: 10.6.18-MariaDB-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `protoj-3530373398c7`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `asset_name` varchar(255) DEFAULT NULL,
  `asset_tag` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `issuestatus` varchar(255) DEFAULT NULL,
  `issues` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `userid`, `companyid`, `asset_name`, `asset_tag`, `category_id`, `file_name`, `attachment_type`, `work_order`, `issuestatus`, `issues`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Mobile', 'non', '1', 'image', 'Photo', '12345', 'Raised', 'new', 'ok', '2024-11-16 08:01:34', '2024-11-16 08:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `htmlcontent` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `userid`, `companyid`, `htmlcontent`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, '[{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"Header\",\"access\":false},{\"type\":\"hidden\",\"name\":\"hidden-1735025066985-0\",\"access\":false},{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"Header\",\"access\":false},{\"type\":\"hidden\",\"name\":\"hidden-1735025126073-0\",\"access\":false}]', '2024-12-24 07:24:28', '2024-12-24 07:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `audit_findings`
--

CREATE TABLE `audit_findings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `auditReport_id` int(11) DEFAULT NULL,
  `finding` varchar(255) DEFAULT NULL,
  `corrective_action` varchar(255) DEFAULT NULL,
  `finding_category` varchar(255) DEFAULT NULL,
  `action_by` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `ncr_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_reports`
--

CREATE TABLE `audit_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `audit_title` varchar(255) DEFAULT NULL,
  `audit_number` varchar(255) DEFAULT NULL,
  `doc_number` varchar(255) DEFAULT NULL,
  `question` longtext DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `userid`, `companyid`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Hamza', 'hello', 'badges/bmEoncD1u7iQk2rQETgbPWsO9oGsYgyMQpwxHy9j.jpg', '2024-10-23 07:22:41', '2024-10-23 07:22:41'),
(2, NULL, 2, 'Admin', 'hello', 'badges/moxd8Wwmysp7GfWBcN5KcvxZmShFBum1znZMuyqJ.jpg', '2024-12-26 04:56:06', '2024-12-26 04:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `bank_holder_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `opening_balance` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `current_balance` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `bank_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `userid`, `companyid`, `bank_holder_name`, `bank_name`, `account_number`, `opening_balance`, `phone_number`, `current_balance`, `contact_number`, `bank_address`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'hamza', 'MCB', '2353646436', '123123', '0235534346', NULL, NULL, 'vehari', '2024-10-24 09:23:21', '2025-02-06 07:42:06'),
(2, NULL, NULL, 'hazzzz', 'ubl', '255346436436', '346346', '0353464574', NULL, NULL, 'Islamabad', '2024-11-04 09:15:27', '2024-11-18 17:59:44'),
(3, NULL, NULL, 'Haris', 'HBL', '21543654654', '23535346', '03011226041', NULL, NULL, 'bank road', '2024-11-18 17:36:37', '2024-11-18 17:36:37'),
(4, NULL, NULL, 'qulzam', 'Meezan', '255346436436', '2222', '0318988788', NULL, NULL, 'fdljlkd sdkdjkl', '2024-11-18 17:52:30', '2025-02-06 06:38:53'),
(6, NULL, NULL, 'Bryar Kramer', 'Abigail Burns', '202', '78786', '0318988788', NULL, NULL, 'islamabad', '2025-02-06 06:38:20', '2025-02-06 06:52:36'),
(7, NULL, NULL, 'qulzam', 'jazz', '2353646436', '123123', '0346366757', NULL, NULL, 'bank road', '2025-02-06 07:44:46', '2025-02-06 07:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfers`
--

CREATE TABLE `bank_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `from_account` varchar(255) DEFAULT NULL,
  `to_account` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `transfer_date` date DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_transfers`
--

INSERT INTO `bank_transfers` (`id`, `userid`, `companyid`, `from_account`, `to_account`, `amount`, `transfer_date`, `reference`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'MCB', 'MCB', '1224', '2024-10-08', 'haris', 'hello', '2024-10-24 09:29:03', '2024-10-24 09:29:03'),
(3, NULL, NULL, 'ubl', 'HBL', '7888887987', '2025-02-10', 'jbh', 'jjgj', '2025-02-03 06:17:34', '2025-02-03 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `sale_order_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Draft',
  `employ_id` int(11) DEFAULT NULL,
  `bill_number` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` varchar(35) DEFAULT NULL,
  `tax_amount` varchar(35) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `receipt` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `userid`, `companyid`, `vendor_id`, `issue_date`, `project_id`, `sale_order_id`, `status`, `employ_id`, `bill_number`, `category_id`, `reference_number`, `account_id`, `description`, `amount`, `tax_amount`, `notes`, `receipt`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 2, '2024-11-04', NULL, NULL, 'Draft', NULL, '122122', 1, '12345', 1, 'hello', '12242', '122.42', 'done', 'storage/bill_receipts/5mZGVYfxJmJXK9pNM0APNfqLgz84ncs5vAdkJvHH.jpg', '2024-11-11 06:29:12', '2025-01-06 11:41:19'),
(4, NULL, NULL, 3, '2024-12-18', NULL, NULL, 'Draft', NULL, '124325', 1, '112211', 2, 'hello', '1224', '12.24', 'kk', 'storage/bill_receipts/ZhbZMgD6WXKTxyCiEbj3nYgvPwjlFvdOU5OPGaIb.jpg', '2024-12-28 05:21:17', '2024-12-28 05:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `bill_payments`
--

CREATE TABLE `bill_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill_payments`
--

INSERT INTO `bill_payments` (`id`, `userid`, `companyid`, `bill_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, '0', '2024-10-24 09:24:36', '2024-10-24 09:24:36'),
(2, NULL, NULL, 2, '0', '2024-11-05 10:50:53', '2024-11-05 10:50:53'),
(3, NULL, NULL, 1, '1224200', '2024-11-07 09:58:03', '2024-11-07 09:58:03'),
(4, NULL, NULL, 1, '-72660', '2024-11-07 09:59:40', '2024-11-07 09:59:40'),
(5, NULL, NULL, 1, '-1139', '2024-11-11 06:28:01', '2024-11-11 06:28:01'),
(6, NULL, NULL, 3, '0', '2024-11-11 06:29:12', '2024-11-11 06:29:12'),
(7, NULL, NULL, 3, '12242', '2024-11-11 06:29:37', '2024-11-11 06:29:37'),
(8, NULL, NULL, 4, '0', '2024-12-28 05:21:17', '2024-12-28 05:21:17'),
(9, NULL, NULL, 4, '1224', '2024-12-28 05:22:01', '2024-12-28 05:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `userid`, `companyid`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Test', 'Income', '2024-10-22 09:35:54', '2024-10-22 09:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `certification_questionare_9000`
--

CREATE TABLE `certification_questionare_9000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification_questionare_14000`
--

CREATE TABLE `certification_questionare_14000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification_questionare_20000`
--

CREATE TABLE `certification_questionare_20000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification_questionare_21000`
--

CREATE TABLE `certification_questionare_21000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification_questionare_22000`
--

CREATE TABLE `certification_questionare_22000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification_questionare_37000`
--

CREATE TABLE `certification_questionare_37000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification_questionare_45000`
--

CREATE TABLE `certification_questionare_45000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification_questionare_50000`
--

CREATE TABLE `certification_questionare_50000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification_questionare_55001`
--

CREATE TABLE `certification_questionare_55001` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification_questionare_haccp`
--

CREATE TABLE `certification_questionare_haccp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification_questionare_machine_inspection`
--

CREATE TABLE `certification_questionare_machine_inspection` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification_questionare_training`
--

CREATE TABLE `certification_questionare_training` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` int(11) NOT NULL DEFAULT 0,
  `type` int(11) DEFAULT NULL,
  `sub_type` int(11) DEFAULT NULL,
  `is_enabled` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`id`, `userid`, `companyid`, `name`, `code`, `type`, `sub_type`, `is_enabled`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(8, NULL, NULL, 'Meezan', 22, 2, 2, 0, 'ff', 1, '2024-12-30 11:29:39', '2024-12-30 11:29:39'),
(9, NULL, NULL, 'Hamza', 33, 3, 3, 0, 'ff', 1, '2024-12-30 11:30:11', '2024-12-30 11:30:11'),
(10, NULL, NULL, 'User', 44, 4, 4, 0, 'cc', 1, '2024-12-30 11:30:58', '2024-12-30 11:30:58'),
(11, NULL, NULL, 'Test', 11, 1, 1, 0, 'gg', 1, '2024-12-30 11:39:47', '2024-12-30 11:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_account_sub_types`
--

CREATE TABLE `chart_of_account_sub_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_account_sub_types`
--

INSERT INTO `chart_of_account_sub_types` (`id`, `userid`, `companyid`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Accounts Receivable', 1, NULL, NULL),
(2, NULL, NULL, 'Accounts Payable', 2, NULL, NULL),
(3, NULL, NULL, 'Common Stock', 3, NULL, NULL),
(4, NULL, NULL, 'Sales Revenue', 4, NULL, NULL),
(5, NULL, NULL, 'Utilities', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_account_types`
--

CREATE TABLE `chart_of_account_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_account_types`
--

INSERT INTO `chart_of_account_types` (`id`, `userid`, `companyid`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'assets', 1, NULL, NULL),
(2, NULL, NULL, 'liabilities', 2, NULL, NULL),
(3, NULL, NULL, 'equity', 3, NULL, NULL),
(4, NULL, NULL, 'income', 4, NULL, NULL),
(5, NULL, NULL, 'expense', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `user_limit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `office_number` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `street1` varchar(255) DEFAULT NULL,
  `street2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `userid`, `logo`, `company_name`, `user_limit`, `office_number`, `postal_code`, `tax_number`, `site_url`, `mobile`, `fax`, `street1`, `street2`, `city`, `state`, `country`, `phone_number`, `created_at`, `updated_at`) VALUES
(15, 1, 'logos/1737442375_logo.png', 'Protoj', 0, '2', '111111', '213111', 'https://mgmt.bbtech.', '03011226040', '214234', '1122', '2', 'vehari', 'Punjab', 'Bolivia', NULL, '2025-01-06 11:36:16', '2025-01-21 07:02:55'),
(16, 1, 'logos/1736231641_badminton.jpg', 'ISO', 0, '23', '24223543', '354546', 'https://mgmt.bbtech.as', '03011226043', '214234', '122', '2', 'vehari', 'sindh', 'Albania', NULL, '2025-01-07 06:34:01', '2025-01-07 06:34:01'),
(17, 1, 'logos/1736398508_img.png.jpg', 'volvo', 10, '232', '1111122', '3545462', 'https://mgmt.bbtech.asd', '9345 346 5477', '1243243', '1', '2', 'vehari', 'sindh', 'Afghanistan', NULL, '2025-01-07 07:26:28', '2025-01-28 03:07:50'),
(18, 1, 'logos/1736413222_badminton1.jpg', 'nova', 0, '25', '24223543', '3545461', 'https://mgmt.bbtech.ae/', '9714 654 6575', '23432551', '12', '11', 'Islamabd', 'Punjab', 'Pakistan', NULL, '2025-01-07 07:36:03', '2025-01-09 09:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `company_assigned_modules`
--

CREATE TABLE `company_assigned_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_assigned_modules`
--

INSERT INTO `company_assigned_modules` (`id`, `company_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 15, 1, '2025-01-28 05:19:46', '2025-01-28 05:19:46'),
(5, 17, 1, '2025-01-29 03:41:23', '2025-01-29 03:41:23'),
(7, 17, 5, '2025-01-29 03:41:26', '2025-01-29 03:41:26'),
(8, 17, 6, '2025-01-29 03:41:26', '2025-01-29 03:41:26'),
(9, 17, 12, '2025-01-29 03:41:27', '2025-01-29 03:41:27'),
(10, 17, 32, '2025-01-29 03:41:30', '2025-01-29 03:41:30'),
(11, 17, 33, '2025-01-29 03:41:32', '2025-01-29 03:41:32'),
(12, 17, 43, '2025-01-29 03:41:33', '2025-01-29 03:41:33'),
(13, 17, 54, '2025-01-29 03:41:34', '2025-01-29 03:41:34'),
(14, 17, 65, '2025-01-29 03:41:35', '2025-01-29 03:41:35'),
(15, 17, 149, '2025-01-29 03:41:37', '2025-01-29 03:41:37'),
(16, 17, 139, '2025-01-29 03:41:38', '2025-01-29 03:41:38'),
(17, 17, 165, '2025-01-29 03:41:41', '2025-01-29 03:41:41'),
(18, 17, 180, '2025-01-29 03:41:44', '2025-01-29 03:41:44'),
(19, 17, 180, '2025-01-29 03:41:44', '2025-01-29 03:41:44'),
(20, 15, 5, '2025-01-31 06:33:53', '2025-01-31 06:33:53'),
(21, 15, 6, '2025-01-31 06:33:54', '2025-01-31 06:33:54'),
(22, 15, 12, '2025-01-31 06:33:55', '2025-01-31 06:33:55'),
(23, 15, 15, '2025-01-31 06:33:56', '2025-01-31 06:33:56'),
(24, 15, 18, '2025-01-31 06:33:56', '2025-01-31 06:33:56'),
(25, 15, 24, '2025-01-31 06:33:57', '2025-01-31 06:33:57'),
(26, 15, 27, '2025-01-31 06:33:58', '2025-01-31 06:33:58'),
(27, 15, 32, '2025-01-31 06:34:00', '2025-01-31 06:34:00'),
(28, 15, 33, '2025-01-31 06:34:01', '2025-01-31 06:34:01'),
(29, 15, 43, '2025-01-31 06:34:02', '2025-01-31 06:34:02'),
(30, 15, 54, '2025-01-31 06:34:04', '2025-01-31 06:34:04'),
(31, 15, 65, '2025-01-31 06:34:05', '2025-01-31 06:34:05'),
(32, 15, 76, '2025-01-31 06:34:05', '2025-01-31 06:34:05'),
(33, 15, 98, '2025-01-31 06:34:06', '2025-01-31 06:34:06'),
(34, 15, 87, '2025-01-31 06:34:07', '2025-01-31 06:34:07'),
(35, 15, 109, '2025-01-31 06:34:08', '2025-01-31 06:34:08'),
(36, 15, 119, '2025-01-31 06:34:10', '2025-01-31 06:34:10'),
(37, 15, 129, '2025-01-31 06:34:13', '2025-01-31 06:34:13'),
(38, 15, 139, '2025-01-31 06:34:14', '2025-01-31 06:34:14'),
(39, 15, 149, '2025-01-31 06:34:15', '2025-01-31 06:34:15'),
(40, 15, 175, '2025-01-31 06:34:17', '2025-01-31 06:34:17'),
(41, 15, 174, '2025-01-31 06:34:19', '2025-01-31 06:34:19'),
(42, 15, 173, '2025-01-31 06:34:20', '2025-01-31 06:34:20'),
(43, 15, 172, '2025-01-31 06:34:20', '2025-01-31 06:34:20'),
(44, 15, 168, '2025-01-31 06:34:21', '2025-01-31 06:34:21'),
(45, 15, 165, '2025-01-31 06:34:22', '2025-01-31 06:34:22'),
(46, 15, 163, '2025-01-31 06:34:23', '2025-01-31 06:34:23'),
(47, 15, 159, '2025-01-31 06:34:24', '2025-01-31 06:34:24'),
(48, 15, 186, '2025-01-31 06:34:29', '2025-01-31 06:34:29'),
(49, 15, 180, '2025-01-31 06:34:30', '2025-01-31 06:34:30'),
(50, 15, 179, '2025-01-31 06:34:31', '2025-01-31 06:34:31'),
(51, 15, 5, '2025-01-31 07:01:17', '2025-01-31 07:01:17'),
(52, 17, 189, '2025-01-31 07:16:21', '2025-01-31 07:16:21'),
(53, 17, 175, '2025-01-31 10:15:49', '2025-01-31 10:15:49'),
(54, 17, 175, '2025-01-31 10:15:50', '2025-01-31 10:15:50'),
(55, 17, 175, '2025-01-31 10:15:52', '2025-01-31 10:15:52'),
(56, 17, 179, '2025-01-31 10:15:54', '2025-01-31 10:15:54'),
(57, 15, 189, '2025-02-07 10:41:14', '2025-02-07 10:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `company_settings`
--

CREATE TABLE `company_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `currency` varchar(255) NOT NULL DEFAULT '$',
  `terms_condition` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `employ_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `jobposition` varchar(255) DEFAULT NULL,
  `contracttype` varchar(255) DEFAULT NULL,
  `wage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`id`, `userid`, `companyid`, `employ_id`, `department_id`, `reference`, `startdate`, `enddate`, `jobposition`, `contracttype`, `wage`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 1, '23423', '2024-10-01', '2024-10-02', 'Manager', 'Permanent', '22', '2024-10-23 07:15:49', '2024-10-23 07:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `credit_notes`
--

CREATE TABLE `credit_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job_position` varchar(255) DEFAULT NULL,
  `customer_title` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `tax_id` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `userid`, `companyid`, `customer_type`, `company_name`, `name`, `job_position`, `customer_title`, `website`, `tax_id`, `mobile`, `phone_number`, `email`, `street`, `city`, `state`, `country`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'individual', 'oppo', 'Hamza Khalid', 'developer', 'Mr', 'www.com', '123535', 'af-9334 654 7477', 'af-9346 547 5676', 'rh03026537933@gmail.com', '02', 'Vehari', 'punjab', 'Pakistan', '61100', '2024-10-22 08:49:29', '2024-11-04 11:57:25'),
(2, NULL, NULL, 'individual', 'IPHONE', 'Hamza', 'HR', 'Mr', 'www.com', '1111111', 'af-9346 436 4347', 'af-93046434575', 'rh033@gmail.com', '32', 'vehari', 'punjab', 'Pakistan', '112211', '2024-10-30 10:07:49', '2024-11-06 08:16:09'),
(4, NULL, NULL, 'individual', 'nova', 'Haris', 'HR', 'Mr', NULL, '232131', '0235436643', '03011226041', 'rh033@gmail.com', 'hometown', 'vehari', 'sindh', 'Pakistan', '3543436', '2024-11-18 11:48:12', '2024-11-18 18:02:21'),
(5, NULL, NULL, 'individual', NULL, NULL, NULL, 'Mr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Afghanistan', NULL, '2025-02-04 07:11:38', '2025-02-04 07:11:38'),
(6, NULL, NULL, 'individual', NULL, NULL, NULL, 'Mr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Afghanistan', NULL, '2025-02-04 11:19:03', '2025-02-04 11:19:03'),
(7, NULL, NULL, 'individual', NULL, NULL, NULL, 'Mr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Afghanistan', NULL, '2025-02-06 05:34:09', '2025-02-06 05:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `customer_document`
--

CREATE TABLE `customer_document` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `documentnumber` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `documenttype` varchar(255) DEFAULT NULL,
  `attachedfile` varchar(255) DEFAULT NULL,
  `issuedate` date DEFAULT NULL,
  `expirydate` date DEFAULT NULL,
  `notificationtype` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `userid`, `companyid`, `name`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Web', '2024-10-23 05:22:20', '2024-10-23 05:22:20'),
(2, NULL, 1, 'machineinspection', '2024-11-19 05:40:54', '2024-11-19 05:40:54'),
(3, 1, 15, 'Software Engineering', '2025-01-31 07:02:38', '2025-01-31 07:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `employ_id` int(11) DEFAULT NULL,
  `documentnumber` varchar(255) DEFAULT NULL,
  `documenttype` varchar(255) DEFAULT NULL,
  `attachedfile` varchar(255) DEFAULT NULL,
  `issuedate` date DEFAULT NULL,
  `expirydate` date DEFAULT NULL,
  `notificationtype` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `userid`, `companyid`, `employ_id`, `documentnumber`, `documenttype`, `attachedfile`, `issuedate`, `expirydate`, `notificationtype`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, '6732', 'y', NULL, '2025-01-08', '2025-01-09', 'Notification Few Days Before', NULL, '2025-01-31 09:37:35', '2025-01-31 09:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job_position` varchar(255) DEFAULT NULL,
  `work_email` varchar(255) DEFAULT NULL,
  `sign` longtext DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `coach` varchar(255) DEFAULT NULL,
  `employ_image` varchar(255) DEFAULT NULL,
  `signed` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `userid`, `companyid`, `name`, `job_position`, `work_email`, `sign`, `phone_number`, `mobile`, `department`, `registration_number`, `manager`, `coach`, `employ_image`, `signed`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Hamza Khalid', 'developer', 'hamza@gmail.com', 'data:image/png;base64,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', '0301122604100', '9345 346 5477', '1', '122112', NULL, NULL, 'profileImages/xWzU5fWyAsADhpr6fg7DDd3glbwS3ve3cXwygcW5.jpg', '[{\"lx\":200,\"ly\":29,\"mx\":200,\"my\":28},{\"lx\":198,\"ly\":28,\"mx\":200,\"my\":29},{\"lx\":196,\"ly\":30,\"mx\":198,\"my\":28},{\"lx\":193,\"ly\":30,\"mx\":196,\"my\":30},{\"lx\":185,\"ly\":33,\"mx\":193,\"my\":30},{\"lx\":177,\"ly\":35,\"mx\":185,\"my\":33},{\"lx\":171,\"ly\":35,\"mx\":177,\"my\":35},{\"lx\":166,\"ly\":37,\"mx\":171,\"my\":35},{\"lx\":157,\"ly\":41,\"mx\":166,\"my\":37},{\"lx\":146,\"ly\":47,\"mx\":157,\"my\":41},{\"lx\":140,\"ly\":47,\"mx\":146,\"my\":47},{\"lx\":138,\"ly\":51,\"mx\":140,\"my\":47},{\"lx\":134,\"ly\":51,\"mx\":138,\"my\":51},{\"lx\":129,\"ly\":51,\"mx\":134,\"my\":51},{\"lx\":128,\"ly\":52,\"mx\":129,\"my\":51},{\"lx\":126,\"ly\":52,\"mx\":128,\"my\":52},{\"lx\":124,\"ly\":52,\"mx\":126,\"my\":52},{\"lx\":120,\"ly\":52,\"mx\":124,\"my\":52},{\"lx\":118,\"ly\":52,\"mx\":120,\"my\":52},{\"lx\":110,\"ly\":49,\"mx\":118,\"my\":52},{\"lx\":101,\"ly\":49,\"mx\":110,\"my\":49},{\"lx\":95,\"ly\":49,\"mx\":101,\"my\":49},{\"lx\":93,\"ly\":46,\"mx\":95,\"my\":49},{\"lx\":90,\"ly\":46,\"mx\":93,\"my\":46},{\"lx\":90,\"ly\":44,\"mx\":90,\"my\":46},{\"lx\":88,\"ly\":44,\"mx\":90,\"my\":44},{\"lx\":84,\"ly\":44,\"mx\":88,\"my\":44},{\"lx\":79,\"ly\":41,\"mx\":84,\"my\":44},{\"lx\":73,\"ly\":38,\"mx\":79,\"my\":41},{\"lx\":75,\"ly\":36,\"mx\":73,\"my\":38},{\"lx\":78,\"ly\":36,\"mx\":75,\"my\":36},{\"lx\":80,\"ly\":36,\"mx\":78,\"my\":36},{\"lx\":83,\"ly\":36,\"mx\":80,\"my\":36},{\"lx\":89,\"ly\":33,\"mx\":83,\"my\":36},{\"lx\":91,\"ly\":33,\"mx\":89,\"my\":33},{\"lx\":98,\"ly\":33,\"mx\":91,\"my\":33},{\"lx\":107,\"ly\":41,\"mx\":98,\"my\":33},{\"lx\":114,\"ly\":48,\"mx\":107,\"my\":41},{\"lx\":122,\"ly\":56,\"mx\":114,\"my\":48},{\"lx\":128,\"ly\":62,\"mx\":122,\"my\":56},{\"lx\":131,\"ly\":68,\"mx\":128,\"my\":62},{\"lx\":137,\"ly\":71,\"mx\":131,\"my\":68},{\"lx\":142,\"ly\":77,\"mx\":137,\"my\":71},{\"lx\":146,\"ly\":80,\"mx\":142,\"my\":77},{\"lx\":147,\"ly\":83,\"mx\":146,\"my\":80},{\"lx\":150,\"ly\":86,\"mx\":147,\"my\":83},{\"lx\":153,\"ly\":89,\"mx\":150,\"my\":86},{\"lx\":156,\"ly\":92,\"mx\":153,\"my\":89},{\"lx\":159,\"ly\":92,\"mx\":156,\"my\":92},{\"lx\":159,\"ly\":94,\"mx\":159,\"my\":92},{\"lx\":158,\"ly\":94,\"mx\":159,\"my\":94},{\"lx\":149,\"ly\":94,\"mx\":158,\"my\":94},{\"lx\":136,\"ly\":94,\"mx\":149,\"my\":94},{\"lx\":121,\"ly\":94,\"mx\":136,\"my\":94},{\"lx\":109,\"ly\":94,\"mx\":121,\"my\":94},{\"lx\":88,\"ly\":94,\"mx\":109,\"my\":94},{\"lx\":80,\"ly\":94,\"mx\":88,\"my\":94},{\"lx\":79,\"ly\":94,\"mx\":80,\"my\":94},{\"lx\":78,\"ly\":94,\"mx\":79,\"my\":94},{\"lx\":75,\"ly\":95,\"mx\":78,\"my\":94},{\"lx\":71,\"ly\":95,\"mx\":75,\"my\":95},{\"lx\":73,\"ly\":95,\"mx\":71,\"my\":95},{\"lx\":75,\"ly\":95,\"mx\":73,\"my\":95},{\"lx\":78,\"ly\":95,\"mx\":75,\"my\":95},{\"lx\":88,\"ly\":95,\"mx\":78,\"my\":95},{\"lx\":93,\"ly\":95,\"mx\":88,\"my\":95},{\"lx\":109,\"ly\":87,\"mx\":93,\"my\":95},{\"lx\":113,\"ly\":84,\"mx\":109,\"my\":87},{\"lx\":121,\"ly\":80,\"mx\":113,\"my\":84},{\"lx\":128,\"ly\":71,\"mx\":121,\"my\":80},{\"lx\":130,\"ly\":67,\"mx\":128,\"my\":71},{\"lx\":130,\"ly\":62,\"mx\":130,\"my\":67},{\"lx\":133,\"ly\":59,\"mx\":130,\"my\":62},{\"lx\":133,\"ly\":56,\"mx\":133,\"my\":59},{\"lx\":136,\"ly\":54,\"mx\":133,\"my\":56},{\"lx\":139,\"ly\":54,\"mx\":136,\"my\":54},{\"lx\":139,\"ly\":52,\"mx\":139,\"my\":54},{\"lx\":139,\"ly\":48,\"mx\":139,\"my\":52},{\"lx\":141,\"ly\":45,\"mx\":139,\"my\":48},{\"lx\":141,\"ly\":42,\"mx\":141,\"my\":45},{\"lx\":141,\"ly\":39,\"mx\":141,\"my\":42},{\"lx\":143,\"ly\":39,\"mx\":141,\"my\":39},{\"lx\":147,\"ly\":30,\"mx\":143,\"my\":39},{\"lx\":147,\"ly\":25,\"mx\":147,\"my\":30},{\"lx\":147,\"ly\":23,\"mx\":147,\"my\":25}]', '2024-10-23 06:20:04', '2025-01-24 06:02:25'),
(2, NULL, 1, 'Hamza Khalid Rana', 'developer', 'www@gmail.com', 'data:image/png;base64,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', '9714 575 4757', '9714 654 6575', '1', '122111', NULL, NULL, 'profileImages/nkvdohXHN3hKzNfgGrL9hnxMsiQvEm06F58x1n3y.jpg', '[]', '2024-11-04 06:41:15', '2024-11-18 08:14:19'),
(3, NULL, 1, 'Haris', 'HR', 'hhww@gmail.com', NULL, '03011226041', '03026537933', '1', '122111121', NULL, NULL, 'profileImages/Oht8S9AkDOk9EkQQK4FoKQ0FlYqUcBBFjYYQKZsZ.jpg', NULL, '2024-11-18 08:01:17', '2024-11-18 08:01:17'),
(4, NULL, 1, 'Qulzam', 'developer', 'test@test.com', 'data:image/png;base64,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', '0346366757', '023534654', '1', '121234', NULL, NULL, 'profileImages/luO8Ak3WdXTV5AhrATsArTblVrQLHl3hYfGFNQN1.jpg', '[]', '2024-11-18 08:16:39', '2024-11-18 08:26:51'),
(5, NULL, 2, 'User', 'HR', 'hamzaaaaa@gmail.com', 'data:image/png;base64,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', '0987654321', '9714 654 6575', '2', '1221111213', NULL, NULL, 'profileImages/mMegivGqCsmINCEPOgZ33fAKM6cZjHjz8GTq5TJT.png', '[]', '2025-01-06 10:28:44', '2025-01-23 07:56:06'),
(6, 1, 15, 'Hafsa', 'developer', 'haneungl@gmail.com', NULL, NULL, '32543245', '2', '87898', NULL, NULL, 'profileImages/DCBQK8XoRJqdiCxiodotdbXAiAMs5x75PzZQSVYB.png', NULL, '2025-02-04 10:30:23', '2025-02-04 10:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `employ_badges`
--

CREATE TABLE `employ_badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `badge_id` int(11) DEFAULT NULL,
  `employ_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employ_badges`
--

INSERT INTO `employ_badges` (`id`, `userid`, `companyid`, `badge_id`, `employ_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 1, '2024-12-26 04:56:22', '2024-12-26 04:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `employ_logs`
--

CREATE TABLE `employ_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employ_logs`
--

INSERT INTO `employ_logs` (`id`, `emp_id`, `companyid`, `title`, `flag`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'New employ created at', 'employ', '2024-10-23 06:20:04', '2024-10-23 06:20:04'),
(2, NULL, NULL, 'New quotation created at', 'quotation', '2024-10-24 09:06:48', '2024-10-24 09:06:48'),
(3, NULL, NULL, 'Quotation updated at', 'quotation', '2024-10-30 09:19:04', '2024-10-30 09:19:04'),
(4, NULL, NULL, 'Employ Hamza updated at', 'employ', '2024-10-30 09:37:45', '2024-10-30 09:37:45'),
(5, NULL, NULL, 'New employ created at', 'employ', '2024-11-04 06:41:15', '2024-11-04 06:41:15'),
(6, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-06 07:25:21', '2024-11-06 07:25:21'),
(7, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-06 07:29:58', '2024-11-06 07:29:58'),
(8, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-06 07:31:42', '2024-11-06 07:31:42'),
(9, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-06 07:34:35', '2024-11-06 07:34:35'),
(10, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-06 07:53:21', '2024-11-06 07:53:21'),
(11, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-06 08:07:00', '2024-11-06 08:07:00'),
(12, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-06 08:11:22', '2024-11-06 08:11:22'),
(13, NULL, NULL, 'Employ Hamza Khalid updated at', 'employ', '2024-11-07 06:21:53', '2024-11-07 06:21:53'),
(14, NULL, NULL, 'Employ Hamza Khalid updated at', 'employ', '2024-11-07 06:22:17', '2024-11-07 06:22:17'),
(15, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-07 10:02:12', '2024-11-07 10:02:12'),
(16, NULL, NULL, 'Quotation updated at', 'quotation', '2024-11-11 11:44:24', '2024-11-11 11:44:24'),
(17, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-12 11:25:27', '2024-11-12 11:25:27'),
(18, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-12 12:24:55', '2024-11-12 12:24:55'),
(19, NULL, NULL, 'Quotation updated at', 'quotation', '2024-11-12 12:46:11', '2024-11-12 12:46:11'),
(20, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-18 05:51:06', '2024-11-18 05:51:06'),
(21, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-18 07:08:09', '2024-11-18 07:08:09'),
(22, NULL, NULL, 'Quotation product updated at', 'quotation', '2024-11-18 07:43:29', '2024-11-18 07:43:29'),
(23, NULL, NULL, 'New employ created at', 'employ', '2024-11-18 08:01:17', '2024-11-18 08:01:17'),
(24, NULL, NULL, 'Employ Hamza Khalid Rana updated at', 'employ', '2024-11-18 08:14:19', '2024-11-18 08:14:19'),
(25, NULL, NULL, 'Employ Hamza Khalid updated at', 'employ', '2024-11-18 08:14:39', '2024-11-18 08:14:39'),
(26, NULL, NULL, 'New employ created at', 'employ', '2024-11-18 08:16:39', '2024-11-18 08:16:39'),
(27, NULL, NULL, 'Employ Qulzam updated at', 'employ', '2024-11-18 08:19:03', '2024-11-18 08:19:03'),
(28, NULL, NULL, 'Employ Qulzam updated at', 'employ', '2024-11-18 08:26:51', '2024-11-18 08:26:51'),
(29, NULL, NULL, 'Employ Hamza Khalid updated at', 'employ', '2024-11-18 08:28:12', '2024-11-18 08:28:12'),
(30, NULL, NULL, 'Quotation product updated at', 'quotation', '2024-11-18 11:06:54', '2024-11-18 11:06:54'),
(31, NULL, NULL, 'Quotation product updated at', 'quotation', '2024-11-18 11:19:58', '2024-11-18 11:19:58'),
(32, NULL, NULL, 'New product is added to quotation created at', 'quotation', '2024-11-18 11:29:43', '2024-11-18 11:29:43'),
(33, NULL, NULL, 'Quotation product updated at', 'quotation', '2024-11-18 11:35:08', '2024-11-18 11:35:08'),
(34, NULL, NULL, 'Quotation product updated at', 'quotation', '2024-11-18 11:49:05', '2024-11-18 11:49:05'),
(35, NULL, NULL, 'Quotation product updated at', 'quotation', '2024-11-18 11:58:11', '2024-11-18 11:58:11'),
(36, NULL, NULL, 'New product is added to quotation created at', 'quotation', '2024-11-18 12:01:18', '2024-11-18 12:01:18'),
(37, NULL, NULL, 'Quotation product updated at', 'quotation', '2024-11-18 12:03:53', '2024-11-18 12:03:53'),
(38, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-18 12:07:19', '2024-11-18 12:07:19'),
(39, NULL, NULL, 'New product is added to quotation created at', 'quotation', '2024-11-28 13:33:18', '2024-11-28 13:33:18'),
(40, NULL, NULL, 'Quotation product updated at', 'quotation', '2024-11-28 13:36:46', '2024-11-28 13:36:46'),
(41, NULL, NULL, 'New quotation created at', 'quotation', '2024-11-28 13:41:18', '2024-11-28 13:41:18'),
(42, NULL, NULL, 'Quotation updated at', 'quotation', '2024-11-28 13:42:14', '2024-11-28 13:42:14'),
(43, NULL, NULL, 'Quotation updated at', 'quotation', '2024-11-28 13:55:06', '2024-11-28 13:55:06'),
(44, NULL, NULL, 'Quotation updated at', 'quotation', '2024-11-28 13:56:48', '2024-11-28 13:56:48'),
(45, NULL, NULL, 'Quotation updated at', 'quotation', '2024-11-28 13:57:30', '2024-11-28 13:57:30'),
(46, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-20 09:08:17', '2024-12-20 09:08:17'),
(47, NULL, NULL, 'Quotation updated at', 'quotation', '2024-12-20 09:08:48', '2024-12-20 09:08:48'),
(48, NULL, NULL, 'New product is added to quotation created at', 'quotation', '2024-12-21 13:54:49', '2024-12-21 13:54:49'),
(49, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-21 13:57:47', '2024-12-21 13:57:47'),
(50, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-21 13:59:21', '2024-12-21 13:59:21'),
(51, NULL, NULL, 'New product is added to quotation created at', 'quotation', '2024-12-28 05:26:19', '2024-12-28 05:26:19'),
(52, NULL, NULL, 'Quotation product updated at', 'quotation', '2024-12-28 06:39:01', '2024-12-28 06:39:01'),
(53, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-30 07:38:02', '2024-12-30 07:38:02'),
(54, NULL, NULL, 'New product is added to quotation created at', 'quotation', '2024-12-30 07:57:19', '2024-12-30 07:57:19'),
(55, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-30 11:33:21', '2024-12-30 11:33:21'),
(56, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-30 11:46:02', '2024-12-30 11:46:02'),
(57, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-31 08:11:43', '2024-12-31 08:11:43'),
(58, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-31 08:13:25', '2024-12-31 08:13:25'),
(59, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-31 08:17:40', '2024-12-31 08:17:40'),
(60, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-31 08:24:18', '2024-12-31 08:24:18'),
(61, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-31 08:25:50', '2024-12-31 08:25:50'),
(62, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-31 08:32:11', '2024-12-31 08:32:11'),
(63, NULL, NULL, 'New product is added to quotation created at', 'quotation', '2024-12-31 08:34:43', '2024-12-31 08:34:43'),
(64, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-31 08:36:07', '2024-12-31 08:36:07'),
(65, NULL, NULL, 'New product is added to quotation created at', 'quotation', '2024-12-31 08:37:04', '2024-12-31 08:37:04'),
(66, NULL, NULL, 'New quotation created at', 'quotation', '2024-12-31 08:39:22', '2024-12-31 08:39:22'),
(67, NULL, NULL, 'New employ created at', 'employ', '2025-01-06 10:28:44', '2025-01-06 10:28:44'),
(68, NULL, NULL, 'New quotation created at', 'quotation', '2025-01-10 05:05:56', '2025-01-10 05:05:56'),
(69, NULL, NULL, 'New quotation created at', 'quotation', '2025-01-10 05:08:03', '2025-01-10 05:08:03'),
(70, NULL, NULL, 'Employ Hamza Khalid updated at', 'employ', '2025-01-13 04:21:56', '2025-01-13 04:21:56'),
(71, NULL, NULL, 'Employ Hamza Khalid updated at', 'employ', '2025-01-13 04:26:26', '2025-01-13 04:26:26'),
(72, NULL, NULL, 'Employ User updated at', 'employ', '2025-01-23 07:51:10', '2025-01-23 07:51:10'),
(73, NULL, NULL, 'Employ User updated at', 'employ', '2025-01-23 07:58:04', '2025-01-23 07:58:04'),
(74, NULL, NULL, 'Employ Hamza Khalid updated at', 'employ', '2025-01-24 05:54:15', '2025-01-24 05:54:15'),
(75, NULL, NULL, 'Employ Hamza Khalid updated at', 'employ', '2025-01-24 05:54:23', '2025-01-24 05:54:23'),
(76, NULL, NULL, 'Employ Hamza Khalid updated at', 'employ', '2025-01-24 05:54:35', '2025-01-24 05:54:35'),
(77, NULL, NULL, 'Employ Hamza Khalid updated at', 'employ', '2025-01-24 05:54:56', '2025-01-24 05:54:56'),
(78, NULL, NULL, 'Employ Hamza Khalid updated at', 'employ', '2025-01-24 06:03:41', '2025-01-24 06:03:41'),
(79, NULL, NULL, 'New quotation created at', 'quotation', '2025-02-04 06:11:57', '2025-02-04 06:11:57'),
(80, NULL, NULL, 'New quotation created at', 'quotation', '2025-02-04 06:19:40', '2025-02-04 06:19:40'),
(81, NULL, NULL, 'New employ created at', 'employ', '2025-02-04 10:30:23', '2025-02-04 10:30:23'),
(82, NULL, NULL, 'New quotation created at', 'quotation', '2025-02-07 05:39:14', '2025-02-07 05:39:14'),
(83, NULL, NULL, 'New quotation created at', 'quotation', '2025-02-07 05:46:25', '2025-02-07 05:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `employ_id` int(11) DEFAULT NULL,
  `equipmentname` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `usedby` varchar(255) DEFAULT NULL,
  `maintenanceteam` varchar(255) DEFAULT NULL,
  `technician` varchar(255) DEFAULT NULL,
  `usedinlocation` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `effectivedate` date DEFAULT NULL,
  `expirationdate` date DEFAULT NULL,
  `cost` varchar(25) DEFAULT NULL,
  `vendorreference` varchar(255) DEFAULT NULL,
  `maintenancefrequency` varchar(255) DEFAULT NULL,
  `maintenanceduration` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `userid`, `companyid`, `employ_id`, `equipmentname`, `category`, `usedby`, `maintenanceteam`, `technician`, `usedinlocation`, `description`, `vendor`, `effectivedate`, `expirationdate`, `cost`, `vendorreference`, `maintenancefrequency`, `maintenanceduration`, `created_at`, `updated_at`) VALUES
(2, NULL, 1, 2, 'test', 'dgsg', '1', 'External Maintenance', 'Local', 'uk', 'ok', '2', '2024-11-26', '2024-11-20', '242', 'dsgds', '5', '13', '2024-11-05 12:14:21', '2024-11-05 12:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` varchar(25) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
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
-- Table structure for table `haccp_default_checklist`
--

CREATE TABLE `haccp_default_checklist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `evidence_path` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `haccp_default_checklist`
--

INSERT INTO `haccp_default_checklist` (`id`, `userid`, `companyid`, `name`, `availability`, `evidence_path`, `remarks`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Admin', 'Available', 'defaultchecklists/lr2D1nK5oE9KPuhCGLOCxQxWEeRHuR6xaHbMl96V.jpg', '5', '2024-12-24 10:17:56', '2024-12-24 10:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `haccp_questionare_form`
--

CREATE TABLE `haccp_questionare_form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `inputBoxType` varchar(35) DEFAULT NULL,
  `inputType` varchar(35) DEFAULT NULL,
  `inputMultiple` varchar(35) DEFAULT NULL,
  `validationAttribute` varchar(35) DEFAULT NULL,
  `formname` varchar(35) DEFAULT NULL,
  `htmlcontent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inspections`
--

CREATE TABLE `inspections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `inspection` varchar(255) DEFAULT NULL,
  `rev_number` varchar(255) DEFAULT NULL,
  `discipline` varchar(255) DEFAULT NULL,
  `inspection_status` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `assignee_id` varchar(255) DEFAULT NULL,
  `last_inspector_id` varchar(255) DEFAULT NULL,
  `work_order_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inspections`
--

INSERT INTO `inspections` (`id`, `userid`, `companyid`, `inspection`, `rev_number`, `discipline`, `inspection_status`, `date`, `assignee_id`, `last_inspector_id`, `work_order_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Haris', '12', 'electrical', 'approved', '2024-10-23', 'Hamza', 'Qulzam', '23', '2024-10-24 06:00:49', '2024-10-24 06:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `quotation_invoice_id` int(11) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `subtotal` varchar(10) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `userid`, `companyid`, `quotation_invoice_id`, `item`, `quantity`, `price`, `discount`, `tax`, `subtotal`, `total`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, '1', 5, '33', '1', '1', '165', '165', '2024-10-22 09:44:39', '2024-10-22 09:44:39'),
(2, NULL, NULL, 2, '1', 5, '33', '1', '1', '165', '165', '2024-10-24 09:31:44', '2024-10-24 09:31:44'),
(10, NULL, NULL, 5, '3', 33, '2343', '1', '2', '77318.00', '78864.36', '2024-11-12 12:44:44', '2024-11-12 12:44:44'),
(13, NULL, NULL, 4, '3', 33, '2343', '1', '2', '77318.00', '78864.36', '2024-11-12 12:45:11', '2024-11-12 12:45:11'),
(14, NULL, NULL, 6, '3', 33, '2343', '45', '2', '77274.00', '78819.48', '2024-11-12 12:45:17', '2024-11-12 12:45:17'),
(22, NULL, NULL, 3, '3', 33, '2343', '1', '2', '77318.00', '78864.36', '2024-12-28 06:36:11', '2024-12-28 06:36:11'),
(23, NULL, NULL, 7, '3', 33, '2343', '2', '2', '77319', '77319', '2024-12-30 07:56:15', '2024-12-30 07:56:15'),
(24, NULL, NULL, 8, '3', 33, '2343', '5', '2', '77316', '77316', '2024-12-30 09:16:15', '2024-12-30 09:16:15'),
(25, NULL, NULL, 9, '3', 33, '2343', '4', '2', '77317', '77317', '2024-12-30 11:07:55', '2024-12-30 11:07:55'),
(26, NULL, NULL, 10, '3', 33, '2343', '3', '2', '77318', '77318', '2024-12-30 11:32:31', '2024-12-30 11:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `iso9000_default_checklist`
--

CREATE TABLE `iso9000_default_checklist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `evidence_path` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iso9000_default_checklist`
--

INSERT INTO `iso9000_default_checklist` (`id`, `userid`, `companyid`, `name`, `availability`, `evidence_path`, `remarks`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'User', 'Available', 'defaultchecklists/wKT9LXd6F1yZUI7N0MD5823VCCNW2mKZWR5xDRT4.jpg', '3', '2024-12-24 06:39:47', '2024-12-24 09:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `iso9000_questionare_form`
--

CREATE TABLE `iso9000_questionare_form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `inputBoxType` varchar(35) DEFAULT NULL,
  `inputType` varchar(35) DEFAULT NULL,
  `inputMultiple` varchar(35) DEFAULT NULL,
  `validationAttribute` varchar(35) DEFAULT NULL,
  `formname` varchar(35) DEFAULT NULL,
  `htmlcontent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iso14000_default_checklist`
--

CREATE TABLE `iso14000_default_checklist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `evidence_path` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iso14000_default_checklist`
--

INSERT INTO `iso14000_default_checklist` (`id`, `userid`, `companyid`, `name`, `availability`, `evidence_path`, `remarks`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Admin', 'Available', 'defaultchecklists/qxfP9U38jvn3Sc4tu47IgB4OhWrPzKEr6nsHyUwU.jpg', '3', '2024-12-24 06:39:16', '2024-12-24 09:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `iso14000_questionare_form`
--

CREATE TABLE `iso14000_questionare_form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `inputBoxType` varchar(35) DEFAULT NULL,
  `inputType` varchar(35) DEFAULT NULL,
  `inputMultiple` varchar(35) DEFAULT NULL,
  `validationAttribute` varchar(35) DEFAULT NULL,
  `formname` varchar(35) DEFAULT NULL,
  `htmlcontent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iso20000_default_checklist`
--

CREATE TABLE `iso20000_default_checklist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `evidence_path` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iso20000_default_checklist`
--

INSERT INTO `iso20000_default_checklist` (`id`, `userid`, `companyid`, `name`, `availability`, `evidence_path`, `remarks`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Admin', 'Available', 'defaultchecklists/vhbAcTJPUGCP2qlARl5PM4S9huJs6vV70F152h5r.jpg', '5', '2024-12-24 09:54:06', '2024-12-24 09:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `iso20000_questionare_form`
--

CREATE TABLE `iso20000_questionare_form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `inputBoxType` varchar(35) DEFAULT NULL,
  `inputType` varchar(35) DEFAULT NULL,
  `inputMultiple` varchar(35) DEFAULT NULL,
  `validationAttribute` varchar(35) DEFAULT NULL,
  `formname` varchar(35) DEFAULT NULL,
  `htmlcontent` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iso21000_default_checklist`
--

CREATE TABLE `iso21000_default_checklist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `evidence_path` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iso21000_default_checklist`
--

INSERT INTO `iso21000_default_checklist` (`id`, `userid`, `companyid`, `name`, `availability`, `evidence_path`, `remarks`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Hamza', 'Not Available', 'defaultchecklists/LhsZUmGCkShJR6WCncWCaKejgp3IVxChNibVDg4f.jpg', '3', '2024-11-21 07:48:26', '2024-12-24 07:21:00'),
(2, NULL, 2, 'User', 'Available', 'defaultchecklists/jOg86oDlMLuwPj4NnM52ZTAjJUt74vvCNk4qFwq6.png', '3', '2024-12-24 05:46:13', '2024-12-24 05:46:13'),
(4, NULL, 2, 'Admin', 'Not Available', 'defaultchecklists/jpiWiBbSavpJFEmPzJKKSIneodNdepyfkF0PZzmN.jpg', '10', '2024-12-24 06:02:39', '2024-12-24 06:02:39'),
(5, 1, 2, 'Rana Hamza', 'Available', 'defaultchecklists/otRWx4xpgXwwFeD2gZtgI3CNZ2Q4szGTPlhp8LoD.jpg', '3', '2024-12-24 06:06:43', '2024-12-24 06:06:43'),
(6, 1, 2, 'Rajpoot', 'Not Available', 'defaultchecklists/0VHeKoMo1SpFjVhZZrrwR6dKqwOh6D2KncTUqTA2.jpg', '5', '2024-12-24 06:27:18', '2024-12-24 06:27:18'),
(7, 1, 2, 'User', 'Not Available', 'defaultchecklists/AGjewfCKLQTIsDiiyemaf9RKqENUay7MahvOnIjN.jpg', '10', '2024-12-24 07:05:54', '2024-12-24 07:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `iso21000_questionare_form`
--

CREATE TABLE `iso21000_questionare_form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `inputBoxType` varchar(35) DEFAULT NULL,
  `inputType` varchar(35) DEFAULT NULL,
  `inputMultiple` varchar(35) DEFAULT NULL,
  `validationAttribute` varchar(35) DEFAULT NULL,
  `formname` varchar(35) DEFAULT NULL,
  `htmlcontent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iso21000_questionare_form`
--

INSERT INTO `iso21000_questionare_form` (`id`, `userid`, `companyid`, `label`, `inputBoxType`, `inputType`, `inputMultiple`, `validationAttribute`, `formname`, `htmlcontent`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1732176822940-0\",\"access\":false,\"subtype\":\"date\"},{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1732176823200-0\",\"access\":false,\"subtype\":\"date\"}]', '2024-11-21 08:13:45', '2024-11-21 08:13:45'),
(2, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1732176822940-0\",\"access\":false,\"subtype\":\"date\"},{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1732176823200-0\",\"access\":false,\"subtype\":\"date\"}]', '2024-11-21 08:13:46', '2024-11-21 08:13:46'),
(3, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1732176822940-0\",\"access\":false,\"subtype\":\"date\"},{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1732176823200-0\",\"access\":false,\"subtype\":\"date\"}]', '2024-11-21 08:13:46', '2024-11-21 08:13:46'),
(4, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1732176822940-0\",\"access\":false,\"subtype\":\"date\"},{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1732176823200-0\",\"access\":false,\"subtype\":\"date\"}]', '2024-11-21 08:13:50', '2024-11-21 08:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `iso22000_default_checklist`
--

CREATE TABLE `iso22000_default_checklist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `evidence_path` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iso22000_default_checklist`
--

INSERT INTO `iso22000_default_checklist` (`id`, `userid`, `companyid`, `name`, `availability`, `evidence_path`, `remarks`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Admin', 'Available', 'defaultchecklists/0SMN2MmEVMd2iLC8UagLE4q4oBnzrGN1Bz9Mx07o.jpg', '12', '2024-12-24 06:40:31', '2024-12-24 09:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `iso22000_questionare_form`
--

CREATE TABLE `iso22000_questionare_form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `inputBoxType` varchar(35) DEFAULT NULL,
  `inputType` varchar(35) DEFAULT NULL,
  `inputMultiple` varchar(35) DEFAULT NULL,
  `validationAttribute` varchar(35) DEFAULT NULL,
  `formname` varchar(35) DEFAULT NULL,
  `htmlcontent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iso37000_default_checklist`
--

CREATE TABLE `iso37000_default_checklist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `evidence_path` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iso37000_default_checklist`
--

INSERT INTO `iso37000_default_checklist` (`id`, `userid`, `companyid`, `name`, `availability`, `evidence_path`, `remarks`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Admin', 'Not Available', 'defaultchecklists/gmr9uV5WwB6cXTr95iO3BsNHMgDKwU1PQ80BY8SO.jpg', '1', '2024-12-24 09:50:08', '2024-12-24 09:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `iso37000_questionare_form`
--

CREATE TABLE `iso37000_questionare_form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `inputBoxType` varchar(35) DEFAULT NULL,
  `inputType` varchar(35) DEFAULT NULL,
  `inputMultiple` varchar(35) DEFAULT NULL,
  `validationAttribute` varchar(35) DEFAULT NULL,
  `formname` varchar(35) DEFAULT NULL,
  `htmlcontent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iso45000_default_checklist`
--

CREATE TABLE `iso45000_default_checklist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `evidence_path` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iso45000_default_checklist`
--

INSERT INTO `iso45000_default_checklist` (`id`, `userid`, `companyid`, `name`, `availability`, `evidence_path`, `remarks`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Admin', 'Available', 'defaultchecklists/EVo5iH5zNq06u92i9XfQzPkPsM42kmz0BUUa19Mc.jpg', '3', '2024-12-24 06:40:11', '2024-12-24 09:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `iso45000_questionare_form`
--

CREATE TABLE `iso45000_questionare_form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `inputBoxType` varchar(35) DEFAULT NULL,
  `inputType` varchar(35) DEFAULT NULL,
  `inputMultiple` varchar(35) DEFAULT NULL,
  `validationAttribute` varchar(35) DEFAULT NULL,
  `formname` varchar(35) DEFAULT NULL,
  `htmlcontent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iso50000_default_checklist`
--

CREATE TABLE `iso50000_default_checklist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `evidence_path` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iso50000_default_checklist`
--

INSERT INTO `iso50000_default_checklist` (`id`, `userid`, `companyid`, `name`, `availability`, `evidence_path`, `remarks`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Hamza', 'Available', 'defaultchecklists/y41scVF5urTudEddYrdPDSR2RkNJdkCZI8zkI8fY.jpg', '10', '2024-12-24 09:57:15', '2024-12-24 10:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `iso50000_questionare_form`
--

CREATE TABLE `iso50000_questionare_form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `inputBoxType` varchar(35) DEFAULT NULL,
  `inputType` varchar(35) DEFAULT NULL,
  `inputMultiple` varchar(35) DEFAULT NULL,
  `validationAttribute` varchar(35) DEFAULT NULL,
  `formname` varchar(35) DEFAULT NULL,
  `htmlcontent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iso50000_questionare_form`
--

INSERT INTO `iso50000_questionare_form` (`id`, `userid`, `companyid`, `label`, `inputBoxType`, `inputType`, `inputMultiple`, `validationAttribute`, `formname`, `htmlcontent`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"type\":\"number\",\"required\":false,\"label\":\"Number\",\"className\":\"form-control\",\"name\":\"number-1735025351569-0\",\"access\":false,\"subtype\":\"number\"},{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"Header\",\"access\":false},{\"type\":\"checkbox-group\",\"required\":false,\"label\":\"Checkbox Group\",\"toggle\":false,\"inline\":false,\"name\":\"checkbox-group-1735025352214-0\",\"access\":false,\"other\":false,\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]}]', '2024-12-24 07:29:13', '2024-12-24 07:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `iso55000_default_checklist`
--

CREATE TABLE `iso55000_default_checklist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `evidence_path` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iso55000_default_checklist`
--

INSERT INTO `iso55000_default_checklist` (`id`, `userid`, `companyid`, `name`, `availability`, `evidence_path`, `remarks`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Hamza', 'Not Available', 'defaultchecklists/jhKA3iCod8LN4o5TURvsm7O70ut78qHVxHWIMjDW.jpg', '3', '2024-12-24 10:05:04', '2024-12-24 10:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `iso55001_questionare_form`
--

CREATE TABLE `iso55001_questionare_form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `inputBoxType` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `inputMultiple` varchar(255) DEFAULT NULL,
  `validationAttribute` varchar(255) DEFAULT NULL,
  `formname` varchar(255) DEFAULT NULL,
  `htmlcontent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iso55001_questionare_form`
--

INSERT INTO `iso55001_questionare_form` (`id`, `userid`, `companyid`, `label`, `inputBoxType`, `inputType`, `inputMultiple`, `validationAttribute`, `formname`, `htmlcontent`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"Header\",\"access\":false},{\"type\":\"hidden\",\"name\":\"hidden-1735025328342-0\",\"access\":false},{\"type\":\"date\",\"required\":false,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1735025329098-0\",\"access\":false,\"subtype\":\"date\"}]', '2024-12-24 07:28:54', '2024-12-24 07:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `iso_auditors`
--

CREATE TABLE `iso_auditors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `iso_name` text DEFAULT NULL,
  `employ_id` int(11) DEFAULT NULL,
  `employ_type` varchar(255) NOT NULL DEFAULT 'employee',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `meeting_id` int(11) DEFAULT NULL,
  `issue` varchar(255) DEFAULT NULL,
  `raised_by` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `responsible` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `userid`, `companyid`, `meeting_id`, `issue`, `raised_by`, `action`, `from_date`, `to_date`, `responsible`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, 1, 'test', 'me', 'on', '2024-10-01', '2024-10-03', 'haris', '2024-11-21 08:38:18', '2024-11-21 08:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `issue_assets`
--

CREATE TABLE `issue_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `issue_name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `discipline` varchar(255) DEFAULT NULL,
  `archived` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `supported_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issue_assets`
--

INSERT INTO `issue_assets` (`id`, `userid`, `companyid`, `issue_name`, `code`, `discipline`, `archived`, `project`, `work_order`, `supported_date`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'new', '1122', 'ready', 'no', 'laravel', '11', '2024-11-13', '2024-11-05 10:57:25', '2024-11-05 10:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `journal_entries`
--

CREATE TABLE `journal_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `journal_id` int(11) NOT NULL DEFAULT 0,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journal_entries`
--

INSERT INTO `journal_entries` (`id`, `userid`, `companyid`, `date`, `reference`, `description`, `journal_id`, `invoice_id`, `created_by`, `created_at`, `updated_at`) VALUES
(37, NULL, NULL, '2024-12-30', 'Customer Invoice', 'Payment of customer Invoice', 10, NULL, 1, '2024-12-30 11:34:15', '2024-12-30 11:34:15'),
(38, NULL, NULL, '2024-12-30', 'Customer Invoice', 'Payment of customer Invoice', 10, NULL, 1, '2024-12-30 11:47:06', '2024-12-30 11:47:06'),
(39, NULL, NULL, '2024-12-31', 'Customer Invoice', 'Payment of customer Invoice', 8, NULL, 1, '2024-12-31 08:40:29', '2024-12-31 08:40:29'),
(40, NULL, NULL, '2024-12-04', 'Customer Invoice', 'Payment of customer Invoice', 11, NULL, 1, '2024-12-31 18:28:45', '2024-12-31 18:28:45'),
(41, NULL, NULL, '2024-12-18', 'Customer Invoice', 'Payment of customer Invoice', 10, NULL, 1, '2024-12-31 18:45:21', '2024-12-31 18:45:21'),
(42, NULL, NULL, '2024-12-31', 'Customer Invoice', 'Payment of customer Invoice', 10, NULL, 1, '2024-12-31 18:46:45', '2024-12-31 18:46:45'),
(43, NULL, NULL, '2024-12-31', 'Customer Invoice', 'Payment of customer Invoice', 10, NULL, 1, '2024-12-31 18:50:35', '2024-12-31 18:50:35'),
(44, NULL, NULL, '2024-12-31', 'Customer Invoice', 'Payment of customer Invoice', 10, NULL, 1, '2024-12-31 18:51:44', '2024-12-31 18:51:44'),
(45, NULL, NULL, '2024-12-31', 'Customer Invoice', 'Payment of customer Invoice', 10, NULL, 1, '2024-12-31 18:53:48', '2024-12-31 18:53:48'),
(46, NULL, NULL, '2024-12-19', 'Customer Invoice', 'Payment of customer Invoice', 10, NULL, 1, '2024-12-31 18:55:40', '2024-12-31 18:55:40'),
(47, NULL, NULL, '2025-01-01', 'Customer Invoice', 'Payment of customer Invoice', 10, NULL, 1, '2024-12-31 19:36:14', '2024-12-31 19:36:14'),
(48, NULL, NULL, '2025-01-01', 'Customer Invoice', 'Payment of customer Invoice', 10, NULL, 1, '2024-12-31 19:38:01', '2024-12-31 19:38:01'),
(49, NULL, NULL, '2025-01-01', 'Customer Invoice', 'Payment of customer Invoice', 10, NULL, 1, '2024-12-31 19:38:44', '2024-12-31 19:38:44'),
(50, NULL, NULL, '2025-01-01', 'Customer Invoice', 'Payment of customer Invoice', 8, NULL, 1, '2024-12-31 19:40:30', '2024-12-31 19:40:30'),
(51, NULL, NULL, '2025-01-08', 'Customer Invoice', 'Payment of customer Invoice', 8, NULL, 1, '2024-12-31 19:47:37', '2024-12-31 19:47:37'),
(52, NULL, NULL, '2025-01-01', 'Customer Invoice', 'Payment of customer Invoice', 10, NULL, 1, '2024-12-31 19:58:31', '2024-12-31 19:58:31'),
(53, NULL, NULL, '2025-01-02', 'Customer Invoice', 'Payment of customer Invoice', 8, NULL, 1, '2024-12-31 20:09:14', '2024-12-31 20:09:14'),
(54, NULL, NULL, '2024-12-31', 'Customer Invoice', 'Payment of customer Invoice', 8, NULL, 1, '2024-12-31 20:14:27', '2024-12-31 20:14:27'),
(55, NULL, NULL, '2025-01-02', 'Customer Invoice', 'Payment of customer Invoice', 8, NULL, 1, '2024-12-31 20:16:11', '2024-12-31 20:16:11'),
(56, NULL, NULL, '2025-01-02', 'Customer Invoice', 'Payment of customer Invoice', 8, NULL, 1, '2024-12-31 20:18:22', '2024-12-31 20:18:22'),
(57, NULL, NULL, '2025-01-01', 'Customer Invoice', 'Payment of customer Invoice', 8, NULL, 1, '2024-12-31 20:24:09', '2024-12-31 20:24:09'),
(58, NULL, NULL, '2025-01-01', NULL, NULL, 9, NULL, 1, '2025-01-01 07:40:08', '2025-01-01 07:40:08'),
(59, NULL, NULL, '2025-01-09', 'Customer Invoice', 'Payment of customer Invoice', 8, NULL, 1, '2025-01-06 09:29:06', '2025-01-06 09:29:06'),
(60, NULL, NULL, '2025-01-09', 'Customer Invoice', 'Payment of customer Invoice', 9, NULL, 1, '2025-01-08 10:31:59', '2025-01-08 10:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `journal_items`
--

CREATE TABLE `journal_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `journal` int(11) NOT NULL DEFAULT 0,
  `account` int(11) DEFAULT 0,
  `description` text DEFAULT NULL,
  `debit` varchar(25) NOT NULL DEFAULT '0',
  `credit` varchar(25) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journal_items`
--

INSERT INTO `journal_items` (`id`, `userid`, `companyid`, `journal`, `account`, `description`, `debit`, `credit`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 1, NULL, '1224200', '0', '2024-11-07 09:58:03', '2024-11-07 09:58:03'),
(2, NULL, NULL, 1, 1, NULL, '0', '1224200', '2024-11-07 09:58:03', '2024-11-07 09:58:03'),
(3, NULL, NULL, 2, 2, NULL, '-72660', '0', '2024-11-07 09:59:40', '2024-11-07 09:59:40'),
(4, NULL, NULL, 2, 2, NULL, '0', '-72660', '2024-11-07 09:59:40', '2024-11-07 09:59:40'),
(5, NULL, NULL, 3, 1, NULL, '-1139', '0', '2024-11-11 06:28:01', '2024-11-11 06:28:01'),
(6, NULL, NULL, 3, 1, NULL, '0', '-1139', '2024-11-11 06:28:01', '2024-11-11 06:28:01'),
(7, NULL, NULL, 4, 2, NULL, '12242', '0', '2024-11-11 06:29:37', '2024-11-11 06:29:37'),
(8, NULL, NULL, 4, 2, NULL, '0', '12242', '2024-11-11 06:29:37', '2024-11-11 06:29:37'),
(9, NULL, NULL, 6, 1, NULL, '342.99', '0', '2024-12-20 05:56:44', '2024-12-20 05:56:44'),
(10, NULL, NULL, 6, 1, NULL, '0', '342.99', '2024-12-20 05:56:44', '2024-12-20 05:56:44'),
(11, NULL, NULL, 7, 2, NULL, '85.7475', '0', '2024-12-20 10:06:58', '2024-12-20 10:06:58'),
(12, NULL, NULL, 7, 2, NULL, '0', '85.7475', '2024-12-20 10:06:58', '2024-12-20 10:06:58'),
(13, NULL, NULL, 8, 2, NULL, '35.7', '0', '2024-12-20 10:10:23', '2024-12-20 10:10:23'),
(14, NULL, NULL, 8, 2, NULL, '0', '35.7', '2024-12-20 10:10:23', '2024-12-20 10:10:23'),
(15, NULL, NULL, 9, 2, NULL, '35.7', '0', '2024-12-20 10:12:44', '2024-12-20 10:12:44'),
(16, NULL, NULL, 9, 2, NULL, '0', '35.7', '2024-12-20 10:12:44', '2024-12-20 10:12:44'),
(17, NULL, NULL, 10, 2, NULL, '35.7', '0', '2024-12-20 10:16:42', '2024-12-20 10:16:42'),
(18, NULL, NULL, 10, 2, NULL, '0', '35.7', '2024-12-20 10:16:42', '2024-12-20 10:16:42'),
(19, NULL, NULL, 11, 2, NULL, '35.7', '0', '2024-12-20 10:19:33', '2024-12-20 10:19:33'),
(20, NULL, NULL, 11, 2, NULL, '0', '35.7', '2024-12-20 10:19:33', '2024-12-20 10:19:33'),
(21, NULL, NULL, 12, 1, NULL, '35.7', '0', '2024-12-20 11:11:10', '2024-12-20 11:11:10'),
(22, NULL, NULL, 12, 1, NULL, '0', '35.7', '2024-12-20 11:11:10', '2024-12-20 11:11:10'),
(23, NULL, NULL, 13, 1, NULL, '35.7', '0', '2024-12-20 11:16:56', '2024-12-20 11:16:56'),
(24, NULL, NULL, 13, 1, NULL, '0', '35.7', '2024-12-20 11:16:56', '2024-12-20 11:16:56'),
(25, NULL, NULL, 14, 1, NULL, '8.925', '0', '2024-12-20 11:19:12', '2024-12-20 11:19:12'),
(26, NULL, NULL, 14, 1, NULL, '0', '8.925', '2024-12-20 11:19:12', '2024-12-20 11:19:12'),
(27, NULL, NULL, 15, 1, NULL, '35.7', '0', '2024-12-20 11:24:09', '2024-12-20 11:24:09'),
(28, NULL, NULL, 15, 1, NULL, '0', '35.7', '2024-12-20 11:24:09', '2024-12-20 11:24:09'),
(29, NULL, NULL, 16, 2, NULL, '1224', '0', '2024-12-28 05:22:01', '2024-12-28 05:22:01'),
(30, NULL, NULL, 16, 2, NULL, '0', '1224', '2024-12-28 05:22:01', '2024-12-28 05:22:01'),
(31, NULL, NULL, 17, 1, NULL, '0', '0', '2024-12-28 05:27:27', '2024-12-28 05:27:27'),
(32, NULL, NULL, 17, 1, NULL, '0', '0', '2024-12-28 05:27:27', '2024-12-28 05:27:27'),
(33, NULL, NULL, 18, 1, NULL, '0', '0', '2024-12-28 06:40:00', '2024-12-28 06:40:00'),
(34, NULL, NULL, 18, 1, NULL, '0', '0', '2024-12-28 06:40:00', '2024-12-28 06:40:00'),
(35, NULL, NULL, 19, 1, NULL, '0', '0', '2024-12-30 06:46:09', '2024-12-30 06:46:09'),
(36, NULL, NULL, 19, 1, NULL, '0', '0', '2024-12-30 06:46:09', '2024-12-30 06:46:09'),
(37, NULL, NULL, 20, 1, NULL, '0', '0', '2024-12-30 06:57:05', '2024-12-30 06:57:05'),
(38, NULL, NULL, 20, 1, NULL, '0', '0', '2024-12-30 06:57:05', '2024-12-30 06:57:05'),
(39, NULL, NULL, 21, 1, NULL, '0', '0', '2024-12-30 07:09:57', '2024-12-30 07:09:57'),
(40, NULL, NULL, 21, 1, NULL, '0', '0', '2024-12-30 07:09:57', '2024-12-30 07:09:57'),
(41, NULL, NULL, 22, 3, NULL, '237.66', '0', '2024-12-30 07:43:11', '2024-12-30 07:43:11'),
(42, NULL, NULL, 22, 3, NULL, '0', '237.66', '2024-12-30 07:43:11', '2024-12-30 07:43:11'),
(43, NULL, NULL, 23, 3, NULL, '-0.34', '0', '2024-12-30 07:44:00', '2024-12-30 07:44:00'),
(44, NULL, NULL, 23, 3, NULL, '0', '-0.34', '2024-12-30 07:44:00', '2024-12-30 07:44:00'),
(45, NULL, NULL, 24, 3, 'jj', '123', '123', '2024-12-30 07:46:20', '2024-12-30 07:46:20'),
(46, NULL, NULL, 25, 5, NULL, '237.66', '0', '2024-12-30 07:52:48', '2024-12-30 07:52:48'),
(47, NULL, NULL, 25, 5, NULL, '0', '237.66', '2024-12-30 07:52:48', '2024-12-30 07:52:48'),
(48, NULL, NULL, 26, 4, NULL, '0', '0', '2024-12-30 07:58:46', '2024-12-30 07:58:46'),
(49, NULL, NULL, 26, 4, NULL, '0', '0', '2024-12-30 07:58:46', '2024-12-30 07:58:46'),
(50, NULL, NULL, 27, 5, NULL, '78863.34', '0', '2024-12-30 09:17:37', '2024-12-30 09:17:37'),
(51, NULL, NULL, 27, 5, NULL, '0', '78863.34', '2024-12-30 09:17:37', '2024-12-30 09:17:37'),
(52, NULL, NULL, 28, 3, NULL, '0', '0', '2024-12-30 11:07:02', '2024-12-30 11:07:02'),
(53, NULL, NULL, 28, 3, NULL, '0', '0', '2024-12-30 11:07:02', '2024-12-30 11:07:02'),
(54, NULL, NULL, 29, 6, NULL, '0', '0', '2024-12-30 11:08:42', '2024-12-30 11:08:42'),
(55, NULL, NULL, 29, 6, NULL, '0', '0', '2024-12-30 11:08:42', '2024-12-30 11:08:42'),
(56, NULL, NULL, 30, 6, 'gg', '50000', '50000', '2024-12-30 11:13:27', '2024-12-30 11:13:27'),
(57, NULL, NULL, 31, 6, NULL, '0', '0', '2024-12-30 11:14:53', '2024-12-30 11:14:53'),
(58, NULL, NULL, 31, 6, NULL, '0', '0', '2024-12-30 11:14:53', '2024-12-30 11:14:53'),
(59, NULL, NULL, 32, 6, NULL, '0', '0', '2024-12-30 11:16:12', '2024-12-30 11:16:12'),
(60, NULL, NULL, 32, 6, NULL, '0', '0', '2024-12-30 11:16:12', '2024-12-30 11:16:12'),
(61, NULL, NULL, 33, 5, 'ok', '10000', '10000', '2024-12-30 11:22:51', '2024-12-30 11:22:51'),
(62, NULL, NULL, 34, 3, 'gg', '20000', '20000', '2024-12-30 11:23:19', '2024-12-30 11:23:19'),
(63, NULL, NULL, 35, 4, 'hh', '30000', '30000', '2024-12-30 11:23:57', '2024-12-30 11:23:57'),
(64, NULL, NULL, 36, 6, 'ss', '40000', '40000', '2024-12-30 11:24:42', '2024-12-30 11:24:42'),
(65, NULL, NULL, 37, 10, NULL, '339.66', '0', '2024-12-30 11:34:15', '2024-12-30 11:34:15'),
(66, NULL, NULL, 37, 10, NULL, '0', '339.66', '2024-12-30 11:34:15', '2024-12-30 11:34:15'),
(67, NULL, NULL, 38, 10, NULL, '342.99', '0', '2024-12-30 11:47:06', '2024-12-30 11:47:06'),
(68, NULL, NULL, 38, 10, NULL, '0', '342.99', '2024-12-30 11:47:06', '2024-12-30 11:47:06'),
(69, NULL, NULL, 39, 8, NULL, '0', '0', '2024-12-31 08:40:29', '2024-12-31 08:40:29'),
(70, NULL, NULL, 39, 8, NULL, '0', '0', '2024-12-31 08:40:29', '2024-12-31 08:40:29'),
(71, NULL, NULL, 40, 11, NULL, '2416.96', '0', '2024-12-31 18:28:45', '2024-12-31 18:28:45'),
(72, NULL, NULL, 40, 11, NULL, '0', '2416.96', '2024-12-31 18:28:45', '2024-12-31 18:28:45'),
(73, NULL, NULL, 41, 10, NULL, '604.24', '0', '2024-12-31 18:45:21', '2024-12-31 18:45:21'),
(74, NULL, NULL, 41, 10, NULL, '0', '604.24', '2024-12-31 18:45:21', '2024-12-31 18:45:21'),
(75, NULL, NULL, 42, 10, NULL, '1812.96', '0', '2024-12-31 18:46:45', '2024-12-31 18:46:45'),
(76, NULL, NULL, 42, 10, NULL, '0', '1812.96', '2024-12-31 18:46:45', '2024-12-31 18:46:45'),
(77, NULL, NULL, 43, 10, NULL, '-0.039999999999964', '0', '2024-12-31 18:50:35', '2024-12-31 18:50:35'),
(78, NULL, NULL, 43, 10, NULL, '0', '-0.039999999999964', '2024-12-31 18:50:35', '2024-12-31 18:50:35'),
(79, NULL, NULL, 44, 10, NULL, '1812.96', '0', '2024-12-31 18:51:44', '2024-12-31 18:51:44'),
(80, NULL, NULL, 44, 10, NULL, '0', '1812.96', '2024-12-31 18:51:44', '2024-12-31 18:51:44'),
(81, NULL, NULL, 45, 10, NULL, '1812.96', '0', '2024-12-31 18:53:48', '2024-12-31 18:53:48'),
(82, NULL, NULL, 45, 10, NULL, '0', '1812.96', '2024-12-31 18:53:48', '2024-12-31 18:53:48'),
(83, NULL, NULL, 46, 10, NULL, '2416.96', '0', '2024-12-31 18:55:40', '2024-12-31 18:55:40'),
(84, NULL, NULL, 46, 10, NULL, '0', '2416.96', '2024-12-31 18:55:40', '2024-12-31 18:55:40'),
(85, NULL, NULL, 47, 10, NULL, '2416.96', '0', '2024-12-31 19:36:14', '2024-12-31 19:36:14'),
(86, NULL, NULL, 47, 10, NULL, '0', '2416.96', '2024-12-31 19:36:14', '2024-12-31 19:36:14'),
(87, NULL, NULL, 48, 10, NULL, '2416.96', '0', '2024-12-31 19:38:01', '2024-12-31 19:38:01'),
(88, NULL, NULL, 48, 10, NULL, '0', '2416.96', '2024-12-31 19:38:01', '2024-12-31 19:38:01'),
(89, NULL, NULL, 49, 10, NULL, '2416.96', '0', '2024-12-31 19:38:44', '2024-12-31 19:38:44'),
(90, NULL, NULL, 49, 10, NULL, '0', '2416.96', '2024-12-31 19:38:44', '2024-12-31 19:38:44'),
(91, NULL, NULL, 50, 8, NULL, '0', '0', '2024-12-31 19:40:30', '2024-12-31 19:40:30'),
(92, NULL, NULL, 50, 8, NULL, '0', '0', '2024-12-31 19:40:30', '2024-12-31 19:40:30'),
(93, NULL, NULL, 51, 8, NULL, '0', '0', '2024-12-31 19:47:37', '2024-12-31 19:47:37'),
(94, NULL, NULL, 51, 8, NULL, '0', '0', '2024-12-31 19:47:37', '2024-12-31 19:47:37'),
(95, NULL, NULL, 52, 10, NULL, '0', '0', '2024-12-31 19:58:31', '2024-12-31 19:58:31'),
(96, NULL, NULL, 52, 10, NULL, '0', '0', '2024-12-31 19:58:31', '2024-12-31 19:58:31'),
(97, NULL, NULL, 53, 8, NULL, '0', '0', '2024-12-31 20:09:14', '2024-12-31 20:09:14'),
(98, NULL, NULL, 53, 8, NULL, '0', '0', '2024-12-31 20:09:14', '2024-12-31 20:09:14'),
(99, NULL, NULL, 54, 8, NULL, '-0.039999999999964', '0', '2024-12-31 20:14:27', '2024-12-31 20:14:27'),
(100, NULL, NULL, 54, 8, NULL, '0', '-0.039999999999964', '2024-12-31 20:14:27', '2024-12-31 20:14:27'),
(101, NULL, NULL, 55, 8, NULL, '0', '0', '2024-12-31 20:16:11', '2024-12-31 20:16:11'),
(102, NULL, NULL, 55, 8, NULL, '0', '0', '2024-12-31 20:16:11', '2024-12-31 20:16:11'),
(103, NULL, NULL, 56, 8, NULL, '0', '0', '2024-12-31 20:18:22', '2024-12-31 20:18:22'),
(104, NULL, NULL, 56, 8, NULL, '0', '0', '2024-12-31 20:18:22', '2024-12-31 20:18:22'),
(105, NULL, NULL, 57, 8, NULL, '2416.96', '0', '2024-12-31 20:24:09', '2024-12-31 20:24:09'),
(106, NULL, NULL, 57, 8, NULL, '0', '2416.96', '2024-12-31 20:24:09', '2024-12-31 20:24:09'),
(107, NULL, NULL, 58, NULL, NULL, '200', '200', '2025-01-01 07:40:08', '2025-01-01 07:40:08'),
(108, NULL, NULL, 59, 8, NULL, '0', '0', '2025-01-06 09:29:06', '2025-01-06 09:29:06'),
(109, NULL, NULL, 59, 8, NULL, '0', '0', '2025-01-06 09:29:06', '2025-01-06 09:29:06'),
(110, NULL, NULL, 60, 9, NULL, '23.62735', '0', '2025-01-08 10:31:59', '2025-01-08 10:31:59'),
(111, NULL, NULL, 60, 9, NULL, '0', '23.62735', '2025-01-08 10:31:59', '2025-01-08 10:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `customer_id` text DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `customer_name` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `closing_date` date DEFAULT NULL,
  `probability` varchar(255) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `sale_person` varchar(255) DEFAULT NULL,
  `standard` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `job_position` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `campaign` varchar(255) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `referred_by` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `sales_team` varchar(255) DEFAULT NULL,
  `days_assigned` int(11) DEFAULT NULL,
  `days_closed` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `userid`, `companyid`, `customer_id`, `mobile`, `customer_name`, `status`, `closing_date`, `probability`, `tags`, `sale_person`, `standard`, `notes`, `company_name`, `job_position`, `address`, `phone_number`, `website`, `campaign`, `medium`, `source`, `referred_by`, `company`, `sales_team`, `days_assigned`, `days_closed`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, '1', '97193346547477', NULL, 'NEW', '2024-11-13', '23', '[{\"value\":\"dgfd\"},{\"value\":\"fh\"},{\"value\":\"h\"},{\"value\":\"hf\"}]', 'Rana Hamza', '[\"ISO-9000\",\"ISO-14000\",\"ISO-45000\",\"Machine Inspection\"]', NULL, 'oppo', 'developer', '02', '97193465475676', 'http://127.0.0.1:8000/pipelines/leads-edit/43', 'dgfdg', 'on', 'off', 'ok', 'vivoooooooooo', 'tested', 2, 3, '2024-11-06 07:19:32', '2024-11-18 08:40:19'),
(3, NULL, NULL, '1', '03011226041', NULL, 'NEW', '2024-11-13', '1', '[{\"value\":\"dsf\"},{\"value\":\"s\"}]', 'Rana Hamza', 'ISO-9000,ISO-14000,ISO-45000', NULL, 'oppo', 'developer', '02', NULL, 'http://127.0.0.1:8000/pipelines/leads-edit/43', 'haris', 'on', 'off', 'ok', 'vivoooooooooo', 'tested', 2, 2, '2024-11-18 08:39:05', '2024-11-18 08:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `machineinspection_default_checklist`
--

CREATE TABLE `machineinspection_default_checklist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `evidence_path` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `machineinspection_default_checklist`
--

INSERT INTO `machineinspection_default_checklist` (`id`, `userid`, `companyid`, `name`, `availability`, `evidence_path`, `remarks`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Admin', 'Available', 'defaultchecklists/Q7TZPSUPJxIMwhw3AsURQyjXoniW5aXLWoZXAP9C.jpg', '7', '2024-12-24 10:07:54', '2024-12-24 10:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `machine_inspection_questionare_form`
--

CREATE TABLE `machine_inspection_questionare_form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `inputBoxType` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `inputMultiple` varchar(255) DEFAULT NULL,
  `validationAttribute` varchar(255) DEFAULT NULL,
  `formname` varchar(255) DEFAULT NULL,
  `htmlcontent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mandays_1400`
--

CREATE TABLE `mandays_1400` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `mandays` varchar(25) DEFAULT NULL,
  `personnels` varchar(25) DEFAULT NULL,
  `risk` varchar(30) DEFAULT NULL,
  `serv1price` varchar(25) DEFAULT NULL,
  `serv2price` varchar(25) DEFAULT NULL,
  `stage1stage2price` varchar(25) DEFAULT NULL,
  `subtotal` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mandays_9000`
--

CREATE TABLE `mandays_9000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `mandays` varchar(25) DEFAULT NULL,
  `personnels` varchar(25) DEFAULT NULL,
  `serv1price` varchar(25) DEFAULT NULL,
  `serv2price` varchar(25) DEFAULT NULL,
  `stage1stage2price` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mandays_20000`
--

CREATE TABLE `mandays_20000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `mandays` varchar(25) DEFAULT NULL,
  `annualmandays` varchar(25) DEFAULT NULL,
  `personnels` varchar(25) DEFAULT NULL,
  `serv1price` varchar(25) DEFAULT NULL,
  `serv2price` varchar(25) DEFAULT NULL,
  `stage1stage2price` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mandays_22000`
--

CREATE TABLE `mandays_22000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `mandays` varchar(25) DEFAULT NULL,
  `personnels` varchar(25) DEFAULT NULL,
  `serv1price` varchar(25) DEFAULT NULL,
  `serv2price` varchar(25) DEFAULT NULL,
  `stage1stage2price` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mandays_37000`
--

CREATE TABLE `mandays_37000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `mandays` varchar(25) DEFAULT NULL,
  `personnels` varchar(25) DEFAULT NULL,
  `serv1price` varchar(25) DEFAULT NULL,
  `serv2price` varchar(25) DEFAULT NULL,
  `stage1stage2price` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mandays_45000`
--

CREATE TABLE `mandays_45000` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `mandays` varchar(25) DEFAULT NULL,
  `personnels` varchar(25) DEFAULT NULL,
  `risk` varchar(30) DEFAULT NULL,
  `serv1price` varchar(25) DEFAULT NULL,
  `serv2price` varchar(25) DEFAULT NULL,
  `stage1stage2price` varchar(25) DEFAULT NULL,
  `subtotal` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `referenceNumber` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `quotation_id` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `meeting_link` varchar(255) NOT NULL,
  `employee` varchar(255) DEFAULT NULL,
  `attendies` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `userid`, `companyid`, `referenceNumber`, `title`, `quotation_id`, `start_date`, `start_time`, `end_time`, `customer`, `project`, `location`, `meeting_link`, `employee`, `attendies`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '#Ref0001', 'laravel php', '0', '2024-10-30', '01:00:00', '03:00:00', '1', 'laravel-as', 'vehari', 'https://mgmt.bbtech', '[\"Hamza Khalid Rana\"]', NULL, 'ok', '2024-10-30 09:00:23', '2024-11-21 08:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_notes`
--

CREATE TABLE `meeting_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `minutes` text DEFAULT NULL,
  `attended` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '#',
  `icon` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `url`, `icon`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', 'fa-dashboard', NULL, 1, '2025-01-15 07:49:23', '2025-01-16 05:32:13'),
(5, 'Companies', 'company.index', 'fa-building', NULL, 3, '2025-01-15 07:49:23', '2025-01-31 07:02:45'),
(6, 'Employees', '', 'fa-users', NULL, 4, '2025-01-15 07:49:23', '2025-01-16 05:32:50'),
(7, 'Employee List', 'employees.index', '', 6, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(8, 'Departments', 'departments.index', '', 6, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(9, 'Contracts', 'contracts', '', 6, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(10, 'Equipments', 'equipment.index', '', 6, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(11, 'Badges', 'badges.index', '', 6, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(12, 'Payroll', '', 'fa-th-large', NULL, 5, '2025-01-15 07:49:23', '2025-01-16 05:32:59'),
(13, 'Work Entries', 'workentries.index', '', 12, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(14, 'Payslips', 'payslips', '', 12, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(15, 'Sales', '', 'fa-universal-access', NULL, 6, '2025-01-15 07:49:23', '2025-01-16 05:33:09'),
(16, 'Orders', 'order.list', '', 15, 24, '2025-01-15 07:49:23', '2025-02-07 06:04:04'),
(17, 'Products', 'product.index', '', 15, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(18, 'Accounting', '', 'fa-calculator', NULL, 7, '2025-01-15 07:49:23', '2025-01-16 05:33:17'),
(19, 'Chart of Accounts', 'chart_of_accounts', '', 18, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(20, 'Journal Entries', 'journal-entry.index', '', 18, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(21, 'Ledger Summary', 'report.ledger', '', 18, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(22, 'Balance Sheet', 'report.balance.sheet', '', 18, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(23, 'Trial Balance', 'trial.balance', '', 18, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(24, 'Purchases', '', 'fa-cart-arrow-down', NULL, 8, '2025-01-15 07:49:23', '2025-01-16 05:33:25'),
(25, 'Stock', 'stock_list', '', 24, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(26, 'Vendors', 'vendors.index', '', 24, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(27, 'CRM', '', 'fa-th-large', NULL, 9, '2025-01-15 07:49:23', '2025-01-16 05:33:36'),
(28, 'Pipeline', 'pipelines.index', '', 27, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(29, 'Quotations', 'quotations.index', '', 27, 22, '2025-01-15 07:49:23', '2025-01-31 07:07:26'),
(30, 'Sale Orders', 'sale_orders.index', '', 27, 23, '2025-01-15 07:49:23', '2025-02-05 04:58:39'),
(31, 'Customers', 'customers.index', '', 27, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(32, 'Standards', '', 'fa-certificate', NULL, 11, '2025-01-15 07:49:23', '2025-01-16 05:33:51'),
(33, 'ISO 21000 Educational Organizations Management', '', 'fa-graduation-cap', 32, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(34, 'Default Checklist', 'iso21000checklist.index', '', 33, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(35, 'Auditor', 'iso21000', '', 33, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(36, 'Scheme Manager', 'scheme_managers_21000', '', 33, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(37, 'Certification Manager', 'certification_managers_21000', '', 33, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(38, 'Certification Decision Committee', 'certification_decision_committee_21000', '', 33, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(39, 'Lead Auditor', 'lead_auditors_21000', '', 33, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(40, 'Certification Questionnaires', 'questionare21000.viewlist', '', 33, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(41, 'Certification Questionnaire Forms', 'iso21000.index', '', 33, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(42, 'Create Questionnaire Form', 'create_questionare_21000', '', 33, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(43, 'ISO 14000 Environmental Management', '', 'fa-leaf', 32, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(44, 'Default Checklist', 'iso14000checklist.index', '', 43, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(45, 'Man-dates Calculator', 'iso14000mandates.index', '', 43, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(46, 'Auditor', 'iso14000', '', 43, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(47, 'Scheme Manager', 'scheme_managers_14000', '', 43, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(48, 'Certification Manager', 'certification_managers_14000', '', 43, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(49, 'Certification Decision Committee', 'certification_decision_committee_14000', '', 43, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(50, 'Lead Auditor', 'lead_auditors_14000', '', 43, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(51, 'Certification Questionnaires', 'questionare14000.viewlist', '', 43, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(52, 'Certification Questionnaire Forms', 'iso14000.index', '', 43, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(53, 'Create Questionnaire Form', 'create_questionare_14000', '', 43, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(54, 'ISO 9000 Quality Management', '', 'fa-shield', 32, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(55, 'Default Checklist', 'iso9000checklist.index', '', 54, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(56, 'Man-dates Calculator', 'iso9000mandates.index', '', 54, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(57, 'Auditor', 'iso9000', '', 54, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(58, 'Scheme Manager', 'scheme_managers_9000', '', 54, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(59, 'Certification Manager', 'certification_managers_9000', '', 54, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(60, 'Certification Decision Committee', 'certification_decision_committee_9000', '', 54, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(61, 'Lead Auditor', 'lead_auditors_9000', '', 54, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(62, 'Certification Questionnaires', 'questionare9000.viewlist', '', 54, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(63, 'Certification Questionnaire Forms', 'iso9000.index', '', 54, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(64, 'Create Questionnaire Form', 'create_questionare_9000', '', 54, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(65, 'ISO 45000 OCCUPATIONAL HEALTH AND SAFETY', '', 'fa-pump-medical', 32, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(66, 'Default Checklist', 'iso45000checklist.index', '', 65, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(67, 'Man-dates Calculator', 'iso45000mandates.index', '', 65, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(68, 'Auditor', 'iso45000', '', 65, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(69, 'Scheme Manager', 'scheme_managers_45000', '', 65, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(70, 'Certification Manager', 'certification_managers_45000', '', 65, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(71, 'Certification Decision Committee', 'certification_decision_committee_45000', '', 65, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(72, 'Lead Auditor', 'lead_auditors_45000', '', 65, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(73, 'Certification Questionnaires', 'questionare45000.viewlist', '', 65, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(74, 'Certification Questionnaire Forms', 'iso45000.index', '', 65, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(75, 'Create Questionnaire Form', 'create_questionare_45000', '', 65, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(76, 'ISO 22000 Food Safety', '', 'fa-bowl-food', 32, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(77, 'Default Checklist', 'iso22000checklist.index', '', 76, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(78, 'Man-dates Calculator', 'iso22000mandates.index', '', 76, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(79, 'Auditor', 'iso22000', '', 76, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(80, 'Scheme Manager', 'scheme_managers_22000', '', 76, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(81, 'Certification Manager', 'certification_managers_22000', '', 76, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(82, 'Certification Decision Committee', 'certification_decision_committee_22000', '', 76, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(83, 'Lead Auditor', 'lead_auditors_22000', '', 76, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(84, 'Certification Questionnaires', 'questionare22000.viewlist', '', 76, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(85, 'Certification Questionnaire Forms', 'iso22000.index', '', 76, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(86, 'Create Questionnaire Form', 'create_questionare_22000', '', 76, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(87, 'ISO 37000 Anti Bribery Management', '', 'fa-pills', 32, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(88, 'Default Checklist', 'iso37000checklist.index', '', 87, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(89, 'Man-dates Calculator', 'iso37000mandates.index', '', 87, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(90, 'Auditor', 'iso37000', '', 87, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(91, 'Scheme Manager', 'scheme_managers_37000', '', 87, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(92, 'Certification Manager', 'certification_managers_37000', '', 87, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(93, 'Certification Decision Committee', 'certification_decision_committee_37000', '', 87, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(94, 'Lead Auditor', 'lead_auditors_37000', '', 87, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(95, 'Certification Questionnaires', 'questionare37000.viewlist', '', 87, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(96, 'Certification Questionnaire Forms', 'iso37000.index', '', 87, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(97, 'Create Questionnaire Form', 'create_questionare_37000', '', 87, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(98, 'ISO 20000 Information Technology Service Management System', '', 'fa-computer', 32, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(99, 'Default Checklist', 'iso20000checklist.index', '', 98, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(100, 'Man-dates Calculator', 'iso20000mandates.index', '', 98, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(101, 'Auditor', 'iso20000', '', 98, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(102, 'Scheme Manager', 'scheme_managers_20000', '', 98, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(103, 'Certification Manager', 'certification_managers_20000', '', 98, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(104, 'Certification Decision Committee', 'certification_decision_committee_20000', '', 98, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(105, 'Lead Auditor', 'lead_auditors_20000', '', 98, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(106, 'Certification Questionnaires', 'questionare20000.viewlist', '', 98, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(107, 'Certification Questionnaire Forms', 'iso20000.index', '', 98, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(108, 'Create Questionnaire Form', 'create_questionare_20000', '', 98, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(109, 'ISO 50000 Energy Management System', '', 'fa-solar-panel', 32, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(110, 'Default Checklist', 'iso50000checklist.index', '', 109, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(111, 'Auditor', 'iso50000', '', 109, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(112, 'Scheme Manager', 'scheme_managers_50000', '', 109, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(113, 'Certification Manager', 'certification_managers_50000', '', 109, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(114, 'Certification Decision Committee', 'certification_decision_committee_50000', '', 109, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(115, 'Lead Auditor', 'lead_auditors_50000', '', 109, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(116, 'Certification Questionnaires', 'questionare50000.viewlist', '', 109, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(117, 'Certification Questionnaire Forms', 'iso50000.index', '', 109, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(118, 'Create Questionnaire Form', 'create_questionare_50000', '', 109, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(119, 'ISO 55000 Asset Management', '', 'fa-house', 32, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(120, 'Default Checklist', 'iso55000checklist.index', '', 119, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(121, 'Auditor', 'iso55000', '', 119, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(122, 'Scheme Manager', 'scheme_managers_55000', '', 119, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(123, 'Certification Manager', 'certification_managers_55000', '', 119, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(124, 'Certification Decision Committee', 'certification_decision_committee_55000', '', 119, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(125, 'Lead Auditor', 'lead_auditors_55000', '', 119, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(126, 'Certification Questionnaires', 'questionare55000.viewlist', '', 119, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(127, 'Certification Questionnaire Forms', 'iso55000.index', '', 119, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(128, 'Create Questionnaire Form', 'create_questionare_55000', '', 119, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(129, 'Machine Inspection and Certification', '', 'fa-gear', 32, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(130, 'Default Checklist', 'machineinspectionchecklist.index', '', 129, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(131, 'Auditor', 'machineinspection', '', 129, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(132, 'Scheme Manager', 'scheme_managers_machine_inspection', '', 129, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(133, 'Certification Manager', 'certification_managers_machine_inspection', '', 129, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(134, 'Certification Decision Committee', 'certification_decision_committee_machine_inspection', '', 129, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(135, 'Lead Auditor', 'lead_auditors_machine_inspection', '', 129, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(136, 'Certification Questionnaires', 'questionaremachineinspection.viewlist', '', 129, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(137, 'Certification Questionnaire Forms', 'machineinspection.index', '', 129, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(138, 'Create Questionnaire Form', 'create_questionare_machine_inspection', '', 129, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(139, 'Training Management', '', 'fa-chalkboard-user', 32, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(140, 'Default Checklist', 'trainingchecklist.index', '', 139, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(141, 'Auditor', 'trainingmanagement', '', 139, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(142, 'Scheme Manager', 'scheme_managers_training_management', '', 139, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(143, 'Certification Manager', 'certification_managers_training_management', '', 139, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(144, 'Certification Decision Committee', 'certification_decision_committee_training_management', '', 139, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(145, 'Lead Auditor', 'lead_auditors_training_management', '', 139, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(146, 'Certification Questionnaires', 'questionaretrainingmanagement.viewlist', '', 139, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(147, 'Certification Questionnaire Forms', 'trainingmanagement.index', '', 139, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(148, 'Create Questionnaire Form', 'create_questionare_training_management', '', 139, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(149, 'HACCP', '', 'fa-truck', 32, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(150, 'Default Checklist', 'haccpchecklist.index', '', 149, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(151, 'Auditor', 'haccp', '', 149, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(152, 'Scheme Manager', 'scheme_managers_haccp', '', 149, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(153, 'Certification Manager', 'certification_managers_haccp', '', 149, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(154, 'Certification Decision Committee', 'certification_decision_committee_haccp', '', 149, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(155, 'Lead Auditor', 'lead_auditors_haccp', '', 149, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(156, 'Certification Questionnaires', 'questionarehaccp.viewlist', '', 149, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(157, 'Certification Questionnaire Forms', 'haccp.index', '', 149, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(158, 'Create Questionnaire Form', 'create_questionare_haccp', '', 149, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(159, 'Projects', '', 'fa-edit', NULL, 12, '2025-01-15 07:49:23', '2025-01-16 05:33:58'),
(160, 'Project List', 'projects', '', 159, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(161, 'All Meetings', 'meetings-form', '', 159, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(162, 'Schedules', 'meetings-calendar', '', 159, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(163, 'Expense', '', 'fa-credit-card', NULL, 13, '2025-01-15 07:49:23', '2025-01-16 05:34:06'),
(164, 'Bills', 'bill_list', '', 163, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(165, 'Banking', '', 'fa-bank', NULL, 14, '2025-01-15 07:49:23', '2025-01-16 05:34:14'),
(166, 'Accounts', 'bankaccounts.index', '', 165, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(167, 'Transfers', 'transfers.index', '', 165, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(168, 'Income', '', 'fa-dollar', NULL, 15, '2025-01-15 07:49:23', '2025-01-16 05:34:21'),
(170, 'Customer Invoice', 'invoices', '', 168, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(171, 'Revenue', 'revenues.index', '', 168, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(172, 'Assets', 'asset.index', 'fa-pie-chart', NULL, 16, '2025-01-15 07:49:23', '2025-01-16 05:34:28'),
(173, 'Inspections', 'inspections.index', 'fa-circle', NULL, 17, '2025-01-15 07:49:23', '2025-01-16 05:36:28'),
(174, 'Issues', 'issue.index', 'fa-italic', NULL, 18, '2025-01-15 07:49:23', '2025-01-16 05:36:36'),
(175, 'Constants', '', 'fa-cannabis', NULL, 19, '2025-01-15 07:49:23', '2025-01-16 05:36:46'),
(176, 'Taxes', 'taxes.index', '', 175, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(177, 'Categories', 'categories.index', '', 175, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(178, 'Units', 'units.index', '', 175, 0, '2025-01-15 07:49:23', '2025-01-15 07:49:23'),
(179, 'Reports', '/reports', 'fa-chart-bar', NULL, 20, '2025-01-15 07:49:23', '2025-01-16 05:36:57'),
(180, 'Menus', '#', 'fa-bars', NULL, 10, '2025-01-16 05:12:42', '2025-01-16 05:31:52'),
(181, 'Manage Menus', 'menus.index', NULL, 180, 0, '2025-01-16 05:14:45', '2025-01-16 05:14:45'),
(186, 'Test', '', 'fa-pen', NULL, 21, '2025-01-27 07:15:10', '2025-01-27 07:15:10'),
(187, 'Test 1', '', 'fa-pe ', 186, 1, '2025-01-27 07:16:19', '2025-01-27 07:16:19'),
(189, 'Users', '#', 'fa-users', NULL, 2, '2025-01-31 07:00:05', '2025-01-31 07:00:05'),
(190, 'Manage Users', 'users.index', NULL, 189, 1, '2025-01-31 07:00:40', '2025-01-31 07:00:40'),
(191, 'Manage Roles', 'roles.index', NULL, 189, 2, '2025-01-31 07:01:06', '2025-01-31 07:01:06');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_11_050743_create_companies_table', 1),
(6, '2023_10_12_062505_create_roles_table', 1),
(7, '2023_10_12_075946_create_standards_table', 1),
(8, '2023_10_12_081250_create_modules_table', 1),
(9, '2023_10_16_055620_create_departments_table', 1),
(10, '2023_10_16_080638_create_badges_table', 1),
(11, '2023_10_18_165656_create_employee_table', 1),
(12, '2023_10_23_064951_create_document_table', 1),
(13, '2023_10_24_064559_create_private_info_table', 1),
(14, '2023_10_25_073952_create_work_info_table', 1),
(15, '2023_10_27_070224_create_contracts_table', 1),
(16, '2023_10_30_053826_create_equipment_table', 1),
(17, '2023_10_30_090612_create_personal_risk_table', 1),
(18, '2023_10_31_081904_create_qualification_of_standards_table', 1),
(19, '2023_10_31_103949_create_resumes_table', 1),
(20, '2023_11_02_063501_create_mandays_1400_table', 1),
(21, '2023_11_02_173707_create_mandays_45000_table', 1),
(22, '2023_11_02_181607_create_mandays_9000_table', 1),
(23, '2023_11_06_111545_create_mandays_22000_table', 1),
(24, '2023_11_06_113000_create_mandays_37000_table', 1),
(25, '2023_11_06_114850_create_mandays_20000_table', 1),
(26, '2023_11_07_052058_create_iso9000_questionare_form', 1),
(27, '2023_11_07_110429_create_certification_questionare_9000', 1),
(28, '2023_11_07_131849_create_iso14000_questionare_form', 1),
(29, '2023_11_07_134029_create_certification_questionare_14000_table', 1),
(30, '2023_11_08_065753_create_iso45000_questionare_form', 1),
(31, '2023_11_08_070229_create_certification_questionare_45000_table', 1),
(32, '2023_11_08_071339_create_iso22000_questionare_form', 1),
(33, '2023_11_08_071621_create_certification_questionare_22000_table', 1),
(34, '2023_11_08_072239_create_haccp_questionare_form', 1),
(35, '2023_11_08_072600_create_certification_questionare_haccp_table', 1),
(36, '2023_11_08_073700_create_iso21000_questionare_form', 1),
(37, '2023_11_08_075057_create_certification_questionare_21000_table', 1),
(38, '2023_11_08_083634_create_iso37000_questionare_form', 1),
(39, '2023_11_08_083705_create_certification_questionare_37000_table', 1),
(40, '2023_11_08_084819_create_iso20000_questionare_form', 1),
(41, '2023_11_08_084844_create_certification_questionare_20000_table', 1),
(42, '2023_11_08_092436_create_iso50000_questionare_form', 1),
(43, '2023_11_08_092502_create_certification_questionare_50000_table', 1),
(44, '2023_11_08_093523_create_iso55001_questionare_form', 1),
(45, '2023_11_08_093545_create_certification_questionare_55001_table', 1),
(46, '2023_11_08_094740_create_machine_inspection_questionare_form', 1),
(47, '2023_11_08_094805_create_certification_questionare_machine_inspection_table', 1),
(48, '2023_11_08_100030_create_training_questionare_form', 1),
(49, '2023_11_08_100050_create_certification_questionare_training_table', 1),
(50, '2023_11_15_164947_create_employ_logs_table', 1),
(51, '2023_11_19_164900_create_quotations_table', 1),
(52, '2023_11_19_173802_create_quotationlines_table', 1),
(53, '2023_11_21_061318_create_leads_table', 1),
(54, '2023_11_21_101224_create_customer_document_table', 1),
(55, '2023_11_23_060625_create_company_settings_table', 1),
(56, '2023_12_05_112010_create_bank_accounts_table', 1),
(57, '2023_12_06_063157_create_chart_of_accounts_table', 1),
(58, '2023_12_07_050525_create_chart_of_account_types_table', 1),
(59, '2023_12_07_050720_create_chart_of_account_sub_types_table', 1),
(60, '2023_12_07_055400_create_journal_items_table', 1),
(61, '2023_12_07_105816_create_journal_entries_table', 1),
(62, '2023_12_12_061033_create_expenses_table', 1),
(63, '2023_12_13_051208_create_purchases_table', 1),
(64, '2023_12_21_102319_assets', 1),
(65, '2023_12_22_065133_create_invoices_table', 1),
(66, '2023_12_22_070005_create_invoice_items_table', 1),
(67, '2023_12_26_062048_create_revenues_table', 1),
(68, '2023_12_26_113500_create_credit_notes_table', 1),
(69, '2023_12_27_053434_create_vendors_table', 1),
(70, '2023_12_27_060328_create_customers_table', 1),
(71, '2023_12_27_092521_create_products_table', 1),
(72, '2023_12_27_101839_create_taxes_table', 1),
(73, '2023_12_27_105233_create_categories_table', 1),
(74, '2023_12_27_110415_create_units_table', 1),
(75, '2023_12_27_113329_create_work_entries_table', 1),
(76, '2023_12_28_044543_create_stocks_table', 1),
(77, '2023_12_28_052541_create_payslips_table', 1),
(78, '2023_12_28_053114_create_payslips_items', 1),
(79, '2023_12_28_053507_create_orders_table', 1),
(80, '2023_12_28_054045_create_order_items_table', 1),
(81, '2023_12_28_072057_create_bills_table', 1),
(82, '2023_12_28_072305_create_bill_payments_table', 1),
(83, '2024_01_04_053630_create_employ_bagegs_table', 1),
(84, '2024_01_08_052932_create_iso9000_default_checklist', 1),
(85, '2024_01_08_064533_create_iso14000_default_checklist', 1),
(86, '2024_01_08_064654_create_meeting_table', 1),
(87, '2024_01_08_065104_create_issue_table', 1),
(88, '2024_01_08_065209_create_iso20000_default_checklist', 1),
(89, '2024_01_08_065346_create_meeting_notes_table', 1),
(90, '2024_01_08_070033_create_iso21000_default_checklist', 1),
(91, '2024_01_08_070545_create_iso22000_default_checklist', 1),
(92, '2024_01_08_071026_create_iso37000_default_checklist', 1),
(93, '2024_01_08_071613_create_iso45000_default_checklist', 1),
(94, '2024_01_08_072340_create_iso50000_default_checklist', 1),
(95, '2024_01_08_072851_create_iso55000_default_checklist', 1),
(96, '2024_01_08_073446_create_machineinspection_default_checklist', 1),
(97, '2024_01_08_074045_create_haccp_default_checklist', 1),
(98, '2024_01_08_074616_create_training_default_checklist', 1),
(99, '2024_01_15_075557_create_schedules_table', 1),
(100, '2024_01_15_075917_create_projects_table', 1),
(101, '2024_01_15_105847_create_bank_transfers_table', 1),
(102, '2024_02_02_092308_create_quotation_products_table', 1),
(103, '2024_02_05_073408_create_quotation_invoices_table', 1),
(104, '2024_02_20_070812_create_work_orders_table', 1),
(105, '2024_02_21_104540_create_tasks_table', 1),
(106, '2024_02_21_94551_create_stages_table', 1),
(107, '2024_03_04_114455_create_task_data_table', 1),
(108, '2024_03_07_102748_create_notifications_table', 1),
(109, '2024_03_13_062556_create_audits_table', 1),
(110, '2024_03_13_101045_create_audit_reports_table', 1),
(111, '2024_03_22_063828_create_audit_findings_table', 1),
(112, '2024_07_08_123642_iso_auditors', 1),
(113, '2024_07_15_064421_create_settings_table', 1),
(114, '2024_09_23_080722_create_issue_assets_table', 2),
(115, '2024_10_08_113629_create_inspections_table', 2),
(116, '2024_11_11_063207_create_permission_tables', 3),
(117, '2024_02_20_070812_create_work_order_table', 4),
(118, '2023_10_12_062505_create_role_table', 5),
(119, '2025_01_07_084524_create_permission_tables', 6),
(120, '2025_01_15_022241_delete_rol_column_from_users_table', 7),
(121, '2025_01_14_182153_add_invoice_id_to_journal_entries_table', 8),
(122, '2025_01_15_023539_create_menus_table', 8),
(123, '2025_01_15_155439_add_invoice_date_to_quotation_invoices_table', 9),
(124, '2025_01_15_073113_create_scheme_table', 10),
(125, '2025_01_28_024204_add_user_limit_to_companies_table', 10),
(126, '2025_01_28_035905_create_company_assigned_modules_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `notifiable` varchar(255) DEFAULT NULL,
  `notifiable_type` varchar(255) DEFAULT NULL,
  `notifiable_id` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userid`, `companyid`, `vendor_id`, `customer_id`, `issue_date`, `due_date`, `order_number`, `category_id`, `reference_number`, `created_at`, `updated_at`) VALUES
(4, NULL, NULL, 2, '2', '2024-11-12', '2024-11-15', '000', 1, '1212', '2024-11-05 12:27:21', '2024-11-05 12:27:21'),
(5, NULL, NULL, 2, '1', '2001-01-18', '1996-08-14', 'ORD-0005', 1, '792', '2025-02-07 06:26:44', '2025-02-07 06:26:44'),
(6, NULL, NULL, 2, '4', '2025-02-04', '2025-02-04', 'ORD-0006', 1, '222', '2025-02-07 06:28:56', '2025-02-07 06:28:56'),
(7, NULL, NULL, 2, '2', '2025-02-13', '2025-02-11', 'ORD-0007', 1, '8798786', '2025-02-07 06:49:32', '2025-02-07 06:49:32'),
(8, NULL, NULL, 2, '2', '2025-02-07', '2025-02-08', 'ORD-0008', 1, '112211223', '2025-02-07 06:50:26', '2025-02-07 06:50:26'),
(9, NULL, NULL, 2, '4', '2025-02-07', '2025-02-14', 'ORD-0009', 1, '2414545', '2025-02-07 06:53:09', '2025-02-07 06:53:09'),
(10, NULL, NULL, 2, '2', '2025-02-07', '2025-02-21', 'ORD-00010', 1, '768798798', '2025-02-07 06:54:59', '2025-02-07 06:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(25) DEFAULT NULL,
  `discount` varchar(25) DEFAULT NULL,
  `tax` varchar(25) DEFAULT NULL,
  `subtotal` varchar(25) DEFAULT NULL,
  `total` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `userid`, `companyid`, `order_id`, `item`, `quantity`, `price`, `discount`, `tax`, `subtotal`, `total`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, '1', 5, '33', '1', '1', '164.00', '165.64', '2024-11-01 11:22:34', '2024-11-01 11:22:34'),
(2, NULL, NULL, 2, '1', 5, '33333', '1', '1', '166664.00', '168330.64', '2024-11-01 11:44:42', '2024-11-01 11:44:42'),
(3, NULL, NULL, 3, '1', 5, '33', '1', '1', '164.00', '165.64', '2024-11-05 12:22:15', '2024-11-05 12:22:15'),
(4, NULL, NULL, 4, '1', 5, '33', '1', '1', '164.00', '165.64', '2024-11-05 12:27:21', '2024-11-05 12:27:21'),
(5, NULL, NULL, 5, '4', 33, '1234', '6', '2', '40716.00', '41530.32', '2025-02-07 06:26:44', '2025-02-07 06:26:44'),
(6, NULL, NULL, 6, '3', 33, '2343', '7', '2', '77312.00', '78858.24', '2025-02-07 06:28:56', '2025-02-07 06:28:56'),
(7, NULL, NULL, 7, '5', 8, '88888', '8', '7', '711096.00', '760872.72', '2025-02-07 06:49:32', '2025-02-07 06:49:32'),
(8, NULL, NULL, 8, '5', 8, '88888', '3', '7', '711101.00', '760878.07', '2025-02-07 06:50:26', '2025-02-07 06:50:26'),
(9, NULL, NULL, 9, '4', 33, '1234', '3', '2', '40719.00', '41533.38', '2025-02-07 06:53:09', '2025-02-07 06:53:09'),
(10, NULL, NULL, 10, '3', 33, '2343', '7', '2', '77312.00', '78858.24', '2025-02-07 06:54:59', '2025-02-07 06:54:59');

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
-- Table structure for table `payslips`
--

CREATE TABLE `payslips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `start_date` varchar(30) DEFAULT NULL,
  `end_date` varchar(30) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payslips`
--

INSERT INTO `payslips` (`id`, `userid`, `companyid`, `employee_id`, `start_date`, `end_date`, `description`, `created_at`, `updated_at`) VALUES
(2, NULL, 2, 1, '2024-11-07', '2024-11-07', 'ok', '2024-11-11 11:27:59', '2024-12-02 06:52:54'),
(3, NULL, 2, 3, '2024-12-03', '2024-12-03', 'vvcngb', '2024-12-17 18:35:11', '2024-12-17 18:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `payslips_items`
--

CREATE TABLE `payslips_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `payslips_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hours` decimal(8,2) DEFAULT NULL,
  `wage` varchar(255) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payslips_items`
--

INSERT INTO `payslips_items` (`id`, `userid`, `companyid`, `payslips_id`, `type`, `description`, `hours`, `wage`, `total`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 'dd', 'ddeedd', '21.00', '32.00', '2333.00', '2024-10-23 07:30:04', '2024-10-23 07:30:04'),
(2, NULL, NULL, 2, 'dd', 'ddeedd', '21.00', '32.00', '2333.00', '2024-11-11 11:27:59', '2024-11-11 11:27:59'),
(3, NULL, NULL, 2, 'ddcc', 'aa', '3.00', '42.00', '23535.00', '2024-11-11 11:38:40', '2024-11-11 11:38:40'),
(4, NULL, NULL, 2, 'f', 'f', '1.00', '2.00', '333.00', '2024-11-11 11:58:37', '2024-11-11 11:58:37'),
(5, NULL, NULL, 3, 'dd', 'vvcngb', '21.00', '33466336363653365633363336363633633636366563565335636535646', '2333.00', '2024-12-17 18:35:11', '2024-12-17 18:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'read Dashboard', 'web', '2025-01-15 06:52:59', '2025-01-15 06:52:59'),
(2, 'write Dashboard', 'web', '2025-01-15 06:52:59', '2025-01-15 06:52:59'),
(3, 'update Dashboard', 'web', '2025-01-15 06:52:59', '2025-01-15 06:52:59'),
(4, 'delete Dashboard', 'web', '2025-01-15 06:52:59', '2025-01-15 06:52:59'),
(5, 'read Users', 'web', '2025-01-15 06:52:59', '2025-01-15 06:52:59'),
(6, 'write Users', 'web', '2025-01-15 06:52:59', '2025-01-15 06:52:59'),
(7, 'update Users', 'web', '2025-01-15 06:52:59', '2025-01-15 06:52:59'),
(8, 'delete Users', 'web', '2025-01-15 06:52:59', '2025-01-15 06:52:59'),
(9, 'read Company', 'web', '2025-01-15 06:52:59', '2025-01-15 06:52:59'),
(10, 'write Company', 'web', '2025-01-15 06:52:59', '2025-01-15 06:52:59'),
(11, 'update Company', 'web', '2025-01-15 06:52:59', '2025-01-15 06:52:59'),
(12, 'delete Company', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(13, 'read Employees', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(14, 'write Employees', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(15, 'update Employees', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(16, 'delete Employees', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(17, 'read Payroll', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(18, 'write Payroll', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(19, 'update Payroll', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(20, 'delete Payroll', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(21, 'read Sales', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(22, 'write Sales', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(23, 'update Sales', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(24, 'delete Sales', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(25, 'read Accounting', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(26, 'write Accounting', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(27, 'update Accounting', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(28, 'delete Accounting', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(29, 'read Purchases', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(30, 'write Purchases', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(31, 'update Purchases', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(32, 'delete Purchases', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(33, 'read CRM', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(34, 'write CRM', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(35, 'update CRM', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(36, 'delete CRM', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(37, 'read Standards', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(38, 'write Standards', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(39, 'update Standards', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(40, 'delete Standards', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(41, 'read Projects', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(42, 'write Projects', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(43, 'update Projects', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(44, 'delete Projects', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(45, 'read Expense', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(46, 'write Expense', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(47, 'update Expense', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(48, 'delete Expense', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(49, 'read Banking', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(50, 'write Banking', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(51, 'update Banking', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(52, 'delete Banking', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(53, 'read Income', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(54, 'write Income', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(55, 'update Income', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(56, 'delete Income', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(57, 'read Assets', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(58, 'write Assets', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(59, 'update Assets', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(60, 'delete Assets', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(61, 'read Inspections', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(62, 'write Inspections', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(63, 'update Inspections', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(64, 'delete Inspections', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(65, 'read Issues', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(66, 'write Issues', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(67, 'update Issues', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(68, 'delete Issues', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(69, 'read Constants', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(70, 'write Constants', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(71, 'update Constants', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(72, 'delete Constants', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(73, 'read Reports', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(74, 'write Reports', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(75, 'update Reports', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(76, 'delete Reports', 'web', '2025-01-15 06:53:00', '2025-01-15 06:53:00'),
(77, 'read Menus', 'web', '2025-01-16 05:12:43', '2025-01-16 05:12:43'),
(78, 'write Menus', 'web', '2025-01-16 05:12:43', '2025-01-16 05:12:43'),
(79, 'update Menus', 'web', '2025-01-16 05:12:43', '2025-01-16 05:12:43'),
(80, 'delete Menus', 'web', '2025-01-16 05:12:43', '2025-01-16 05:12:43'),
(81, 'read Test', 'web', '2025-01-23 05:47:29', '2025-01-23 06:25:25'),
(82, 'write Test', 'web', '2025-01-23 05:47:29', '2025-01-23 06:25:25'),
(83, 'update Test', 'web', '2025-01-23 05:47:29', '2025-01-23 06:25:25'),
(84, 'delete Test', 'web', '2025-01-23 05:47:29', '2025-01-23 06:25:25'),
(86, 'manage roles', 'web', '2025-01-28 03:29:20', '2025-01-28 03:29:20'),
(87, 'manage permissions', 'web', '2025-01-28 03:32:11', '2025-01-28 03:32:11'),
(88, 'read Companies', 'web', '2025-01-31 07:02:45', '2025-01-31 07:02:45'),
(89, 'write Companies', 'web', '2025-01-31 07:02:45', '2025-01-31 07:02:45'),
(90, 'update Companies', 'web', '2025-01-31 07:02:45', '2025-01-31 07:02:45'),
(91, 'delete Companies', 'web', '2025-01-31 07:02:45', '2025-01-31 07:02:45'),
(92, 'read ISO 21000 Educational Organizations Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(93, 'write ISO 21000 Educational Organizations Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(94, 'update ISO 21000 Educational Organizations Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(95, 'delete ISO 21000 Educational Organizations Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(96, 'read Default Checklist(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(97, 'write Default Checklist(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(98, 'update Default Checklist(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(99, 'delete Default Checklist(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(100, 'read Auditor(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(101, 'write Auditor(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(102, 'update Auditor(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(103, 'delete Auditor(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(104, 'read Scheme Manager(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(105, 'write Scheme Manager(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(106, 'update Scheme Manager(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(107, 'delete Scheme Manager(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(108, 'read Certification Manager(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(109, 'write Certification Manager(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(110, 'update Certification Manager(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(111, 'delete Certification Manager(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(112, 'read Certification Decision Committee(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(113, 'write Certification Decision Committee(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(114, 'update Certification Decision Committee(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(115, 'delete Certification Decision Committee(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(116, 'read Lead Auditor(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(117, 'write Lead Auditor(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(118, 'update Lead Auditor(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(119, 'delete Lead Auditor(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(120, 'read Certification Questionnaires(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(121, 'write Certification Questionnaires(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(122, 'update Certification Questionnaires(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(123, 'delete Certification Questionnaires(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(124, 'read Certification Questionnaire Forms(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(125, 'write Certification Questionnaire Forms(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(126, 'update Certification Questionnaire Forms(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(127, 'delete Certification Questionnaire Forms(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(128, 'read Create Questionnaire Form(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(129, 'write Create Questionnaire Form(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(130, 'update Create Questionnaire Form(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(131, 'delete Create Questionnaire Form(ISO|21000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(132, 'read ISO 14000 Environmental Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(133, 'write ISO 14000 Environmental Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(134, 'update ISO 14000 Environmental Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(135, 'delete ISO 14000 Environmental Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(136, 'read Default Checklist(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(137, 'write Default Checklist(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(138, 'update Default Checklist(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(139, 'delete Default Checklist(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(140, 'read Man-dates Calculator(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(141, 'write Man-dates Calculator(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(142, 'update Man-dates Calculator(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(143, 'delete Man-dates Calculator(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(144, 'read Auditor(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(145, 'write Auditor(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(146, 'update Auditor(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(147, 'delete Auditor(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(148, 'read Scheme Manager(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(149, 'write Scheme Manager(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(150, 'update Scheme Manager(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(151, 'delete Scheme Manager(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(152, 'read Certification Manager(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(153, 'write Certification Manager(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(154, 'update Certification Manager(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(155, 'delete Certification Manager(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(156, 'read Certification Decision Committee(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(157, 'write Certification Decision Committee(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(158, 'update Certification Decision Committee(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(159, 'delete Certification Decision Committee(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(160, 'read Lead Auditor(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(161, 'write Lead Auditor(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(162, 'update Lead Auditor(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(163, 'delete Lead Auditor(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(164, 'read Certification Questionnaires(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(165, 'write Certification Questionnaires(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(166, 'update Certification Questionnaires(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(167, 'delete Certification Questionnaires(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(168, 'read Certification Questionnaire Forms(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(169, 'write Certification Questionnaire Forms(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(170, 'update Certification Questionnaire Forms(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(171, 'delete Certification Questionnaire Forms(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(172, 'read Create Questionnaire Form(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(173, 'write Create Questionnaire Form(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(174, 'update Create Questionnaire Form(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(175, 'delete Create Questionnaire Form(ISO|14000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(176, 'read ISO 9000 Quality Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(177, 'write ISO 9000 Quality Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(178, 'update ISO 9000 Quality Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(179, 'delete ISO 9000 Quality Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(180, 'read Default Checklist(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(181, 'write Default Checklist(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(182, 'update Default Checklist(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(183, 'delete Default Checklist(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(184, 'read Man-dates Calculator(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(185, 'write Man-dates Calculator(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(186, 'update Man-dates Calculator(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(187, 'delete Man-dates Calculator(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(188, 'read Auditor(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(189, 'write Auditor(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(190, 'update Auditor(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(191, 'delete Auditor(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(192, 'read Scheme Manager(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(193, 'write Scheme Manager(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(194, 'update Scheme Manager(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(195, 'delete Scheme Manager(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(196, 'read Certification Manager(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(197, 'write Certification Manager(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(198, 'update Certification Manager(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(199, 'delete Certification Manager(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(200, 'read Certification Decision Committee(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(201, 'write Certification Decision Committee(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(202, 'update Certification Decision Committee(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(203, 'delete Certification Decision Committee(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(204, 'read Lead Auditor(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(205, 'write Lead Auditor(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(206, 'update Lead Auditor(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(207, 'delete Lead Auditor(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(208, 'read Certification Questionnaires(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(209, 'write Certification Questionnaires(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(210, 'update Certification Questionnaires(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(211, 'delete Certification Questionnaires(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(212, 'read Certification Questionnaire Forms(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(213, 'write Certification Questionnaire Forms(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(214, 'update Certification Questionnaire Forms(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(215, 'delete Certification Questionnaire Forms(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(216, 'read Create Questionnaire Form(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(217, 'write Create Questionnaire Form(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(218, 'update Create Questionnaire Form(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(219, 'delete Create Questionnaire Form(ISO|9000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(220, 'read ISO 45000 OCCUPATIONAL HEALTH AND SAFETY', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(221, 'write ISO 45000 OCCUPATIONAL HEALTH AND SAFETY', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(222, 'update ISO 45000 OCCUPATIONAL HEALTH AND SAFETY', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(223, 'delete ISO 45000 OCCUPATIONAL HEALTH AND SAFETY', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(224, 'read Default Checklist(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(225, 'write Default Checklist(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(226, 'update Default Checklist(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(227, 'delete Default Checklist(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(228, 'read Man-dates Calculator(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(229, 'write Man-dates Calculator(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(230, 'update Man-dates Calculator(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(231, 'delete Man-dates Calculator(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(232, 'read Auditor(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(233, 'write Auditor(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(234, 'update Auditor(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(235, 'delete Auditor(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(236, 'read Scheme Manager(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(237, 'write Scheme Manager(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(238, 'update Scheme Manager(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(239, 'delete Scheme Manager(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(240, 'read Certification Manager(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(241, 'write Certification Manager(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(242, 'update Certification Manager(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(243, 'delete Certification Manager(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(244, 'read Certification Decision Committee(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(245, 'write Certification Decision Committee(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(246, 'update Certification Decision Committee(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(247, 'delete Certification Decision Committee(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(248, 'read Lead Auditor(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(249, 'write Lead Auditor(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(250, 'update Lead Auditor(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(251, 'delete Lead Auditor(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(252, 'read Certification Questionnaires(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(253, 'write Certification Questionnaires(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(254, 'update Certification Questionnaires(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(255, 'delete Certification Questionnaires(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(256, 'read Certification Questionnaire Forms(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(257, 'write Certification Questionnaire Forms(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(258, 'update Certification Questionnaire Forms(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(259, 'delete Certification Questionnaire Forms(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(260, 'read Create Questionnaire Form(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(261, 'write Create Questionnaire Form(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(262, 'update Create Questionnaire Form(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(263, 'delete Create Questionnaire Form(ISO|45000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(264, 'read ISO 22000 Food Safety', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(265, 'write ISO 22000 Food Safety', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(266, 'update ISO 22000 Food Safety', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(267, 'delete ISO 22000 Food Safety', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(268, 'read Default Checklist(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(269, 'write Default Checklist(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(270, 'update Default Checklist(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(271, 'delete Default Checklist(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(272, 'read Man-dates Calculator(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(273, 'write Man-dates Calculator(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(274, 'update Man-dates Calculator(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(275, 'delete Man-dates Calculator(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(276, 'read Auditor(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(277, 'write Auditor(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(278, 'update Auditor(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(279, 'delete Auditor(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(280, 'read Scheme Manager(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(281, 'write Scheme Manager(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(282, 'update Scheme Manager(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(283, 'delete Scheme Manager(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(284, 'read Certification Manager(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(285, 'write Certification Manager(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(286, 'update Certification Manager(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(287, 'delete Certification Manager(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(288, 'read Certification Decision Committee(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(289, 'write Certification Decision Committee(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(290, 'update Certification Decision Committee(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(291, 'delete Certification Decision Committee(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(292, 'read Lead Auditor(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(293, 'write Lead Auditor(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(294, 'update Lead Auditor(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(295, 'delete Lead Auditor(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(296, 'read Certification Questionnaires(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(297, 'write Certification Questionnaires(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(298, 'update Certification Questionnaires(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(299, 'delete Certification Questionnaires(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(300, 'read Certification Questionnaire Forms(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(301, 'write Certification Questionnaire Forms(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(302, 'update Certification Questionnaire Forms(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(303, 'delete Certification Questionnaire Forms(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(304, 'read Create Questionnaire Form(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(305, 'write Create Questionnaire Form(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(306, 'update Create Questionnaire Form(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(307, 'delete Create Questionnaire Form(ISO|22000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(308, 'read ISO 37000 Anti Bribery Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(309, 'write ISO 37000 Anti Bribery Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(310, 'update ISO 37000 Anti Bribery Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(311, 'delete ISO 37000 Anti Bribery Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(312, 'read Default Checklist(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(313, 'write Default Checklist(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(314, 'update Default Checklist(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(315, 'delete Default Checklist(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(316, 'read Man-dates Calculator(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(317, 'write Man-dates Calculator(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(318, 'update Man-dates Calculator(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(319, 'delete Man-dates Calculator(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(320, 'read Auditor(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(321, 'write Auditor(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(322, 'update Auditor(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(323, 'delete Auditor(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(324, 'read Scheme Manager(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(325, 'write Scheme Manager(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(326, 'update Scheme Manager(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(327, 'delete Scheme Manager(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(328, 'read Certification Manager(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(329, 'write Certification Manager(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(330, 'update Certification Manager(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(331, 'delete Certification Manager(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(332, 'read Certification Decision Committee(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(333, 'write Certification Decision Committee(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(334, 'update Certification Decision Committee(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(335, 'delete Certification Decision Committee(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(336, 'read Lead Auditor(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(337, 'write Lead Auditor(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(338, 'update Lead Auditor(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(339, 'delete Lead Auditor(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(340, 'read Certification Questionnaires(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(341, 'write Certification Questionnaires(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(342, 'update Certification Questionnaires(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(343, 'delete Certification Questionnaires(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(344, 'read Certification Questionnaire Forms(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(345, 'write Certification Questionnaire Forms(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(346, 'update Certification Questionnaire Forms(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(347, 'delete Certification Questionnaire Forms(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(348, 'read Create Questionnaire Form(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(349, 'write Create Questionnaire Form(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(350, 'update Create Questionnaire Form(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(351, 'delete Create Questionnaire Form(ISO|37000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(352, 'read ISO 20000 Information Technology Service Management System', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(353, 'write ISO 20000 Information Technology Service Management System', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(354, 'update ISO 20000 Information Technology Service Management System', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(355, 'delete ISO 20000 Information Technology Service Management System', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(356, 'read Default Checklist(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(357, 'write Default Checklist(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(358, 'update Default Checklist(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(359, 'delete Default Checklist(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(360, 'read Man-dates Calculator(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(361, 'write Man-dates Calculator(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(362, 'update Man-dates Calculator(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(363, 'delete Man-dates Calculator(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(364, 'read Auditor(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(365, 'write Auditor(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(366, 'update Auditor(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(367, 'delete Auditor(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(368, 'read Scheme Manager(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(369, 'write Scheme Manager(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(370, 'update Scheme Manager(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(371, 'delete Scheme Manager(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(372, 'read Certification Manager(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(373, 'write Certification Manager(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(374, 'update Certification Manager(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(375, 'delete Certification Manager(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(376, 'read Certification Decision Committee(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(377, 'write Certification Decision Committee(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(378, 'update Certification Decision Committee(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(379, 'delete Certification Decision Committee(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(380, 'read Lead Auditor(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(381, 'write Lead Auditor(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(382, 'update Lead Auditor(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(383, 'delete Lead Auditor(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(384, 'read Certification Questionnaires(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(385, 'write Certification Questionnaires(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(386, 'update Certification Questionnaires(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(387, 'delete Certification Questionnaires(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(388, 'read Certification Questionnaire Forms(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(389, 'write Certification Questionnaire Forms(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(390, 'update Certification Questionnaire Forms(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(391, 'delete Certification Questionnaire Forms(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(392, 'read Create Questionnaire Form(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(393, 'write Create Questionnaire Form(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(394, 'update Create Questionnaire Form(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(395, 'delete Create Questionnaire Form(ISO|20000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(396, 'read ISO 50000 Energy Management System', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(397, 'write ISO 50000 Energy Management System', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(398, 'update ISO 50000 Energy Management System', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(399, 'delete ISO 50000 Energy Management System', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(400, 'read Default Checklist(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(401, 'write Default Checklist(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(402, 'update Default Checklist(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(403, 'delete Default Checklist(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(404, 'read Auditor(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(405, 'write Auditor(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(406, 'update Auditor(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(407, 'delete Auditor(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(408, 'read Scheme Manager(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(409, 'write Scheme Manager(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(410, 'update Scheme Manager(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(411, 'delete Scheme Manager(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(412, 'read Certification Manager(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(413, 'write Certification Manager(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(414, 'update Certification Manager(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(415, 'delete Certification Manager(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(416, 'read Certification Decision Committee(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(417, 'write Certification Decision Committee(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(418, 'update Certification Decision Committee(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(419, 'delete Certification Decision Committee(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(420, 'read Lead Auditor(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(421, 'write Lead Auditor(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(422, 'update Lead Auditor(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(423, 'delete Lead Auditor(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(424, 'read Certification Questionnaires(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(425, 'write Certification Questionnaires(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(426, 'update Certification Questionnaires(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(427, 'delete Certification Questionnaires(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(428, 'read Certification Questionnaire Forms(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(429, 'write Certification Questionnaire Forms(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(430, 'update Certification Questionnaire Forms(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(431, 'delete Certification Questionnaire Forms(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(432, 'read Create Questionnaire Form(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(433, 'write Create Questionnaire Form(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(434, 'update Create Questionnaire Form(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(435, 'delete Create Questionnaire Form(ISO|50000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(436, 'read ISO 55000 Asset Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(437, 'write ISO 55000 Asset Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(438, 'update ISO 55000 Asset Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(439, 'delete ISO 55000 Asset Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(440, 'read Default Checklist(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(441, 'write Default Checklist(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(442, 'update Default Checklist(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(443, 'delete Default Checklist(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(444, 'read Auditor(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(445, 'write Auditor(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(446, 'update Auditor(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(447, 'delete Auditor(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(448, 'read Scheme Manager(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(449, 'write Scheme Manager(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(450, 'update Scheme Manager(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(451, 'delete Scheme Manager(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(452, 'read Certification Manager(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(453, 'write Certification Manager(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(454, 'update Certification Manager(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(455, 'delete Certification Manager(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(456, 'read Certification Decision Committee(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(457, 'write Certification Decision Committee(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(458, 'update Certification Decision Committee(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(459, 'delete Certification Decision Committee(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(460, 'read Lead Auditor(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(461, 'write Lead Auditor(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(462, 'update Lead Auditor(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(463, 'delete Lead Auditor(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(464, 'read Certification Questionnaires(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(465, 'write Certification Questionnaires(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(466, 'update Certification Questionnaires(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(467, 'delete Certification Questionnaires(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(468, 'read Certification Questionnaire Forms(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(469, 'write Certification Questionnaire Forms(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(470, 'update Certification Questionnaire Forms(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(471, 'delete Certification Questionnaire Forms(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(472, 'read Create Questionnaire Form(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(473, 'write Create Questionnaire Form(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(474, 'update Create Questionnaire Form(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(475, 'delete Create Questionnaire Form(ISO|55000)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(476, 'read Machine Inspection and Certification', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(477, 'write Machine Inspection and Certification', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(478, 'update Machine Inspection and Certification', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(479, 'delete Machine Inspection and Certification', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(480, 'read Default Checklist(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(481, 'write Default Checklist(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(482, 'update Default Checklist(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(483, 'delete Default Checklist(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(484, 'read Auditor(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(485, 'write Auditor(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(486, 'update Auditor(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(487, 'delete Auditor(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(488, 'read Scheme Manager(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(489, 'write Scheme Manager(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(490, 'update Scheme Manager(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(491, 'delete Scheme Manager(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(492, 'read Certification Manager(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(493, 'write Certification Manager(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(494, 'update Certification Manager(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(495, 'delete Certification Manager(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(496, 'read Certification Decision Committee(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(497, 'write Certification Decision Committee(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(498, 'update Certification Decision Committee(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(499, 'delete Certification Decision Committee(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(500, 'read Lead Auditor(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(501, 'write Lead Auditor(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(502, 'update Lead Auditor(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(503, 'delete Lead Auditor(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(504, 'read Certification Questionnaires(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(505, 'write Certification Questionnaires(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(506, 'update Certification Questionnaires(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(507, 'delete Certification Questionnaires(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(508, 'read Certification Questionnaire Forms(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(509, 'write Certification Questionnaire Forms(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(510, 'update Certification Questionnaire Forms(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(511, 'delete Certification Questionnaire Forms(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(512, 'read Create Questionnaire Form(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(513, 'write Create Questionnaire Form(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(514, 'update Create Questionnaire Form(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(515, 'delete Create Questionnaire Form(MIC)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(516, 'read Training Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(517, 'write Training Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(518, 'update Training Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(519, 'delete Training Management', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(520, 'read Default Checklist(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(521, 'write Default Checklist(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(522, 'update Default Checklist(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(523, 'delete Default Checklist(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(524, 'read Auditor(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(525, 'write Auditor(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(526, 'update Auditor(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(527, 'delete Auditor(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(528, 'read Scheme Manager(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(529, 'write Scheme Manager(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(530, 'update Scheme Manager(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(531, 'delete Scheme Manager(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(532, 'read Certification Manager(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(533, 'write Certification Manager(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(534, 'update Certification Manager(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(535, 'delete Certification Manager(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(536, 'read Certification Decision Committee(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(537, 'write Certification Decision Committee(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(538, 'update Certification Decision Committee(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(539, 'delete Certification Decision Committee(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(540, 'read Lead Auditor(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(541, 'write Lead Auditor(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(542, 'update Lead Auditor(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(543, 'delete Lead Auditor(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(544, 'read Certification Questionnaires(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(545, 'write Certification Questionnaires(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(546, 'update Certification Questionnaires(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(547, 'delete Certification Questionnaires(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(548, 'read Certification Questionnaire Forms(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(549, 'write Certification Questionnaire Forms(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(550, 'update Certification Questionnaire Forms(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(551, 'delete Certification Questionnaire Forms(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(552, 'read Create Questionnaire Form(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(553, 'write Create Questionnaire Form(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(554, 'update Create Questionnaire Form(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(555, 'delete Create Questionnaire Form(TM)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(556, 'read HACCP', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(557, 'write HACCP', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(558, 'update HACCP', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(559, 'delete HACCP', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(560, 'read Default Checklist(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(561, 'write Default Checklist(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(562, 'update Default Checklist(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(563, 'delete Default Checklist(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(564, 'read Auditor(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(565, 'write Auditor(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(566, 'update Auditor(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(567, 'delete Auditor(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(568, 'read Scheme Manager(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(569, 'write Scheme Manager(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(570, 'update Scheme Manager(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(571, 'delete Scheme Manager(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(572, 'read Certification Manager(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(573, 'write Certification Manager(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(574, 'update Certification Manager(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(575, 'delete Certification Manager(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(576, 'read Certification Decision Committee(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(577, 'write Certification Decision Committee(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(578, 'update Certification Decision Committee(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(579, 'delete Certification Decision Committee(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(580, 'read Lead Auditor(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(581, 'write Lead Auditor(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(582, 'update Lead Auditor(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(583, 'delete Lead Auditor(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(584, 'read Certification Questionnaires(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(585, 'write Certification Questionnaires(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(586, 'update Certification Questionnaires(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(587, 'delete Certification Questionnaires(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(588, 'read Certification Questionnaire Forms(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(589, 'write Certification Questionnaire Forms(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(590, 'update Certification Questionnaire Forms(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(591, 'delete Certification Questionnaire Forms(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(592, 'read Create Questionnaire Form(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(593, 'write Create Questionnaire Form(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(594, 'update Create Questionnaire Form(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(595, 'delete Create Questionnaire Form(HACCP)', 'web', '2025-02-07 08:03:05', '2025-02-07 08:03:05'),
(596, 'read Employee List', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(597, 'write Employee List', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(598, 'update Employee List', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(599, 'delete Employee List', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(600, 'read Departments', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(601, 'write Departments', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(602, 'update Departments', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(603, 'delete Departments', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(604, 'read Contracts', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(605, 'write Contracts', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(606, 'update Contracts', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(607, 'delete Contracts', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(608, 'read Equipments', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(609, 'write Equipments', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(610, 'update Equipments', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(611, 'delete Equipments', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(612, 'read Badges', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(613, 'write Badges', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(614, 'update Badges', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(615, 'delete Badges', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(616, 'read Work Entries', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(617, 'write Work Entries', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(618, 'update Work Entries', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(619, 'delete Work Entries', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(620, 'read Payslips', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(621, 'write Payslips', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(622, 'update Payslips', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(623, 'delete Payslips', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(624, 'read Products', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(625, 'write Products', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(626, 'update Products', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(627, 'delete Products', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(628, 'read Orders', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(629, 'write Orders', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(630, 'update Orders', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(631, 'delete Orders', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(632, 'read Chart of Accounts', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(633, 'write Chart of Accounts', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(634, 'update Chart of Accounts', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(635, 'delete Chart of Accounts', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(636, 'read Journal Entries', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(637, 'write Journal Entries', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(638, 'update Journal Entries', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(639, 'delete Journal Entries', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(640, 'read Ledger Summary', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(641, 'write Ledger Summary', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(642, 'update Ledger Summary', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(643, 'delete Ledger Summary', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(644, 'read Balance Sheet', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(645, 'write Balance Sheet', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(646, 'update Balance Sheet', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(647, 'delete Balance Sheet', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(648, 'read Trial Balance', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(649, 'write Trial Balance', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(650, 'update Trial Balance', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(651, 'delete Trial Balance', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(652, 'read Stock', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(653, 'write Stock', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(654, 'update Stock', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(655, 'delete Stock', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(656, 'read Vendors', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(657, 'write Vendors', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(658, 'update Vendors', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(659, 'delete Vendors', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(660, 'read Pipeline', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(661, 'write Pipeline', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(662, 'update Pipeline', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(663, 'delete Pipeline', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(664, 'read Customers', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(665, 'write Customers', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(666, 'update Customers', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(667, 'delete Customers', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(668, 'read Quotations', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(669, 'write Quotations', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(670, 'update Quotations', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(671, 'delete Quotations', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(672, 'read Sale Orders', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(673, 'write Sale Orders', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(674, 'update Sale Orders', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(675, 'delete Sale Orders', 'web', '2025-02-07 10:20:09', '2025-02-07 10:20:09'),
(676, 'read Project List', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(677, 'write Project List', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(678, 'update Project List', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(679, 'delete Project List', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(680, 'read All Meetings', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(681, 'write All Meetings', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(682, 'update All Meetings', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(683, 'delete All Meetings', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(684, 'read Schedules', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(685, 'write Schedules', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(686, 'update Schedules', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(687, 'delete Schedules', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(688, 'read Bills', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(689, 'write Bills', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(690, 'update Bills', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(691, 'delete Bills', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(692, 'read Accounts', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(693, 'write Accounts', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(694, 'update Accounts', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(695, 'delete Accounts', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(696, 'read Transfers', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(697, 'write Transfers', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(698, 'update Transfers', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(699, 'delete Transfers', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(700, 'read Customer Invoice', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(701, 'write Customer Invoice', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(702, 'update Customer Invoice', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(703, 'delete Customer Invoice', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(704, 'read Revenue', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(705, 'write Revenue', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(706, 'update Revenue', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(707, 'delete Revenue', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(708, 'read Taxes', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(709, 'write Taxes', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(710, 'update Taxes', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(711, 'delete Taxes', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(712, 'read Categories', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(713, 'write Categories', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(714, 'update Categories', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(715, 'delete Categories', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(716, 'read Units', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(717, 'write Units', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(718, 'update Units', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(719, 'delete Units', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(720, 'read Manage Menus', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(721, 'write Manage Menus', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(722, 'update Manage Menus', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(723, 'delete Manage Menus', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(724, 'read Test 1', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(725, 'write Test 1', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(726, 'update Test 1', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(727, 'delete Test 1', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(728, 'read Manage Users', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(729, 'write Manage Users', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(730, 'update Manage Users', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(731, 'delete Manage Users', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(732, 'read Manage Roles', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(733, 'write Manage Roles', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(734, 'update Manage Roles', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10'),
(735, 'delete Manage Roles', 'web', '2025-02-07 10:20:10', '2025-02-07 10:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `personalrisks`
--

CREATE TABLE `personalrisks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `employ_id` int(11) DEFAULT NULL,
  `auditorname` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  `threattype` varchar(255) DEFAULT NULL,
  `validity` varchar(255) DEFAULT NULL,
  `validuntil` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `private_infos`
--

CREATE TABLE `private_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `employ_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `martialstatus` varchar(255) DEFAULT NULL,
  `dependents` int(11) DEFAULT NULL,
  `emergencycontactname` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `certification` varchar(255) DEFAULT NULL,
  `fieldofstudy` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `nicnumber` varchar(255) DEFAULT NULL,
  `passportnumber` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `placeofbirth` varchar(255) DEFAULT NULL,
  `countryofbirth` varchar(255) DEFAULT NULL,
  `visanumber` varchar(255) DEFAULT NULL,
  `workpermitnumber` varchar(255) DEFAULT NULL,
  `visaexpiredate` date DEFAULT NULL,
  `workpermitexpiredate` date DEFAULT NULL,
  `workpermitdocument` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `private_infos`
--

INSERT INTO `private_infos` (`id`, `userid`, `companyid`, `employ_id`, `address`, `state`, `country`, `martialstatus`, `dependents`, `emergencycontactname`, `phone_number`, `mobile`, `certification`, `fieldofstudy`, `school`, `nationality`, `nicnumber`, `passportnumber`, `gender`, `dateofbirth`, `placeofbirth`, `countryofbirth`, `visanumber`, `workpermitnumber`, `visaexpiredate`, `workpermitexpiredate`, `workpermitdocument`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 'Dir', NULL, NULL, 'Married', 1, 'huu', 'af-9323 436 5457', 'af-9345 654 7755', 'Bachelors', 'bsc', 'allied', 'Pakistan', '123', '45435345', 'Male', '2024-11-07', NULL, 'Pakistan', '23355', '4543543', '2024-11-06', '2024-11-14', NULL, '2024-11-06 08:40:36', '2024-11-07 06:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `sale_price` varchar(25) DEFAULT NULL,
  `purchase_price` varchar(25) DEFAULT NULL,
  `tax` varchar(25) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `userid`, `companyid`, `product_name`, `sku`, `sale_price`, `purchase_price`, `tax`, `unit`, `quantity`, `category`, `description`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'hamza', '9', '2343', '12412', '2', '1', 33, 'Test', 'ok', '2024-11-05 12:45:56', '2024-11-05 12:45:56'),
(4, NULL, NULL, 'Test', '7687', '1234', '12412', '2', '2', 33, 'Test', 'kk', '2024-12-28 06:38:29', '2024-12-28 06:38:29'),
(5, NULL, NULL, 'k', '7', '88888', '8', '7', '99', 8, 'Test', 's', '2025-02-04 10:00:23', '2025-02-04 10:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `project_type` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `userid`, `companyid`, `quotation_id`, `title`, `customer_id`, `project_type`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(5, NULL, 1, 10, 'test', 2, 'off-site', '2024-11-13', '2024-11-14', '2024-11-12 12:26:56', '2024-11-19 07:47:16'),
(6, NULL, 1, 12, 'laravel', 1, 'on-site', '2024-11-20', '2024-11-22', '2024-11-18 07:00:35', '2024-11-19 06:46:25'),
(9, NULL, 1, 13, 'laravel php', 1, 'off-site', '2024-11-20', '2024-11-27', '2024-11-18 07:22:15', '2024-11-19 06:46:55'),
(10, NULL, 2, 16, 'ISO', 4, 'on-site', '2024-11-21', '2024-11-28', '2024-11-19 05:25:48', '2024-11-21 09:30:06'),
(16, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, '2024-12-31 08:39:33', '2024-12-31 08:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `bill_id` varchar(255) NOT NULL DEFAULT '0',
  `bill_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `order_number` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `shipping_display` int(11) NOT NULL DEFAULT 1,
  `send_date` date DEFAULT NULL,
  `discount_apply` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qualification_of_standards`
--

CREATE TABLE `qualification_of_standards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `employ_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotationlines`
--

CREATE TABLE `quotationlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `standard` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `man_dates` varchar(255) DEFAULT NULL,
  `personnel` varchar(255) DEFAULT NULL,
  `risk_level` varchar(255) DEFAULT NULL,
  `audit_type` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `price` varchar(25) DEFAULT NULL,
  `tax` varchar(25) DEFAULT NULL,
  `tax_amount` varchar(25) DEFAULT NULL,
  `sub_total` varchar(25) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotationlines`
--

INSERT INTO `quotationlines` (`id`, `userid`, `companyid`, `quotation_id`, `standard`, `description`, `man_dates`, `personnel`, `risk_level`, `audit_type`, `qty`, `price`, `tax`, `tax_amount`, `sub_total`, `notes`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, 1, 'ISO-9000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '333', '2', '6.66', '333.00', NULL, '2024-10-30 09:19:04', '2024-10-30 09:19:04'),
(3, NULL, NULL, 2, 'ISO-9000', 'ok', '16', '2026-2675', 'High', 'Stage 1, Stage 2', '1', '35455', '4', '1418.2', '35455.00', NULL, '2024-11-06 07:25:21', '2024-11-06 07:25:21'),
(4, NULL, NULL, 3, 'ISO-9000', 'ok', '12', '628-875', 'High', 'Stage 1, Stage 2', '1', '032324', '3', '969.72', '32324.00', NULL, '2024-11-06 07:29:58', '2024-11-06 07:29:58'),
(5, NULL, NULL, 4, 'ISO-27000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '032324', '3', '969.72', '32324.00', NULL, '2024-11-06 07:31:42', '2024-11-06 07:31:42'),
(6, NULL, NULL, 5, 'ISO-9000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '032324', '3', '969.72', '32324.00', NULL, '2024-11-06 07:34:35', '2024-11-06 07:34:35'),
(7, NULL, NULL, 6, 'ISO-9000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '032324', '3', '969.72', '32324.00', NULL, '2024-11-06 07:53:21', '2024-11-06 07:53:21'),
(8, NULL, NULL, 7, 'ISO-9000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '032324', '3', '969.72', '32324.00', NULL, '2024-11-06 08:07:00', '2024-11-06 08:07:00'),
(9, NULL, NULL, 8, 'ISO-9000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '032324', '3', '969.72', '32324.00', NULL, '2024-11-06 08:11:22', '2024-11-06 08:11:22'),
(11, NULL, NULL, 9, 'ISO-9000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '032324', '3', '969.72', '32324.00', NULL, '2024-11-11 11:44:24', '2024-11-11 11:44:24'),
(12, NULL, NULL, 9, 'ISO-9000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '032324', '3', '969.72', '32324.00', NULL, '2024-11-11 11:44:24', '2024-11-11 11:44:24'),
(13, NULL, NULL, 10, 'ISO-9000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '032324', '3', '969.72', '32324.00', NULL, '2024-11-12 11:25:27', '2024-11-12 11:25:27'),
(15, NULL, NULL, 11, 'ISO-9000', 'ok', '2.5', '11-15', 'High', 'Stage 1, Stage 2', '1', '546', '5', '27.3', '546.00', NULL, '2024-11-12 12:46:11', '2024-11-12 12:46:11'),
(16, NULL, NULL, 12, 'ISO-9000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '032324', '12', '3878.88', '32324.00', NULL, '2024-11-18 05:51:06', '2024-11-18 05:51:06'),
(17, NULL, NULL, 13, 'ISO-14000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '242', '3', '7.26', '242.00', NULL, '2024-11-18 07:08:09', '2024-11-18 07:08:09'),
(21, NULL, NULL, 18, 'ISO-9000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '23455', '3', '703.65', '23455.00', NULL, '2024-11-28 13:55:06', '2024-11-28 13:55:06'),
(23, NULL, NULL, 16, 'ISO-9000', 'oook', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '333', '3', '9.99', '333.00', NULL, '2024-11-28 13:57:30', '2024-11-28 13:57:30'),
(25, NULL, NULL, 19, 'ISO-9000', 'ok', '2.5', '11-15', 'High', 'Stage 1, Stage 2', '1', '35', '2', '0.7', '35.00', NULL, '2024-12-20 09:08:48', '2024-12-20 09:08:48'),
(26, NULL, NULL, 21, 'ISO-9000', 'f', '17', '2676-3450', 'High', 'Stage 1, Stage 2', '1', '223', '4', '8.92', '223.00', NULL, '2024-12-21 13:57:47', '2024-12-21 13:57:47'),
(27, NULL, NULL, 22, 'ISO-9000', 'dfd', '4', '26-45', 'High', 'Stage 1, Stage 2', '1', '35', '5', '1.75', '35.00', NULL, '2024-12-21 13:59:21', '2024-12-21 13:59:21'),
(28, NULL, NULL, 24, 'ISO-9000', 'test', '2.5', '11-15', 'High', 'Stage 1, Stage 2', '1', '233', '2', '4.66', '233.00', NULL, '2024-12-30 07:38:02', '2024-12-30 07:38:02'),
(29, NULL, NULL, 26, 'ISO-9000', 'bb', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '333', '2', '6.66', '333.00', NULL, '2024-12-30 11:33:21', '2024-12-30 11:33:21'),
(30, NULL, NULL, 27, 'ISO-9000', 'ok', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '333', '3', '9.99', '333.00', NULL, '2024-12-30 11:46:02', '2024-12-30 11:46:02'),
(31, NULL, NULL, 28, 'ISO-9000', 'gf', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '2324', '4', '92.96', '2324.00', NULL, '2024-12-31 08:11:43', '2024-12-31 08:11:43'),
(32, NULL, NULL, 29, 'ISO-9000', 'dg', '3', '16-25', 'High', 'Stage 1, Stage 2', '1', '24244', '4', '969.76', '24244.00', NULL, '2024-12-31 08:13:25', '2024-12-31 08:13:25'),
(33, NULL, NULL, 30, 'ISO-9000', 'hh', '2.5', '11-15', 'High', 'Stage 1, Stage 2', '1', '2334', '4', '93.36', '2334.00', NULL, '2024-12-31 08:17:40', '2024-12-31 08:17:40'),
(34, NULL, NULL, 31, 'ISO-9000', 'r', '2.5', '11-15', 'High', 'Stage 1, Stage 2', '1', '23', '3', '0.69', '23.00', NULL, '2024-12-31 08:24:18', '2024-12-31 08:24:18'),
(35, NULL, NULL, 32, 'ISO-9000', 'f', '2', '6-10', 'High', 'Stage 1, Stage 2', '1', '232', '4', '9.28', '232.00', NULL, '2024-12-31 08:25:50', '2024-12-31 08:25:50'),
(36, NULL, NULL, 33, 'ISO-9000', 'g', '2.5', '11-15', 'High', 'Stage 1, Stage 2', '1', '24', '4', '0.96', '24.00', NULL, '2024-12-31 08:32:11', '2024-12-31 08:32:11'),
(37, NULL, NULL, 35, 'ISO-9000', 'jj', '4', '26-45', 'High', 'Stage 1, Stage 2', '1', '35', '35', '12.25', '35.00', NULL, '2024-12-31 08:36:07', '2024-12-31 08:36:07'),
(38, NULL, NULL, 38, 'ISO-14000', 'gg', '2.5', '11-15', 'High', 'Stage 1, Stage 2', '1', '33', '3', '0.99', '33.00', NULL, '2025-01-10 05:05:56', '2025-01-10 05:05:56'),
(39, NULL, NULL, 39, 'ISO-9000', 'ok', '2.5', '11-15', 'High', 'Stage 1, Stage 2', '1', '24', '2', '0.48', '24.00', NULL, '2025-01-10 05:08:00', '2025-01-10 05:08:00'),
(40, NULL, NULL, 40, 'ISO-9000', NULL, '4', '26-45', 'High', 'Stage 1, Stage 2', '1', '40', '4', '1.6', '40.00', NULL, '2025-02-04 06:11:57', '2025-02-04 06:11:57'),
(41, NULL, NULL, 41, 'ISO-27000', NULL, '6', '66-85', 'High', 'Stage 1, Stage 2', '1', '80', '8', '6.4', '80.00', NULL, '2025-02-04 06:19:40', '2025-02-04 06:19:40'),
(42, NULL, NULL, 42, 'ISO-9000', 'ok', '2.5', '11-15', 'High', 'Stage 1, Stage 2', '23', '23', '2', '10.58', '529.00', NULL, '2025-02-07 05:39:14', '2025-02-07 05:39:14'),
(43, NULL, NULL, 43, 'ISO-9000', NULL, '6', '66-85', 'High', 'Stage 1, Stage 2', '1', '60', '7', '4.2', '60.00', NULL, '2025-02-07 05:46:25', '2025-02-07 05:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `is_sale_order` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'Draft',
  `order_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `customerAddress` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `customerEmail` varchar(255) DEFAULT NULL,
  `customerTaxID` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `requester` varchar(255) DEFAULT NULL,
  `requesterEmail` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `requesterAddress` varchar(255) DEFAULT NULL,
  `requesterPosition` varchar(255) DEFAULT NULL,
  `requesterTaxID` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `validtill` date DEFAULT NULL,
  `paymentterms` varchar(255) NOT NULL,
  `quotationType` varchar(255) DEFAULT NULL,
  `agreementTerms` text DEFAULT NULL,
  `subtotal_final` varchar(25) NOT NULL DEFAULT '0',
  `tax_final` varchar(25) NOT NULL DEFAULT '0',
  `total` varchar(25) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `userid`, `companyid`, `employee_id`, `is_sale_order`, `status`, `order_id`, `type`, `customer`, `customerAddress`, `mobile`, `customerEmail`, `customerTaxID`, `country`, `city`, `street`, `building`, `state`, `zip_code`, `requester`, `requesterEmail`, `phone_number`, `requesterAddress`, `requesterPosition`, `requesterTaxID`, `date`, `validtill`, `paymentterms`, `quotationType`, `agreementTerms`, `subtotal_final`, `tax_final`, `total`, `created_at`, `updated_at`) VALUES
(10, NULL, NULL, '1', 1, 'Confirm', NULL, 'standard', '1', '02', NULL, 'rh03026537933@gmail.com', '123535', 'Pakistan', 'Vehari', NULL, '123535', 'punjab', '61100', 'Hamza', 'h@gmail.com', 'ae-9713 546 4665', 'multan', 'developer', NULL, '2024-11-12', '2024-11-13', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-11-12 11:25:27', '2024-11-13 17:55:50'),
(11, NULL, NULL, '1', 1, 'Confirm', NULL, 'standard', '2', '32', NULL, 'rh033@gmail.com', '1111111', 'Pakistan', 'vehari', NULL, '1111111', 'punjab', '112211', 'Hamza', 'hw@gmail.com', '9713 454 3657', 'multan', 'jon', NULL, '2024-11-06', '2024-11-14', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-11-12 12:24:55', '2024-11-12 12:46:16'),
(12, NULL, NULL, '1', 1, 'Confirm', NULL, 'standard', '1', '02', NULL, 'rh03026537933@gmail.com', '123535', 'Pakistan', 'Vehari', NULL, '123535', 'punjab', '61100', 'Hamza', 'hss@gmail.com', 'ae-9713 534 6346', 'multan', 'developer', NULL, '2024-11-29', '2024-11-20', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-11-18 05:51:06', '2024-11-18 07:01:23'),
(18, NULL, NULL, '1', 1, 'Confirm', NULL, 'standard', '2', '32', 'af-9346 436 4347', 'rh033@gmail.com', '1111111', 'Pakistan', 'vehari', NULL, '1111111', 'punjab', '112211', 'haris', 'sd@gmail.com', '0346366757', 'multan', 'developer', NULL, '2024-11-28', '2024-11-29', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-11-28 13:41:18', '2024-12-19 07:56:53'),
(22, NULL, NULL, '3', 1, 'Confirm', NULL, 'standard', '4', 'hometown', '0235436643', 'rh033@gmail.com', '232131', 'Pakistan', 'vehari', NULL, '232131', 'sindh', '3543436', 'haris', 'hh@gmail.com', '03011226041', 'dgfdhgtrh', 'developer', NULL, '2024-12-23', '2024-12-25', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-12-21 13:59:21', '2024-12-21 14:01:44'),
(27, NULL, NULL, '1', 1, 'Confirm', NULL, 'standard', '4', 'hometown', '0235436643', 'rh033@gmail.com', '232131', 'Pakistan', 'vehari', NULL, '232131', 'sindh', '3543436', 'Hamza', 'h@gmail.com', '03011226041', 'multan', 'developer', NULL, '2024-12-25', '2024-12-26', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-12-30 11:46:02', '2025-02-04 06:14:40'),
(28, NULL, NULL, '1', 1, 'Confirm', NULL, 'standard', '1', '02', 'af-9334 654 7477', 'rh03026537933@gmail.com', '123535', 'Pakistan', 'Vehari', NULL, '123535', 'punjab', '61100', 'Hamza', 'h@gmail.com', '03011226041', 'multan', 'developer', NULL, '2024-12-27', '2024-12-26', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-12-31 08:11:43', '2025-02-04 06:18:45'),
(29, NULL, NULL, '1', 1, 'Confirm', NULL, 'standard', '4', 'hometown', '0235436643', 'rh033@gmail.com', '232131', 'Pakistan', 'vehari', NULL, '232131', 'sindh', '3543436', 'Hamza', 'ww@gmail.com', '0346366757', 'dffadg', 'hr', NULL, '2024-12-11', '2024-12-19', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-12-31 08:13:25', '2025-02-04 06:26:26'),
(30, NULL, NULL, '1', 0, 'Draft', NULL, 'standard', '1', '02', 'af-9334 654 7477', 'rh03026537933@gmail.com', '123535', 'Pakistan', 'Vehari', NULL, '123535', 'punjab', '61100', 'Hamza', 'hs@gmail.com', '3046547547', 'dffadg', 'jon', NULL, '2024-12-18', '2024-12-27', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-12-31 08:17:40', '2024-12-31 08:17:40'),
(31, NULL, NULL, '1', 0, 'Draft', NULL, 'standard', '4', 'hometown', '0235436643', 'rh033@gmail.com', '232131', 'Pakistan', 'vehari', NULL, '232131', 'sindh', '3543436', 'qulazm', 'hh@gmail.com', '3045436346', 'gghg', 'dfsf', NULL, '2024-12-19', '2024-12-23', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-12-31 08:24:18', '2024-12-31 08:24:18'),
(32, NULL, NULL, '1', 1, 'Confirm', NULL, 'standard', '4', 'hometown', '0235436643', 'rh033@gmail.com', '232131', 'Pakistan', 'vehari', NULL, '232131', 'sindh', '3543436', 'hamza', 'aa@gmail.com', '0353464574', 'dffadg', 'developer', NULL, '2024-12-26', '2024-12-23', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-12-31 08:25:50', '2025-02-07 05:42:24'),
(33, NULL, NULL, '1', 1, 'Confirm', NULL, 'standard', '2', '32', 'af-9346 436 4347', 'rh033@gmail.com', '1111111', 'Pakistan', 'vehari', NULL, '1111111', 'punjab', '112211', 'qulazm', 'hhf@gmail.com', '3046547547', 'multan', 'developer', NULL, '2024-12-25', '2024-12-27', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-12-31 08:32:11', '2025-02-04 06:09:50'),
(34, NULL, NULL, NULL, 1, 'Confirm', NULL, 'product', '4', 'hometown', '0235436643', 'rh033@gmail.com', '232131', NULL, NULL, NULL, NULL, NULL, NULL, 'haris', 'sff@gmail.com', '0235534346', 'multan', NULL, NULL, '2024-12-16', '2024-12-31', '15 Days After Completion', NULL, 'yy', '0', '0', '0', '2024-12-31 08:34:43', '2025-02-04 10:16:51'),
(35, NULL, NULL, '1', 1, 'Confirm', NULL, 'standard', '4', 'hometown', '0235436643', 'rh033@gmail.com', '232131', 'Pakistan', 'vehari', NULL, '232131', 'sindh', '3543436', 'qulazm', 'sd@gmail.com', '5477676888', 'gghg', 'fdf', NULL, '2024-12-16', '2024-12-18', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2024-12-31 08:36:07', '2025-02-04 10:16:43'),
(38, NULL, NULL, '3', 1, 'Confirm', NULL, 'standard', '2', '32', 'af-9346 436 4347', 'rh033@gmail.com', '1111111', 'Pakistan', 'vehari', NULL, '1111111', 'punjab', '112211', 'Hamza', 'h@gmail.com', '03011226049', 'multan', 'developer', NULL, '2025-01-10', '2025-01-09', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2025-01-10 05:05:56', '2025-02-04 06:54:21'),
(39, 1, NULL, '4', 1, 'Confirm', NULL, 'standard', '1', '02', 'af-9334 654 7477', 'rh03026537933@gmail.com', '123535', 'Pakistan', 'Vehari', NULL, '123535', 'punjab', '61100', 'qulazm', 'ww@gmail.com', '03011226048', 'multan', 'jon', NULL, '2025-01-21', '2025-01-24', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2025-01-10 05:07:59', '2025-02-04 06:30:48'),
(40, 1, NULL, '1', 1, 'Confirm', NULL, 'standard', '1', '02', 'af-9334 654 7477', 'rh03026537933@gmail.com', '123535', 'Pakistan', 'Vehari', NULL, '123535', 'punjab', '61100', 'k', 'sdjgh@gmail.com', '0318988788', 'hg', 'j', NULL, '2025-02-27', '2025-03-08', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2025-02-04 06:11:57', '2025-02-04 06:12:02'),
(41, 1, NULL, '4', 1, 'Confirm', NULL, 'standard', '2', '32', 'af-9346 436 4347', 'rh033@gmail.com', '1111111', 'Pakistan', 'vehari', NULL, '1111111', 'punjab', '112211', 'k', 'sdgh@gmail.com', '0318988788', 'h', 'j', NULL, '2025-02-19', '2025-02-26', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2025-02-04 06:19:40', '2025-02-04 06:19:45'),
(42, 1, NULL, '1', 1, 'cancelled', NULL, 'standard', '1', '02', 'af-9334 654 7477', 'rh03026537933@gmail.com', '123535', 'Pakistan', 'Vehari', NULL, '123535', 'punjab', '61100', 'Hamza', 'h@gmail.com', '03011226041', 'multan', 'developer', NULL, '2025-02-07', '2025-02-06', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2025-02-07 05:39:14', '2025-02-07 05:41:17'),
(43, 1, NULL, '1', 1, 'Confirm', NULL, 'standard', '4', 'hometown', '0235436643', 'rh033@gmail.com', '232131', 'Pakistan', 'vehari', NULL, '232131', 'sindh', '3543436', 'k', 'gh@gmail.com', '0318988788', 'hg2', 'j', NULL, '2025-02-27', '2025-03-08', '15 Days After Completion', NULL, 'ISO certifications signify our commitment to quality, consistency, and customer satisfaction. We adhere to internationally recognized standards, ensuring our products/services meet stringent quality benchmarks. Our ISO certifications validate our dedication to continuous improvement and compliance with industry best practices. With ISO certifications, we guarantee transparency, reliability, and trustworthiness in all our processes. Partnering with us means assured excellence and adherence to global quality standards.', '0', '0', '0', '2025-02-07 05:46:25', '2025-02-07 05:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_invoices`
--

CREATE TABLE `quotation_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `sale_order_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Draft',
  `payment_status` varchar(255) NOT NULL DEFAULT 'Not Paid',
  `due_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `percentValue` int(11) DEFAULT NULL,
  `totalAmount` int(11) DEFAULT NULL,
  `paidAmount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_invoices`
--

INSERT INTO `quotation_invoices` (`id`, `userid`, `companyid`, `quotation_id`, `sale_order_number`, `status`, `payment_status`, `due_date`, `start_date`, `account_id`, `invoice_date`, `percentValue`, `totalAmount`, `paidAmount`, `created_at`, `updated_at`) VALUES
(18, NULL, NULL, 24, NULL, 'Validated', 'Not Paid', NULL, NULL, NULL, NULL, 100, 238, 238, '2024-12-30 07:52:48', '2024-12-30 07:53:02'),
(24, NULL, NULL, 25, NULL, 'Validated', 'Not Paid', NULL, NULL, NULL, NULL, 50, 0, 0, '2024-12-30 11:16:12', '2024-12-30 11:18:21'),
(25, NULL, NULL, 26, NULL, 'Validated', 'Not Paid', NULL, NULL, NULL, NULL, 100, 340, 340, '2024-12-30 11:34:15', '2024-12-30 11:34:53'),
(26, NULL, NULL, 27, NULL, 'Validated', 'Not Paid', NULL, NULL, NULL, NULL, 100, 343, 343, '2024-12-30 11:47:06', '2024-12-30 11:49:07'),
(45, NULL, NULL, 28, NULL, 'Draft', 'Not Paid', NULL, NULL, NULL, NULL, 100, 2417, 2417, '2024-12-31 20:24:09', '2024-12-31 20:24:09'),
(46, NULL, NULL, 36, NULL, 'Validated', 'Not Paid', NULL, NULL, NULL, NULL, 100, 0, 0, '2025-01-06 09:29:06', '2025-01-06 11:50:46'),
(47, NULL, NULL, 35, NULL, 'Draft', 'Not Paid', NULL, NULL, NULL, NULL, 50, 47, 24, '2025-01-08 10:31:59', '2025-01-08 10:31:59'),
(48, NULL, NULL, 29, NULL, 'Draft', 'Not Paid', NULL, NULL, 9, '2025-02-20', 0, 25214, 0, '2025-02-07 07:47:34', '2025-02-07 07:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_products`
--

CREATE TABLE `quotation_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(25) DEFAULT NULL,
  `discount` varchar(25) DEFAULT NULL,
  `tax` varchar(25) DEFAULT NULL,
  `subtotal` varchar(25) DEFAULT NULL,
  `total` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_products`
--

INSERT INTO `quotation_products` (`id`, `userid`, `companyid`, `quotation_id`, `item`, `quantity`, `price`, `discount`, `tax`, `subtotal`, `total`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 13, '3', 33, '2343', '2', '2', '77317.00', '78863.34', '2024-11-18 11:19:58', '2024-11-18 11:19:58'),
(7, NULL, NULL, 14, '3', 33, '2343', '1', '2', '77318.00', '78864.36', '2024-11-18 11:58:11', '2024-11-18 11:58:11'),
(9, NULL, NULL, 15, '3', 33, '2343', '3', '2', '77316.00', '78862.32', '2024-11-18 12:03:53', '2024-11-18 12:03:53'),
(11, NULL, NULL, 17, '3', 33, '2343', '2', '2', '77317.00', '78863.34', '2024-11-28 13:36:46', '2024-11-28 13:36:46'),
(12, NULL, NULL, 20, '3', 33, '2343', '2', '2', '77317.00', '78863.34', '2024-12-21 13:54:49', '2024-12-21 13:54:49'),
(15, NULL, NULL, 25, '3', 33, '2343', '2', '2', '77317.00', '78863.34', '2024-12-30 07:57:19', '2024-12-30 07:57:19'),
(16, NULL, NULL, 34, '3', 33, '2343', '3', '2', '77316.00', '78862.32', '2024-12-31 08:34:43', '2024-12-31 08:34:43'),
(17, NULL, NULL, 36, '4', 33, '1234', '4', '2', '40718.00', '41532.36', '2024-12-31 08:37:04', '2024-12-31 08:37:04'),
(18, NULL, NULL, 37, '4', 33, '1234', '4', '2', '40718.00', '41532.36', '2024-12-31 08:39:22', '2024-12-31 08:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `employ_id` int(11) DEFAULT NULL,
  `fromdate` date DEFAULT NULL,
  `todate` date DEFAULT NULL,
  `durationindays` int(11) DEFAULT NULL,
  `durationinhours` int(11) DEFAULT NULL,
  `auditeename` varchar(255) DEFAULT NULL,
  `auditeeaddress` varchar(255) DEFAULT NULL,
  `auditstandard` varchar(255) DEFAULT NULL,
  `auditeephone` varchar(255) DEFAULT NULL,
  `auditeeemail` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `totalemployees` int(11) DEFAULT NULL,
  `typeofstate` varchar(255) DEFAULT NULL,
  `employeecompanyname` varchar(255) DEFAULT NULL,
  `companyaddress` varchar(255) DEFAULT NULL,
  `companyphone` varchar(255) DEFAULT NULL,
  `companyemail` varchar(255) DEFAULT NULL,
  `declarationname` varchar(255) DEFAULT NULL,
  `declarationcontact` varchar(255) DEFAULT NULL,
  `declarationaddress` varchar(255) DEFAULT NULL,
  `declarationemail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `userid`, `companyid`, `employ_id`, `fromdate`, `todate`, `durationindays`, `durationinhours`, `auditeename`, `auditeeaddress`, `auditstandard`, `auditeephone`, `auditeeemail`, `roles`, `totalemployees`, `typeofstate`, `employeecompanyname`, `companyaddress`, `companyphone`, `companyemail`, `declarationname`, `declarationcontact`, `declarationaddress`, `declarationemail`, `created_at`, `updated_at`) VALUES
(28, 1, 15, 28, '2025-01-02', '2025-01-08', 23, 43, NULL, NULL, NULL, NULL, NULL, 'LA (Lead Auditor)', NULL, 'TPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-10 06:46:29', '2025-01-10 07:01:59'),
(29, 1, 15, 29, '2025-01-08', '2025-01-10', 1122, NULL, NULL, NULL, NULL, NULL, NULL, 'LA (Lead Auditor)', NULL, 'TPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-10 07:22:26', '2025-01-10 07:22:44'),
(31, 1, 15, 2, '2025-01-16', '2025-01-15', 1, 2, 'Hamza', 'isl', '232332', '123123', 'hamza@gmail.com', 'SA (Sole Auditor)', 23, 'SPA', 'iso', 'Dubai', '12414235', 'iso@gmail.com', 'numan', '12434645', 'vehari', 'iso@gmail.com', '2025-01-10 07:26:45', '2025-01-10 07:26:45'),
(32, 1, 15, 3, '2025-01-22', '2025-01-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LA (Lead Auditor)', NULL, 'TPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-10 09:54:47', '2025-01-10 09:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `revenues`
--

CREATE TABLE `revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `revenue_date` date DEFAULT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `payment_reciept` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revenues`
--

INSERT INTO `revenues` (`id`, `userid`, `companyid`, `revenue_date`, `amount`, `account_id`, `customer_id`, `description`, `category_id`, `reference_number`, `payment_reciept`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '2024-10-03', '1224', 1, 1, 'ok', 1, '11', 'payment_reciepts/ferenc-almasi-eYpcLDXHVb0-unsplash.jpg', '2024-10-24 09:34:49', '2024-10-24 09:34:49'),
(2, NULL, NULL, '2024-11-07', '1224', 1, 2, 'done', 1, '1212', 'payment_reciepts/ferenc-almasi-eYpcLDXHVb0-unsplash.jpg', '2024-11-05 10:58:43', '2024-11-05 10:58:43'),
(3, NULL, NULL, '2024-11-08', '1224', 2, 2, 'ok', 1, '1122110', 'payment_reciepts/ferenc-almasi-eYpcLDXHVb0-unsplash.jpg', '2024-11-07 06:34:03', '2024-11-07 06:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `guard_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `userid`, `companyid`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'User', 1, 15, 'web', '2025-01-07 11:44:03', '2025-01-23 05:12:35'),
(2, 'Admin', 1, 15, 'web', '2025-01-07 11:44:21', '2025-01-16 07:05:40'),
(3, 'Super Admin-Protoj', 1, 15, 'web', '2025-01-07 11:44:29', '2025-02-07 10:39:38'),
(4, 'Test Role', NULL, NULL, 'web', '2025-01-17 06:48:00', '2025-01-17 06:48:00'),
(5, 'Test Role 2', NULL, NULL, 'web', '2025-01-17 07:03:05', '2025-01-17 07:03:05'),
(6, 'Test Role 3', NULL, NULL, 'web', '2025-01-17 07:03:23', '2025-01-17 07:03:23'),
(7, 'we', NULL, NULL, 'web', '2025-01-17 07:12:35', '2025-01-17 07:12:35'),
(8, 'Test Role 5', NULL, NULL, 'web', '2025-01-17 07:23:18', '2025-01-17 07:23:18'),
(12, 'k-Protoj', NULL, 15, 'web', '2025-01-29 06:47:57', '2025-01-29 06:47:57'),
(13, 'Admin-volvo', NULL, 17, 'web', '2025-01-29 06:59:54', '2025-01-30 05:24:43'),
(14, 'Super Administrator', NULL, NULL, 'web', '2025-01-30 06:46:55', '2025-01-30 06:46:55'),
(15, 'user-volvo', NULL, 17, 'web', '2025-01-31 11:31:04', '2025-01-31 11:31:04'),
(16, 'userd', NULL, 17, 'web', '2025-02-03 08:52:15', '2025-02-03 08:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 8),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(2, 1),
(2, 2),
(2, 3),
(2, 8),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(4, 1),
(4, 2),
(4, 3),
(4, 8),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(5, 1),
(5, 2),
(5, 3),
(5, 8),
(5, 13),
(5, 14),
(5, 15),
(6, 1),
(6, 2),
(6, 3),
(6, 8),
(6, 13),
(6, 14),
(6, 15),
(8, 1),
(8, 2),
(8, 3),
(8, 8),
(8, 13),
(8, 14),
(8, 15),
(9, 1),
(9, 3),
(9, 13),
(9, 14),
(10, 1),
(10, 3),
(10, 13),
(10, 14),
(12, 1),
(12, 3),
(12, 13),
(12, 14),
(13, 1),
(13, 3),
(13, 14),
(13, 16),
(14, 1),
(14, 3),
(14, 14),
(14, 16),
(16, 1),
(16, 3),
(16, 14),
(16, 16),
(17, 1),
(17, 3),
(17, 14),
(18, 1),
(18, 3),
(18, 14),
(20, 1),
(20, 3),
(20, 14),
(21, 1),
(21, 3),
(21, 14),
(22, 1),
(22, 3),
(22, 14),
(24, 1),
(24, 3),
(24, 14),
(25, 1),
(25, 3),
(25, 14),
(26, 1),
(26, 3),
(26, 14),
(28, 1),
(28, 3),
(28, 14),
(29, 1),
(29, 3),
(29, 14),
(30, 1),
(30, 3),
(30, 14),
(32, 1),
(32, 3),
(32, 14),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(36, 1),
(36, 3),
(37, 3),
(37, 13),
(38, 3),
(38, 13),
(40, 3),
(40, 13),
(41, 3),
(42, 3),
(44, 3),
(45, 3),
(46, 3),
(48, 3),
(49, 3),
(49, 13),
(50, 3),
(50, 13),
(52, 3),
(52, 13),
(53, 3),
(54, 3),
(56, 3),
(57, 3),
(58, 3),
(60, 3),
(61, 3),
(62, 3),
(64, 3),
(65, 3),
(66, 3),
(68, 3),
(69, 3),
(70, 3),
(72, 3),
(73, 3),
(74, 3),
(76, 3),
(77, 3),
(77, 13),
(78, 3),
(78, 13),
(80, 3),
(80, 13),
(88, 3),
(89, 3),
(91, 3),
(92, 3),
(96, 3),
(100, 3),
(104, 3),
(108, 3),
(132, 3),
(176, 3),
(220, 3),
(264, 3),
(308, 3),
(352, 3),
(396, 3),
(400, 3),
(404, 3),
(408, 3),
(412, 3),
(416, 3),
(420, 3),
(424, 3),
(428, 3),
(432, 3),
(436, 3),
(476, 3),
(480, 3),
(484, 3),
(488, 3),
(492, 3),
(496, 3),
(500, 3),
(504, 3),
(508, 3),
(512, 3),
(516, 3),
(520, 3),
(524, 3),
(528, 3),
(532, 3),
(540, 3),
(544, 3),
(548, 3),
(552, 3),
(556, 3),
(560, 3),
(564, 3),
(568, 3),
(572, 3),
(576, 3),
(580, 3),
(584, 3),
(588, 3),
(592, 3),
(596, 3),
(597, 3),
(599, 3),
(600, 3),
(601, 3),
(603, 3),
(604, 3),
(605, 3),
(607, 3),
(608, 3),
(609, 3),
(611, 3),
(612, 3),
(613, 3),
(615, 3),
(616, 3),
(617, 3),
(619, 3),
(620, 3),
(621, 3),
(623, 3),
(624, 3),
(627, 3),
(628, 3),
(631, 3),
(632, 3),
(633, 3),
(635, 3),
(636, 3),
(637, 3),
(639, 3),
(640, 3),
(641, 3),
(643, 3),
(644, 3),
(645, 3),
(647, 3),
(648, 3),
(651, 3),
(652, 3),
(653, 3),
(655, 3),
(656, 3),
(657, 3),
(659, 3),
(661, 3),
(665, 3),
(669, 3),
(673, 3),
(676, 3),
(680, 3),
(681, 3),
(683, 3),
(684, 3),
(685, 3),
(728, 3),
(729, 3),
(731, 3),
(732, 3),
(733, 3),
(735, 3);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `note` text DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `people_involved` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `userid`, `companyid`, `project_id`, `date`, `start_time`, `end_time`, `note`, `task_name`, `detail`, `from_date`, `to_date`, `people_involved`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 5, '2024-11-06', NULL, NULL, 'test', 'New', 'yes', '2024-11-12', '2024-11-20', '3', '2024-11-19 08:48:28', '2024-11-19 08:48:28'),
(2, NULL, NULL, 5, '2024-11-06', NULL, NULL, 'test', 'Yoyo', 'no', '2024-11-12', '2024-11-27', '32', '2024-11-19 08:48:28', '2024-11-19 08:48:28'),
(3, NULL, NULL, 10, '2024-11-05', NULL, NULL, 'ISO', 'New', 'dd', '2024-11-20', '2024-11-28', '5', '2024-11-27 13:04:02', '2024-11-27 13:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

CREATE TABLE `scheme` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `iso_name` text DEFAULT NULL,
  `employ_id` int(11) DEFAULT NULL,
  `employ_type` varchar(255) NOT NULL DEFAULT 'employee',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `logo_light` varchar(191) DEFAULT NULL,
  `logo_dark` varchar(191) DEFAULT NULL,
  `favicon` varchar(191) DEFAULT NULL,
  `title_text` varchar(191) DEFAULT NULL,
  `footer_text` varchar(191) DEFAULT NULL,
  `default_language` varchar(191) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `currency_symbol` varchar(191) DEFAULT NULL,
  `date_format` varchar(191) DEFAULT NULL,
  `time_format` varchar(191) DEFAULT NULL,
  `invoice_prefix` varchar(191) DEFAULT NULL,
  `invoice_starting_number` int(11) DEFAULT NULL,
  `quotation_prefix` varchar(191) DEFAULT NULL,
  `proposal_starting_number` int(11) DEFAULT NULL,
  `bill_prefix` varchar(191) DEFAULT NULL,
  `bill_starting_number` int(11) DEFAULT NULL,
  `retainer_prefix` varchar(191) DEFAULT NULL,
  `retainer_starting_number` int(11) DEFAULT NULL,
  `customer_prefix` varchar(191) DEFAULT NULL,
  `vendor_prefix` varchar(191) DEFAULT NULL,
  `invoice_bill_footer_text` varchar(191) DEFAULT NULL,
  `journal_prefix` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `companyid`, `userid`, `logo_light`, `logo_dark`, `favicon`, `title_text`, `footer_text`, `default_language`, `currency`, `currency_symbol`, `date_format`, `time_format`, `invoice_prefix`, `invoice_starting_number`, `quotation_prefix`, `proposal_starting_number`, `bill_prefix`, `bill_starting_number`, `retainer_prefix`, `retainer_starting_number`, `customer_prefix`, `vendor_prefix`, `invoice_bill_footer_text`, `journal_prefix`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'logos/E3Ovl9OFChDvkj9kG9sKlaUlpFDx0AtWEovlruUd.png', 'logos/57kGmkIGWfpZnpmpA3qfXVwbhjp91T9s8m2jtIeM.png', 'favicons/N3vrcGj80LHSC5HCX5sSidHomHAPxqFiNKeBQhc0.png', NULL, 'Powered by Protoj', 'English', 'AED', 'AED', 'mm-dd-yyyy', '24 Hour Format', '#INV', NULL, '#QUOT', NULL, '#BILL', NULL, NULL, NULL, NULL, NULL, 'Powered by Protoj', '#JUR', '2024-07-15 06:19:30', '2024-07-19 03:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `stage_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `standards`
--

CREATE TABLE `standards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isocertificate` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `sale_price` varchar(25) DEFAULT NULL,
  `purchase_price` varchar(25) DEFAULT NULL,
  `tax` varchar(25) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `userid`, `companyid`, `product_name`, `sku`, `sale_price`, `purchase_price`, `tax`, `unit`, `quantity`, `category`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'hamza', '7687', '37534346436457', '2004543634634', '2', '1', 33, 'Test', 'kk', '2024-11-06 07:08:48', '2024-11-06 07:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `stage_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `task_title` varchar(255) DEFAULT NULL,
  `employees` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_data`
--

CREATE TABLE `task_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `information_name` varchar(255) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `doc_owner` varchar(255) DEFAULT NULL,
  `doc_ref_no` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tax_rate` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_default_checklist`
--

CREATE TABLE `training_default_checklist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `evidence_path` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_default_checklist`
--

INSERT INTO `training_default_checklist` (`id`, `userid`, `companyid`, `name`, `availability`, `evidence_path`, `remarks`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Hamza', 'Available', 'defaultchecklists/U4dE99XCk95WdOGUObpfW015BUOPV8Q4k4dIetcu.jpg', '10', '2024-12-24 10:13:56', '2024-12-24 10:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `training_questionare_form`
--

CREATE TABLE `training_questionare_form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `inputBoxType` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `inputMultiple` varchar(255) DEFAULT NULL,
  `validationAttribute` varchar(255) DEFAULT NULL,
  `formname` varchar(255) DEFAULT NULL,
  `htmlcontent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `userid`, `companyid`, `name`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'kg', '2024-12-28 06:37:19', '2024-12-28 06:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `companyid`, `photo`, `name`, `lname`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 15, '/storage/profile-images/iTfFbKerJj7s7AvU4swY2ohzLVC39w5ZhJLYgnb0.jpg', 'Hamza', 'Rana', 'hamza..', 'admin@mail.com', NULL, '$2y$12$nnx.7FradgedaGw5NNWMYeuarjjXqoYPpW0TnlKtR.195Glt2lVzK', NULL, '2024-10-22 05:18:40', '2025-02-06 07:49:40'),
(7, 15, NULL, 'Admin', 'new', 'faizanHR', 'h@gmail.com', NULL, '$2y$12$nnx.7FradgedaGw5NNWMYeuarjjXqoYPpW0TnlKtR.195Glt2lVzK', NULL, '2025-01-07 08:20:45', '2025-01-23 05:16:01'),
(8, 17, NULL, 'Bin', 'Usama', NULL, 'hh@gmail.com', NULL, '$2y$12$aE9FWzWApN8i7eBt2xsxs.nTdg/58Ppo/XwptjPnKDzgz0fd.rhLe', NULL, '2025-01-08 05:14:58', '2025-01-09 09:57:35'),
(9, 18, NULL, 'Haris', 'Shoaib', NULL, 'rh033@gmail.com', NULL, '$2y$12$UvWZBsF8jR9PHa5U0GMXiO00sTskk8gR7iLvf96ixPMD6jrYbsuiS', NULL, '2025-01-08 05:27:05', '2025-01-08 05:27:05'),
(10, 16, NULL, 'Devin Avila', 'Newman', NULL, 'rajoveny@mailinator.com', NULL, '$2y$12$hvxy2GAfGMuakNTHhSt8JODmGwKob9O647oOSNKlZ9PfMmn1199Eu', NULL, '2025-01-14 05:18:04', '2025-01-14 05:18:04'),
(11, NULL, NULL, 'HR gk', 'den', NULL, 'den@gmail.com', NULL, '$2y$12$D/y.jcnS2QXJRSgHRqs6KOeiSMBsGyxfWNRsgqH3Dw4DIL/lyYpyO', NULL, '2025-02-03 08:47:42', '2025-02-03 08:47:42'),
(12, NULL, NULL, 'HR gk', 'Admin', NULL, 'jjjjn@gmail.com', NULL, '$2y$12$NMvo6vCymW880NLTCBDqw.cwOFNmcvMBb5YBsEbXLDpDw39Gz3te.', NULL, '2025-02-03 08:48:14', '2025-02-03 08:48:14'),
(13, NULL, NULL, 'HR gk', 'Qasim', NULL, 'n@gmail.com', NULL, '$2y$12$Osa9PXA1SLehZtXxN2Jll.KCk8tEQIRjNDU0p7o.7sosd8AZIopKa', NULL, '2025-02-03 08:48:39', '2025-02-03 08:48:39'),
(14, NULL, NULL, 'z', 'HR', NULL, '3en@gmail.com', NULL, '$2y$12$m6Otpv19SIg1AjxG0hrN7OqnbfSVGh0jLn.2haHYNVtgjnGCE1NWS', NULL, '2025-02-03 08:49:54', '2025-02-03 08:49:54'),
(15, NULL, NULL, 'HR gk', 'ss', NULL, 'sssn@gmail.com', NULL, '$2y$12$.4QVgePuhiRN1curu.K/g.gUiHX210SfZDPB0xwtt17R.FeZsC0L6', NULL, '2025-02-03 08:52:54', '2025-02-03 08:52:54'),
(16, NULL, NULL, 'HR gk', 'Admin', NULL, 'hhhn@gmail.com', NULL, '$2y$12$LIYRCQYPc1yiuuzvE8ec7.wVQPZ0kCT8ogARMJQyUW2BWUhcCAuiW', NULL, '2025-02-04 09:45:38', '2025-02-04 09:45:38'),
(17, NULL, NULL, 'Hafsa', 'ss', NULL, '8in@gmail.com', NULL, '$2y$12$877H6VACfmbTAaZbQxgdp.5jqqOgzdqoharA8Jjpw6kQU.SmhciVO', NULL, '2025-02-05 05:04:57', '2025-02-05 05:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `vendor_type` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `job_position` varchar(255) DEFAULT NULL,
  `vendor_title` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `tax_id` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `userid`, `companyid`, `vendor_type`, `company_name`, `vendor_name`, `job_position`, `vendor_title`, `website`, `tax_id`, `mobile_number`, `phone_number`, `email`, `street`, `city`, `state`, `country`, `zip_code`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, 'individual', 'IPHONE', 'hamzarana', 'developer', 'Mr', NULL, '1111111', '3 463 4666', '4 664 6466', 'gg@gmail.com', '12', 'vehari', 'punjab', 'Nepal', '124134', '2024-10-24 08:46:34', '2024-10-24 08:46:34'),
(3, NULL, NULL, 'company', 'Protoj', NULL, NULL, 'Mr', 'http://127.0.0.1:8000/pipelines/leads-edit/43', '232131', '046575757', '5477676888', 'rh033@gmail.com', '12', 'vehari', 'Punjab', 'Antigua and Barbuda', '3543436', '2024-12-02 07:11:50', '2024-12-02 07:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `work_entries`
--

CREATE TABLE `work_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `employee` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) DEFAULT NULL,
  `end_date` varchar(30) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_entries`
--

INSERT INTO `work_entries` (`id`, `userid`, `companyid`, `employee`, `type`, `start_date`, `end_date`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Hamza Khalid Rana', 'Overtime Hours', '2024-10-10', '2024-10-10', 'iso certificates', '2024-10-23 07:26:11', '2024-11-07 11:04:44'),
(2, NULL, 2, 'Hamza Khalid Rana', 'Attendance', '2024-12-27', '2024-12-26', 'ok', '2024-12-20 09:03:00', '2024-12-20 09:04:10'),
(3, NULL, 2, 'Haris', 'Overtime Hours', '2024-12-20', '2024-12-19', 'kk', '2024-12-20 09:04:00', '2024-12-20 09:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `work_infos`
--

CREATE TABLE `work_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `employ_id` int(11) DEFAULT NULL,
  `expenses` varchar(255) DEFAULT NULL,
  `time_sheet` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `workaddress` varchar(255) DEFAULT NULL,
  `worklocation` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_infos`
--

INSERT INTO `work_infos` (`id`, `userid`, `companyid`, `employ_id`, `expenses`, `time_sheet`, `role`, `workaddress`, `worklocation`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, NULL, '4', 'HR', 'Dubai', 'Abu Dhabi', '2024-11-07 05:50:06', '2024-11-07 05:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `work_orders`
--

CREATE TABLE `work_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `employ_id` int(11) DEFAULT NULL,
  `sale_order_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_orders`
--

INSERT INTO `work_orders` (`id`, `userid`, `companyid`, `quotation_id`, `project_id`, `employ_id`, `sale_order_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(8, 1, 2, 21, 6, 3, 11, '2024-12-27', '2024-12-26', '2024-12-23 10:35:09', '2024-12-23 10:35:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_findings`
--
ALTER TABLE `audit_findings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_reports`
--
ALTER TABLE `audit_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_payments`
--
ALTER TABLE `bill_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_questionare_9000`
--
ALTER TABLE `certification_questionare_9000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_questionare_14000`
--
ALTER TABLE `certification_questionare_14000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_questionare_20000`
--
ALTER TABLE `certification_questionare_20000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_questionare_21000`
--
ALTER TABLE `certification_questionare_21000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_questionare_22000`
--
ALTER TABLE `certification_questionare_22000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_questionare_37000`
--
ALTER TABLE `certification_questionare_37000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_questionare_45000`
--
ALTER TABLE `certification_questionare_45000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_questionare_50000`
--
ALTER TABLE `certification_questionare_50000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_questionare_55001`
--
ALTER TABLE `certification_questionare_55001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_questionare_haccp`
--
ALTER TABLE `certification_questionare_haccp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_questionare_machine_inspection`
--
ALTER TABLE `certification_questionare_machine_inspection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_questionare_training`
--
ALTER TABLE `certification_questionare_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_account_sub_types`
--
ALTER TABLE `chart_of_account_sub_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_account_types`
--
ALTER TABLE `chart_of_account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_assigned_modules`
--
ALTER TABLE `company_assigned_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_assigned_modules_company_id_foreign` (`company_id`),
  ADD KEY `company_assigned_modules_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `company_settings`
--
ALTER TABLE `company_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_notes`
--
ALTER TABLE `credit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_document`
--
ALTER TABLE `customer_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employ_badges`
--
ALTER TABLE `employ_badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employ_logs`
--
ALTER TABLE `employ_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `haccp_default_checklist`
--
ALTER TABLE `haccp_default_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `haccp_questionare_form`
--
ALTER TABLE `haccp_questionare_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inspections`
--
ALTER TABLE `inspections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso9000_default_checklist`
--
ALTER TABLE `iso9000_default_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso9000_questionare_form`
--
ALTER TABLE `iso9000_questionare_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso14000_default_checklist`
--
ALTER TABLE `iso14000_default_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso14000_questionare_form`
--
ALTER TABLE `iso14000_questionare_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso20000_default_checklist`
--
ALTER TABLE `iso20000_default_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso20000_questionare_form`
--
ALTER TABLE `iso20000_questionare_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso21000_default_checklist`
--
ALTER TABLE `iso21000_default_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso21000_questionare_form`
--
ALTER TABLE `iso21000_questionare_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso22000_default_checklist`
--
ALTER TABLE `iso22000_default_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso22000_questionare_form`
--
ALTER TABLE `iso22000_questionare_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso37000_default_checklist`
--
ALTER TABLE `iso37000_default_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso37000_questionare_form`
--
ALTER TABLE `iso37000_questionare_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso45000_default_checklist`
--
ALTER TABLE `iso45000_default_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso45000_questionare_form`
--
ALTER TABLE `iso45000_questionare_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso50000_default_checklist`
--
ALTER TABLE `iso50000_default_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso50000_questionare_form`
--
ALTER TABLE `iso50000_questionare_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso55000_default_checklist`
--
ALTER TABLE `iso55000_default_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso55001_questionare_form`
--
ALTER TABLE `iso55001_questionare_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iso_auditors`
--
ALTER TABLE `iso_auditors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_assets`
--
ALTER TABLE `issue_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_entries`
--
ALTER TABLE `journal_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_items`
--
ALTER TABLE `journal_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machineinspection_default_checklist`
--
ALTER TABLE `machineinspection_default_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine_inspection_questionare_form`
--
ALTER TABLE `machine_inspection_questionare_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mandays_1400`
--
ALTER TABLE `mandays_1400`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mandays_9000`
--
ALTER TABLE `mandays_9000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mandays_20000`
--
ALTER TABLE `mandays_20000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mandays_22000`
--
ALTER TABLE `mandays_22000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mandays_37000`
--
ALTER TABLE `mandays_37000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mandays_45000`
--
ALTER TABLE `mandays_45000`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_notes`
--
ALTER TABLE `meeting_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payslips`
--
ALTER TABLE `payslips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslips_items`
--
ALTER TABLE `payslips_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personalrisks`
--
ALTER TABLE `personalrisks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `private_infos`
--
ALTER TABLE `private_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualification_of_standards`
--
ALTER TABLE `qualification_of_standards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotationlines`
--
ALTER TABLE `quotationlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_invoices`
--
ALTER TABLE `quotation_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_products`
--
ALTER TABLE `quotation_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revenues`
--
ALTER TABLE `revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheme`
--
ALTER TABLE `scheme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standards`
--
ALTER TABLE `standards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_data`
--
ALTER TABLE `task_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_default_checklist`
--
ALTER TABLE `training_default_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_questionare_form`
--
ALTER TABLE `training_questionare_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_entries`
--
ALTER TABLE `work_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_infos`
--
ALTER TABLE `work_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_orders`
--
ALTER TABLE `work_orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_findings`
--
ALTER TABLE `audit_findings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_reports`
--
ALTER TABLE `audit_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bill_payments`
--
ALTER TABLE `bill_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certification_questionare_9000`
--
ALTER TABLE `certification_questionare_9000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification_questionare_14000`
--
ALTER TABLE `certification_questionare_14000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification_questionare_20000`
--
ALTER TABLE `certification_questionare_20000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification_questionare_21000`
--
ALTER TABLE `certification_questionare_21000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification_questionare_22000`
--
ALTER TABLE `certification_questionare_22000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification_questionare_37000`
--
ALTER TABLE `certification_questionare_37000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification_questionare_45000`
--
ALTER TABLE `certification_questionare_45000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification_questionare_50000`
--
ALTER TABLE `certification_questionare_50000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification_questionare_55001`
--
ALTER TABLE `certification_questionare_55001`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification_questionare_haccp`
--
ALTER TABLE `certification_questionare_haccp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification_questionare_machine_inspection`
--
ALTER TABLE `certification_questionare_machine_inspection`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification_questionare_training`
--
ALTER TABLE `certification_questionare_training`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chart_of_account_sub_types`
--
ALTER TABLE `chart_of_account_sub_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chart_of_account_types`
--
ALTER TABLE `chart_of_account_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `company_assigned_modules`
--
ALTER TABLE `company_assigned_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `company_settings`
--
ALTER TABLE `company_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `credit_notes`
--
ALTER TABLE `credit_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_document`
--
ALTER TABLE `customer_document`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employ_badges`
--
ALTER TABLE `employ_badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employ_logs`
--
ALTER TABLE `employ_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `haccp_default_checklist`
--
ALTER TABLE `haccp_default_checklist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `haccp_questionare_form`
--
ALTER TABLE `haccp_questionare_form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inspections`
--
ALTER TABLE `inspections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `iso9000_default_checklist`
--
ALTER TABLE `iso9000_default_checklist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iso9000_questionare_form`
--
ALTER TABLE `iso9000_questionare_form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iso14000_default_checklist`
--
ALTER TABLE `iso14000_default_checklist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iso14000_questionare_form`
--
ALTER TABLE `iso14000_questionare_form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iso20000_default_checklist`
--
ALTER TABLE `iso20000_default_checklist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iso20000_questionare_form`
--
ALTER TABLE `iso20000_questionare_form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iso21000_default_checklist`
--
ALTER TABLE `iso21000_default_checklist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `iso21000_questionare_form`
--
ALTER TABLE `iso21000_questionare_form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `iso22000_default_checklist`
--
ALTER TABLE `iso22000_default_checklist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iso22000_questionare_form`
--
ALTER TABLE `iso22000_questionare_form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iso37000_default_checklist`
--
ALTER TABLE `iso37000_default_checklist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iso37000_questionare_form`
--
ALTER TABLE `iso37000_questionare_form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iso45000_default_checklist`
--
ALTER TABLE `iso45000_default_checklist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iso45000_questionare_form`
--
ALTER TABLE `iso45000_questionare_form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iso50000_default_checklist`
--
ALTER TABLE `iso50000_default_checklist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iso50000_questionare_form`
--
ALTER TABLE `iso50000_questionare_form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iso55000_default_checklist`
--
ALTER TABLE `iso55000_default_checklist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iso55001_questionare_form`
--
ALTER TABLE `iso55001_questionare_form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iso_auditors`
--
ALTER TABLE `iso_auditors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `issue_assets`
--
ALTER TABLE `issue_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `journal_entries`
--
ALTER TABLE `journal_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `journal_items`
--
ALTER TABLE `journal_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `machineinspection_default_checklist`
--
ALTER TABLE `machineinspection_default_checklist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `machine_inspection_questionare_form`
--
ALTER TABLE `machine_inspection_questionare_form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mandays_1400`
--
ALTER TABLE `mandays_1400`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mandays_9000`
--
ALTER TABLE `mandays_9000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mandays_20000`
--
ALTER TABLE `mandays_20000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mandays_22000`
--
ALTER TABLE `mandays_22000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mandays_37000`
--
ALTER TABLE `mandays_37000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mandays_45000`
--
ALTER TABLE `mandays_45000`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_notes`
--
ALTER TABLE `meeting_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payslips`
--
ALTER TABLE `payslips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payslips_items`
--
ALTER TABLE `payslips_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=736;

--
-- AUTO_INCREMENT for table `personalrisks`
--
ALTER TABLE `personalrisks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `private_infos`
--
ALTER TABLE `private_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qualification_of_standards`
--
ALTER TABLE `qualification_of_standards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotationlines`
--
ALTER TABLE `quotationlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `quotation_invoices`
--
ALTER TABLE `quotation_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `quotation_products`
--
ALTER TABLE `quotation_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `revenues`
--
ALTER TABLE `revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scheme`
--
ALTER TABLE `scheme`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standards`
--
ALTER TABLE `standards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_data`
--
ALTER TABLE `task_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_default_checklist`
--
ALTER TABLE `training_default_checklist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `training_questionare_form`
--
ALTER TABLE `training_questionare_form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `work_entries`
--
ALTER TABLE `work_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `work_infos`
--
ALTER TABLE `work_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work_orders`
--
ALTER TABLE `work_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company_assigned_modules`
--
ALTER TABLE `company_assigned_modules`
  ADD CONSTRAINT `company_assigned_modules_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_assigned_modules_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
