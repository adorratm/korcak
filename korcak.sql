-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 20, 2023 at 11:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `korcak`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `seo_url` longtext DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `seo_url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `seo_url`, `img_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 'Blog Yazıları', 'blog-yazilari', NULL, 'tr', 1, 1, '2022-11-21 12:42:35', '2022-11-21 12:42:35'),
(2, 'Blogs', 'blogs', NULL, 'en', 1, 1, '2023-01-30 11:32:49', '2023-01-30 11:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `url`, `img_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(1, 'İZMİR BÜYÜKŞEHİR BELEDİYESİ', NULL, '7d60f31cc3a27f2271c9ef42948c87d2.webp', 'tr', 1, 1, '2023-04-20 08:18:55', '2023-04-20 08:18:55', '2023-04-20 08:18:24'),
(2, 'İSTANBUL BÜYÜKŞEHİR BELEDİYESİ', NULL, '82f5f6cd3f400e3eb5d1685377f0b6db.webp', 'tr', 2, 1, '2023-04-20 08:19:09', '2023-04-20 08:19:09', '2023-04-20 08:18:56'),
(3, 'MERSİN BÜYÜKŞEHİR BELEDİYESİ', NULL, '05b4eeabbd078d369a6bedc925e86669.webp', 'tr', 3, 1, '2023-04-20 08:19:23', '2023-04-20 08:19:23', '2023-04-20 08:19:11'),
(4, 'ERZURUM BÜYÜKŞEHİR BELEDİYESİ', NULL, 'b8921a7ed9a076314a3c987a25b865c3.webp', 'tr', 4, 1, '2023-04-20 08:19:36', '2023-04-20 08:19:36', '2023-04-20 08:19:24'),
(5, 'AYDIN BÜYÜKŞEHİR BELEDİYESİ', NULL, 'd32f14adbd5c7704b37ed7d71f27d5e2.webp', 'tr', 5, 1, '2023-04-20 08:19:48', '2023-04-20 08:19:48', '2023-04-20 08:19:37'),
(6, 'KOCAELİ BÜYÜKŞEHİR BELEDİYESİ', NULL, 'f21e7ba58a9bad2b245a40a87919ee8b.webp', 'tr', 6, 1, '2023-04-20 08:20:00', '2023-04-20 08:20:00', '2023-04-20 08:19:50'),
(7, 'BURSA BÜYÜKŞEHİR BELEDİYESİ', NULL, '4efd58396c707278007950c1ba7193c5.webp', 'tr', 7, 1, '2023-04-20 08:20:13', '2023-04-20 08:20:13', '2023-04-20 08:20:02'),
(8, 'ANKARA BÜYÜKŞEHİR BELEDİYESİ', NULL, 'f212687cd05783ba3d184471781dd980.webp', 'tr', 8, 1, '2023-04-20 08:20:25', '2023-04-20 08:20:25', '2023-04-20 08:20:14'),
(9, 'İZMİR METROPOLITAN MUNICIPALITY', NULL, '6647f244438042cf156940304574cf1c.webp', 'en', 1, 1, '2023-04-20 08:30:01', '2023-04-20 08:30:01', '2023-04-20 08:29:39'),
(10, 'İSTANBUL METROPOLITAN MUNICIPALITY', NULL, 'b7eb397f7eb3b7cb045bce7b516ef412.webp', 'en', 2, 1, '2023-04-20 08:30:39', '2023-04-20 08:30:39', '2023-04-20 08:30:28'),
(11, 'MERSİN METROPOLITAN MUNICIPALITY', NULL, 'a77b231e90e1f017e7bb739a2a6b7ac0.webp', 'en', 3, 1, '2023-04-20 08:30:47', '2023-04-20 08:30:47', '2023-04-20 08:30:40'),
(12, 'ERZURUM METROPOLITAN MUNICIPALITY', NULL, '920c7199c693c9122cf1a39232338e74.webp', 'en', 4, 1, '2023-04-20 08:30:54', '2023-04-20 08:30:54', '2023-04-20 08:30:48'),
(13, 'AYDIN METROPOLITAN MUNICIPALITY', NULL, '731a822d54c58ed5a7d765e24618d215.webp', 'en', 5, 1, '2023-04-20 08:31:01', '2023-04-20 08:31:01', '2023-04-20 08:30:55'),
(14, 'KOCAELİ METROPOLITAN MUNICIPALITY', NULL, '433865a019bf21296bdc0960c6711367.webp', 'en', 6, 1, '2023-04-20 08:31:09', '2023-04-20 08:31:09', '2023-04-20 08:31:02'),
(15, 'BURSA METROPOLITAN MUNICIPALITY', NULL, '16134883afca1e7f7e9241ab15929e99.webp', 'en', 7, 1, '2023-04-20 08:31:17', '2023-04-20 08:31:17', '2023-04-20 08:31:11'),
(16, 'ANKARA METROPOLITAN MUNICIPALITY', NULL, '1df4d39c492510a39e4af39678ac4ad2.webp', 'en', 8, 1, '2023-04-20 08:31:25', '2023-04-20 08:31:25', '2023-04-20 08:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `ID` int(11) NOT NULL,
  `code` varchar(3) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `dial_code` int(11) DEFAULT NULL,
  `currency_name` varchar(20) DEFAULT NULL,
  `currency_symbol` varchar(20) DEFAULT NULL,
  `currency_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`ID`, `code`, `name`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES
(1, 'AF', 'Afghanistan', 93, 'Afghan afghani', 'Ø‹', 'AFN'),
(2, 'AL', 'Albania', 355, 'Albanian lek', 'L', 'ALL'),
(3, 'DZ', 'Algeria', 213, 'Algerian dinar', 'Ø¯.Ø¬', 'DZD'),
(4, 'AS', 'American Samoa', 1684, '', '', ''),
(5, 'AD', 'Andorra', 376, 'Euro', 'â‚¬', 'EUR'),
(6, 'AO', 'Angola', 244, 'Angolan kwanza', 'Kz', 'AOA'),
(7, 'AI', 'Anguilla', 1264, 'East Caribbean dolla', '$', 'XCD'),
(8, 'AQ', 'Antarctica', 0, '', '', ''),
(9, 'AG', 'Antigua And Barbuda', 1268, 'East Caribbean dolla', '$', 'XCD'),
(10, 'AR', 'Argentina', 54, 'Argentine peso', '$', 'ARS'),
(11, 'AM', 'Armenia', 374, 'Armenian dram', '', 'AMD'),
(12, 'AW', 'Aruba', 297, 'Aruban florin', 'Æ’', 'AWG'),
(13, 'AU', 'Australia', 61, 'Australian dollar', '$', 'AUD'),
(14, 'AT', 'Austria', 43, 'Euro', 'â‚¬', 'EUR'),
(15, 'AZ', 'Azerbaijan', 994, 'Azerbaijani manat', '', 'AZN'),
(16, 'BS', 'Bahamas The', 1242, '', '', ''),
(17, 'BH', 'Bahrain', 973, 'Bahraini dinar', '.Ø¯.Ø¨', 'BHD'),
(18, 'BD', 'Bangladesh', 880, 'Bangladeshi taka', 'à§³', 'BDT'),
(19, 'BB', 'Barbados', 1246, 'Barbadian dollar', '$', 'BBD'),
(20, 'BY', 'Belarus', 375, 'Belarusian ruble', 'Br', 'BYR'),
(21, 'BE', 'Belgium', 32, 'Euro', 'â‚¬', 'EUR'),
(22, 'BZ', 'Belize', 501, 'Belize dollar', '$', 'BZD'),
(23, 'BJ', 'Benin', 229, 'West African CFA fra', 'Fr', 'XOF'),
(24, 'BM', 'Bermuda', 1441, 'Bermudian dollar', '$', 'BMD'),
(25, 'BT', 'Bhutan', 975, 'Bhutanese ngultrum', 'Nu.', 'BTN'),
(26, 'BO', 'Bolivia', 591, 'Bolivian boliviano', 'Bs.', 'BOB'),
(27, 'BA', 'Bosnia and Herzegovina', 387, 'Bosnia and Herzegovi', 'KM or ÐšÐœ', 'BAM'),
(28, 'BW', 'Botswana', 267, 'Botswana pula', 'P', 'BWP'),
(29, 'BV', 'Bouvet Island', 0, '', '', ''),
(30, 'BR', 'Brazil', 55, 'Brazilian real', 'R$', 'BRL'),
(31, 'IO', 'British Indian Ocean Territory', 246, 'United States dollar', '$', 'USD'),
(32, 'BN', 'Brunei', 673, 'Brunei dollar', '$', 'BND'),
(33, 'BG', 'Bulgaria', 359, 'Bulgarian lev', 'Ð»Ð²', 'BGN'),
(34, 'BF', 'Burkina Faso', 226, 'West African CFA fra', 'Fr', 'XOF'),
(35, 'BI', 'Burundi', 257, 'Burundian franc', 'Fr', 'BIF'),
(36, 'KH', 'Cambodia', 855, 'Cambodian riel', 'áŸ›', 'KHR'),
(37, 'CM', 'Cameroon', 237, 'Central African CFA ', 'Fr', 'XAF'),
(38, 'CA', 'Canada', 1, 'Canadian dollar', '$', 'CAD'),
(39, 'CV', 'Cape Verde', 238, 'Cape Verdean escudo', 'Esc or $', 'CVE'),
(40, 'KY', 'Cayman Islands', 1345, 'Cayman Islands dolla', '$', 'KYD'),
(41, 'CF', 'Central African Republic', 236, 'Central African CFA ', 'Fr', 'XAF'),
(42, 'TD', 'Chad', 235, 'Central African CFA ', 'Fr', 'XAF'),
(43, 'CL', 'Chile', 56, 'Chilean peso', '$', 'CLP'),
(44, 'CN', 'China', 86, 'Chinese yuan', 'Â¥ or å…ƒ', 'CNY'),
(45, 'CX', 'Christmas Island', 61, '', '', ''),
(46, 'CC', 'Cocos (Keeling) Islands', 672, 'Australian dollar', '$', 'AUD'),
(47, 'CO', 'Colombia', 57, 'Colombian peso', '$', 'COP'),
(48, 'KM', 'Comoros', 269, 'Comorian franc', 'Fr', 'KMF'),
(49, 'CG', 'Congo', 242, '', '', ''),
(50, 'CD', 'Congo The Democratic Republic Of The', 242, '', '', ''),
(51, 'CK', 'Cook Islands', 682, 'New Zealand dollar', '$', 'NZD'),
(52, 'CR', 'Costa Rica', 506, 'Costa Rican colÃ³n', 'â‚¡', 'CRC'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, '', '', ''),
(54, 'HR', 'Croatia (Hrvatska)', 385, '', '', ''),
(55, 'CU', 'Cuba', 53, 'Cuban convertible pe', '$', 'CUC'),
(56, 'CY', 'Cyprus', 357, 'Euro', 'â‚¬', 'EUR'),
(57, 'CZ', 'Czech Republic', 420, 'Czech koruna', 'KÄ', 'CZK'),
(58, 'DK', 'Denmark', 45, 'Danish krone', 'kr', 'DKK'),
(59, 'DJ', 'Djibouti', 253, 'Djiboutian franc', 'Fr', 'DJF'),
(60, 'DM', 'Dominica', 1767, 'East Caribbean dolla', '$', 'XCD'),
(61, 'DO', 'Dominican Republic', 1809, 'Dominican peso', '$', 'DOP'),
(62, 'TP', 'East Timor', 670, 'United States dollar', '$', 'USD'),
(63, 'EC', 'Ecuador', 593, 'United States dollar', '$', 'USD'),
(64, 'EG', 'Egypt', 20, 'Egyptian pound', 'Â£ or Ø¬.Ù…', 'EGP'),
(65, 'SV', 'El Salvador', 503, 'United States dollar', '$', 'USD'),
(66, 'GQ', 'Equatorial Guinea', 240, 'Central African CFA ', 'Fr', 'XAF'),
(67, 'ER', 'Eritrea', 291, 'Eritrean nakfa', 'Nfk', 'ERN'),
(68, 'EE', 'Estonia', 372, 'Euro', 'â‚¬', 'EUR'),
(69, 'ET', 'Ethiopia', 251, 'Ethiopian birr', 'Br', 'ETB'),
(70, 'XA', 'External Territories of Australia', 61, '', '', ''),
(71, 'FK', 'Falkland Islands', 500, 'Falkland Islands pou', 'Â£', 'FKP'),
(72, 'FO', 'Faroe Islands', 298, 'Danish krone', 'kr', 'DKK'),
(73, 'FJ', 'Fiji Islands', 679, '', '', ''),
(74, 'FI', 'Finland', 358, 'Euro', 'â‚¬', 'EUR'),
(75, 'FR', 'France', 33, 'Euro', 'â‚¬', 'EUR'),
(76, 'GF', 'French Guiana', 594, '', '', ''),
(77, 'PF', 'French Polynesia', 689, 'CFP franc', 'Fr', 'XPF'),
(78, 'TF', 'French Southern Territories', 0, '', '', ''),
(79, 'GA', 'Gabon', 241, 'Central African CFA ', 'Fr', 'XAF'),
(80, 'GM', 'Gambia The', 220, '', '', ''),
(81, 'GE', 'Georgia', 995, 'Georgian lari', 'áƒš', 'GEL'),
(82, 'DE', 'Germany', 49, 'Euro', 'â‚¬', 'EUR'),
(83, 'GH', 'Ghana', 233, 'Ghana cedi', 'â‚µ', 'GHS'),
(84, 'GI', 'Gibraltar', 350, 'Gibraltar pound', 'Â£', 'GIP'),
(85, 'GR', 'Greece', 30, 'Euro', 'â‚¬', 'EUR'),
(86, 'GL', 'Greenland', 299, '', '', ''),
(87, 'GD', 'Grenada', 1473, 'East Caribbean dolla', '$', 'XCD'),
(88, 'GP', 'Guadeloupe', 590, '', '', ''),
(89, 'GU', 'Guam', 1671, '', '', ''),
(90, 'GT', 'Guatemala', 502, 'Guatemalan quetzal', 'Q', 'GTQ'),
(91, 'XU', 'Guernsey and Alderney', 44, '', '', ''),
(92, 'GN', 'Guinea', 224, 'Guinean franc', 'Fr', 'GNF'),
(93, 'GW', 'Guinea-Bissau', 245, 'West African CFA fra', 'Fr', 'XOF'),
(94, 'GY', 'Guyana', 592, 'Guyanese dollar', '$', 'GYD'),
(95, 'HT', 'Haiti', 509, 'Haitian gourde', 'G', 'HTG'),
(96, 'HM', 'Heard and McDonald Islands', 0, '', '', ''),
(97, 'HN', 'Honduras', 504, 'Honduran lempira', 'L', 'HNL'),
(98, 'HK', 'Hong Kong S.A.R.', 852, '', '', ''),
(99, 'HU', 'Hungary', 36, 'Hungarian forint', 'Ft', 'HUF'),
(100, 'IS', 'Iceland', 354, 'Icelandic krÃ³na', 'kr', 'ISK'),
(101, 'IN', 'India', 91, 'Indian rupee', 'â‚¹', 'INR'),
(102, 'ID', 'Indonesia', 62, 'Indonesian rupiah', 'Rp', 'IDR'),
(103, 'IR', 'Iran', 98, 'Iranian rial', 'ï·¼', 'IRR'),
(104, 'IQ', 'Iraq', 964, 'Iraqi dinar', 'Ø¹.Ø¯', 'IQD'),
(105, 'IE', 'Ireland', 353, 'Euro', 'â‚¬', 'EUR'),
(106, 'IL', 'Israel', 972, 'Israeli new shekel', 'â‚ª', 'ILS'),
(107, 'IT', 'Italy', 39, 'Euro', 'â‚¬', 'EUR'),
(108, 'JM', 'Jamaica', 1876, 'Jamaican dollar', '$', 'JMD'),
(109, 'JP', 'Japan', 81, 'Japanese yen', 'Â¥', 'JPY'),
(110, 'XJ', 'Jersey', 44, 'British pound', 'Â£', 'GBP'),
(111, 'JO', 'Jordan', 962, 'Jordanian dinar', 'Ø¯.Ø§', 'JOD'),
(112, 'KZ', 'Kazakhstan', 7, 'Kazakhstani tenge', '', 'KZT'),
(113, 'KE', 'Kenya', 254, 'Kenyan shilling', 'Sh', 'KES'),
(114, 'KI', 'Kiribati', 686, 'Australian dollar', '$', 'AUD'),
(115, 'KP', 'Korea North', 850, '', '', ''),
(116, 'KR', 'Korea South', 82, '', '', ''),
(117, 'KW', 'Kuwait', 965, 'Kuwaiti dinar', 'Ø¯.Ùƒ', 'KWD'),
(118, 'KG', 'Kyrgyzstan', 996, 'Kyrgyzstani som', 'Ð»Ð²', 'KGS'),
(119, 'LA', 'Laos', 856, 'Lao kip', 'â‚­', 'LAK'),
(120, 'LV', 'Latvia', 371, 'Euro', 'â‚¬', 'EUR'),
(121, 'LB', 'Lebanon', 961, 'Lebanese pound', 'Ù„.Ù„', 'LBP'),
(122, 'LS', 'Lesotho', 266, 'Lesotho loti', 'L', 'LSL'),
(123, 'LR', 'Liberia', 231, 'Liberian dollar', '$', 'LRD'),
(124, 'LY', 'Libya', 218, 'Libyan dinar', 'Ù„.Ø¯', 'LYD'),
(125, 'LI', 'Liechtenstein', 423, 'Swiss franc', 'Fr', 'CHF'),
(126, 'LT', 'Lithuania', 370, 'Euro', 'â‚¬', 'EUR'),
(127, 'LU', 'Luxembourg', 352, 'Euro', 'â‚¬', 'EUR'),
(128, 'MO', 'Macau S.A.R.', 853, '', '', ''),
(129, 'MK', 'Macedonia', 389, '', '', ''),
(130, 'MG', 'Madagascar', 261, 'Malagasy ariary', 'Ar', 'MGA'),
(131, 'MW', 'Malawi', 265, 'Malawian kwacha', 'MK', 'MWK'),
(132, 'MY', 'Malaysia', 60, 'Malaysian ringgit', 'RM', 'MYR'),
(133, 'MV', 'Maldives', 960, 'Maldivian rufiyaa', '.Þƒ', 'MVR'),
(134, 'ML', 'Mali', 223, 'West African CFA fra', 'Fr', 'XOF'),
(135, 'MT', 'Malta', 356, 'Euro', 'â‚¬', 'EUR'),
(136, 'XM', 'Man (Isle of)', 44, '', '', ''),
(137, 'MH', 'Marshall Islands', 692, 'United States dollar', '$', 'USD'),
(138, 'MQ', 'Martinique', 596, '', '', ''),
(139, 'MR', 'Mauritania', 222, 'Mauritanian ouguiya', 'UM', 'MRO'),
(140, 'MU', 'Mauritius', 230, 'Mauritian rupee', 'â‚¨', 'MUR'),
(141, 'YT', 'Mayotte', 269, '', '', ''),
(142, 'MX', 'Mexico', 52, 'Mexican peso', '$', 'MXN'),
(143, 'FM', 'Micronesia', 691, 'Micronesian dollar', '$', ''),
(144, 'MD', 'Moldova', 373, 'Moldovan leu', 'L', 'MDL'),
(145, 'MC', 'Monaco', 377, 'Euro', 'â‚¬', 'EUR'),
(146, 'MN', 'Mongolia', 976, 'Mongolian tÃ¶grÃ¶g', 'â‚®', 'MNT'),
(147, 'MS', 'Montserrat', 1664, 'East Caribbean dolla', '$', 'XCD'),
(148, 'MA', 'Morocco', 212, 'Moroccan dirham', 'Ø¯.Ù….', 'MAD'),
(149, 'MZ', 'Mozambique', 258, 'Mozambican metical', 'MT', 'MZN'),
(150, 'MM', 'Myanmar', 95, 'Burmese kyat', 'Ks', 'MMK'),
(151, 'NA', 'Namibia', 264, 'Namibian dollar', '$', 'NAD'),
(152, 'NR', 'Nauru', 674, 'Australian dollar', '$', 'AUD'),
(153, 'NP', 'Nepal', 977, 'Nepalese rupee', 'â‚¨', 'NPR'),
(154, 'AN', 'Netherlands Antilles', 599, '', '', ''),
(155, 'NL', 'Netherlands The', 31, '', '', ''),
(156, 'NC', 'New Caledonia', 687, 'CFP franc', 'Fr', 'XPF'),
(157, 'NZ', 'New Zealand', 64, 'New Zealand dollar', '$', 'NZD'),
(158, 'NI', 'Nicaragua', 505, 'Nicaraguan cÃ³rdoba', 'C$', 'NIO'),
(159, 'NE', 'Niger', 227, 'West African CFA fra', 'Fr', 'XOF'),
(160, 'NG', 'Nigeria', 234, 'Nigerian naira', 'â‚¦', 'NGN'),
(161, 'NU', 'Niue', 683, 'New Zealand dollar', '$', 'NZD'),
(162, 'NF', 'Norfolk Island', 672, '', '', ''),
(163, 'MP', 'Northern Mariana Islands', 1670, '', '', ''),
(164, 'NO', 'Norway', 47, 'Norwegian krone', 'kr', 'NOK'),
(165, 'OM', 'Oman', 968, 'Omani rial', 'Ø±.Ø¹.', 'OMR'),
(166, 'PK', 'Pakistan', 92, 'Pakistani rupee', 'â‚¨', 'PKR'),
(167, 'PW', 'Palau', 680, 'Palauan dollar', '$', ''),
(168, 'PS', 'Palestinian Territory Occupied', 970, '', '', ''),
(169, 'PA', 'Panama', 507, 'Panamanian balboa', 'B/.', 'PAB'),
(170, 'PG', 'Papua new Guinea', 675, 'Papua New Guinean ki', 'K', 'PGK'),
(171, 'PY', 'Paraguay', 595, 'Paraguayan guaranÃ­', 'â‚²', 'PYG'),
(172, 'PE', 'Peru', 51, 'Peruvian nuevo sol', 'S/.', 'PEN'),
(173, 'PH', 'Philippines', 63, 'Philippine peso', 'â‚±', 'PHP'),
(174, 'PN', 'Pitcairn Island', 0, '', '', ''),
(175, 'PL', 'Poland', 48, 'Polish zÅ‚oty', 'zÅ‚', 'PLN'),
(176, 'PT', 'Portugal', 351, 'Euro', 'â‚¬', 'EUR'),
(177, 'PR', 'Puerto Rico', 1787, '', '', ''),
(178, 'QA', 'Qatar', 974, 'Qatari riyal', 'Ø±.Ù‚', 'QAR'),
(179, 'RE', 'Reunion', 262, '', '', ''),
(180, 'RO', 'Romania', 40, 'Romanian leu', 'lei', 'RON'),
(181, 'RU', 'Russia', 70, 'Russian ruble', '', 'RUB'),
(182, 'RW', 'Rwanda', 250, 'Rwandan franc', 'Fr', 'RWF'),
(183, 'SH', 'Saint Helena', 290, 'Saint Helena pound', 'Â£', 'SHP'),
(184, 'KN', 'Saint Kitts And Nevis', 1869, 'East Caribbean dolla', '$', 'XCD'),
(185, 'LC', 'Saint Lucia', 1758, 'East Caribbean dolla', '$', 'XCD'),
(186, 'PM', 'Saint Pierre and Miquelon', 508, '', '', ''),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, 'East Caribbean dolla', '$', 'XCD'),
(188, 'WS', 'Samoa', 684, 'Samoan tÄlÄ', 'T', 'WST'),
(189, 'SM', 'San Marino', 378, 'Euro', 'â‚¬', 'EUR'),
(190, 'ST', 'Sao Tome and Principe', 239, 'SÃ£o TomÃ© and PrÃ­n', 'Db', 'STD'),
(191, 'SA', 'Saudi Arabia', 966, 'Saudi riyal', 'Ø±.Ø³', 'SAR'),
(192, 'SN', 'Senegal', 221, 'West African CFA fra', 'Fr', 'XOF'),
(193, 'RS', 'Serbia', 381, 'Serbian dinar', 'Ð´Ð¸Ð½. or din.', 'RSD'),
(194, 'SC', 'Seychelles', 248, 'Seychellois rupee', 'â‚¨', 'SCR'),
(195, 'SL', 'Sierra Leone', 232, 'Sierra Leonean leone', 'Le', 'SLL'),
(196, 'SG', 'Singapore', 65, 'Brunei dollar', '$', 'BND'),
(197, 'SK', 'Slovakia', 421, 'Euro', 'â‚¬', 'EUR'),
(198, 'SI', 'Slovenia', 386, 'Euro', 'â‚¬', 'EUR'),
(199, 'XG', 'Smaller Territories of the UK', 44, '', '', ''),
(200, 'SB', 'Solomon Islands', 677, 'Solomon Islands doll', '$', 'SBD'),
(201, 'SO', 'Somalia', 252, 'Somali shilling', 'Sh', 'SOS'),
(202, 'ZA', 'South Africa', 27, 'South African rand', 'R', 'ZAR'),
(203, 'GS', 'South Georgia', 0, '', '', ''),
(204, 'SS', 'South Sudan', 211, 'South Sudanese pound', 'Â£', 'SSP'),
(205, 'ES', 'Spain', 34, 'Euro', 'â‚¬', 'EUR'),
(206, 'LK', 'Sri Lanka', 94, 'Sri Lankan rupee', 'Rs or à¶»à·”', 'LKR'),
(207, 'SD', 'Sudan', 249, 'Sudanese pound', 'Ø¬.Ø³.', 'SDG'),
(208, 'SR', 'Suriname', 597, 'Surinamese dollar', '$', 'SRD'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, '', '', ''),
(210, 'SZ', 'Swaziland', 268, 'Swazi lilangeni', 'L', 'SZL'),
(211, 'SE', 'Sweden', 46, 'Swedish krona', 'kr', 'SEK'),
(212, 'CH', 'Switzerland', 41, 'Swiss franc', 'Fr', 'CHF'),
(213, 'SY', 'Syria', 963, 'Syrian pound', 'Â£ or Ù„.Ø³', 'SYP'),
(214, 'TW', 'Taiwan', 886, 'New Taiwan dollar', '$', 'TWD'),
(215, 'TJ', 'Tajikistan', 992, 'Tajikistani somoni', 'Ð…Ðœ', 'TJS'),
(216, 'TZ', 'Tanzania', 255, 'Tanzanian shilling', 'Sh', 'TZS'),
(217, 'TH', 'Thailand', 66, 'Thai baht', 'à¸¿', 'THB'),
(218, 'TG', 'Togo', 228, 'West African CFA fra', 'Fr', 'XOF'),
(219, 'TK', 'Tokelau', 690, '', '', ''),
(220, 'TO', 'Tonga', 676, 'Tongan paÊ»anga', 'T$', 'TOP'),
(221, 'TT', 'Trinidad And Tobago', 1868, 'Trinidad and Tobago ', '$', 'TTD'),
(222, 'TN', 'Tunisia', 216, 'Tunisian dinar', 'Ø¯.Øª', 'TND'),
(223, 'TR', 'Turkey', 90, 'Turkish lira', '', 'TRY'),
(224, 'TM', 'Turkmenistan', 7370, 'Turkmenistan manat', 'm', 'TMT'),
(225, 'TC', 'Turks And Caicos Islands', 1649, 'United States dollar', '$', 'USD'),
(226, 'TV', 'Tuvalu', 688, 'Australian dollar', '$', 'AUD'),
(227, 'UG', 'Uganda', 256, 'Ugandan shilling', 'Sh', 'UGX'),
(228, 'UA', 'Ukraine', 380, 'Ukrainian hryvnia', 'â‚´', 'UAH'),
(229, 'AE', 'United Arab Emirates', 971, 'United Arab Emirates', 'Ø¯.Ø¥', 'AED'),
(230, 'GB', 'United Kingdom', 44, 'British pound', 'Â£', 'GBP'),
(231, 'US', 'United States', 1, 'United States dollar', '$', 'USD'),
(232, 'UM', 'United States Minor Outlying Islands', 1, '', '', ''),
(233, 'UY', 'Uruguay', 598, 'Uruguayan peso', '$', 'UYU'),
(234, 'UZ', 'Uzbekistan', 998, 'Uzbekistani som', '', 'UZS'),
(235, 'VU', 'Vanuatu', 678, 'Vanuatu vatu', 'Vt', 'VUV'),
(236, 'VA', 'Vatican City State (Holy See)', 39, '', '', ''),
(237, 'VE', 'Venezuela', 58, 'Venezuelan bolÃ­var', 'Bs F', 'VEF'),
(238, 'VN', 'Vietnam', 84, 'Vietnamese Ä‘á»“ng', 'â‚«', 'VND'),
(239, 'VG', 'Virgin Islands (British)', 1284, '', '', ''),
(240, 'VI', 'Virgin Islands (US)', 1340, '', '', ''),
(241, 'WF', 'Wallis And Futuna Islands', 681, '', '', ''),
(242, 'EH', 'Western Sahara', 212, '', '', ''),
(243, 'YE', 'Yemen', 967, 'Yemeni rial', 'ï·¼', 'YER'),
(244, 'YU', 'Yugoslavia', 38, '', '', ''),
(245, 'ZM', 'Zambia', 260, 'Zambian kwacha', 'ZK', 'ZMW'),
(246, 'ZW', 'Zimbabwe', 263, 'Botswana pula', 'P', 'BWP');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(11) NOT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `isActive` tinyint(1) DEFAULT 1,
  `rank` bigint(20) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `protocol`, `host`, `port`, `user`, `password`, `from`, `to`, `user_name`, `lang`, `isActive`, `rank`, `createdAt`, `updatedAt`) VALUES
(1, 'ssl', 'smtp.mail.ru', 465, 'info@korcak.com.tr', 'Korcak35?', 'info@korcak.com.tr', 'info@korcak.com.tr', 'Site İletişim Formu Mesajı | Korçak', 'tr', 1, 1, '2021-01-08 00:08:59', '2023-04-19 08:41:59'),
(2, 'ssl', 'smtp.mail.ru', 465, 'info@korcak.com.tr', 'Korcak35?', 'info@korcak.com.tr', 'info@korcak.com.tr', 'Site Contact Form Message | Korçak', 'en', 1, 1, '2023-04-19 08:42:40', '2023-04-19 08:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `gallery_type` varchar(50) DEFAULT NULL,
  `folder_name` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `isActive` tinyint(1) DEFAULT 1,
  `isCover` tinyint(1) DEFAULT 0,
  `rank` bigint(20) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL,
  `width` int(11) DEFAULT 1000,
  `height` int(11) DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `url`, `img_url`, `title`, `gallery_type`, `folder_name`, `content`, `lang`, `isActive`, `isCover`, `rank`, `createdAt`, `updatedAt`, `sharedAt`, `width`, `height`) VALUES
(1, 'galeri', NULL, 'Galeri', 'images', 'galeri', NULL, 'tr', 1, 0, 1, '2022-11-23 08:57:12', '2023-04-19 23:54:59', '2022-11-23 08:57:01', 1000, 1000),
(2, 'gallery', NULL, 'Gallery', 'images', 'gallery', NULL, 'en', 1, 0, 1, '2023-01-30 11:31:20', '2023-04-19 23:54:53', '2023-01-30 11:31:15', 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `home_items`
--

CREATE TABLE `home_items` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(1) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_items`
--

INSERT INTO `home_items` (`id`, `title`, `content`, `img_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(1, 'Sektörünüze Özel', 'Standartlara bağlı kalmadan, size ve sektörünüze özel projeler üretiyoruz.', '1f0db285227b89a199c912e7c4057e60.webp', 'tr', 1, 1, '2023-04-19 20:27:42', '2023-04-19 20:27:42', '2023-04-19 20:26:39'),
(2, 'Profesyonel Çözümler', 'Alanında uzman ekibimizle ihtiyaçlarınıza en uygun çözümleri üretiyoruz.', '00b3974a42d2d4065ef3bb82ba3b8fe5.webp', 'tr', 2, 1, '2023-04-19 20:28:15', '2023-04-19 20:28:15', '2023-04-19 20:27:44'),
(3, 'Müşteri Memnuniyeti', 'Tüm çalışmalarımızın ilk ve tek odak noktası müşteri memnuniyetidir.', '7bfbfd78689b5bdeb11d652daacbca95.webp', 'tr', 3, 1, '2023-04-19 20:28:44', '2023-04-19 20:28:44', '2023-04-19 20:28:16'),
(4, 'SPECIFIC TO YOUR INDUSTRY', 'We produce special projects for you and your industry without being bound by the standards.', 'ce8ab64bdec5b38b89310ce8e84a14d8.webp', 'en', 1, 1, '2023-04-20 08:35:38', '2023-04-20 08:35:38', '2023-04-20 08:34:32'),
(5, 'PROFESSIONAL SOLUTIONS', 'We produce the most suitable solutions for your needs with our expert team.', '37486884f8400eabb84d0632a82bcfd3.webp', 'en', 2, 1, '2023-04-20 08:36:11', '2023-04-20 08:36:11', '2023-04-20 08:35:40'),
(6, 'CUSTOMER HAPPINESS', 'The first and only focus of all our work is customer satisfaction.', '199102eddfdda8035beb7a6b869ccd28.webp', 'en', 3, 1, '2023-04-20 08:36:49', '2023-04-20 08:36:49', '2023-04-20 08:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `gallery_id`, `url`, `img_url`, `title`, `description`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(1, 1, '4d76c2a454f9caaa6c13d21a01977eff.webp', NULL, NULL, NULL, 'tr', 1, 1, '2023-04-19 23:56:03', '2023-04-19 23:56:03', NULL),
(2, 1, '8e13e7d22084512dd45e088c0a65264b.webp', NULL, NULL, NULL, 'tr', 2, 1, '2023-04-19 23:56:11', '2023-04-19 23:56:11', NULL),
(3, 1, '06a5cb2857622c450ca91751c14b21ce.webp', NULL, NULL, NULL, 'tr', 3, 1, '2023-04-19 23:56:17', '2023-04-19 23:56:17', NULL),
(4, 1, '084d5b46c8637368eeca00c63b02f3d4.webp', NULL, NULL, NULL, 'tr', 4, 1, '2023-04-19 23:56:25', '2023-04-19 23:56:25', NULL),
(5, 1, 'e48f25ab8c7ea1ae55ef5e5d29fb5614.webp', NULL, NULL, NULL, 'tr', 5, 1, '2023-04-19 23:56:31', '2023-04-19 23:56:31', NULL),
(6, 1, '589fd59ccab9fbd90c24f886c63c6015.webp', NULL, NULL, NULL, 'tr', 6, 1, '2023-04-19 23:56:36', '2023-04-19 23:56:36', NULL),
(7, 1, '0564530e8960a3970bf31d5780b6fbce.webp', NULL, NULL, NULL, 'tr', 7, 1, '2023-04-19 23:57:17', '2023-04-19 23:57:17', NULL),
(8, 1, '013e200750c796b5c04e2d57fd9ce227.webp', NULL, NULL, NULL, 'tr', 8, 1, '2023-04-19 23:57:25', '2023-04-19 23:57:25', NULL),
(9, 1, 'a92a5bde18487347aa2568bc72ec2e5b.webp', NULL, NULL, NULL, 'tr', 9, 1, '2023-04-19 23:57:27', '2023-04-19 23:57:27', NULL),
(10, 2, '7fe7a3815f08f446ca6f4fd9b53f5f0a.webp', NULL, NULL, NULL, 'en', 1, 1, '2023-04-20 08:42:44', '2023-04-20 08:42:44', NULL),
(11, 2, '4063d3be6dacda98c41dceb316d4d36c.webp', NULL, NULL, NULL, 'en', 2, 1, '2023-04-20 08:42:47', '2023-04-20 08:42:47', NULL),
(12, 2, '981b86b3b541db3fd6c5bace8e158395.webp', NULL, NULL, NULL, 'en', 3, 1, '2023-04-20 08:42:49', '2023-04-20 08:42:49', NULL),
(13, 2, 'eb47347a8beb077ff8308b28d114c009.webp', NULL, NULL, NULL, 'en', 4, 1, '2023-04-20 08:42:54', '2023-04-20 08:42:54', NULL),
(14, 2, 'a848aa5e1f489ffac38a79ca353ff8f3.webp', NULL, NULL, NULL, 'en', 5, 1, '2023-04-20 08:43:00', '2023-04-20 08:43:00', NULL),
(15, 2, 'fbea97b16c3f584c4e1da354d28c39d0.webp', NULL, NULL, NULL, 'en', 6, 1, '2023-04-20 08:43:04', '2023-04-20 08:43:04', NULL),
(16, 2, 'f3e79ac1bea2b7ad97342b712dc0c897.webp', NULL, NULL, NULL, 'en', 7, 1, '2023-04-20 08:43:09', '2023-04-20 08:43:09', NULL),
(17, 2, 'c391b6be3c1b1b85a8a4534a09e81e98.webp', NULL, NULL, NULL, 'en', 8, 1, '2023-04-20 08:43:12', '2023-04-20 08:43:12', NULL),
(18, 2, '1e51fc824183b6b1eab8a65bc88ce8d4.webp', NULL, NULL, NULL, 'en', 9, 1, '2023-04-20 08:43:17', '2023-04-20 08:43:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) NOT NULL,
  `name` char(49) DEFAULT NULL,
  `code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`) VALUES
(1, 'English', 'en'),
(2, 'Afar', 'aa'),
(3, 'Abkhazian', 'ab'),
(4, 'Afrikaans', 'af'),
(5, 'Amharic', 'am'),
(6, 'Arabic', 'ar'),
(7, 'Assamese', 'as'),
(8, 'Aymara', 'ay'),
(9, 'Azerbaijani', 'az'),
(10, 'Bashkir', 'ba'),
(11, 'Belarusian', 'be'),
(12, 'Bulgarian', 'bg'),
(13, 'Bihari', 'bh'),
(14, 'Bislama', 'bi'),
(15, 'Bengali/Bangla', 'bn'),
(16, 'Tibetan', 'bo'),
(17, 'Breton', 'br'),
(18, 'Catalan', 'ca'),
(19, 'Corsican', 'co'),
(20, 'Czech', 'cs'),
(21, 'Welsh', 'cy'),
(22, 'Danish', 'da'),
(23, 'German', 'de'),
(24, 'Bhutani', 'dz'),
(25, 'Greek', 'el'),
(26, 'Esperanto', 'eo'),
(27, 'Spanish', 'es'),
(28, 'Estonian', 'et'),
(29, 'Basque', 'eu'),
(30, 'Persian', 'fa'),
(31, 'Finnish', 'fi'),
(32, 'Fiji', 'fj'),
(33, 'Faeroese', 'fo'),
(34, 'French', 'fr'),
(35, 'Frisian', 'fy'),
(36, 'Irish', 'ga'),
(37, 'Scots/Gaelic', 'gd'),
(38, 'Galician', 'gl'),
(39, 'Guarani', 'gn'),
(40, 'Gujarati', 'gu'),
(41, 'Hausa', 'ha'),
(42, 'Hindi', 'hi'),
(43, 'Croatian', 'hr'),
(44, 'Hungarian', 'hu'),
(45, 'Armenian', 'hy'),
(46, 'Interlingua', 'ia'),
(47, 'Interlingue', 'ie'),
(48, 'Inupiak', 'ik'),
(49, 'Indonesian', 'in'),
(50, 'Icelandic', 'is'),
(51, 'Italian', 'it'),
(52, 'Hebrew', 'iw'),
(53, 'Japanese', 'ja'),
(54, 'Yiddish', 'ji'),
(55, 'Javanese', 'jw'),
(56, 'Georgian', 'ka'),
(57, 'Kazakh', 'kk'),
(58, 'Greenlandic', 'kl'),
(59, 'Cambodian', 'km'),
(60, 'Kannada', 'kn'),
(61, 'Korean', 'ko'),
(62, 'Kashmiri', 'ks'),
(63, 'Kurdish', 'ku'),
(64, 'Kirghiz', 'ky'),
(65, 'Latin', 'la'),
(66, 'Lingala', 'ln'),
(67, 'Laothian', 'lo'),
(68, 'Lithuanian', 'lt'),
(69, 'Latvian/Lettish', 'lv'),
(70, 'Malagasy', 'mg'),
(71, 'Maori', 'mi'),
(72, 'Macedonian', 'mk'),
(73, 'Malayalam', 'ml'),
(74, 'Mongolian', 'mn'),
(75, 'Moldavian', 'mo'),
(76, 'Marathi', 'mr'),
(77, 'Malay', 'ms'),
(78, 'Maltese', 'mt'),
(79, 'Burmese', 'my'),
(80, 'Nauru', 'na'),
(81, 'Nepali', 'ne'),
(82, 'Dutch', 'nl'),
(83, 'Norwegian', 'no'),
(84, 'Occitan', 'oc'),
(85, '(Afan)/Oromoor/Oriya', 'om'),
(86, 'Punjabi', 'pa'),
(87, 'Polish', 'pl'),
(88, 'Pashto/Pushto', 'ps'),
(89, 'Portuguese', 'pt'),
(90, 'Quechua', 'qu'),
(91, 'Rhaeto-Romance', 'rm'),
(92, 'Kirundi', 'rn'),
(93, 'Romanian', 'ro'),
(94, 'Russian', 'ru'),
(95, 'Kinyarwanda', 'rw'),
(96, 'Sanskrit', 'sa'),
(97, 'Sindhi', 'sd'),
(98, 'Sangro', 'sg'),
(99, 'Serbo-Croatian', 'sh'),
(100, 'Singhalese', 'si'),
(101, 'Slovak', 'sk'),
(102, 'Slovenian', 'sl'),
(103, 'Samoan', 'sm'),
(104, 'Shona', 'sn'),
(105, 'Somali', 'so'),
(106, 'Albanian', 'sq'),
(107, 'Serbian', 'sr'),
(108, 'Siswati', 'ss'),
(109, 'Sesotho', 'st'),
(110, 'Sundanese', 'su'),
(111, 'Swedish', 'sv'),
(112, 'Swahili', 'sw'),
(113, 'Tamil', 'ta'),
(114, 'Telugu', 'te'),
(115, 'Tajik', 'tg'),
(116, 'Thai', 'th'),
(117, 'Tigrinya', 'ti'),
(118, 'Turkmen', 'tk'),
(119, 'Tagalog', 'tl'),
(120, 'Setswana', 'tn'),
(121, 'Tonga', 'to'),
(122, 'Turkish', 'tr'),
(123, 'Tsonga', 'ts'),
(124, 'Tatar', 'tt'),
(125, 'Twi', 'tw'),
(126, 'Ukrainian', 'uk'),
(127, 'Urdu', 'ur'),
(128, 'Uzbek', 'uz'),
(129, 'Vietnamese', 'vi'),
(130, 'Volapuk', 'vo'),
(131, 'Wolof', 'wo'),
(132, 'Xhosa', 'xh'),
(133, 'Yoruba', 'yo'),
(134, 'Chinese', 'zh'),
(135, 'Zulu', 'zu');

-- --------------------------------------------------------

--
-- Table structure for table `linguo_languages`
--

CREATE TABLE `linguo_languages` (
  `language_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `description` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `is_master` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `linguo_languages`
--

INSERT INTO `linguo_languages` (`language_id`, `name`, `description`, `folder`, `is_master`) VALUES
(1, 'en\\', '', 'C:\\xampp\\htdocs\\korcak\\panel\\application\\language/en\\/', 0),
(2, 'tr\\', '', 'C:\\xampp\\htdocs\\korcak\\panel\\application\\language/tr\\/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `linguo_language_files`
--

CREATE TABLE `linguo_language_files` (
  `file_id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `description` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linguo_language_strings`
--

CREATE TABLE `linguo_language_strings` (
  `string_id` int(11) UNSIGNED NOT NULL,
  `file_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT 0,
  `top_id` int(11) NOT NULL DEFAULT 0,
  `position` enum('HEADER','HEADER_RIGHT','MOBILE','FOOTER','FOOTER2','FOOTER3') DEFAULT 'HEADER',
  `target` enum('_blank','_self','_parent','_top') DEFAULT '_self',
  `title` longtext DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `showProducts` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `page_id`, `top_id`, `position`, `target`, `title`, `url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `showProducts`) VALUES
(1, 0, 0, 'HEADER', '_self', 'Anasayfa', '/', 'tr', 1, 1, '2021-12-28 14:17:07', '2021-12-28 14:51:47', 0),
(2, 1, 0, 'HEADER', '_self', 'Hakkımızda', NULL, 'tr', 2, 1, '2022-01-14 12:40:58', '2023-04-19 09:11:58', 0),
(3, 0, 0, 'HEADER', '_self', 'Ürünlerimiz', '/urunlerimiz', 'tr', 3, 1, '2022-11-14 14:15:06', '2023-04-19 10:42:56', 1),
(4, 0, 0, 'HEADER', '_self', 'Galeri', '/galeriler/galeri', 'tr', 4, 1, '2022-12-13 11:25:46', '2023-04-19 09:13:52', 0),
(5, 0, 0, 'HEADER', '_self', 'Blog', '/blog', 'tr', 5, 1, '2022-11-21 12:37:52', '2023-04-19 09:13:51', 0),
(6, 0, 0, 'HEADER', '_self', 'İletişim', '/iletisim', 'tr', 6, 1, '2022-01-03 07:52:56', '2023-04-19 09:13:49', 0),
(7, 0, 0, 'FOOTER', '_self', 'Anasayfa', '/', 'tr', 7, 1, '2023-04-20 06:39:34', '2023-04-20 06:39:34', 0),
(8, 1, 0, 'FOOTER', '_self', 'Hakkımızda', NULL, 'tr', 8, 1, '2023-04-20 06:39:45', '2023-04-20 06:39:45', 0),
(9, 0, 0, 'FOOTER', '_self', 'Ürünlerimiz', '/urunlerimiz', 'tr', 9, 1, '2023-04-20 06:40:23', '2023-04-20 06:40:23', 0),
(10, 0, 0, 'FOOTER', '_self', 'Galeri', '/galeriler/galeri', 'tr', 10, 1, '2023-04-20 06:57:35', '2023-04-20 06:57:35', 0),
(11, 0, 0, 'FOOTER', '_self', 'Blog', '/blog', 'tr', 11, 1, '2023-04-20 06:57:54', '2023-04-20 06:57:54', 0),
(12, 0, 0, 'FOOTER', '_self', 'İletişim', '/iletisim', 'tr', 12, 1, '2023-04-20 06:58:06', '2023-04-20 06:58:06', 0),
(13, 0, 0, 'HEADER', '_self', 'Home', '/', 'en', 1, 1, '2021-12-28 14:17:07', '2023-04-20 08:43:33', 0),
(14, 2, 0, 'HEADER', '_self', 'About Us', NULL, 'en', 2, 1, '2022-01-14 12:40:58', '2023-04-20 08:39:24', 0),
(15, 0, 0, 'HEADER', '_self', 'Products', '/products', 'en', 3, 1, '2022-11-14 14:15:06', '2023-04-20 08:39:40', 1),
(16, 0, 0, 'HEADER', '_self', 'Gallery', '/galleries/gallery', 'en', 4, 1, '2022-12-13 11:25:46', '2023-04-20 08:39:53', 0),
(17, 0, 0, 'HEADER', '_self', 'Blog', '/blog', 'en', 5, 1, '2022-11-21 12:37:52', '2023-04-19 09:13:51', 0),
(18, 0, 0, 'HEADER', '_self', 'Contact', '/contact', 'en', 6, 1, '2022-01-03 07:52:56', '2023-04-20 08:40:11', 0),
(19, 0, 0, 'FOOTER', '_self', 'Home', '/', 'en', 7, 1, '2023-04-20 06:39:34', '2023-04-20 08:43:37', 0),
(20, 2, 0, 'FOOTER', '_self', 'About Us', NULL, 'en', 8, 1, '2023-04-20 06:39:45', '2023-04-20 08:40:21', 0),
(21, 0, 0, 'FOOTER', '_self', 'Products', '/products', 'en', 9, 1, '2023-04-20 06:40:23', '2023-04-20 08:40:28', 0),
(22, 0, 0, 'FOOTER', '_self', 'Gallery', '/galleries/gallery', 'en', 10, 1, '2023-04-20 06:57:35', '2023-04-20 08:40:40', 0),
(23, 0, 0, 'FOOTER', '_self', 'Blog', '/blog', 'en', 11, 1, '2023-04-20 06:57:54', '2023-04-20 06:57:54', 0),
(24, 0, 0, 'FOOTER', '_self', 'Contact', '/contact', 'en', 12, 1, '2023-04-20 06:58:06', '2023-04-20 08:40:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `url` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `banner_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL,
  `type` enum('SIMPLE','ABOUT','KVKK','CONTENT') DEFAULT 'SIMPLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `url`, `title`, `content`, `img_url`, `banner_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`, `type`) VALUES
(1, 'hakkimizda', 'Hakkımızda', '<p style=\"font-weight: 400;\">1960 yılında İzmir’de Efes Karasör adı ile faaliyetlerine başlamış olan firmamız; ekipman sektörünün ihtiyacı doğrultusunda daha kurumsal ve yenilikçi bir vizyonla ulusal piyasalarda ve yurt dışı piyasalarında yerini almıştır. Her geçen gün genişleyip büyümeye devam eden firmamız, 2022 yılında <strong>KORÇAK ARAÇ ÜSTÜ EKİPMAN</strong> unvanıyla yenilenmiştir. Şirketimiz, sektöründeki öncü firma olmaya adaydır.</p>\r\n<p style=\"font-weight: 400;\"> <strong>KORÇAK ARAÇ ÜSTÜ EKİPMAN</strong>, sektöründeki deneyimiyle kalite ve değerlerinden ödün vermeden, en üst düzeyde hizmet sağlamaktadır. İzmir-Torbalı’da bulunan firmamız, 1700 m² kapalı + 1500 m² açık alana sahip fabrikasında son teknoloji ekipmanlarla üstün nitelikli üretim gerçekleştirmektedir.</p>\r\n<p style=\"font-weight: 400;\">Şirketimiz, Araç Üstü Ekipman sektörünün tüm istek ve ihtiyaçlarına cevap verebilecek düzeyde geniş ve çeşitli ürün yelpazesine sahiptir. Yaşadığımız çağın şartlarına uygun ve modern dünyanın gereksinimlerini karşılayan başlıca ürünlerimiz:</p>\r\n<ul>\r\n<li style=\"font-weight: 400;\">Merdivenli, Merdivensiz İtfaiye Araçları,</li>\r\n<li style=\"font-weight: 400;\">AKUT Kurtarma ve İlk Müdahale Araçları,</li>\r\n<li style=\"font-weight: 400;\">Kanal Açma Araçları, </li>\r\n<li style=\"font-weight: 400;\">Vidanjör,</li>\r\n<li style=\"font-weight: 400;\">Su ve Yakıt Tankerleri,</li>\r\n<li style=\"font-weight: 400;\">Damperli Kamyonlar,</li>\r\n<li style=\"font-weight: 400;\">Hidrolik Sıkıştırmalı Çöp Kasalı Araçlar, Minimatik Çöp Kasaları ve Çöp Semitreylerler,</li>\r\n<li style=\"font-weight: 400;\">Hidrolik ve Teleskopik Platformlar,</li>\r\n<li style=\"font-weight: 400;\">Mobil Bakım ve Mobil Yağlama Araçları,</li>\r\n<li style=\"font-weight: 400;\">Mobil Mutfak ve Mobil Tuvaletler,</li>\r\n<li style=\"font-weight: 400;\">Vinçli Kasalar,</li>\r\n<li style=\"font-weight: 400;\">Toplumsal Olaylara Müdahale Araçları (TOMA) bulunmaktadır.</li>\r\n</ul>\r\n<p style=\"font-weight: 400;\">Bu ürünlerin dışında ihtiyaçlarınıza yönelik özel tasarım gerektiren her türlü Araç Üstü Ekipmanlar, VİP Dizaynlı araçlar için kaliteli ve ekonomik çözümler sunmaktayız.  Ürettiğimiz her ürünün iki yıllık garantisi bulunmaktadır. Kurulmuş olduğumuz tarihten itibaren hem yurt içi hem yurt dışı oldukça satış gerçekleştirdiğimizi ve olumlu geri dönüşler aldığımızı belirtmek isteriz.</p>\r\n<p style=\"font-weight: 400;\"><strong>KORÇAK ARAÇÜSTÜ EKİPMAN</strong> olarak;</p>\r\n<p style=\"font-weight: 400;\">Müşteri memnuniyeti odaklı bir çalışma politikası ile ilerlemekteyiz. Müşterilerimizin geri dönüşlerini, özel sipariş, istek ve önerilerini özenle takip etmekte, kaliteli ve güvenilir bir şekilde hizmet sunmaktayız.</p>\r\n<p style=\"font-weight: 400;\">Mevcut deneyimimizden yararlanarak çalışanlarımızla koordineli bir şekilde çalışma yürütmekte ve ürünlerimizi işlerimizi aksatmadan zamanında teslim etmekteyiz. Siz değerli müşterilerimizin destekleriyle hem Türkiye’de hem de dünyada sektörümüzün öncü firması olmayı hedeflemekteyiz.</p>\r\n<p style=\"font-weight: 400;\"> </p>\r\n<p style=\"font-weight: 400;\"><strong>TECRÜBEMİZİ SİZ DEĞERLİ MÜŞTERİLERİMİZLE PAYLAŞMAK İSTERİZ!</strong></p>\r\n<p style=\"font-weight: 400;\"><strong>YAPTIKLARIMIZ, YAPACAKLARIMIZIN TEMİNATIDIR!...</strong></p>', '9e84192ec8779c40c605312b40363964.webp', '6f39d61bc46022e50057e8def3595652.webp', 'tr', 1, 1, '2022-02-23 06:24:54', '2023-04-19 23:47:16', '2022-02-23 06:24:26', 'SIMPLE'),
(2, 'about-us', 'About Us', '<div>Our company, which started its activities under the name of Efes Karasör in Izmir in 1960; In line with the needs of the equipment industry, it has taken its place in national and international markets with a more institutional and innovative vision. Our company, which continues to expand and grow day by day, was renewed in 2022 with the title of KORÇAK VEHICLE ON EQUIPMENT. Our company is a candidate to be the leading company in its sector.</div>\r\n<div>  KORÇAK VEHICLE TOP EQUIPMENT, with its experience in the sector, provides the highest level of service without compromising its quality and values. Our company, located in Torbalı, İzmir, carries out high quality production with the latest technology equipment in its factory with 1700 m² closed + 1500 m² open area.</div>\r\n<div>Our company has a wide and diverse product range that can meet all the demands and needs of the On-Board Equipment sector. Our main products, which are suitable for the conditions of the age we live in and meet the requirements of the modern world:</div>\r\n<div>• Fire Trucks with and without Ladders,</div>\r\n<div>• AKUT Rescue and First Responder Vehicles,</div>\r\n<div>• Grooving Tools,</div>\r\n<div>• vacuum truck,</div>\r\n<div>• Water and Fuel Tankers,</div>\r\n<div>• Dump Trucks,</div>\r\n<div>• Hydraulically Compressed Garbage Box Vehicles, Minimatik Garbage Boxes and Garbage Semitrailers,</div>\r\n<div>• Hydraulic and Telescopic Platforms,</div>\r\n<div>• Mobil Maintenance and Mobil Lubrication Vehicles,</div>\r\n<div>• Mobile Kitchen and Mobile Toilets,</div>\r\n<div>• Crane Cranes,</div>\r\n<div>• Community Incidents Response Tools (TOMA) are available.</div>\r\n<div>Apart from these products, we offer quality and economical solutions for all kinds of On-Board Equipment, VIP Design vehicles that require special design for your needs. Every product we produce has a two-year warranty. We would like to state that since the date of our establishment, we have made sales both domestically and abroad and received positive feedback.</div>\r\n<div>As KORÇAK ON VEHICLE EQUIPMENT;</div>\r\n<div>We are moving forward with a customer satisfaction-oriented working policy. We carefully follow the feedbacks, special orders, requests and suggestions of our customers and provide quality and reliable service.</div>\r\n<div>Using our current experience, we work in coordination with our employees and deliver our products on time without interrupting our work. With the support of our valued customers, we aim to be the leading company of our sector both in Turkey and in the world.</div>\r\n<div> </div>\r\n<div>WE WOULD LIKE TO SHARE OUR EXPERIENCE WITH OUR VALUABLE CUSTOMERS!</div>\r\n<div>WHAT WE DO IS THE GUARANTEE OF WHAT WE WILL DO!</div>', '4e2094dbbd525dbc99c07800a9dce05e.webp', NULL, 'en', 1, 1, '2023-04-20 08:34:17', '2023-04-20 08:34:17', '2023-04-20 08:33:28', 'SIMPLE');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `top_id` int(11) NOT NULL DEFAULT 0,
  `url` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `lang` char(2) NOT NULL DEFAULT 'tr',
  `rank` bigint(20) NOT NULL DEFAULT 1,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `top_id`, `url`, `title`, `content`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`, `img_url`) VALUES
(1, 0, 'hidrolik-merdivenli-itfaiye-araci', 'HİDROLİK MERDİVENLİ İTFAİYE ARACI', '<p style=\"font-weight: 400;\"><strong>Karasör Tipi                          :</strong> Galvaniz Sactan Modüler tip – Alüminyum panjurlu</p>\r\n<p style=\"font-weight: 400;\"><strong>Su Tankı                                :</strong> 304 Krom Nikel veya Galvaniz Sac (2.000-6.000 lt.)</p>\r\n<p style=\"font-weight: 400;\"><strong>Köpük Tankı                         :</strong> 304 veya 316 Krom Nikel veya Galvaniz Sac(250-500 lt.)</p>\r\n<p style=\"font-weight: 400;\"><strong>Toz Tankı                              :</strong>200 ila 600 Kg. arası</p>\r\n<p style=\"font-weight: 400;\"><strong>Pompa Debisi                      :</strong> 2.000 lt/dk. İla 6.000 lt/dk.Yüksek basınçta</p>\r\n<p style=\"font-weight: 400;\">                                                 250 lt/dk. İla 400 lt/dk. Alçak basınçta</p>\r\n<p style=\"font-weight: 400;\"><strong>Pompa Basıncı                    :</strong> 40 Bar Yüksek basınçta 10 Bar Alçak basınçta</p>\r\n<p style=\"font-weight: 400;\"><strong>Monitörler                           :</strong> 10 Barda 2400 lt/dk., 70 mt. Su, 60 mt. Köpük atış aralığıönme,</p>\r\n<p style=\"font-weight: 400;\">                                                    10 Barda 45-75-90 mt. Atış aralığı</p>\r\n<p style=\"font-weight: 400;\"><strong>Merdiven Boyları               :</strong> Otomatik Dengeleme Motorlu 2 kişi 200 Kg.</p>\r\n<p style=\"font-weight: 400;\">                                                 Taşıma Kapasiteli, Su monitörlü, 2 adet veya 4 adet istinat ayaklı</p>\r\n<p style=\"font-weight: 400;\"><strong>Çıkrık                                    :</strong> 20 ila 60 mt. Arası, 1 ‘’veya ¼ ‘’ Tabanca</p>\r\n<p style=\"font-weight: 400;\"><strong>Elektrik                                 :</strong> Aydınlatma Projektörleri + Teleskopik Projektör + Tepe Lambalı</p>\r\n<p style=\"font-weight: 400;\"><strong>TEKNİK DETAYLAR</strong></p>\r\n<p style=\"font-weight: 400;\">Hidrolik Merdivenli İtfaiye ekipmanımız, monte edilecek şasi kamyonun kapasitesine uygun 1.000 ila 6.000 Lt. kapasiteli su tanklı (isteğe göre Krom Nikel-Galvaniz ve ST 37 Siyah Saçtan Tank imal edilecektir.) ve yine isteğe bağlı 250 ila 500 Lt. kapasiteli köpük tankı ilaveli ve talep halinde 200 ila 699 kg. kapasiteli toz tankı monteli, isteğe bağlı olarak 12-18 mt. (Manuel), 22-26-28 mt. Elektronik Joystick kontrollü avantraya bağlı (Oransal) Hidrolik Merdivenli imalatlar, yapmaktayız. Bu itfaiye araçlarımızın karoseri, modüler sistemde, 3 parçalı olarak Galvaniz sac kaplı ve alüminyum panjurlu üst düzeyde modern olarak dizayn edilmektedir.</p>', 'tr', 1, 1, '2023-04-19 22:08:03', '2023-04-19 22:08:17', '2023-04-19 22:07:55', NULL),
(2, 0, 'akaryakit-tankeri', 'AKARYAKIT TANKERİ', '<p>Akaryakıt tankeri araçlarımız, araç şasilerine bağlı olarak 3000 – 20.000 lt. kapasiteli tasarlanarak, ST37-4mm. saçtan eliptik veya D şeklinde imal edilmektedir. Arzu edilmesi durumunda dorse üzerine daha yüksek kapasitede de tasarlanarak, akaryakıt tankeri imal edebilmekteyiz. Kapasitesine uygun akaryakıt pompası ve dijital sayaç bulunmaktadır. Araçta 20 mt. lik ucunda tabancası bulunan makaralı hortum bulunmaktadır. İsteğe uygun olarak bu hortum 30 40 mt ye kadar çıkartılabilir. Ayrıca tankın üstüne çıkabilmesi için sabit merdiven ve tankın arkasında fosforlu yol gösterge reflektörleri de bulunmaktadır. Bu ekipmanın yanında takım sandığı, çamurluk ve çamurluk toz lastikleri de bulunmaktadır.</p>', 'tr', 2, 1, '2023-04-20 07:20:38', '2023-04-20 07:20:38', '2023-04-20 07:20:07', NULL),
(3, 0, 'cift-kabin-erat-kabini', 'ÇİFT KABİN (ERAT KABİNİ)', '<p>İtfaiye – platform gibi araçların keplerinde, aracın şasi ve motorunda herhangi bir oynama yapılmaksızın aslına uygun olarak talep edilen şekilde özgün tasarım ilave erat kabini imalatı yapılabilmektedir.</p>\r\n<p> </p>\r\n<p><strong>ARAÇ ÖZELLİKLERİ</strong></p>\r\n<p>Aracın ön kep orjinalliğine uygun 0,90 – 1mm. kalınlığında galvaniz veya yüksek kalitede sacla eratın rahat hareket edebileceği ekstra kabin imali</p>\r\n<p> </p>\r\n<p>Aracın orjinalliğine zarar vermeyecek düzeyde çift kabini kaldırabilecek nitelikte hidrolik silindir <br />sistemi<br /><br /></p>\r\n<p>Yüksek kalite erat oturak ve döşemeleri – emniyet kemerleri</p>\r\n<p> </p>\r\n<p>Ekstra kabin içinde baza türü oturak altı dolaplar</p>\r\n<p> </p>\r\n<p>Orjinaline uygun döşeme ve aydınlatma sistemi</p>\r\n<p> </p>\r\n<p>Orjinaline uygun kapı ve basamaklar</p>\r\n<p> </p>\r\n<p>Orjinaline uygun çift kabin camları</p>\r\n<p> </p>\r\n<p>Orjinaline uygun fırın boya – pasta ve cila</p>\r\n<p> </p>\r\n<p>Opsiyonel torpido maun kaplama</p>\r\n<p> </p>\r\n<p>Ek bölüme opsiyonel klima takılması</p>', 'tr', 3, 1, '2023-04-20 07:23:21', '2023-04-20 07:23:21', '2023-04-20 07:23:03', NULL),
(4, 0, 'damper', 'DAMPER', '<p>TSEK normlarında istenilen araca uygun olarak, kum, çakıl veya kaya taşıma amaçlı olarak ST37, ST52 ve Hardox saclarından 4-6-8-10-12-15 m<sup>3   </sup>kapasiteli damper kasalar üretilmektedir. Önden teleskopik silindirle kaldırılıp, indirilebilen kasa DIN normlarına uygun borularla döşenmiş ve elektronik- Pnömatik çift indirme hızlı kumanda mevcuttur.</p>', 'tr', 4, 1, '2023-04-20 07:26:00', '2023-04-20 07:26:00', '2023-04-20 07:25:48', NULL),
(5, 0, 'ilk-mudahale-araci', 'İLK MÜDAHALE ARACI', '<p><strong>Karasör Tipi                          :</strong> Galvaniz Sactan Modüler tip – Alüminyum panjurlu</p>\r\n<p><strong>Su Tankı                                :</strong> 304 Krom Nikel veya Galvaniz Sac (1.000-2.000 lt.)</p>\r\n<p><strong>Köpük Tankı                         :</strong> 304 Krom Nikel veya Galvaniz Sac (250-500 lt.)</p>\r\n<p><strong>Toz Tankı                              :</strong> 200 ila 400 kg. arası</p>\r\n<p><strong>Pompa Debisi                      :</strong> 2.000 lt/dk. İla 6.000 lt/dk. Yüksek basınçta 250 lt/dk. İla 400 lt/dk.</p>\r\n<p>                                                  Alçak basınçta 40 Bar</p>\r\n<p><strong>Pompa Basıncı                    :</strong> Yüksek basınçta 10 Bar Alçak basınçta</p>\r\n<p><strong>Monitörler                           :</strong> 90 derece ila 360 derece Sağ-Sol Dönme-20 derece ila +80 derece Dikey Dönme,</p>\r\n<p>                                                 10 Barda 45-75-90 mt. Atış aralığı</p>\r\n<p><strong>Çıkrık                                    :</strong> 20 ila 60 mt. Arası, 1 ‘’veya ¼ ‘’ Tabanca</p>\r\n<p><strong>Elektrik                                 :</strong> Aydınlatma Projektörleri + Teleskopik Projektör + Tepe Lambalı</p>\r\n<p><strong>Seyyar Merdiven                :</strong> 9 metre Alüminyum Teleskopik</p>\r\n<p><strong>Opsiyonel Techizatlar        :</strong> Kurtarma Vinci, Kurtarma Setleri(Balta,-Kazma-Kürek vs.) Jeneratör, Oksijen                        Tüpleri, Motopomp, Elektrikli Kurtarma Vinci, Hidrolik Kesme Ayırma Takımı, Elektrikli Testere, Lensler, Emiş Hortumları, Acil Sağlık Paketleri, Kurtarma Yastıkları vs.</p>\r\n<p> </p>\r\n<p><strong>TEKNİK DETAYLAR </strong></p>\r\n<p>Otoyol-Şehirler arası yollarda vb. yerlerde oluşan kazalarda seri ve ilk müsahale amacıyla Tam Donanımlı İlk Müdahale -Kurtarma aracımız, Galvaniz saç kaplı ve alüminyum panjurlu karosöründe öne düşmeli kızaklı raflar içerisinde gerekli tüm alet ve edevatların bulunduğu teçhizatlar ile birlikte üst düzeyde modern olarak dizayn edilmektedir.</p>', 'tr', 5, 1, '2023-04-20 07:29:32', '2023-04-20 07:29:32', '2023-04-20 07:29:13', NULL),
(6, 0, 'kuka-tipi-kanal-acma-araci', 'KUKA TİPİ KANAL AÇMA ARACI', '<p><strong>Tank Sacı                                          :</strong> 304 Krom Nikel veya ST-37 Sac</p>\r\n<p><strong>Tank Hacmi                                     :</strong> 1.000 Lt. ila 25.000 Lt arası</p>\r\n<p><strong>Logar Kapak Kaydırma Vinci        : </strong>200-250 kg.</p>\r\n<p><strong>Su Pompası                                     :</strong> 100 ila 250 bar arası, 150 lt/dk ila 400 lt/dk. Debili</p>\r\n<p><strong>Basınç Regülatörü                         :</strong> Pnomatik -Mekanik</p>\r\n<p><strong>Hortum Makarası                           :</strong> Hidrolik 50-80-100-120 mt. Boylarında Otomatik</p>\r\n<p> </p>\r\n<p>Hidrolik Sistemden açılıp kapanabilecek özellikte kapaklar, Menhol kapağında kaldırma vinci olan özellikli ürünlerimiz taleplerinize uygun olarak imal edilmektedir.</p>', 'tr', 6, 1, '2023-04-20 07:31:53', '2023-04-20 07:31:53', '2023-04-20 07:31:38', NULL),
(7, 0, 'normal-kombine-kanal-acma-araci', 'NORMAL KOMBİNE KANAL AÇMA ARACI', '<p><strong>Tank Sacı                                          :</strong> 304 Krom Nikel veya ST-37 Sac</p>\r\n<p><strong>Tank Hacmi                                     :</strong> 1.000 Lt. ila 10.000 Lt arası</p>\r\n<p><strong>Vakum pompası                             :</strong> 500 m<sup>3</sup>/h ila 3.000 m<sup>3</sup>/h                                                                                                                                                                           (PTO veya Yardımcı Motordan veya Ara Şanzımandan tahrikli)</p>\r\n<p><strong>Su Pompası                                     :</strong> 150 ila 250 bar arası, 150 lt/dk ila 400 lt/dk. Debili</p>\r\n<p><strong>Basınç Regülatörü                         :</strong> Pnomatik</p>\r\n<p><strong>Pis Su Emiş ve Deşarj Vanaları    :</strong> 4’’ ila 6’’ arası  </p>\r\n<p><strong>Bom Hortum Vanaları                   :</strong> 4’’ ila 6’’ arası </p>\r\n<p><strong>Hortum Makarası                           :</strong> Hidrolik 50-80-100-120 mt. Boylarında Otomatik</p>\r\n<p><strong>Jetting Makarası                             :</strong> 50-80-100-120 mt. Boylarında.</p>\r\n<p> </p>\r\nHidrolik Sistemden açılıp kapanabilecek özellikte kapaklar, Menhol kapağında kaldırma vinci olan, Yüksek emiş güçlü pompalar ve nozaullar ile araçtan ve bomdan kolay kullanılabilecek özellikli ürünlerimiz taleplerinize uygun olarak imal edilmektedir.', 'tr', 7, 1, '2023-04-20 07:45:24', '2023-04-20 07:45:24', '2023-04-20 07:45:08', NULL),
(8, 0, 'otobus-karasor-yenileme-ve-dizayn', 'OTOBÜS KARASÖR YENİLEME VE DİZAYN', '<p>Her türlü eski model, gerek belediyelerin, gerekse halk tipi her boydaki otobüslerin karasörleri çıkartılarak, özgün tasarmımımızla yeni görünümlü karasör şekline tarafımızdan dönüştürülmektedir. <br />Yeni tasarım şekli ile dizayn edilen ve tefrişartları da tarafımızdan yapılan bu araçlarınıza, yeni model ve şık görünümü sağlandığı gibi, kullanım verimliliği d-de üst seviyelere çıkartılmaktadır.<br /><br /><strong>                                                           Özellikler<br /><br /></strong>Çelik kutu profillerden imal karasör <br /><br />İç taban ve dış tavan yüzey özel galvaniz saçla kaplı ve Epoksy astarlı<br /><br />Karasör yan yüzeyleri tamamen düz plaka aliminyum levhalar halinde esnemeye mukavemetle kaynaksız, Skaflex özel yapıştırıcı ile kaplı<br /><br />Kaza halinde lokal olarak sadece hasarlı bölümün değişimine imkan sağlayan karasör tasarımı<br /><br />Araç şasisine modüler tipte Karkas bağlantısı<br /><br />Özgün dizayn sekürit tip sürgülü siyah füme yapıştırma cam<br /><br />Çerçeve içleri, iç birleştirme cam kasaları özel abiyes ile kaplı<br /><br />Özel dizayn tavan klima kanalları<br /><br />Galvaniz üzeri Panzot giydirme tavan<br /><br />14-5 mm, suya mukavemetli kontraplak üzeri 3 mm mukavemetli özel döşeme ile kaplı tavan <br /><br />Petekli Serpanten tip, şoför mahallinden kontrollü kalorifer<br /><br />Hazır klima sistemine uygun 2 adet Colormatic Sunroof acil çıkışlı havadanlık <br /><br /></p>\r\nMelamin kaplı yan iç duvarlar ve tavan ortası<br /><br />Üstten gizli halk tipi yolcu kliması (Opsiyonel)<br /><br />Özel dizayn kaptan pilot mahalli ve döner mandallı özel kapı<br /><br />Havalı tip 1. Sınıf pilot kaptan koltuğu<br /><br />Kaptan pilot kabininin arkasına monteli dijital reklam pano bölümü<br /><br />Özün tasarım torpido ve göğüslük (Opsiyonel polikarbonat kaplama)<br /><br />Yeni tasarım saat ve göstergeler<br /><br />Rado-Teyp-DVD player – TV kumanda panosu <br /><br />İsteğe uygun LCD TV (Opsiyonel)<br /><br />Dijital zaman saati ve ısı göstergesi <br /><br />Şoför mahallinden kontrol edilebilen 7’’ ekran, yan yolcu kapı ve araç arkasını gösterebilen 3’lü ekran bölücülü, LCD ekran<br /><br />Şoför mahallinden ayarlanabilen, kalibre programlı, LED’li yol güzergah ve numara gösterge sistemli ışıklı tabelalar<br /><br />Kapaklı, dolap içi, komple numaralı tip sigorta panosu<br /><br />Komple 24V enerji ile çalışan, izolasyon yalıtımlı elektrik tesisatı <br /><br />Boydan boya tavana monteli, Floresan lamba ile birlikte mavi Ledli lambalar <br /><br />Boru üzeri butonlu *DURACAK* ikaz düğmeleri<br /><br />Karayolları yönetmeliğine uygun özgün tasarım ön ve arka lambalar <br /><br />Ledli sistem ön far ve sinyaller, arka geri vites-fren-sinyal ve dörtlü lambalar<br /><br />Rezistanlı tip, otomatik ayarlanabilir aynalar<br /><br />Ön – Orta tek basamaklı, arka kapı çift basamaklı, 130cm’lik geniş giriş tasarımlı, çift kanat, pnömatik, yolcu sıkışmasını önleyici geri dönüş sensörlü. Colormatic camlı, imdat uyarı düğmeli, havalı-beyinli tam otomatik kapı sistemi<br /><br />Engellilerin otobüse rahat iniş ve çıkış yapabilmesi için lift sistemi kurulması (Opsiyonel)<br /><br />Tabana çelik karkasla bağlı, plastik koltuk gövdeli (Karayolları yönetmeliğine uygun) oturak ve sırt yüzeyli petli tip kumaşlı – Ultra Viole yolcu koltuğu<br /><br />Yolcuların rahat ve güvenli bir şekilde hareket edebileceği elektrostatik boyalı koridor barları ile tavana monteli elektrostatik boyalı borular üzerinde, kaliteli yolcu elcikleri<br /><br />Komple iç-dış yüzey 2 kat epoksy astar atılarak, kaliteli akrilik boya ile fırında boyanması ve üzerine vernik uygulanması', 'tr', 8, 1, '2023-04-20 07:56:11', '2023-04-20 07:56:11', '2023-04-20 07:55:50', NULL),
(9, 0, 'romork-itfaiye-tankeri', 'RÖMORK İTFAİYE TANKERİ', '<p>Traktör veya kamyonla çekilebilecek düzenekte 2 veya 4 tekerlekli römorklar üzerine monte edilen 3000 – 4000- 5000 Lt. kapasiteli ST37 sacdan veya galvaniz kaplamalı saçtan ya da isteğe uygun olarak paslanmaz krom nikel saçtan silindirik şekilde, itfaiye tankerli römorkları imal etmekteyiz. Çekici traktörden tahrikli merkez çıkış milinden gücünü şaft yardımıyla alan salyangoz tipi tek kademeli santrifüj su pompası monte edilir. Ayrıca ucunda flanşı olan ¾’’ lik 20 mt çıkrıkla sarılı hortum bulunmaktadır. 10 bar basınçlı pompa marifetiyle yangına müdahale edilebilir tiptedir. Ayrıca su tankının arkasında serbest akış musluğu bulunmaktadır. Römorkun ön oku sonsuz döner sistemli olup, arka tekerleklerinde fren tertibatı bulunmaktadır. Ayrıca; römork tankerinin arkasında fosforlu yol gösterge reflektörleri de bulunmaktadır. Bu ekipmanın yanında takım sandığı, çamurluk ve çamurluk toz lastikleri de bulunmaktadır.</p>', 'tr', 9, 1, '2023-04-20 07:57:38', '2023-04-20 07:57:38', '2023-04-20 07:57:12', NULL),
(10, 0, 'romork-su-tankeri', 'RÖMORK SU TANKERİ', '<p>Traktör veya kamyonla çekilebilecek düzenekte 2 veya 4 tekerlekli römorklar üzerine monte edilen 3000 – 4000- 5000 Lt. kapasiteli ST37 sacdan veya galvaniz kaplamalı saçtan ya da isteğe uygun olarak paslanmaz krom nikel saçtan silindirik şekilde, su tankerli römorkları imal etmekteyiz. Çekici traktörlerde merkez çıkış milinden gücünü şaft yardımıyla alan salyangoz tipi tek kademeli santrifüj su pompası monte edilir. Ayrıca ucunda flanşı olan ¾’’ lik 20 mt çıkrıkla sarılı hortum bulunmaktadır. Römorkun ön oku sonsuz döner sistemli olup, arka tekerleklerinde fren tertibasıt bulunmaktadır. Ayrıca; römork tankerinin arkasında fosforlu yol gösterge reflektörleri de bulunmaktadır. Bu ekipmanın yanında takım sandığı, çamurluk ve çamurluk toz lastikleri de bulunmaktadır.</p>', 'tr', 10, 1, '2023-04-20 07:58:30', '2023-04-20 07:58:30', '2023-04-20 07:58:11', NULL),
(11, 0, 'seyyar-merdivenli-itfaiye-araci', 'SEYYAR MERDİVENLİ İTFAİYE ARACI', '<p><strong>Karasör Tipi                          :</strong> Galvaniz Sactan Modüler tip – Alüminyum panjurlu</p>\r\n<p><strong>Su Tankı                                :</strong> 304 Krom Nikel veya Galvaniz Sac (1.000-10.000 lt.)</p>\r\n<p><strong>Köpük Tankı                         :</strong> 304 veya 316 Krom Nikel veya Galvaniz Sac(250-500 lt.)</p>\r\n<p><strong>Toz Tankı                              :</strong> 100 ila 250 bar arası, 150 kt/dk ile 400 lt./dk. Debili</p>\r\n<p><strong>Pompa Debisi                      :</strong> 2.000 lt/dk. İla 6.000 lt/dk.</p>\r\n<p>                                                 Yüksek basınçta 250 lt/dk. İla 400 lt/dk. Alçak basınçta</p>\r\n<p><strong>Pompa Basıncı                    :</strong> 40 Bar Yüksek basınçta 10 Bar Alçak basınçta</p>\r\n<p><strong>Monitörler                           :</strong> 90° ila 360° Sağ-Sol Dönme-20° ila +80° Dikey Dönme,</p>\r\n<p>                                                 10 Barda 45-75-90 mt. Atış aralığı</p>\r\n<p><strong>Çıkrık                                    :</strong> 20 ila 60 mt. Arası, 1 ‘’veya ¼ ‘’ Tabanca</p>\r\n<p><strong>Elektrik                                 :</strong> Aydınlatma Projektörleri + Teleskopik Projektör + Tepe Lambalı</p>\r\n<p><strong>Seyyar Merdiven                :</strong> 9 metre Alüminyum Teleskopik</p>\r\n<p> </p>\r\n<p><strong>TEKNİK DETAYLAR </strong></p>\r\n<p>Seyyar Merdivenli İtfaiye ekipmanlarımız, monte edilecek şasi komyonun kapasitesine uygun 1000 ila 10.000 Lt. kapasiteli su tanklı (İsteğe göre Krom Nikel-Galvaniz ve ST37-A1 Siyah Saçtan Tank imal edilecektir) ve yine isteğe bağlı 250 ila 500 lt. kapasiteli köpük tankı ilaveli ve talep halinde 200 ila 600 kg. kapasiteli toz tankı monteli, 9 metre Alüminyum portatif merdivenli olarak imal edilmektedir. Bu İftaiye araçlarımızın karoseri; modüler sistemde, 3 parçalı olarak, Galvaniz sac kaplı ve alüminyum panjurlu üst düzeyde modern olarak dizayn edilmektedir.</p>', 'tr', 11, 1, '2023-04-20 07:59:18', '2023-04-20 07:59:18', '2023-04-20 07:58:56', NULL),
(12, 0, 'su-tankeri', 'SU TANKERİ', '<p>Su tankeri araçlarımız, araç şasilerine bağlı olarak 7000 ile 28000 lt. kapsiteli tasarlanarak, imal edilmektedir. Arzu edilmesi durumunda dorse üzerine yüksek kapasitede de tasarlanarak su tankeri imal edilebilmektedir.</p>\r\n<p>Yine isteğe bağlı olarak ST37 siyah saçtan veya galvaniz kaplamalı saçtan veya paslanmaz krom nikel saçtan silindirik-eliptik veya D şeklinde içinde yeteri kadar dalgakıranlar konulmak suretiyle imal edilmektedir.</p>\r\n<p>Tankın üzerinde menhol kapağı ve baklavalı sac veya gözyaşı desenli alüminyum levha saçtan oluşan yürüme yolu mevcuttur.</p>\r\n<p>Su seviyesini gösteren tank üzerinde gösterge mevcuttur. Ayrıca; tankın üstüne çıkılabilmesi için sabit merdiven ve tankın arkasında yol gösterge reflektörleri bulunmaktadır.  Araç şasisine yanına bağlı olarak hareketini PTO dan alan tek kademeli santrifüj pompa monte edilir. Ayrıca ucunda flanşı olan 1” lik, 20 mt çıkrıkla sarılı hortum bulunmaktadır. İstenildiğinde yol sulamak amacıyla aracın ön ve arkadalarına sulama tertibatı konulabilir. Bu ekipmanın yanında 4 adet emici hortumlar ve bunların saklandığı dolaplar, hortum ve kaplin anahtarları, takım sandığı ve aracın tepesinde sarı lamba da bulunmaktadır.</p>', 'tr', 12, 1, '2023-04-20 08:02:13', '2023-04-20 08:02:13', '2023-04-20 08:02:03', NULL),
(13, 0, 'teleskopik-platform', 'TELESKOPİK PLATFORM', '<p><strong>Platform Taban Şasisi                                   : </strong>Baklavalı Sac – ST37 sacdan mamul<strong><br /><br />Platform Yüksekliği                                       : </strong>12 mt den başlayıp, isteğe uygun olarak 24 mt ye kadar yükselebilir </p>\r\n<p><br /><strong>İstinat Ayağı                                                     : </strong>4 Adet</p>\r\n<p><strong><br />Kule Dönme Açısı                                           : </strong>360°<strong><br /><br />Sepet Yana Açılım                                          : </strong>6,5 mt – 16 mt<strong><br /><br />Sepet Kapsitesi                                               : </strong>2 kişi/200 Kg.<strong><br /><br />Sepetin Diğer Özellikleri                             : </strong>Sepet 1000 volta kadar izolasyonlu olup, sepet dengeleme motoru mevcuttur.</p>\r\n<p><strong><br />Kumanda Sistemi                                           : </strong>Manuel veya isteğe bağlı oransal</p>\r\n<p><strong>Çift Kabin                                                           :</strong> Talep olunması halinde erat taşımak amaçlı araca uygun çift kabin yapılabilir.</p>', 'tr', 13, 1, '2023-04-20 08:04:43', '2023-04-20 08:04:43', '2023-04-20 08:04:17', NULL),
(14, 0, 't-o-m-a-ozellikleri', 'T.O.M.A ÖZELLİKLERİ', '<p>Farklı marka, model ve konfigürasyonlarda şasi kullanma imkanı</p>\r\n<p>Çepeçevre camlar dahil balistik korumalı kabin (FB4+, Class6, BR4)</p>\r\n<p>Balistik korumalı yakıt tankı, alternatör ve hava tüpleri (FB4+, Class6)</p>\r\n<p>Darbeye karşı zırhlı gövde yapısı</p>\r\n<p>Kurşun geçirmez camlar, farlar, eskort lamba, projektörler, kameralar ve özel aksesuarlar için koruma kafesi</p>\r\n<p>Taş ve darbe koruma amaçlı far ve ayna grubu kafes altında görüşü kapatmayan özel polikarbon şeffaf malzeme</p>\r\n<p>Ön camda içerden kumandalı koruma kafesi</p>\r\n<p>Tüm sistemlerin bilgisayar ve yazılım tarafından kontrolü</p>\r\n<p>Operatöre göre ayarlanarak ergonomik kullanım imkanı sağlayan 2 adet su topu kumanda paneli</p>\r\n<p>Su topu operatör kumanda panelinde operatörlerin tüm kontrolleri yapabilecekleri 10” büyüklüğe sahip dokunmatik ekranlar</p>\r\n<p>10” dokunmatik ekranlar sayesinde operatörlerin tüm sıvı miktarlarını, su topu konumlarını hassas bir şekilde izleyebilme ve parametre girişlerini kolayca yapabilme özelliği</p>\r\n<p>10” dokunmatik ekranlar sayesinde rahat ve ergonomik veri izleme imkânı</p>\r\n<p>10” dokunmatik ekranlardan su topu üzerindeki kamera ayarlarını değiştirebilme imkânı</p>\r\n<p>Su topu operatör kumanda panelindeki 7” TFT LCD ekranlar sayesinde su atılacak bölgeyi izleyebilme ve joystick üzerindeki ZOOM+ / ZOOM- tuşları ile hedefe yaklaşıp, uzaklaşarak görüntüyü otomatik netleştirebilme özelliği</p>\r\n<p>İstem dışı kullanımları engellemek için atış tipi seçilmeden su topunun devre dışı bırakılması</p>\r\n<p>Müdahale anında araç kullanımı ile ilgili aksiyonların tarih-saat olarak kaydedilmesi ve sonradan dokunmatik ekran üzerinden izlenebilmesi</p>\r\n<p>Acil durumlarda “ACİL STOP” butonu ile 2.motorun stop ettirilip, sistemin durdurulması</p>\r\n<p>Su topu kamera görüntülerinin mobil DVR cihazı ile kayıt altına alınması (Opsiyonel; Çevre kameraları)</p>\r\n<p>Mobil DVR cihazı ile kayıt altına alınan görüntülerin cihaza ait LCD ekran ile yedekleme ve izleme imkanı</p>\r\n<p>Kabin ön kısımda iki adet 10” LCD TV ile şoför ve araç amirinin aracın dört bir yanını izleyebilme imkanı</p>\r\n<p>Su topu operatörlerinin şoför ve araç amiri koltuk başlıklarına yerleştirilmiş 7” TFT LCD ekranlar sayesinde çevre kameralarını izleyebilmesi</p>\r\n<p>Yüksek kabiliyette görüş sağlayan kamera donanımı</p>\r\n<p>Ön bölge kamerası</p>\r\n<p>Arka bölge kamerası</p>\r\n<p>Yan bölge kameraları (sağ ve sol bölgeler)</p>\r\n<p>Monitör kameraları (sağ ve sol monitör)</p>\r\n<p>Farklı şekillerde su topundan su atma imkanı</p>\r\n<p>Kısa darbeli atış</p>\r\n<p>Uzun darbeli atış</p>\r\n<p>Sürekli atış</p>\r\n<p>Su topu ile yapılan darbeli atışların atış sürelerini ve darbe aralık sürelerini saniye cinsinde değiştirebilme imkânı</p>\r\n<p>Yüksek kabiliyetli su topu menzili (60-70metre)</p>\r\n<p>Farklı kombinasyonlar da su topundan püskürtülen sıvılar</p>\r\n<p>Sadece su atışı</p>\r\n<p>Su + Boya atışı</p>\r\n<p>Su + Gaz atışı</p>\r\n<p>Su + Gaz + Boya atışı</p>\r\n<p>Su + Yangın söndürme köpüğü (sentetik köpük) atışı</p>\r\n<p>Tüm sıvı tanklarında (su, gaz, boya, köpük) donmaya karşı termostatlı ısıtma donanımı</p>\r\n<p>Yüksek tank kapasiteleri</p>\r\n<p>Su tankı kapasitesi 6000 litre</p>\r\n<p>Gaz tankı kapasitesi 100 litre</p>\r\n<p>Boya tankı kapasitesi 100 litre</p>\r\n<p>Köpük tankı kapasitesi 150 litre</p>\r\n<p>Su emme donanımı (7,5 metre derinlikten su emebilme yeteneği ile su tankını doldurma)</p>\r\n<p>Araç savunma ve koruma sistemleri</p>\r\n<p>Araç üstü ve araç altı yangın söndürme köpük sistemi ile yangından korunma</p>\r\n<p>Göstericilerin araca yaklaşmasını önlemek için aracın tüm çevresine yerleştirilmiş gaz püskürtme nozulları</p>\r\n<p>Araç camlarına özel su püskürtme sistemi ile temizleme</p>\r\n<p>Araç kameralarına özel su ve hava püskürtme sistemi ile temizleme</p>\r\n<p>Ran-flat lastikler (batlak gider)</p>\r\n<p>Yüksek basınçlı kabin için göz yaşartıcı gaz (OC solüsyon) filtreleme sistemi</p>\r\n<p>Kabin içerisinden komutaya sahip ön buldozeri ile barikat bertaraf etme kabiliyeti</p>\r\n<p>Ön buldozer altı fırça sistemi ile etkili süpürme yeteneği</p>\r\n<p>Kabin içerisinden komutaya sahip arka buldozeri ile barikat bertaraf etme ve kaçış manevra kabiliyeti</p>\r\n<p>Arka buldozer altı fırça sistemi ile etkili süpürme yeteneği</p>\r\n<p>Yanmaz boya ile korumaya alınmış buldozerler, kabin ve tüm gövde sayesinde ısıya ve aleve karşı sorunsuz müdahale yeteneği</p>\r\n<p>Su toplarında atış sonrası su sızıntısı ve akıntıyı önleyici tapa sistemi</p>\r\n<p>Yardımcı motor ve pompa bölümünde yangın anında otomatik devreye giren kuru kimyevi tozlu söndürücü sistem</p>\r\n<p>Özel esnek bağlantıyla birleştirilmiş ve üzerine tırmanmayı engelliyi şekilde tasarlanmış modüler gövde</p>\r\n<p>Lastik bakım kolaylığı için tasarımlanmış pistonlu açılan arka çamurluk</p>\r\n<p>Akü bakım kolaylığı için tasarımlanmış kızalı açılan akü tablası</p>\r\n<p>Araç arızalarında bakım kolaylığı için tasarımlandırılmış otomatik kabin devirme</p>\r\n<p>Otomatikleştirilmiş hidrolik sistem arızaları için düşünülmüş manuel hidrolik sistem kullanım imkanı</p>\r\n<p>Ön buldozer (Otomatik veya manuel kullanım imkanı)</p>\r\n<p>Arka buldozer (Otomatik veya manuel kullanım imkanı)</p>\r\n<p>Ön cam koruma kafesi (Otomatik veya manuel kullanım imkanı)</p>\r\n<p>Kabin devirme (Otomatik veya manuel kullanım imkanı)</p>\r\n<p>Her biri dakikada 1900 litre su atabilme yeteneğine sahip iki su topu</p>\r\n<p>Daha fazla personel taşıma kapasitesi (1+5)</p>\r\n<p>Bilgisayar yazılımlı rezerv depo sistemi sayesinde su tankı boşaldığında bile aktif olarak çalışabilen alt ve üst yangın söndürme sistemi</p>\r\n<p>Su topunda zayıf ve kuvvetli şiddete sahip su ve karışım atabilme seçenekleri</p>\r\n<p><strong><u> </u></strong></p>\r\n<p><strong><u>TOMA GÜVENLİK SİSTEMLERİ</u></strong></p>\r\n<p><strong>TOMA SAVUNMA SİSTEMLERİ</strong></p>\r\n<p>Araç üstü ve araç altı yangın söndürme köpük sistemi ile yangından korunma</p>\r\n<p>Yanmaz boya</p>\r\n<p>Koruyucu zırhlı kafesler</p>\r\n<p>Zırhlı gövde</p>\r\n<p>Balistik kabin</p>\r\n<p>Balistik camlar</p>\r\n<p>Ran-flat lastikler</p>\r\n<p>Köpük tankı (150lt)</p>\r\n<p><strong> </strong></p>\r\n<p><strong>TOMA SALDIRI SİSTEMLERİ</strong></p>\r\n<p>Su topları ( 2 adet )</p>\r\n<p>Ön buldozer</p>\r\n<p>Arka buldozer</p>\r\n<p>Göstericilerin araca yaklaşmasını önlemek için aracın tüm çevresine yerleştirilmiş gaz püskürtme nozulları</p>\r\nSu tankı (6000lt), Gaz tankı (100lt), Boya tankı (100lt)', 'tr', 14, 1, '2023-04-20 08:05:44', '2023-04-20 08:05:44', '2023-04-20 08:05:08', NULL),
(15, 0, 'v-i-p-arac-tasarimi', 'V.I.P. ARAÇ TASARIMI', '<p>İsteğe Uygun olarak Minibüs-Midibüs-Otobüsler üst düzeyde V.I.P. araç olarak dizayn edilmektedir. Bu hususta istenebilecek talepleriniz en uygun şekilde araç içine dizayn edebilecek teknik personel ve bilgiye sahibiz. </p>\r\n<p><strong><br />V.I.P. ARAÇ ÖZELLİKLERİ </strong></p>\r\n<p>Hakiki deri döşemelii ayarlanabilir, çift kolçaklı yatarlı, 360 derece mekanizmalı, nokta emniyetli VIP koltuklar-koltuk ray ve mekanizmaları</p>\r\n<p>Deri döşemeli sürücü ve muavin koltuğu</p>\r\n<p>Elektrikli sürücü ve yolcu ara bölmesi</p>\r\n<p>Renkli Panoramik çift camlar</p>\r\n<p>Renkli arka cam</p>\r\n<p>Sürmeli perdeler</p>\r\n<p>Maun ağaç kaplamalı ön panel</p>\r\n<p>Deri ve ağaç kaplı direksiyon</p>\r\n<p>LCD 26-32* TV</p>\r\n<p>DCD Player</p>\r\n<p>Anti-Bas-Hoparlörler-Mikrofon</p>\r\n<p>Tavan tipi klima</p>\r\nTravego Model yan alu ısıtıcı<br /><br />Sprinter hava süspansiyonlar<br /><br />MDC 50 buzdolabı<br /><br />Kahve makinesi 220 W<br /><br />ahşap maun kaplamalı açılır kapanır masa<br /><br />Tüm bölmeler, buzdolabı kapağı, DVD kumanda paneli ve prizler pencere içleri maun kaplama<br /><br />Aracın boşta kalan tüm yerleri Deri Pufy kaplama <br /><br />Orijinal küllük ve bardak tutacakları<br /><br />Ahşap kaplama okuma lambası<br /><br />İyi kalite uzun tüylü taban halısı<br /><br />Plastik giydirme askıları<br /><br />Bağımsız akülü invertör ( 12 Volttan veya 24 Volttan – 220 Volta dönüşümlü)<br /><br />Uydu anteni (Opsiyonel)<br /><br />Gizli şifreli küçük para-mücevher kasası (Opsiyonel)<br /><br />Sürücü – Yolcu arası dahili el telefonu (Opsiyonel)', 'tr', 15, 1, '2023-04-20 08:10:16', '2023-04-20 08:10:16', '2023-04-20 08:09:58', NULL),
(16, 0, 'vidanjor', 'VİDANJÖR', '<p>Foseptik ve çamur türü atıkların emilerek bulunduğu erden çekilip, bir başka yere boşaltılması amacıyla tasarlanan Vidanjör araçlarımız, araç şasilerine bağlı olarak 3000 ila 16000 Lt kapasiteli tasarlanarak, imal edilmektedir. Araç üzerinde kapasitesine uyumlu, hareketini PTO dan alarak çalışan vakum pompası ve su emmesini önlemek amacıyla iki adet şamandıra bulunmaktadır. Vakum donanımında emniyetli valfler olup, PTO kumandası şoför mahallinde mevcuttur. Tank silindirik olarak ST-37 Ereğli sacından mamul silindirik vaziyette, şasiye uyumlu eğimde monteli ve arka kapak üstten menteşeler ile tanka bağlanarak, hidrolik silindir ve hidrolik el pompası ile yukarıya doğru açılıp, kapanması sağlanacak şekilde imal edilmektedir.</p>\r\n<p>Ayrıca, kapaklı volanlı sıkma sistemi ile sızdırmazlık amacıyla conta üzerine monte edilir. Bu ekipmanın yanında spiralli emiş hortumları ve bunların saklandığı dolaplar, hortum ve kaplin anahtarları galvaniz saçtan imal edilen el yıkamak için musluk ve takım sandığı da bulunmaktadır.</p>', 'tr', 16, 1, '2023-04-20 08:12:41', '2023-04-20 08:12:41', '2023-04-20 08:12:10', NULL),
(17, 0, 'firetruck-with-hydraulic-ladder', 'FIRETRUCK WITH HYDRAULIC LADDER', '<p style=\"font-weight: 400;\"><strong>Tank Metal Sheets                         :  </strong>Made of galvanized metalsheet, modular type – aliminium shutters<strong><br /><br />Water Tank                                       : </strong>304 Chrome nickel or galvanized metal sheet (2.000 – 6.000 lt.)<strong><br /><br />Foam Tank                                         : </strong>304 Chrome nickel or galvanized metal sheet (250 – 500 lt.)<strong><br /><br />Powder Tank                                     : </strong>200 to 600 Kg.<br /><strong><br />Pump Flowrate                                : </strong>2.000 lt/min. to 6000 lt/min. at high pressure 250 lt./min. to 400 lt./min. <br />                                                               at low pressure<strong><br /><br /><br />Pump Pressure                                : </strong>40 bar at high pressure 10 bar at low pressure <strong><br /><br /><br />Monitors                                            : </strong>At 10 bar 2400lt/min, 70mt. water, 60mt. foam spraying space, at 10 bar <br />                                                               45-75-90 mt. spraying space<strong><br /><br /><br />Reel                                                      : </strong>20 to 60 mt., 1’’ sprayer<strong><br />                                                               <br />Electric                                                : </strong>Lighting projector + telescopic projector<strong><br /><br />Portable Ladder                               : </strong>9m. telescopic<strong><br /><br /><br />TECHNICAL DETAILS<br /></strong><br />Our Firefighter Vehicle With Hydraulic Ladder will be compatible with the truck chassis capacity as 1000 – 6000 lt <br />capacity water tank, optional 250-500 lt capacity foam tank, if requested 200 – 600 kg. mounted power tank, <br />optional 12-18 m (manually controlled) 22-26-28 m. Electronic Joystick Controlled Hydraulic Ladder. <br />The production of this vehicle bodies will be modular as in 3 pieces, galvanized metal sheet plated and with modern look aliminium shutter. Product is made up to the highest standarts.</p>', 'en', 1, 1, '2023-04-19 22:08:03', '2023-04-20 08:56:04', '2023-04-19 22:07:55', NULL),
(18, 0, 'fuel-tank', 'FUEL TANK', '<p>Our fuel tanks are designed as to be installed on the vehicle’s chassisses, and designed as to be between 3,000 and 20,000 lt. capacity. The fuel tanksa re produced of ST37-4mm. sheet as ecliptical or D shaped.</p>', 'en', 2, 1, '2023-04-20 07:20:38', '2023-04-20 08:56:33', '2023-04-20 07:20:07', NULL),
(19, 0, 'double-car-trucks-erat-cabinets', 'DOUBLE CAR TRUCKS (ERAT CABINETS)', '<p><strong>VEHICLE SPECIFIATIONS<br /></strong><br />The vehicle’s front cab is made of the same as original 0,90-1 mm<br />thickness galvanized and high quality metal sheet. It is wide enough fort he crew to move freely.<br /><br />Hydraulic cylinder system to carry the double cabinand unable any damage to vehicle’s originality.<br /><br />High quality crew seats and furnishings – safety belts<br /><br />Cupboards under the patent type seats in extra cabin<br /><br />Furnishings and lighting is the same as original<br /><br />Doors and steps are the same as original<br /><br />Double window glasses are the same as original <br /><br />Oven painting  - varnishing  is the same as original<br /><br />If preffered mahogany design can be applied</p>', 'en', 3, 1, '2023-04-20 07:23:21', '2023-04-20 08:57:05', '2023-04-20 07:23:03', NULL),
(20, 0, 'damper', 'DAMPER', '<p>Our dampers are produced to be suitable with TSEK quality norms. Made to fit preffered truck to carry sand, stone, and rocks. In metal sheet choices of ST37, ST52 and Hardox in capacities <br />4-6-8-10-12-15 m<sup>3</sup>. Lifting system with cylinder from front, the vehicle’s equipped with tubes which are suitable with DIN norms and have electronic-pneumatic double put-down fast control.</p>', 'en', 4, 1, '2023-04-20 07:26:00', '2023-04-20 08:57:26', '2023-04-20 07:25:48', NULL),
(21, 0, 'first-intervention-rescue-vehicles', 'FIRST INTERVENTION-RESCUE VEHICLES', '<p><strong>Body Type                                          : </strong>Galvanized metal sheet, moduller type, aliminium shutters<strong><br /><br />Water Tank                                       : </strong>304 Chrome Nickel or Galvanized metal sheet (1.000 – 10.000 lt.)<strong><br /><br />Foam Tank                                         : </strong>304 Chrome Nickel or Galvanized metal sheet (250-500lt.)<strong><br /><br />Powder Tank                                     : </strong>200 to 400 Kg.<strong><br /><br />Pomp Flowrate                                : </strong>2.500 lt/min. to 400 lt/min. at low pressure<strong><br /><br />Pump Pressure                                : </strong>40 Bar at high pressure 10 Bar at low pressure<strong><br /><br />Monitors                                            : </strong>90o to 360o right – left turning, -20o to +80o vertical turning,<br /><strong>                                                                </strong>at 10 Bar 45 - 75 - 90 mt. spraying space<strong><br /><br />Reels                                                    : </strong>20 to 60 mt. 1’’ sprayer <strong><br /><br />Electric                                                : </strong>Lighting projectors – telescopic projectors <strong><br /><br />Portable Ladder                               : </strong>9m. telescopic<strong><br /><br />Optional Equipment                      : </strong>Rescue crane, rescue kits, generator, oxygen tubes, motopump, <br />                                                               electrical rescue crane, hydraulic cutter and taking off set, electrical saw, lenses,<br />                                                               vacuum hoses, emergency medical packs, rescue pillows etc.<strong><br /><br />TECHNICAL DETAILS<br /><br /></strong>Fully equipped rescue vehicles are designed for in the events of accidents which may ocur at highways and/or local roads, therefore they can be interventioned swiftly. Our rescue vehicles are plated by galvanized metal sheet and they have aliminium shutters, the product has sliding shelves and the shelves and cupboards all have equipment tools which are needed for rescue operation. The vehicle produced up to the highest standards and moderns looks. </p>', 'en', 5, 1, '2023-04-20 07:29:32', '2023-04-20 08:58:07', '2023-04-20 07:29:13', NULL),
(22, 0, 'kuka-type-canal-jetting-vehicle', 'KUKA TYPE CANAL JETTING VEHICLE', '<p><strong>Tank metal sheets                                         : </strong>304 Chrome Nickel or ST-37<strong><br /><br />Tank capacity                                                   : </strong>1000 Lt. to 10.000 Lt.<strong><br /><br />Logar Door Lifting Crane                             : </strong>200-250 kg.<strong><br /><br />Water Pump                                                     : </strong>100 to 250 bar, 150 lt/min. To 400 lt/min.<strong><br /><br />Pressure Regilator                                         : </strong>Pneumatic - Mechanical<strong><br /><br />House Reel                                                       : </strong>Hydraulic – L: 50-80-100-120 mt.</p>\r\n<p><strong><br />TECHNICAL DETAILS<br /></strong><br />Leads that can be opened/closed in hydraulic system, lifting crane on manhole door, the vehicle can be made according to customers specifications or our following details.</p>', 'en', 6, 1, '2023-04-20 07:31:53', '2023-04-20 08:58:39', '2023-04-20 07:31:38', NULL),
(23, 0, 'usual-combine-type-canal-jetting-vehicles', 'USUAL COMBINE TYPE CANAL JETTING VEHICLES', '<strong>Tank Metal Sheets                                                                        : </strong>304 Chrome Nickel or ST-37<strong><br /><br />Tank Capacity                                                                                  : </strong>1000<strong> </strong>Lt. to 10.000 Lt.<strong><br /><br />Vacuum Pump                                                                                : </strong>500 m<sup>3</sup>/h to 3000 m<sup>3</sup>/h <br />                                                                                                              (Powered from PTO or assistant engine or gear box)<strong><br /><br /><br />Waster Pump                                                                                  :  </strong>150 to 250 bar, 150 lt7min. To 400lt/min.<strong><br /><br />Pressure Regilator                                                                         : </strong>Pneumatic<strong><br /><br />Waste Water Suction and Emptying Hoses                        : </strong>4’’ to 6’’<strong><br /><br />Boom Hose Valves                                                                        :  </strong>4’’ to 6’’<strong><br /><br />Hose Reels                                                                                       : </strong>Hydraulic – L: 50-80-100-120 mt. Automatic<strong><br /><br />Jetting Reels                                                                                    : </strong>L:20 – 40 – 60 mt.<strong><br /><br /></strong><strong><br /><br /><br /><br />TECHNICAL DETAILS<br /></strong><br />The leads that will be able to open/close at the hydraulic system, lifting Crane on manhole door, high vacuum powered pumps, noozles and easy to use all other equipment controlled from vehicle and also for boom, <br />the vehicles can be made according to customers own specifications or we have usual specifications as follows.\r\n<p> </p>', 'en', 7, 1, '2023-04-20 07:45:24', '2023-04-20 08:59:04', '2023-04-20 07:45:08', NULL),
(24, 0, 'autobus-bodyworks-restoration-and-design', 'AUTOBUS BODYWORKS RESTORATION AND DESIGN', 'The bodyworks of all types of former models of both municipal and public type autpbusses at all sizes are extracted and they can be converted into the bodywork with an apperance like brand new by our unique design. Not only efficiency of utilization is maximized to upper levels, but also brand new and elegant apperance is provided fort he vehicles that their furnishings are fulfilled by us and that are designed with new design pattern.<br /><br /><br /><strong>            <br />            AUTOBUS BODYWORK RESTORATION AND DESIGN SPECIFICATIONS<br /><br /></strong>Bodywork produced by steel box profiles<br /><br />The surfaces of the interior floors and outer ceiling coated with specificgalvanized sheet and primed with epoxy<br /><br />The side surfaces of bodywork coated with complete smooth plated aliminium plates that are resistant to bending without welding and that are coated with skaflex specific adhesive <br /><br />The bodword design providing with the change of only the damaged section locally in case of any accident<br /><br />Modular type casing connection to vehicle chassis<br /><br />Individual design secured type black smoked splicing sliding glass<br /><br />Interior of frames, interior connection glass cases coated with specific dress <br /><br />Specific design ceiling air condition canals<br /><br />Panzot dressed ceiling on galvanized surface <br /><br />Ceiling coated with 3 mm. Resistant specific furnishing on the 15 mm plywood resistant to water<br /><br />Serpantin type honeycomb radiator that is possible to be operated from driver’s location<br /><br />2 units of Colormatic Sunroof with emergency exit aerial that is suitable to already installed air condition system<br /><br />Interior side walls and middle of the ceiling coated with melamine<br /><br />At the top built in public type passenger air condition and its installation (Optional)<br /><br />Specific design driver location and specific door with turnable latch<br /><br />Pneumatic type first class driver seat<br /><br />Digital advertisements pannel section installed at the back of the driver’s cab <br /><br />Individual design dashboard and breast strap (Optional polycarbonate coat)<br /><br />New design clock and gauges<br /><br />Radio-Tape-DVD player-TV control panel<br /><br />Optional LCD TV<br /><br />Digital time clock and temperator gauge <br /><br />7’’ screen controlled from the driver’s location, LCD screen showing the side passenger door and rear of the vehicle with triple screen seperator<br /><br />Panels with lights controlled from the driver’s location with gauge program, with LED and with road destination and number indicator system<br /><br />Complete numbered type case-in circuit breaker pannel with shutter<br /><br />Completely isolated electricity installation working with 24 V energy<br /><br />Blue LED lamps with fluorescent lamps fitted from end to end widhtwise on the ceiling<br /><br />‘’STOP’’ warning buttons on the pipes<br /><br />Individual design front and rear lamps suitable with highway commision regulations<br /><br />Front  headlights and hooters with LED system, rear reversing gear-hooter and quaternary lamps<br /><br />Resistant type automatically fixable mirrors<br /><br />Pneumatic minded full automatic door system with front-middle with single footstep with 130cm wide enterance design, double vent, with returning sensor to prevent possible crushing of the passenger, with Colormatic Glasses and with the help warning button<br /><br />Installation of lift system providing disabled passengers to go abroad onto the bus and descent out of the bus (Optional)<br /><br />Ultraviolet passenger seat installed on the floor with steel casing, with plastic seat body <br />(Appropriate to highway commision regulations), sitting and back surfaces with pet type tissue<br /><br />Electrostatic painted corridor bars providing the passengers to move easily and securely <br />and high quality passenger handles on the Electrostatic painted pipes fitted on the ceiling<br /><br />2 layers of complete inner and outer surface undercoating, painted in the oven with high quality acrylic paint and application of varnish on it\r\n<p> </p>', 'en', 8, 1, '2023-04-20 07:56:11', '2023-04-20 08:59:43', '2023-04-20 07:55:50', NULL),
(25, 0, 'trailer-firetruck-tanker', 'TRAILER FIRETRUCK TANKER', '<p>We are producing trailers with firetruck tankers which has the mechanisms to be hauled by tractor truck, which has the cylindrical shape made of stainless Chrome Nickel sheet according  to request or galvanized coated sheet or ST37 sheet with the capacity of 3000 – 4000 – 5000 lt., mounted on 2 or 4 wheeled trailers. Snailty Peone level centrifuge waterpump which is driven by the shaft, driven by  central output shaft, driven by hauling tractor is installed. At the endfitted ¾’’ brackets with hose reel wrapped with 20 metre hose. It’s firetruck type with the help of 10 bar pressured pump. Additionaly, behind the tank of water, freeflow tap is available. The front arrow of the trailer has the eternal rotary system and there is break installation at rearwheels. Additionally, phosphorous way leading bulls eye is installed on the rear of the tank. Above and besides equipment tool case, mudguard and mudguard dust strubbers are also added.</p>', 'en', 9, 1, '2023-04-20 07:57:38', '2023-04-20 09:00:08', '2023-04-20 07:57:12', NULL),
(26, 0, 'trailer-water-tanker', 'TRAILER WATER TANKER', '<p>We are producing trailers with water tank which has the mechanisms to be hauled by a tractor truck, which has the cylindrical shape made of stainless Chrome Nickel sheet according to requestor or galvanized coated sheetor ST 37 sheet with the capacit of 3000-4000-5000 lt., mounted on 2 or 4 wheeled trailers. Snailty peone level centrifuge water pump which is driven by the shaft, driven by central output shaft, driven by hauling tractor is installed. At the endfitted ¾’’ brackets with hose reel wrapped with 20 metre hose. It is firetruck type with the help of 10 bar pressured pump. Additionally, behind the water tank freeflow tap is available. The front arrow of the trailer has the eternal rotary system  and there is brake installation at the rearwheels. <br />Additionaly, phosphorous way leading bullseye is installed on the rear of the tank.<br />Above and besides the equipment tool case, mudguard andmudguard dust strubbers are also loaded.</p>', 'en', 10, 1, '2023-04-20 07:58:30', '2023-04-20 09:00:29', '2023-04-20 07:58:11', NULL),
(27, 0, 'firetruck-with-portable-ladder', 'FIRETRUCK WITH PORTABLE LADDER', '<p><strong>Tank Metal Sheets                         :  </strong>Made of galvanized metalsheet, modular type – aliminium shutters<strong><br /><br />Water Tank                                       : </strong>304 Chrome nickel or galvanized metal sheet (1.000 – 10.000 lt.)<strong><br /><br />Foam Tank                                         : </strong>304 Chrome nickel or galvanized metal sheet (250 – 500 lt.)<strong><br /><br />Powder Tank                                     : </strong>100 to 250 bar, 150 lt/min. to 400 lt/min<strong><br /><br />Pump Flowrate                                : </strong>2.000 lt/min. to 6000 lt/min. at high pressure 250 lt./min. to 400 lt./min. <br />                                                               at low pressure<strong><br /><br /><br />Pump Pressure                                : </strong>40 bar at high pressure<strong><br /><br />Monitors                                            : </strong>10 bar at low pressure 90° to 360° right-left turning, -20° to +80° vertical turning,                                                              at 10 bar 45 – 75 – 90 mt., 1’’ sprayer<strong><br /><br /><br /><br />Reel                                                      : </strong>20 to 60 mt., 1’’ sprayer<strong><br />                                                               <br />Electric                                                : </strong>Projectors + telescopic projector<strong><br /><br />Portable Ladder                               : </strong>9m. telescopic<strong><br /><br /><br /><br />Technical Details</strong></p>\r\n<p>Our Firefighter Vehicle With Portable Ladder equipments will be compatible with the truck chassis and will have <br />1000 – 10.000 Lt. capacity water tank and as optional 250-500 lt foam tank. When requested 200-600 kg <br />mounted power tank, 9 m portable ladder. The product body will be produced in modular system as 3 pieces, galvanized metal sheet plated. The firefighter will have aliminium shutters, a modern look and design, <br />made by high standarts.</p>', 'en', 11, 1, '2023-04-20 07:59:18', '2023-04-20 09:02:01', '2023-04-20 07:58:56', NULL);
INSERT INTO `products` (`id`, `top_id`, `url`, `title`, `content`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`, `img_url`) VALUES
(28, 0, 'water-tank-trailer-vehicle', 'WATER TANK TRAILER VEHICLE', '<p>Our water tank vehicles come in 10000 – 28000 lt capacities depending on the truck chassis. <br />They are produced according to customer’s preferences as ST 37 black metal sheet/galvanized metal sheet/stainless Chrome Nickel meta lsheet. Their shape are cylindrical, eliptic, or D shaped, And inside will be equipped with water-breaks. On the tank there will be manhole door and walking way which is made of diamont or tear shaped metal sheet, water level indicator, fixed ladder for able workers to go up on top of the tank, at the rear of the tank there will be reflectors to Show ways. There will be a single cascade santrifuge pump mounted on the vehicle chassis. The hose L: 20m and 1’’wide fitted to reel and has a flange fixed at the end. The other equipments comes with this vehicle is 4 suction hoses, their storage cupboards, hose and a coupling keys, tool box and a yellow lamb which’s mounted on the top of the vehicle. If requested sprinkling system can be added in the front and/or rear of the vehicle.</p>', 'en', 12, 1, '2023-04-20 08:02:13', '2023-04-20 09:02:26', '2023-04-20 08:02:03', NULL),
(29, 0, 'telescopic-platform', 'TELESCOPIC PLATFORM', '<p><strong>Platform base chassis                                   : </strong>Diamont metal sheet – ST37<strong><br /><br />Platfor height                                                  : </strong>Between 12 to 24m<strong><br /><br />Balancing legs                                                  : </strong>4 (Q)<strong><br /><br />Turning ratio                                                    : </strong>360°<strong><br /><br />Side opening of the basket                         : </strong>6,5 mt – 17 mt<strong><br /><br />Basket capacity                                                               : </strong>2 person/200 Kg.<strong><br /><br />The other specs of the basket                   : </strong>Basket isolation up to 1000 Volt, basket balancing engine <br />                                                                               is included<strong><br /><br />Control system                                                : </strong>Manual orrational is optional</p>', 'en', 13, 1, '2023-04-20 08:04:43', '2023-04-20 09:03:03', '2023-04-20 08:04:17', NULL),
(30, 0, 't-o-m-a-features', 'T.O.M.A. FEATURES', 'Possibility of using chassis in different brands, models and configurations<br /><br />Ballistic protected cabin including all-round windows (FB4+, Class6, BR4)<br /><br />Ballistic protected fuel tank, alternator and air tubes (FB4+, Class6)<br /><br />Armored body structure against impact<br /><br />Protection cage for bulletproof windows, headlights, escort lamp, projectors, cameras and special accessories<br /><br />Special polycarbonate transparent material that does not block the vision under the headlight and mirror group cage for stone and impact protection<br /><br />Internally controlled protection cage on the windshield<br /><br />Control of all systems by computer and software<br /><br />2 water cannon control panels that can be adjusted according to the operator and provide ergonomic use<br /><br />10” touch screens on the water cannon operator control panel where operators can make all controls<br /><br />Thanks to 10” touch screens, operators can precisely monitor all liquid amounts, water ball positions and easily enter parameters.<br /><br />Comfortable and ergonomic data monitoring thanks to 10” touch screens<br /><br />Possibility to change camera settings on water cannon from 10” touch screens<br /><br />Thanks to the 7” TFT LCD screens on the water cannon operator control panel, the ability to monitor the area to be watered and the ability to auto-focus the image by approaching and moving away from the target with the ZOOM+ / ZOOM- keys on the joystick.<br /><br />Disabling water cannon without selecting shot type to prevent unintentional use<br /><br />Recording the actions related to vehicle use as date and time during the intervention and monitoring them later on the touch screen<br /><br />In case of emergency, stopping the second engine and stopping the system with the \"EMERGENCY STOP\" button<br /><br />Recording water cannon camera images with a mobile DVR device (Optional; Perimeter cameras)<br /><br />The possibility of backing up and watching the images recorded with the mobile DVR device with the LCD screen of the device<br /><br />With two 10” LCD TVs in the front of the cabin, the driver and the vehicle supervisor can watch the four sides of the vehicle.<br /><br />Water polo operators can watch environmental cameras thanks to 7” TFT LCD screens placed on the headrests of the driver and vehicle supervisor.<br /><br />High-capacity camera hardware<br /><br />front area camera<br /><br />rear area camera<br /><br />Side area cameras (right and left areas)<br /><br />Monitor cameras (right and left monitor)<br /><br />Possibility of throwing water from the water ball in different ways<br /><br />short pulse shot<br /><br />long pulse shot<br /><br />continuous shot<br /><br />Possibility to change the firing times and impact interval times of pulsed shots made with water cannon in seconds<br /><br />High-ability water cannon range (60-70 meters)<br /><br />Liquids sprayed from water cannon in different combinations<br /><br />water shot only<br /><br />Water + Paint shot<br /><br />Water + Gas shot<br /><br />Water + Gas + Paint shot<br /><br />Water + Fire fighting foam (synthetic foam) shot<br /><br />Heating equipment with thermostat against freezing in all liquid tanks (water, gas, paint, foam)<br /><br />High tank capacities<br /><br />Water tank capacity 6000 liters<br /><br />Gas tank capacity 100 liters<br /><br />Paint tank capacity 100 liters<br /><br />Foam tank capacity 150 liters<br /><br />Water absorption equipment (filling the water tank with the ability to absorb water from a depth of 7.5 meters)<br /><br />Vehicle defense and protection systems<br /><br />Fire protection with on-vehicle and under-vehicle fire extinguishing foam system<br /><br />Gas nozzles located all around the vehicle to prevent demonstrators from approaching the vehicle<br /><br />Cleaning with a special water spray system for vehicle windows<br /><br />Cleaning with water and air spray system special for vehicle cameras<br /><br />Ran-flat tires (goes swamp)<br /><br />Tear gas (OC solution) filtration system for high pressure cabin<br /><br />Barricade elimination capability with front bulldozer with command from inside the cabin<br /><br />Effective sweeping capability with the front bulldozer brush system<br /><br />Barricade removal and escape maneuverability with its commanded rear bulldozer from inside the cabin<br /><br />Effective sweeping capability with the rear bulldozer brush system<br /><br />Thanks to the bulldozers protected with fireproof paint, the cabin and the whole body, the ability to intervene against heat and flame without any problems<br /><br />Plug system to prevent water leakage and flow after shooting in water cannons<br /><br />Dry chemical powder extinguisher system that is automatically activated in case of fire in the auxiliary engine and pump section<br /><br />Modular body combined with a special flexible link and designed to prevent climbing on it<br /><br />Piston opening rear fender designed for ease of tire maintenance<br /><br />Slide-opening battery tray designed for ease of battery maintenance<br /><br />Automatic cabin tilting designed for ease of maintenance in vehicle breakdowns<br /><br />Possibility of using a manual hydraulic system designed for automated hydraulic system failures<br /><br />Front bulldozer (Automatic or manual use)<br /><br />Rear bulldozer (Automatic or manual use)<br /><br />Windshield protection cage (Automatic or manual use)<br /><br />Cab tilting (Automatic or manual use)<br /><br />Two water cannons, each capable of throwing up to 1900 liters of water per minute<br /><br />More personnel carrying capacity (1+5)<br /><br />Thanks to the computer software reserve storage system, the upper and lower fire extinguishing system can work actively even when the water tank is empty.<br />Options for throwing water and mixture with weak and strong intensity in water cannon<br /><br />TOMA SECURITY SYSTEMS<br />TOMA DEFENSE SYSTEMS<br />Fire protection with on-vehicle and under-vehicle fire extinguishing foam system<br />fireproof paint<br />Protective armored cages<br />armored hull<br />ballistic cabin<br />ballistic glasses<br />Ran-flat tires<br />Foam tank (150lt)<br /><br />TOMA ATTACK SYSTEMS<br />Water balls (2 pieces)<br />front bulldozer<br />rear bulldozer<br />Gas nozzles located all around the vehicle to prevent demonstrators from approaching the vehicle<br />Water tank (6000lt), Gas tank (100lt), Paint tank (100lt)<br />\r\n<p> </p>', 'en', 14, 1, '2023-04-20 08:05:44', '2023-04-20 09:04:49', '2023-04-20 08:05:08', NULL),
(31, 0, 'v-i-p-vehicle-design', 'V.I.P. VEHICLE DESIGN', 'Minibus-midibus and busses made and designed according to customers specifications by using the highest standarts technical skills. We have outstanding knowledge and crew in this field.<br /><br /><strong>                        V.I.P. VEHICLE DESIGN STANDART TECHNICAL SPECIFICATIONS<br /><br /></strong>Real leather furnishing, adjustable, double chair arm, becomes a bed, turning system 360o, point safety belt V.I.P. seats-seat rail and mechanisms<br /><br />Leather driver and host seats<br /><br />Electrical driver and passenger compartment<br /><br />Colored panoramic double Windows<br /><br />Colored rear window<br /><br />Sliding curtains<br /><br />Mahogandy front panel<br /><br />Leather and wooden driving wheel<br /><br />LCD 26 – 32* TV<br /><br />DVD player<br /><br />Speakers – microphone<br /><br />Ceiling air conditioner<br /><br />Travego type seat heats<br /><br />Sprinter air suspentions <br /><br />MDC 50 fridge<br /><br />Coffee machine 220 W<br /><br />Mahogandy foldable table<br /><br />All compartments, fridge door, DVD control, panel and plugs, inside of Windows are mahogandy plated<br /><br />The vehicle’s all other areas puffy leather layered<br /><br />Original ashtray and glass holders<br /><br />Wooden book reading light<br /><br />Good quality long feathered carpit<br /><br />Plastic dresser hangers<br /><br />Free battery inventor (From 12 Volt or 24 Volt – to 220 Volt alternatives)<br /><br />Cable antenna (Optional)<br /><br />Encoded small Money-jewel safe (Optional)<br /><br />Driver – passenger communication telephone (Optional)\r\n<p> </p>', 'en', 15, 1, '2023-04-20 08:10:16', '2023-04-20 09:06:21', '2023-04-20 08:09:58', NULL),
(32, 0, 'cesspit-emptier-vehicle', 'CESSPIT EMPTIER VEHICLE', '<p>Foseptik ve çamur türü atıkların emilerek bulunduğu erden çekilip, bir başka yere boşaltılması amacıyla tasarlanan Vidanjör araçlarımız, araç şasilerine bağlı olarak 3000 ila 16000 Lt kapasiteli tasarlanarak, imal edilmektedir. Araç üzerinde kapasitesine uyumlu, hareketini PTO dan alarak çalışan vakum pompası ve su emmesini önlemek amacıyla iki adet şamandıra bulunmaktadır. Vakum donanımında emniyetli valfler olup, PTO kumandası şoför mahallinde mevcuttur. Tank silindirik olarak ST-37 Ereğli sacından mamul silindirik vaziyette, şasiye uyumlu eğimde monteli ve arka kapak üstten menteşeler ile tanka bağlanarak, hidrolik silindir ve hidrolik el pompası ile yukarıya doğru açılıp, kapanması sağlanacak şekilde imal edilmektedir.</p>\r\n<p>Ayrıca, kapaklı volanlı sıkma sistemi ile sızdırmazlık amacıyla conta üzerine monte edilir. Bu ekipmanın yanında spiralli emiş hortumları ve bunların saklandığı dolaplar, hortum ve kaplin anahtarları galvaniz saçtan imal edilen el yıkamak için musluk ve takım sandığı da bulunmaktadır.</p>', 'en', 16, 1, '2023-04-20 08:12:41', '2023-04-20 09:06:56', '2023-04-20 08:12:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_w_categories`
--

CREATE TABLE `products_w_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_w_categories`
--

INSERT INTO `products_w_categories` (`id`, `product_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 4),
(3, 3, 1),
(4, 4, 6),
(5, 5, 2),
(6, 6, 3),
(7, 7, 3),
(8, 8, 7),
(9, 9, 4),
(10, 10, 4),
(11, 11, 1),
(12, 12, 4),
(13, 13, 5),
(14, 14, 2),
(15, 15, 7),
(16, 16, 3),
(17, 17, 8),
(18, 18, 11),
(19, 19, 8),
(20, 20, 13),
(21, 21, 9),
(22, 22, 10),
(23, 23, 10),
(24, 24, 14),
(25, 25, 11),
(26, 26, 11),
(27, 27, 8),
(28, 28, 11),
(29, 29, 12),
(30, 30, 9),
(31, 31, 14),
(32, 32, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `top_id` int(11) NOT NULL DEFAULT 0,
  `title` longtext DEFAULT NULL,
  `seo_url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `home_url` longtext DEFAULT NULL,
  `banner_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `top_id`, `title`, `seo_url`, `img_url`, `home_url`, `banner_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 0, 'MERDİVENLİ MERDİVENSİZ İTFAİYE ARAÇLARI', 'merdivenli-merdivensiz-itfaiye-araclari', 'a9d24fc73ef747bb36725f2cf38a69c6.webp', NULL, NULL, 'tr', 1, 1, '2022-12-15 13:03:22', '2023-04-20 08:23:26'),
(2, 0, 'AKUT KURTARMA VE İLK MÜDAHELE ARAÇLARI', 'akut-kurtarma-ve-ilk-mudahele-araclari', '1a05688bf3818a01993cedd23437eb63.webp', NULL, NULL, 'tr', 2, 1, '2022-12-15 13:03:41', '2023-04-20 08:23:37'),
(3, 0, 'KANAL AÇMA ARAÇLARI', 'kanal-acma-araclari', '2f96a16933459c6d853275616a52fd48.webp', NULL, NULL, 'tr', 3, 1, '2023-04-19 21:49:39', '2023-04-20 08:23:46'),
(4, 0, 'TANKERLER', 'tankerler', '89e59c76d386345a0d07e82343040693.webp', NULL, NULL, 'tr', 4, 1, '2023-04-19 21:53:13', '2023-04-20 08:24:08'),
(5, 0, 'HİDROLİK VE TELESKOPİK PLATFORMLAR', 'hidrolik-ve-teleskopik-platformlar', '82a469caf9c02f0955e1b9fcf8b78780.webp', NULL, NULL, 'tr', 5, 1, '2023-04-19 21:53:28', '2023-04-20 08:24:19'),
(6, 0, 'DAMPERLİ KAMYONLAR', 'damperli-kamyonlar', '76e06d429cff5fe2048b1e5ef57b925c.webp', NULL, NULL, 'tr', 6, 1, '2023-04-19 21:53:36', '2023-04-20 08:24:27'),
(7, 0, 'ARAÇ YENİLEME VE DİZAYN', 'arac-yenileme-ve-dizayn', 'e6989f8fed17575abd5306e9db83b888.webp', NULL, NULL, 'tr', 7, 1, '2023-04-19 21:53:44', '2023-04-20 08:24:45'),
(8, 0, 'FIRE VEHICLES WITH STAIRS AND WITHOUT STAIRS', 'fire-vehicles-with-stairs-and-without-stairs', '5f57cce0e223b62cce743eef0daca7b9.webp', NULL, NULL, 'en', 1, 1, '2022-12-15 13:03:22', '2023-04-20 08:50:01'),
(9, 0, 'AKUT RESCUE AND FIRST RESPONSE VEHICLES', 'akut-rescue-and-first-response-vehicles', 'bef4f5a650bac3a61b5f928f276ff225.webp', NULL, NULL, 'en', 2, 1, '2022-12-15 13:03:41', '2023-04-20 08:50:10'),
(10, 0, 'GROOVING TOOLS', 'grooving-tools', 'e46a4366c1e2f9f273e9b6f4dbc4b158.webp', NULL, NULL, 'en', 3, 1, '2023-04-19 21:49:39', '2023-04-20 08:50:18'),
(11, 0, 'TANKS', 'tanks', '0026320fa43a58daece6a77f37475c58.webp', NULL, NULL, 'en', 4, 1, '2023-04-19 21:53:13', '2023-04-20 08:50:32'),
(12, 0, 'HYDRAULIC AND TELESCOPIC PLATFORMS', 'hydraulic-and-telescopic-platforms', 'd62ab417d0023a1a2da2f89e038c1727.webp', NULL, NULL, 'en', 5, 1, '2023-04-19 21:53:28', '2023-04-20 08:50:48'),
(13, 0, 'DUMP TRUCKS', 'dump-trucks', '311bd934e73eb97abdfd1892715122af.webp', NULL, NULL, 'en', 6, 1, '2023-04-19 21:53:36', '2023-04-20 08:50:59'),
(14, 0, 'VEHICLE RENOVATION AND DESIGN', 'vehicle-renovation-and-design', 'c739f5bf7e1f615866baff52c4a399fe.webp', NULL, NULL, 'en', 7, 1, '2023-04-19 21:53:44', '2023-04-20 08:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `isCover` tinyint(4) DEFAULT 0,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `url`, `img_url`, `title`, `description`, `lang`, `rank`, `isActive`, `isCover`, `createdAt`, `updatedAt`) VALUES
(1, 1, '3e110a4ec169dd2d385a8a43dbe50144.webp', NULL, NULL, NULL, 'tr', 1, 1, 1, '2023-04-20 07:13:37', '2023-04-20 07:13:39'),
(2, 1, '658f25445741092c15f24b34422cb818.webp', NULL, NULL, NULL, 'tr', 2, 1, 0, '2023-04-20 07:13:41', '2023-04-20 07:13:41'),
(3, 1, '6d26639077d8ba332891111d9fd55848.webp', NULL, NULL, NULL, 'tr', 3, 1, 0, '2023-04-20 07:13:44', '2023-04-20 07:13:44'),
(4, 2, 'd4efd4eceb782cb16c2ac20cecabe55b.webp', NULL, NULL, NULL, 'tr', 4, 1, 1, '2023-04-20 07:20:50', '2023-04-20 07:20:55'),
(5, 2, 'a752193da4c613276fde61e1409b32fd.webp', NULL, NULL, NULL, 'tr', 5, 1, 0, '2023-04-20 07:20:53', '2023-04-20 07:20:53'),
(6, 2, 'b3e99b49056c737fd819d43f52be1e7b.webp', NULL, NULL, NULL, 'tr', 6, 1, 0, '2023-04-20 07:21:06', '2023-04-20 07:21:06'),
(7, 2, '2521acccbbeda1bb26c3312f6fecc7eb.webp', NULL, NULL, NULL, 'tr', 7, 1, 0, '2023-04-20 07:21:09', '2023-04-20 07:21:09'),
(8, 2, '800d4b751fb0491309cdb06550121832.webp', NULL, NULL, NULL, 'tr', 8, 1, 0, '2023-04-20 07:21:12', '2023-04-20 07:21:12'),
(9, 2, 'eac80cb1391ab0d0f2378d8353a0806a.webp', NULL, NULL, NULL, 'tr', 9, 1, 0, '2023-04-20 07:21:16', '2023-04-20 07:21:16'),
(10, 2, 'ffe011498ad85d77132a45737b0b5c86.webp', NULL, NULL, NULL, 'tr', 10, 1, 0, '2023-04-20 07:21:19', '2023-04-20 07:21:19'),
(11, 2, '766638ff1826fe33a106d084b29e5f5e.webp', NULL, NULL, NULL, 'tr', 11, 1, 0, '2023-04-20 07:21:21', '2023-04-20 07:21:21'),
(12, 3, '7d8f949fce2e1303691429cdc16d2956.webp', NULL, NULL, NULL, 'tr', 12, 1, 1, '2023-04-20 07:23:33', '2023-04-20 07:23:35'),
(13, 3, '4962d2b18fce9e40b252e3860a0c053f.webp', NULL, NULL, NULL, 'tr', 13, 1, 0, '2023-04-20 07:23:38', '2023-04-20 07:23:38'),
(14, 3, '4fa8862074003cfa675131da4aa9c324.webp', NULL, NULL, NULL, 'tr', 14, 1, 0, '2023-04-20 07:23:43', '2023-04-20 07:23:43'),
(15, 3, '4f90519493201e3c6a31b6cde963b839.webp', NULL, NULL, NULL, 'tr', 15, 1, 0, '2023-04-20 07:23:47', '2023-04-20 07:23:47'),
(16, 3, '41b96fa2352686f6c86dbb773e50c2ed.webp', NULL, NULL, NULL, 'tr', 16, 1, 0, '2023-04-20 07:23:54', '2023-04-20 07:23:54'),
(17, 3, 'a5161d1900c80303fde07992fb3fd3b7.webp', NULL, NULL, NULL, 'tr', 17, 1, 0, '2023-04-20 07:23:58', '2023-04-20 07:23:58'),
(18, 3, '47d50440a4956590024f6a0747a779bc.webp', NULL, NULL, NULL, 'tr', 18, 1, 0, '2023-04-20 07:24:00', '2023-04-20 07:24:00'),
(19, 3, '31dd1b0912c18c3e9d5745f028e39d77.webp', NULL, NULL, NULL, 'tr', 19, 1, 0, '2023-04-20 07:24:03', '2023-04-20 07:24:03'),
(20, 3, '30ce1f4c049da19813bd2ba55462159e.webp', NULL, NULL, NULL, 'tr', 20, 1, 0, '2023-04-20 07:24:06', '2023-04-20 07:24:06'),
(21, 3, 'b632fd3d9a14559f32bee411769ae819.webp', NULL, NULL, NULL, 'tr', 21, 1, 0, '2023-04-20 07:24:11', '2023-04-20 07:24:11'),
(22, 3, 'f8de1ee42b27bb1c57ae15b33a6d0512.webp', NULL, NULL, NULL, 'tr', 22, 1, 0, '2023-04-20 07:24:27', '2023-04-20 07:24:27'),
(23, 3, 'c64c8524607c0aaf07dac2842ddde7e1.webp', NULL, NULL, NULL, 'tr', 23, 1, 0, '2023-04-20 07:24:30', '2023-04-20 07:24:30'),
(24, 4, '497b8c92e7cb55a83545fdc5118a297b.webp', NULL, NULL, NULL, 'tr', 24, 1, 1, '2023-04-20 07:26:11', '2023-04-20 07:26:17'),
(25, 4, 'cf06b500463af915a626ab3f1e8ef533.webp', NULL, NULL, NULL, 'tr', 25, 1, 0, '2023-04-20 07:26:15', '2023-04-20 07:26:15'),
(26, 5, 'e761f1d98dedc257c20e87a95bbec302.webp', NULL, NULL, NULL, 'tr', 26, 1, 1, '2023-04-20 07:29:52', '2023-04-20 07:30:23'),
(27, 5, 'f466d44a676bfbb7660a10d39e4c49c5.webp', NULL, NULL, NULL, 'tr', 27, 1, 0, '2023-04-20 07:30:19', '2023-04-20 07:30:19'),
(28, 5, 'b8208c7e6b2e1118c7729871f4f08695.webp', NULL, NULL, NULL, 'tr', 28, 1, 0, '2023-04-20 07:30:22', '2023-04-20 07:30:22'),
(29, 6, '060038979bee88be535abb59e280cb75.webp', NULL, NULL, NULL, 'tr', 29, 1, 1, '2023-04-20 07:32:05', '2023-04-20 07:32:07'),
(30, 6, '27d1d268506107315d85468e2be5d178.webp', NULL, NULL, NULL, 'tr', 30, 1, 0, '2023-04-20 07:32:10', '2023-04-20 07:32:10'),
(31, 6, '95849b33230a2ecaaf02d7a5ba4664a3.webp', NULL, NULL, NULL, 'tr', 31, 1, 0, '2023-04-20 07:32:13', '2023-04-20 07:32:13'),
(32, 6, '6495a34c29f085be3d0f5bb9767f049f.webp', NULL, NULL, NULL, 'tr', 32, 1, 0, '2023-04-20 07:32:16', '2023-04-20 07:32:16'),
(33, 6, 'e50edc8fb5a2a943a5416101429770f8.webp', NULL, NULL, NULL, 'tr', 33, 1, 0, '2023-04-20 07:32:19', '2023-04-20 07:32:19'),
(34, 6, 'c71da687e9ebc4a2218f6fbf4b1f3b7e.webp', NULL, NULL, NULL, 'tr', 34, 1, 0, '2023-04-20 07:32:21', '2023-04-20 07:32:21'),
(35, 6, 'cc8dd4877f1b85ffd837a1aa36213fdd.webp', NULL, NULL, NULL, 'tr', 35, 1, 0, '2023-04-20 07:32:24', '2023-04-20 07:32:24'),
(36, 6, '6ea01d8c81001b561ed8df6d87e6eb84.webp', NULL, NULL, NULL, 'tr', 36, 1, 0, '2023-04-20 07:32:27', '2023-04-20 07:32:27'),
(37, 4, '6929f5d9e5def080c2a218510fa777ce.webp', NULL, NULL, NULL, 'tr', 37, 1, 0, '2023-04-20 07:35:37', '2023-04-20 07:35:37'),
(38, 7, '3b2976ea70a75838ecd12e78166fc7d0.webp', NULL, NULL, NULL, 'tr', 38, 1, 1, '2023-04-20 07:45:34', '2023-04-20 07:45:36'),
(39, 7, 'f375f3b4253ca2873f1bc2b9e573b61f.webp', NULL, NULL, NULL, 'tr', 39, 1, 0, '2023-04-20 07:45:38', '2023-04-20 07:45:38'),
(40, 8, '508f2bf52bb154ae27563c6de8007c28.webp', NULL, NULL, NULL, 'tr', 40, 1, 1, '2023-04-20 07:56:22', '2023-04-20 07:56:26'),
(41, 8, '673631fa972980029db16b5eba22534c.webp', NULL, NULL, NULL, 'tr', 41, 1, 0, '2023-04-20 07:56:25', '2023-04-20 07:56:25'),
(42, 8, 'aeaecc3682edb742599a59c4508416a3.webp', NULL, NULL, NULL, 'tr', 42, 1, 0, '2023-04-20 07:56:29', '2023-04-20 07:56:29'),
(43, 8, '31072fdd81bb2dbe23e0214ba9066a0a.webp', NULL, NULL, NULL, 'tr', 43, 1, 0, '2023-04-20 07:56:32', '2023-04-20 07:56:32'),
(44, 8, '1bb77555eea5cb53f6017cfe877a66fc.webp', NULL, NULL, NULL, 'tr', 44, 1, 0, '2023-04-20 07:56:36', '2023-04-20 07:56:36'),
(45, 8, '0939ebcd745f5733abfc04c4fc7aacf1.webp', NULL, NULL, NULL, 'tr', 45, 1, 0, '2023-04-20 07:56:40', '2023-04-20 07:56:40'),
(46, 8, '5f186a62ece5be0bd98c92c8a6ff5136.webp', NULL, NULL, NULL, 'tr', 46, 1, 0, '2023-04-20 07:56:44', '2023-04-20 07:56:44'),
(47, 8, '72dad834f8a82f6932cd53863274607b.webp', NULL, NULL, NULL, 'tr', 47, 1, 0, '2023-04-20 07:56:48', '2023-04-20 07:56:48'),
(48, 9, '53d030672e1499186f689eab57c20e1c.webp', NULL, NULL, NULL, 'tr', 48, 1, 1, '2023-04-20 07:57:49', '2023-04-20 07:57:52'),
(49, 9, '662f91097113b5c0e1dc046309fefed6.webp', NULL, NULL, NULL, 'tr', 49, 1, 0, '2023-04-20 07:57:51', '2023-04-20 07:57:51'),
(50, 10, '5957b600cc51da36db3aa1ad163316ea.webp', NULL, NULL, NULL, 'tr', 50, 1, 1, '2023-04-20 07:58:43', '2023-04-20 07:58:44'),
(51, 10, 'c7d6b5fd021bf381d949f1bdad2cf7da.webp', NULL, NULL, NULL, 'tr', 51, 1, 0, '2023-04-20 07:58:47', '2023-04-20 07:58:47'),
(52, 11, '35c121d8cc91462e6ddbc2db5e5a9832.webp', NULL, NULL, NULL, 'tr', 52, 1, 1, '2023-04-20 07:59:30', '2023-04-20 07:59:35'),
(53, 11, 'cd2f35329d5160f1be48e2d7aa6a544a.webp', NULL, NULL, NULL, 'tr', 53, 1, 0, '2023-04-20 07:59:33', '2023-04-20 07:59:33'),
(54, 11, '7a2feb0223bb037cce8a9dee30851b45.webp', NULL, NULL, NULL, 'tr', 54, 1, 0, '2023-04-20 07:59:41', '2023-04-20 07:59:41'),
(55, 11, '0cc5aaa27744674e3100fcc1a2c5a2a9.webp', NULL, NULL, NULL, 'tr', 55, 1, 0, '2023-04-20 07:59:44', '2023-04-20 07:59:44'),
(56, 11, '56ad56e8839a44f55eae11449671fed2.webp', NULL, NULL, NULL, 'tr', 56, 1, 0, '2023-04-20 07:59:46', '2023-04-20 07:59:46'),
(57, 11, 'ed52e82bb6670d60afc8ca6234b5d670.webp', NULL, NULL, NULL, 'tr', 57, 1, 0, '2023-04-20 07:59:49', '2023-04-20 07:59:49'),
(58, 12, 'f994da7b7e49ccbeda08a526d84d77c9.webp', NULL, NULL, NULL, 'tr', 58, 1, 1, '2023-04-20 08:02:23', '2023-04-20 08:02:27'),
(59, 12, 'dbd5ff8a86c1b8a9d81338e75b4c184a.webp', NULL, NULL, NULL, 'tr', 59, 1, 0, '2023-04-20 08:02:25', '2023-04-20 08:02:25'),
(60, 12, '860a94a172304f5f1992bfe2c3540c3a.webp', NULL, NULL, NULL, 'tr', 60, 1, 0, '2023-04-20 08:02:29', '2023-04-20 08:02:29'),
(61, 14, '40615698a962616d2f1a8bde375f62ba.webp', NULL, NULL, NULL, 'tr', 61, 1, 1, '2023-04-20 08:05:55', '2023-04-20 08:06:10'),
(62, 14, 'f24f8322d0c7b3f8ba8c5492151e1c9c.webp', NULL, NULL, NULL, 'tr', 62, 1, 0, '2023-04-20 08:05:57', '2023-04-20 08:05:57'),
(63, 14, 'ef86bdab1eb62a146565d3884c65a28e.webp', NULL, NULL, NULL, 'tr', 63, 1, 0, '2023-04-20 08:06:00', '2023-04-20 08:06:00'),
(64, 14, '51e0b1a92c5aa3bff1fbe0b2c4015120.webp', NULL, NULL, NULL, 'tr', 64, 1, 0, '2023-04-20 08:06:02', '2023-04-20 08:06:02'),
(65, 14, '99f58f1c3edfb843bb558f06332215c5.webp', NULL, NULL, NULL, 'tr', 65, 1, 0, '2023-04-20 08:06:03', '2023-04-20 08:06:03'),
(66, 14, 'e816763212fb7840b9118001298606f9.webp', NULL, NULL, NULL, 'tr', 66, 1, 0, '2023-04-20 08:06:05', '2023-04-20 08:06:05'),
(67, 14, '4e51cf470f40831a094b38c61422fa48.webp', NULL, NULL, NULL, 'tr', 67, 1, 0, '2023-04-20 08:06:07', '2023-04-20 08:06:07'),
(68, 15, 'ebf5556df21439eb4a14fc19736fda64.webp', NULL, NULL, NULL, 'tr', 68, 1, 1, '2023-04-20 08:10:26', '2023-04-20 08:10:29'),
(69, 15, 'c7a2dc87e028ee97c841dc1c9a809db2.webp', NULL, NULL, NULL, 'tr', 69, 1, 0, '2023-04-20 08:10:28', '2023-04-20 08:10:28'),
(70, 15, 'f25342cc4d105cef91188de64be837e5.webp', NULL, NULL, NULL, 'tr', 70, 1, 0, '2023-04-20 08:10:31', '2023-04-20 08:10:31'),
(71, 15, '32f3bb83a39499686048ab5e8fc56b3b.webp', NULL, NULL, NULL, 'tr', 71, 1, 0, '2023-04-20 08:10:32', '2023-04-20 08:10:32'),
(72, 15, 'f941e36811ba96c3dfdd432bc3efc488.webp', NULL, NULL, NULL, 'tr', 72, 1, 0, '2023-04-20 08:10:34', '2023-04-20 08:10:34'),
(73, 15, '8ea028a242528a4ebe0eb2199603f716.webp', NULL, NULL, NULL, 'tr', 73, 1, 0, '2023-04-20 08:10:36', '2023-04-20 08:10:36'),
(74, 15, '381590fb6abcf49b3d701b7d5a034ce8.webp', NULL, NULL, NULL, 'tr', 74, 1, 0, '2023-04-20 08:10:38', '2023-04-20 08:10:38'),
(75, 15, 'd7cd207ae82dfa162d3ad8f2b2200d11.webp', NULL, NULL, NULL, 'tr', 75, 1, 0, '2023-04-20 08:10:40', '2023-04-20 08:10:40'),
(76, 15, '4912d6451bd1325385b9c7ecabc3d4bd.webp', NULL, NULL, NULL, 'tr', 76, 1, 0, '2023-04-20 08:10:42', '2023-04-20 08:10:42'),
(77, 16, 'db6f730ad6280997d50782891245245e.webp', NULL, NULL, NULL, 'tr', 77, 1, 1, '2023-04-20 08:12:52', '2023-04-20 08:12:55'),
(78, 16, 'a5f8192056a275728fa150e43325d527.webp', NULL, NULL, NULL, 'tr', 78, 1, 0, '2023-04-20 08:12:54', '2023-04-20 08:12:54'),
(79, 16, '83ec288956dbe1c5c7e49d72b617830e.webp', NULL, NULL, NULL, 'tr', 79, 1, 0, '2023-04-20 08:12:58', '2023-04-20 08:12:58'),
(80, 16, 'e71ed5e25aa81f3fe62c3ab7b759cc91.webp', NULL, NULL, NULL, 'tr', 80, 1, 0, '2023-04-20 08:13:00', '2023-04-20 08:13:00'),
(81, 16, 'a5bb4a433c7823b65352bc0f968287be.webp', NULL, NULL, NULL, 'tr', 81, 1, 0, '2023-04-20 08:13:01', '2023-04-20 08:13:01'),
(82, 16, 'eb3129fea9a3021c68556e25cb7c29c5.webp', NULL, NULL, NULL, 'tr', 82, 1, 0, '2023-04-20 08:13:03', '2023-04-20 08:13:03'),
(83, 16, 'ae211830dd986e315dbd4105e1e0ae97.webp', NULL, NULL, NULL, 'tr', 83, 1, 0, '2023-04-20 08:13:05', '2023-04-20 08:13:05'),
(84, 17, '5387e4510a46844ff876f57b8ddec9fc.webp', NULL, NULL, NULL, 'en', 1, 1, 1, '2023-04-20 09:08:34', '2023-04-20 09:08:42'),
(85, 17, '1b5bb96a4a72079ba510d8b94d20b2ae.webp', NULL, NULL, NULL, 'en', 2, 1, 0, '2023-04-20 09:08:36', '2023-04-20 09:08:36'),
(86, 17, '916ffc4a1c6c68c658d145a60977a403.webp', NULL, NULL, NULL, 'en', 3, 1, 0, '2023-04-20 09:08:40', '2023-04-20 09:08:40'),
(87, 18, '831353f1d3329ec879ff09022d8e6fc6.webp', NULL, NULL, NULL, 'en', 4, 1, 1, '2023-04-20 09:09:21', '2023-04-20 09:09:24'),
(88, 18, 'f06b7c9a1644cb1b04a723576dae2ff9.webp', NULL, NULL, NULL, 'en', 5, 1, 0, '2023-04-20 09:09:24', '2023-04-20 09:09:24'),
(89, 18, '86949dccf4981a09c45cffb824485538.webp', NULL, NULL, NULL, 'en', 6, 1, 0, '2023-04-20 09:09:26', '2023-04-20 09:09:26'),
(90, 18, '59b250d622ed8172ab66926d96c94a4b.webp', NULL, NULL, NULL, 'en', 7, 1, 0, '2023-04-20 09:09:28', '2023-04-20 09:09:28'),
(91, 18, '57b80f7ca841333be2318f48b09ba01a.webp', NULL, NULL, NULL, 'en', 8, 1, 0, '2023-04-20 09:09:30', '2023-04-20 09:09:30'),
(92, 18, 'ee5e585dc04dd69e03a9936ba772ab6f.webp', NULL, NULL, NULL, 'en', 9, 1, 0, '2023-04-20 09:09:32', '2023-04-20 09:09:32'),
(93, 18, '5415384db2e5fac1a7508d46ad538ee9.webp', NULL, NULL, NULL, 'en', 10, 1, 0, '2023-04-20 09:09:35', '2023-04-20 09:09:35'),
(94, 18, 'dd69be323927e24b5a5a91d1cd11d154.webp', NULL, NULL, NULL, 'en', 11, 1, 0, '2023-04-20 09:09:37', '2023-04-20 09:09:37'),
(95, 19, 'ccf24a386fb625d77749770c71c7e51d.webp', NULL, NULL, NULL, 'en', 12, 1, 1, '2023-04-20 09:10:34', '2023-04-20 09:10:38'),
(96, 19, 'e360cd020058ee5cae5b98940f858f6c.webp', NULL, NULL, NULL, 'en', 13, 1, 0, '2023-04-20 09:10:36', '2023-04-20 09:10:36'),
(97, 19, '24dc651c9acf3dfd8689e4ea7d253143.webp', NULL, NULL, NULL, 'en', 14, 1, 0, '2023-04-20 09:10:40', '2023-04-20 09:10:40'),
(98, 19, '195c3711f2c974b98b2b53445b08abd1.webp', NULL, NULL, NULL, 'en', 15, 1, 0, '2023-04-20 09:10:42', '2023-04-20 09:10:42'),
(99, 19, 'ac9c38a72c95a972fec3630c289049d9.webp', NULL, NULL, NULL, 'en', 16, 1, 0, '2023-04-20 09:10:44', '2023-04-20 09:10:44'),
(100, 19, 'e3e62b21fb731b4d690ef8eed82382b5.webp', NULL, NULL, NULL, 'en', 17, 1, 0, '2023-04-20 09:10:46', '2023-04-20 09:10:46'),
(101, 19, 'e103776641325baaacae5344eb24abd5.webp', NULL, NULL, NULL, 'en', 18, 1, 0, '2023-04-20 09:10:48', '2023-04-20 09:10:48'),
(102, 19, '1440bb97f3cc92094a27a23744cf4287.webp', NULL, NULL, NULL, 'en', 19, 1, 0, '2023-04-20 09:10:50', '2023-04-20 09:10:50'),
(103, 19, 'fdaab022a06798f1ebcd5ba9a1234732.webp', NULL, NULL, NULL, 'en', 20, 1, 0, '2023-04-20 09:10:52', '2023-04-20 09:10:52'),
(104, 19, '418c0cb15ee841982fdfb31a56ded2ae.webp', NULL, NULL, NULL, 'en', 21, 1, 0, '2023-04-20 09:10:54', '2023-04-20 09:10:54'),
(105, 19, 'ab4101777ca084fc2c98797a1995493c.webp', NULL, NULL, NULL, 'en', 22, 1, 0, '2023-04-20 09:10:56', '2023-04-20 09:10:56'),
(106, 19, '6948b6df1c15f4fd3324a69355cd717f.webp', NULL, NULL, NULL, 'en', 23, 1, 0, '2023-04-20 09:10:58', '2023-04-20 09:10:58'),
(107, 20, '82dc7a42ed3500adefebbd4554c8815e.webp', NULL, NULL, NULL, 'en', 24, 1, 1, '2023-04-20 09:11:13', '2023-04-20 09:11:18'),
(108, 20, 'd9e4a1c3d6ade915c0aa12ac12894bc0.webp', NULL, NULL, NULL, 'en', 25, 1, 0, '2023-04-20 09:11:15', '2023-04-20 09:11:15'),
(109, 20, 'ac4c9b9f4e4c947ada8c6a8e01075e36.webp', NULL, NULL, NULL, 'en', 26, 1, 0, '2023-04-20 09:11:17', '2023-04-20 09:11:17'),
(110, 21, 'b581f512cb2c09342bd211b44039fbce.webp', NULL, NULL, NULL, 'en', 27, 1, 1, '2023-04-20 09:11:32', '2023-04-20 09:11:36'),
(111, 21, '23ce123c232b157acf23aad2c615a43a.webp', NULL, NULL, NULL, 'en', 28, 1, 0, '2023-04-20 09:11:34', '2023-04-20 09:11:34'),
(112, 21, '6c4d5af6e6d4a12e481f959532d4f219.webp', NULL, NULL, NULL, 'en', 29, 1, 0, '2023-04-20 09:11:35', '2023-04-20 09:11:35'),
(113, 22, '080c741ddb7fc01abdea6ded6214e982.webp', NULL, NULL, NULL, 'en', 30, 1, 1, '2023-04-20 09:11:50', '2023-04-20 09:11:53'),
(114, 22, '0c7d2237a5226c49abaf671d2bd9f335.webp', NULL, NULL, NULL, 'en', 31, 1, 0, '2023-04-20 09:11:52', '2023-04-20 09:11:52'),
(115, 22, '1f8c598fee60f59b4e3d093769d19ead.webp', NULL, NULL, NULL, 'en', 32, 1, 0, '2023-04-20 09:11:58', '2023-04-20 09:11:58'),
(116, 22, '8710a5006271d318764b9ffc6f591338.webp', NULL, NULL, NULL, 'en', 33, 1, 0, '2023-04-20 09:12:00', '2023-04-20 09:12:00'),
(117, 22, '5a7e6d3a46bc7ff1d3ac075cd5258915.webp', NULL, NULL, NULL, 'en', 34, 1, 0, '2023-04-20 09:12:02', '2023-04-20 09:12:02'),
(118, 22, '791a041918c2ece726f0c49068487575.webp', NULL, NULL, NULL, 'en', 35, 1, 0, '2023-04-20 09:12:04', '2023-04-20 09:12:04'),
(119, 22, '4e6901d0e5990818dba1c3a3a9259900.webp', NULL, NULL, NULL, 'en', 36, 1, 0, '2023-04-20 09:12:06', '2023-04-20 09:12:06'),
(120, 22, 'f1aaa2125eca11a08b1c5d7856746eab.webp', NULL, NULL, NULL, 'en', 37, 1, 0, '2023-04-20 09:12:08', '2023-04-20 09:12:08'),
(121, 23, 'f4a168055cbc3e22b1124336bee840ee.webp', NULL, NULL, NULL, 'en', 38, 1, 1, '2023-04-20 09:12:51', '2023-04-20 09:12:54'),
(122, 23, '9400a41d502fe8e6399d242b6444e866.webp', NULL, NULL, NULL, 'en', 39, 1, 0, '2023-04-20 09:12:53', '2023-04-20 09:12:53'),
(123, 24, 'fb4f4372b4742af1d66924d89211a007.webp', NULL, NULL, NULL, 'en', 40, 1, 1, '2023-04-20 09:13:09', '2023-04-20 09:13:12'),
(124, 24, '710dbc9901cbedacb7b3ba0afc5e3245.webp', NULL, NULL, NULL, 'en', 41, 1, 0, '2023-04-20 09:13:11', '2023-04-20 09:13:11'),
(125, 24, '11dcb3e6299203b954d4eec8bfc9b808.webp', NULL, NULL, NULL, 'en', 42, 1, 0, '2023-04-20 09:13:14', '2023-04-20 09:13:14'),
(126, 24, 'adf442ecdb8374a918ed3d359319e3db.webp', NULL, NULL, NULL, 'en', 43, 1, 0, '2023-04-20 09:13:16', '2023-04-20 09:13:16'),
(127, 24, '9b657c6f1f26b0f785cb9403cfd638e0.webp', NULL, NULL, NULL, 'en', 44, 1, 0, '2023-04-20 09:13:18', '2023-04-20 09:13:18'),
(128, 24, '63e4e7e9addc0362256a643fcb8aa544.webp', NULL, NULL, NULL, 'en', 45, 1, 0, '2023-04-20 09:13:20', '2023-04-20 09:13:20'),
(129, 24, '05a8ae8d54f7e6b981e278e82b30f079.webp', NULL, NULL, NULL, 'en', 46, 1, 0, '2023-04-20 09:13:22', '2023-04-20 09:13:22'),
(130, 24, '10ee7afcf34b2b3aa97db8cba822e929.webp', NULL, NULL, NULL, 'en', 47, 1, 0, '2023-04-20 09:13:24', '2023-04-20 09:13:24'),
(131, 25, 'ca0f0a9d1b31e554efa72b2f51786a65.webp', NULL, NULL, NULL, 'en', 48, 1, 1, '2023-04-20 09:13:40', '2023-04-20 09:13:43'),
(132, 25, '73780b72cfaae250430655f37ab2483f.webp', NULL, NULL, NULL, 'en', 49, 1, 0, '2023-04-20 09:13:42', '2023-04-20 09:13:42'),
(133, 26, 'fcc60ed112946ce0d8a1728cf47e5826.webp', NULL, NULL, NULL, 'en', 50, 1, 1, '2023-04-20 09:13:56', '2023-04-20 09:13:59'),
(134, 26, 'a9797b1ed7bbe63fdb9e60e069996db5.webp', NULL, NULL, NULL, 'en', 51, 1, 0, '2023-04-20 09:13:58', '2023-04-20 09:13:58'),
(135, 27, '43d2c26c646da13d48a499019706b5fa.webp', NULL, NULL, NULL, 'en', 52, 1, 1, '2023-04-20 09:15:33', '2023-04-20 09:15:44'),
(136, 27, '27d7ac7f45653420186b52766997790e.webp', NULL, NULL, NULL, 'en', 53, 1, 0, '2023-04-20 09:15:35', '2023-04-20 09:15:35'),
(137, 27, 'c2d4888629c4843057b18f6528df20db.webp', NULL, NULL, NULL, 'en', 54, 1, 0, '2023-04-20 09:15:37', '2023-04-20 09:15:37'),
(138, 27, '8399b8f59b98518c751e6db15d8ee076.webp', NULL, NULL, NULL, 'en', 55, 1, 0, '2023-04-20 09:15:39', '2023-04-20 09:15:39'),
(139, 27, 'c2ca8ab3615aee908fdf169dfc915d21.webp', NULL, NULL, NULL, 'en', 56, 1, 0, '2023-04-20 09:15:41', '2023-04-20 09:15:41'),
(140, 27, '4759f906c1dbc38b0957ecf5a97a340a.webp', NULL, NULL, NULL, 'en', 57, 1, 0, '2023-04-20 09:15:43', '2023-04-20 09:15:43'),
(141, 28, 'e1b94f19bf29d5de29806d35930d365e.webp', NULL, NULL, NULL, 'en', 58, 1, 1, '2023-04-20 09:16:07', '2023-04-20 09:16:14'),
(142, 28, 'cc52ef160ebbea4bbe0ba55aaed90bd7.webp', NULL, NULL, NULL, 'en', 59, 1, 0, '2023-04-20 09:16:09', '2023-04-20 09:16:09'),
(143, 28, '9d2fb3a4a94075baefd07b61fba08d9d.webp', NULL, NULL, NULL, 'en', 60, 1, 0, '2023-04-20 09:16:12', '2023-04-20 09:16:12'),
(144, 29, 'c2c19b0e71091190acb2518bdd8ceac3.webp', NULL, NULL, NULL, 'en', 61, 1, 1, '2023-04-20 09:16:28', '2023-04-20 09:16:33'),
(145, 29, 'ca7b1d3ecf75f811711d297c67c809fd.webp', NULL, NULL, NULL, 'en', 62, 1, 0, '2023-04-20 09:16:30', '2023-04-20 09:16:30'),
(146, 29, '0845098a04dab7447bf6c88a4d963c8e.webp', NULL, NULL, NULL, 'en', 63, 1, 0, '2023-04-20 09:16:48', '2023-04-20 09:16:48'),
(147, 29, '3ce4403ac45e7961cf8185087ad63195.webp', NULL, NULL, NULL, 'en', 64, 1, 0, '2023-04-20 09:16:50', '2023-04-20 09:16:50'),
(148, 29, '601cce18e65a2f2672d572e55e8c52a6.webp', NULL, NULL, NULL, 'en', 65, 1, 0, '2023-04-20 09:16:52', '2023-04-20 09:16:52'),
(149, 29, 'f8723fea51f6a32af7b425c49c5c42c9.webp', NULL, NULL, NULL, 'en', 66, 1, 0, '2023-04-20 09:16:54', '2023-04-20 09:16:54'),
(150, 29, 'e354a47c22d58d65c2f357ec91b560c3.webp', NULL, NULL, NULL, 'en', 67, 1, 0, '2023-04-20 09:16:57', '2023-04-20 09:16:57'),
(151, 30, '3f6be6375b92c9c9a678754c21703a71.webp', NULL, NULL, NULL, 'en', 68, 1, 1, '2023-04-20 09:17:16', '2023-04-20 09:17:29'),
(152, 30, 'b235439a2b5cfaeba1d97e91c90852bb.webp', NULL, NULL, NULL, 'en', 69, 1, 0, '2023-04-20 09:17:18', '2023-04-20 09:17:18'),
(153, 30, 'fe2621fdca625c63f8efd087a1dfa1f1.webp', NULL, NULL, NULL, 'en', 70, 1, 0, '2023-04-20 09:17:20', '2023-04-20 09:17:20'),
(154, 30, '0204fb97ad7924b7f9fe8ffa94a8290a.webp', NULL, NULL, NULL, 'en', 71, 1, 0, '2023-04-20 09:17:22', '2023-04-20 09:17:22'),
(155, 30, '7afa291009a372126df3f92778e226da.webp', NULL, NULL, NULL, 'en', 72, 1, 0, '2023-04-20 09:17:24', '2023-04-20 09:17:24'),
(156, 30, '23bdf3a2dbfaef21c4b04f73cc407392.webp', NULL, NULL, NULL, 'en', 73, 1, 0, '2023-04-20 09:17:26', '2023-04-20 09:17:26'),
(157, 30, 'a751b27404d5959236c737198d830afb.webp', NULL, NULL, NULL, 'en', 74, 1, 0, '2023-04-20 09:17:28', '2023-04-20 09:17:28'),
(158, 31, 'cf89d2814883bd7ecb796d323a907326.webp', NULL, NULL, NULL, 'en', 75, 1, 1, '2023-04-20 09:17:45', '2023-04-20 09:17:49'),
(159, 31, '840b1d92e4aa9ae9d8f3afc8c2f53850.webp', NULL, NULL, NULL, 'en', 76, 1, 0, '2023-04-20 09:17:48', '2023-04-20 09:17:48'),
(160, 31, '95af28708e28c9f37da49ac657195ff5.webp', NULL, NULL, NULL, 'en', 77, 1, 0, '2023-04-20 09:17:51', '2023-04-20 09:17:51'),
(161, 31, 'e2b5117f54c454b65054403473b2fb70.webp', NULL, NULL, NULL, 'en', 78, 1, 0, '2023-04-20 09:17:52', '2023-04-20 09:17:52'),
(162, 31, 'a70d43c5fc6cecd476bfc180201b22d9.webp', NULL, NULL, NULL, 'en', 79, 1, 0, '2023-04-20 09:17:54', '2023-04-20 09:17:54'),
(163, 31, 'c4104151abe572f5489cc3fd76832609.webp', NULL, NULL, NULL, 'en', 80, 1, 0, '2023-04-20 09:17:56', '2023-04-20 09:17:56'),
(164, 31, 'da591a3c6083f5e4e0fe6feec29c15e5.webp', NULL, NULL, NULL, 'en', 81, 1, 0, '2023-04-20 09:17:57', '2023-04-20 09:17:57'),
(165, 31, '74b495d5b8d4852455fc2c4d7f58522b.webp', NULL, NULL, NULL, 'en', 82, 1, 0, '2023-04-20 09:18:00', '2023-04-20 09:18:00'),
(166, 31, '017983acfff0875e0212c5f18f178722.webp', NULL, NULL, NULL, 'en', 83, 1, 0, '2023-04-20 09:18:02', '2023-04-20 09:18:02'),
(167, 32, '1f4e63f5f0b9d2f31748f1183608ee90.webp', NULL, NULL, NULL, 'en', 84, 1, 1, '2023-04-20 09:18:14', '2023-04-20 09:18:17'),
(168, 32, '6081c81606bb8ff570702bbd40bb1c35.webp', NULL, NULL, NULL, 'en', 85, 1, 0, '2023-04-20 09:18:16', '2023-04-20 09:18:16'),
(169, 32, 'ab7002c4dc9efdddd3736b5835e02c7f.webp', NULL, NULL, NULL, 'en', 86, 1, 0, '2023-04-20 09:18:20', '2023-04-20 09:18:20'),
(170, 32, 'd5f080ebdf5e235f54d93d4d09bde859.webp', NULL, NULL, NULL, 'en', 87, 1, 0, '2023-04-20 09:18:21', '2023-04-20 09:18:21'),
(171, 32, '24a28ef5402b9931d6241a9f20b698e3.webp', NULL, NULL, NULL, 'en', 88, 1, 0, '2023-04-20 09:18:23', '2023-04-20 09:18:23'),
(172, 32, 'cf1a6b097381a986c06025b02c6b7887.webp', NULL, NULL, NULL, 'en', 89, 1, 0, '2023-04-20 09:18:25', '2023-04-20 09:18:25'),
(173, 32, 'ccca9eaa0a2032f36b6265fe3b5b7f53.webp', NULL, NULL, NULL, 'en', 90, 1, 0, '2023-04-20 09:18:27', '2023-04-20 09:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `mission` longtext DEFAULT NULL,
  `vision` longtext DEFAULT NULL,
  `motto` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `address_title` longtext DEFAULT NULL,
  `map` longtext DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `mobile_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `mobile_logo_2` varchar(255) DEFAULT NULL,
  `blog_logo` varchar(255) DEFAULT NULL,
  `about_logo` varchar(255) DEFAULT NULL,
  `gallery_logo` varchar(255) DEFAULT NULL,
  `contact_logo` varchar(255) DEFAULT NULL,
  `product_logo` varchar(255) DEFAULT NULL,
  `product_detail_logo` varchar(255) DEFAULT NULL,
  `technical_information_logo` varchar(255) DEFAULT NULL,
  `technical_information_detail_logo` varchar(255) DEFAULT NULL,
  `service_logo` longtext DEFAULT NULL,
  `sector_logo` varchar(255) DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `fax` longtext DEFAULT NULL,
  `whatsapp` longtext DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `analytics` longtext DEFAULT NULL,
  `metrica` longtext DEFAULT NULL,
  `live_support` longtext DEFAULT NULL,
  `rank` int(11) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isActive` tinyint(1) DEFAULT 1,
  `lang` char(2) DEFAULT 'tr'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `slogan`, `mission`, `vision`, `motto`, `address`, `address_title`, `map`, `logo`, `mobile_logo`, `favicon`, `mobile_logo_2`, `blog_logo`, `about_logo`, `gallery_logo`, `contact_logo`, `product_logo`, `product_detail_logo`, `technical_information_logo`, `technical_information_detail_logo`, `service_logo`, `sector_logo`, `phone`, `fax`, `whatsapp`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `medium`, `pinterest`, `meta_keywords`, `meta_description`, `analytics`, `metrica`, `live_support`, `rank`, `createdAt`, `updatedAt`, `isActive`, `lang`) VALUES
(1, 'Korçak', 'Korçak Araçüstü Ekipmanları San. ve Tic. Ltd. Şti.', '																												', '								<p>Korçak birçok firmaya araç üstü ekipmanı yeni ürün ve kaliteli üretim hizmeti sunmaktadır.</p>						', '																												', '[\"\\u00c7AKIRBEYL\\u0130 MAH. 6180 SK. NO:84 TORBALI \\/ \\u0130ZM\\u0130R\"]', '[\"Merkez\"]', '[\"&lt;iframe src=&quot;https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3130.912673830256!2d27.38875957638168!3d38.304690981457924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b968e95e8c5603%3A0x3ae97edf15f1ae8b!2zRGHEn2vEsXrEsWxjYSwgNjE4MC4gU2suIE5vOjg0LCAzNTg2MCBUb3JiYWzEsS_EsHptaXI!5e0!3m2!1sen!2str!4v1681893404479!5m2!1sen!2str&quot; width=&quot;100%&quot; height=&quot;450&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot; loading=&quot;lazy&quot; referrerpolicy=&quot;no-referrer-when-downgrade&quot;&gt;&lt;\\/iframe&gt;\"]', 'feeaaf61de7042d6ff2b43d0fee1b453.webp', 'f8bfff099f3cf53b1134199fd17b8888.webp', '9c8e66cfc20bfa6ac1e5e881f61001b8.webp', 'af02d0c023b78a2148e0697bf97f4393.webp', '405089704aa9cd40ffc8b11b38a02958.webp', 'a1c812fb7c73e61ce96426105cd78b0e.webp', '33c9ce56c9bfaaeeb5a17de2b0481239.webp', 'cbd5c3850ed221363e6a0991552ce477.webp', '472cc1c9079604e452fb5c2dae3853dc.webp', '52be06b3ad761b6508254b53aa89535a.webp', 'b0b03755b700ed32b8d8e1fa1cef8484.webp', 'c22e50caac3c393baeaf5b7287c7a77e.webp', '763d588ba49ea081c6873f6007262977.webp', '9ad37733dd839901223ffbf58a7c012b.webp', '[\"+90 532 113 60 09\"]', '[\"\"]', '[\"+90 532 113 60 09\"]', 'info@korcak.com.tr', 'https://www.facebook.com/korcakaracustuekipman', NULL, 'https://www.instagram.com/korcakaracustuekip/', 'https://www.linkedin.com/company/korcak-aracustu-ekipman', NULL, NULL, NULL, NULL, 'İnce ve orta kesit sıcak haddelenmiş Ticari Profil üretiminde Türkiye', '', '', '', 1, '2020-07-22 20:57:22', '2023-04-20 06:38:20', 1, 'tr'),
(2, 'Korçak', 'Korçak Araçüstü Ekipmanları San. ve Tic. Ltd. Şti.', '																																			', 'Korçak offers many companies on-board equipment, new products and quality production services.', '																																			', '[\"\\u00c7AKIRBEYL\\u0130 6180 ST. NO:84 TORBALI \\/ \\u0130ZM\\u0130R\"]', '[\"Central\"]', '[\"&lt;iframe src=&quot;https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3130.912673830256!2d27.38875957638168!3d38.304690981457924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b968e95e8c5603%3A0x3ae97edf15f1ae8b!2zRGHEn2vEsXrEsWxjYSwgNjE4MC4gU2suIE5vOjg0LCAzNTg2MCBUb3JiYWzEsS_EsHptaXI!5e0!3m2!1sen!2str!4v1681893585649!5m2!1sen!2str&quot; width=&quot;100%&quot; height=&quot;450&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot; loading=&quot;lazy&quot; referrerpolicy=&quot;no-referrer-when-downgrade&quot;&gt;&lt;\\/iframe&gt;\"]', '18adabe35bb773ff06566ab0da84f443.webp', '6e4dd87fe75fd6f52b43ed49b17766ba.webp', 'b30edceb1419c75335a9293efda9daf7.webp', 'eaf07566a6b71b1c8d7f125c3cf0ab11.webp', '1bbca4d6aa5b2111c2db975029e8a038.webp', 'd17998aca604ceba9a1e6705136fe772.webp', '2fb1a916e9d5a1ace003759b24ad309b.webp', 'bca21446035a7068e93aeef47d9c9a12.webp', '7443553a165a7dd06e2fc9d6e76c585b.webp', 'c38ce5b488d951ff367ce75a3495836a.webp', '95ac2e4dfb7be96b155a2a7f8f4367cf.webp', '549ec7fdadcc206a33cc5ada5c18ebc1.webp', '4a37344e053a1cdf57089970ba4519d6.webp', '0c49b981e7c7f18b6fcb7524174166e2.webp', '[\"+90 532 113 60 09\"]', '[\"\"]', '[\"+90 532 113 60 09\"]', 'info@korcak.com.tr', 'https://www.facebook.com/korcakaracustuekipman', NULL, 'https://www.instagram.com/korcakaracustuekip/', 'https://www.linkedin.com/company/korcak-aracustu-ekipman', NULL, NULL, NULL, NULL, 'İnce ve orta kesit sıcak haddelenmiş Ticari Profil üretiminde Türkiye', '', '', '', 2, '2023-01-30 07:13:57', '2023-04-20 08:37:24', 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `allowButton` tinyint(4) DEFAULT 0,
  `button_url` longtext DEFAULT NULL,
  `target` enum('_self','_blank','_top','_parent') DEFAULT '_self',
  `button_caption` longtext DEFAULT NULL,
  `video_url` longtext DEFAULT NULL,
  `video_caption` longtext DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `img_url`, `allowButton`, `button_url`, `target`, `button_caption`, `video_url`, `video_caption`, `page_id`, `category_id`, `product_id`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(1, 'Korçak', 'Korçak', 'd538f21e696c60d0a0ecd1c04f8c6105.webp', 0, NULL, '_self', 'Kariyerini planlamak için tıkla', NULL, NULL, NULL, NULL, NULL, 'tr', 1, 1, '2022-01-03 11:00:17', '2023-04-20 08:17:28', '2022-01-03 10:59:49'),
(2, 'Korçak', 'Korçak', 'bf19b595573b866df55c5a14f9b42346.webp', 0, NULL, '_self', 'Ön Kayıt İçin Tıkla', NULL, NULL, NULL, NULL, NULL, 'tr', 2, 1, '2022-01-14 11:27:30', '2023-04-20 08:17:36', '2022-01-14 11:26:43'),
(3, 'Korçak', 'Korçak', 'a0ac4182978b6216abd8ea63bf274459.webp', 0, NULL, '_self', 'Yemek Odalarını İncele', NULL, NULL, NULL, NULL, NULL, 'tr', 3, 1, '2022-01-14 11:31:34', '2023-04-20 08:17:42', '2022-01-14 11:31:05'),
(4, 'Korçak', 'Korçak', '8d54727ecd52fbb14833508a13065f4a.webp', 0, NULL, '_self', NULL, NULL, NULL, NULL, NULL, NULL, 'en', 1, 1, '2023-04-20 08:26:00', '2023-04-20 08:26:43', '2023-04-20 08:25:47'),
(5, 'Korçak', 'Korçak', 'a90ef6fddf276ddd828f1bd83d2b0b4d.webp', 0, NULL, '_self', NULL, NULL, NULL, NULL, NULL, NULL, 'en', 2, 1, '2023-04-20 08:26:12', '2023-04-20 08:26:46', '2023-04-20 08:26:02'),
(6, 'Korçak', 'Korçak', 'c5c1a5280f33835e9052bc83e53e3b17.webp', 0, NULL, '_self', NULL, NULL, NULL, NULL, NULL, NULL, 'en', 3, 1, '2023-04-20 08:26:30', '2023-04-20 08:26:48', '2023-04-20 08:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(19) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `isActive` tinyint(4) DEFAULT 0,
  `rank` int(11) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `token` varchar(255) DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `phone`, `password`, `role_id`, `isActive`, `rank`, `createdAt`, `updatedAt`, `token`, `lang`) VALUES
(1, 'Mutfak Yapım', 'info@mutfakyapim.com', '05494410121', '0a7483867a2442352e2b86d4b4910826', 1, 1, 1, '2021-01-13 05:30:08', '2023-04-20 08:37:29', 'jxFRs9CRUfkyFgqZcegvAH1iyNOEBEU2BqFVJCvQmK04EuPmocO8wo3xFtvs67kZlP8A7RbUYlZqY2GS4jPLbppdH8zloYlmCEuDf5N234KacVkMtJq8PThypV5O6m2Ht0kXJGTsS578WwCDc1zApKbaQxI4Cpu9wyOlN0tV53SzdBGw5qWMGU1GxLW7VTn1eLdaEXXMwHofDesIW6fLainDjRiQIvLKhBYoex79eiIjgQdg1ghtN3IAnzYDrz9', 'en'),
(2, 'Emre KILIÇ', 'emrekilic@mutfakyapim.com', '05494410120', '0a7483867a2442352e2b86d4b4910826', 1, 1, 2, '2021-01-13 05:30:08', '2022-02-16 11:43:50', '3914SmBBFEUto1qeEtR501FCu1ATi4Go78I9M3nHRIjbEgrvjYnsMJMzJur6h8UqYDMvQsc9fg7ETh0Tr5oSY6zpvHcalbqShaXv8zrVslAkWVIc7mfLCZGDWspF7eBEtbDVDJG0VNFd2Bc8ZMX5zCSGdpJnuO3bCGqPDkiQxLxlmXZwic445IuYxqKfNwIfjUUjeVhQwFgJdtiu4R2jZlzQAHOtxKydxHkoy6XwW1SygdTy30akPLfhv6aw9yN', 'tr');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `permissions` mediumtext DEFAULT NULL,
  `isActive` int(11) DEFAULT 0,
  `isCover` tinyint(4) DEFAULT 0,
  `rank` int(11) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `title`, `permissions`, `isActive`, `isCover`, `rank`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', '{\"blogs\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"blog_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"brands\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"dashboard\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"emailsettings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"galleries\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"homeitems\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"menus\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"pages\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"products\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"product_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"settings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"slides\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"userop\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"users\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"user_role\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"}}', 1, 1, 1, '2020-07-22 20:58:34', '2023-04-20 06:55:55'),
(2, 'Kullanıcı', NULL, 1, 0, 2, '2021-04-27 15:36:34', '2021-04-27 15:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_urls`
--

CREATE TABLE `video_urls` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_FILEGALLERY` (`gallery_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_items`
--
ALTER TABLE `home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_IMAGEGALLERY` (`gallery_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linguo_languages`
--
ALTER TABLE `linguo_languages`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `linguo_language_files`
--
ALTER TABLE `linguo_language_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `linguo_language_strings`
--
ALTER TABLE `linguo_language_strings`
  ADD PRIMARY KEY (`string_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_w_categories`
--
ALTER TABLE `products_w_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PRODUCTWID` (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PRODUCTID` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD KEY `FK_ROLEID` (`role_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_VIDEOGALLERY` (`gallery_id`);

--
-- Indexes for table `video_urls`
--
ALTER TABLE `video_urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_VIDEOURLGALLERY` (`gallery_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_items`
--
ALTER TABLE `home_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `linguo_languages`
--
ALTER TABLE `linguo_languages`
  MODIFY `language_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `linguo_language_files`
--
ALTER TABLE `linguo_language_files`
  MODIFY `file_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `linguo_language_strings`
--
ALTER TABLE `linguo_language_strings`
  MODIFY `string_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products_w_categories`
--
ALTER TABLE `products_w_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_urls`
--
ALTER TABLE `video_urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `FK_FILEGALLERY` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_IMAGEGALLERY` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products_w_categories`
--
ALTER TABLE `products_w_categories`
  ADD CONSTRAINT `FK_PRODUCTWID` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `FK_PRODUCTID` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_ROLEID` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `FK_VIDEOGALLERY` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `video_urls`
--
ALTER TABLE `video_urls`
  ADD CONSTRAINT `FK_VIDEOURLGALLERY` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
