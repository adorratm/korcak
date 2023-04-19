-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 19, 2023 at 04:02 PM
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
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(1) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `img_url`, `content`, `category_id`, `lang`, `rank`, `isActive`, `seo_url`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(1, 'Yazı Deneme', 'e571cbcb16fd81e37c2d968735f509a0.webp', 'test', 1, 'tr', 1, 1, 'yazi-deneme', '2022-11-21 12:42:55', '2022-11-21 12:42:55', '2022-11-21 12:42:38'),
(2, 'Test Blog', 'b083953f39e06b95655d050ab34cd838.webp', 'Test Blog', 2, 'en', 1, 1, 'test-blog', '2023-01-30 11:35:04', '2023-01-30 11:35:04', '2023-01-30 11:34:42');

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
(2, 'galeri', 'cdd45a785d878036949732976f533763.webp', 'Galeri', 'images', 'galeri', NULL, 'tr', 1, 0, 2, '2022-11-23 08:57:12', '2023-01-17 07:44:00', '2022-11-23 08:57:01', 1000, 1000),
(3, 'video-galerisi', '60cb46ba27341bf2ed98fddeb35d3e2d.webp', 'Video Galerisi', 'video_urls', 'video-galerisi', NULL, 'tr', 1, 0, 3, '2022-11-23 09:14:36', '2022-11-23 09:14:36', '2022-11-23 09:14:23', 1000, 1000),
(4, 'sertifikalarimiz', '63ae418d4bf1c62a076a83dd05d41693.webp', 'Sertifikalarımız', 'images', 'sertifikalarimiz', NULL, 'tr', 1, 0, 3, '2022-12-16 13:12:46', '2023-01-17 07:58:02', '2022-12-16 13:09:18', 1000, 1000),
(5, 'gallery', NULL, 'Gallery', 'images', 'gallery', NULL, 'en', 1, 0, 1, '2023-01-30 11:31:20', '2023-01-30 11:31:20', '2023-01-30 11:31:15', 1000, 1000),
(6, 'video-gallery', NULL, 'Video Gallery', 'video_urls', 'video-gallery', NULL, 'en', 1, 0, 2, '2023-01-30 11:31:32', '2023-01-30 11:31:32', '2023-01-30 11:31:22', 1000, 1000),
(7, 'our-certificates', NULL, 'Our Certificates', 'images', 'our-certificates', NULL, 'en', 1, 0, 3, '2023-01-30 11:31:43', '2023-01-30 11:31:43', '2023-01-30 11:31:34', 1000, 1000);

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
(14, 4, '5a3a76780a3014de534a520be3d99e0e.webp', NULL, NULL, NULL, 'tr', 2, 1, '2022-12-16 13:36:54', '2022-12-16 13:36:54', NULL),
(15, 4, 'd5f34ac01440645268f5f8d20c5196c5.webp', NULL, NULL, NULL, 'tr', 3, 1, '2022-12-16 13:36:56', '2022-12-16 13:36:56', NULL),
(16, 4, '3f6f187c72d7d24a7e085ebe2537ddff.webp', NULL, NULL, NULL, 'tr', 11, 1, '2022-12-16 13:36:56', '2022-12-16 13:37:38', NULL),
(17, 4, '1b45f86f5e57febf483c61514ca45dd5.webp', NULL, NULL, NULL, 'tr', 4, 1, '2022-12-16 13:36:58', '2022-12-16 13:37:38', NULL),
(18, 4, '8faba6eebb182e5ed376f7b1ec92a3f9.webp', NULL, NULL, NULL, 'tr', 5, 1, '2022-12-16 13:37:02', '2022-12-16 13:37:38', NULL),
(19, 4, '1ad7ea07fcf393010b815fbf9fd621d2.webp', NULL, NULL, NULL, 'tr', 6, 1, '2022-12-16 13:37:05', '2022-12-16 13:37:38', NULL),
(20, 4, '7a308f97a5b9e60b789363fe019a12f6.webp', NULL, NULL, NULL, 'tr', 7, 1, '2022-12-16 13:37:07', '2022-12-16 13:37:38', NULL),
(21, 4, '0503292ad4f476a879a9b5aed94503fb.webp', NULL, NULL, NULL, 'tr', 8, 1, '2022-12-16 13:37:09', '2022-12-16 13:37:38', NULL),
(22, 4, '2ebf426c097731185c45d475e615cf42.webp', NULL, NULL, NULL, 'tr', 9, 1, '2022-12-16 13:37:12', '2022-12-16 13:37:38', NULL),
(23, 4, '6a26a7ec38d3f6158902cbd9854b1a50.webp', NULL, NULL, NULL, 'tr', 10, 1, '2022-12-16 13:37:14', '2022-12-16 13:37:38', NULL),
(24, 2, 'fb34b07baf41707186a0d04e45b8925b.webp', NULL, NULL, NULL, 'tr', 12, 1, '2023-01-16 11:23:28', '2023-01-16 11:23:28', NULL),
(25, 2, '1b8fa864cea0e036370e3370d61be9fd.webp', NULL, NULL, NULL, 'tr', 13, 1, '2023-01-16 11:23:29', '2023-01-16 11:23:29', NULL),
(26, 2, '87385fe7116cc9a3e2a684281023a616.webp', NULL, NULL, NULL, 'tr', 14, 1, '2023-01-16 11:23:30', '2023-01-16 11:23:30', NULL),
(27, 2, '3acc3b882c58f4045b85b01ba3a10bdf.webp', NULL, NULL, NULL, 'tr', 15, 1, '2023-01-16 11:23:31', '2023-01-16 11:23:31', NULL),
(28, 2, '9720b145919a3097914600f37baff549.webp', NULL, NULL, NULL, 'tr', 16, 1, '2023-01-16 11:23:31', '2023-01-16 11:23:31', NULL),
(29, 2, '8050f13708a2345f59e7fe67fac7a5bd.webp', NULL, NULL, NULL, 'tr', 17, 1, '2023-01-16 11:23:33', '2023-01-16 11:23:33', NULL),
(30, 2, '0b602284b64ec75ea26b67729792e62e.webp', NULL, NULL, NULL, 'tr', 32, 1, '2023-01-16 11:23:33', '2023-01-16 14:21:39', NULL),
(31, 2, '212965749f589aa0e2f46e938be55679.webp', NULL, NULL, NULL, 'tr', 33, 1, '2023-01-16 11:23:34', '2023-01-16 14:21:39', NULL),
(32, 2, 'e668133ebfc16af076d99cc0c9f91c2d.webp', NULL, NULL, NULL, 'tr', 18, 1, '2023-01-16 11:23:35', '2023-01-16 14:21:39', NULL),
(33, 2, '57fcefcc4023faeb65ab217732b6bb00.webp', NULL, NULL, NULL, 'tr', 19, 1, '2023-01-16 11:23:36', '2023-01-16 14:21:39', NULL),
(34, 2, 'd2710019dc872c0d61a9c00ee62597b7.webp', NULL, NULL, NULL, 'tr', 20, 1, '2023-01-16 11:23:37', '2023-01-16 14:21:39', NULL),
(35, 2, '03ab18cc18f0a0b946d9affb0db931b0.webp', NULL, NULL, NULL, 'tr', 21, 1, '2023-01-16 11:23:38', '2023-01-16 14:21:39', NULL),
(36, 2, '6cf0852721db45e5438a2f77e07d00d9.webp', NULL, NULL, NULL, 'tr', 22, 1, '2023-01-16 11:23:38', '2023-01-16 14:21:39', NULL),
(37, 2, 'a7c88ba26342faaebaf59c1119288c5b.webp', NULL, NULL, NULL, 'tr', 23, 1, '2023-01-16 11:23:39', '2023-01-16 14:21:39', NULL),
(38, 2, 'ff89040dec8952a8d2efc14a773bcc37.webp', NULL, NULL, NULL, 'tr', 24, 1, '2023-01-16 11:23:40', '2023-01-16 14:21:39', NULL),
(39, 2, 'a2b959268bc63680f6f2c7af50bf21f0.webp', NULL, NULL, NULL, 'tr', 25, 1, '2023-01-16 11:23:41', '2023-01-16 14:21:39', NULL),
(40, 2, '2e92021dd00a743673cbf3ce9c5aa7e7.webp', NULL, NULL, NULL, 'tr', 26, 1, '2023-01-16 11:23:42', '2023-01-16 14:21:39', NULL),
(41, 2, 'c5e3da99aa60e69f75bd82505c4f538b.webp', NULL, NULL, NULL, 'tr', 27, 1, '2023-01-16 11:23:42', '2023-01-16 14:21:39', NULL),
(42, 2, '0371264f7bf9a4dfd6224b2fcecd436e.webp', NULL, NULL, NULL, 'tr', 28, 1, '2023-01-16 11:23:43', '2023-01-16 14:21:39', NULL),
(43, 2, '2e9bf87daa19f0e5f0da172f756e15ef.webp', NULL, NULL, NULL, 'tr', 29, 1, '2023-01-16 11:23:44', '2023-01-16 14:21:39', NULL),
(44, 2, 'f1b55d38dd355c3ebc65086dc43f3125.webp', NULL, NULL, NULL, 'tr', 30, 1, '2023-01-16 11:23:44', '2023-01-16 14:21:39', NULL),
(45, 2, '8ced0a8f9061aec5ec4d57494cb5d7c3.webp', NULL, NULL, NULL, 'tr', 31, 1, '2023-01-16 11:23:45', '2023-01-16 14:21:39', NULL);

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
(6, 0, 0, 'HEADER', '_self', 'İletişim', '/iletisim', 'tr', 6, 1, '2022-01-03 07:52:56', '2023-04-19 09:13:49', 0);

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
(1, 'hakkimizda', 'Hakkımızda', '<p style=\"font-weight: 400;\">1960 yılında İzmir’de Efes Karasör adı ile faaliyetlerine başlamış olan firmamız; ekipman sektörünün ihtiyacı doğrultusunda daha kurumsal ve yenilikçi bir vizyonla ulusal piyasalarda ve yurt dışı piyasalarında yerini almıştır. Her geçen gün genişleyip büyümeye devam eden firmamız, 2022 yılında <strong>KORÇAK ARAÇ ÜSTÜ EKİPMAN</strong> unvanıyla yenilenmiştir. Şirketimiz, sektöründeki öncü firma olmaya adaydır.</p>\r\n<p style=\"font-weight: 400;\"> <strong>KORÇAK ARAÇ ÜSTÜ EKİPMAN</strong>, sektöründeki deneyimiyle kalite ve değerlerinden ödün vermeden, en üst düzeyde hizmet sağlamaktadır. İzmir-Torbalı’da bulunan firmamız, 1700 m² kapalı + 1500 m² açık alana sahip fabrikasında son teknoloji ekipmanlarla üstün nitelikli üretim gerçekleştirmektedir.</p>\r\n<p style=\"font-weight: 400;\">Şirketimiz, Araç Üstü Ekipman sektörünün tüm istek ve ihtiyaçlarına cevap verebilecek düzeyde geniş ve çeşitli ürün yelpazesine sahiptir. Yaşadığımız çağın şartlarına uygun ve modern dünyanın gereksinimlerini karşılayan başlıca ürünlerimiz:</p>\r\n<ul>\r\n<li style=\"font-weight: 400;\">Merdivenli, Merdivensiz İtfaiye Araçları,</li>\r\n<li style=\"font-weight: 400;\">AKUT Kurtarma ve İlk Müdahale Araçları,</li>\r\n<li style=\"font-weight: 400;\">Kanal Açma Araçları, </li>\r\n<li style=\"font-weight: 400;\">Vidanjör,</li>\r\n<li style=\"font-weight: 400;\">Su ve Yakıt Tankerleri,</li>\r\n<li style=\"font-weight: 400;\">Damperli Kamyonlar,</li>\r\n<li style=\"font-weight: 400;\">Hidrolik Sıkıştırmalı Çöp Kasalı Araçlar, Minimatik Çöp Kasaları ve Çöp Semitreylerler,</li>\r\n<li style=\"font-weight: 400;\">Hidrolik ve Teleskopik Platformlar,</li>\r\n<li style=\"font-weight: 400;\">Mobil Bakım ve Mobil Yağlama Araçları,</li>\r\n<li style=\"font-weight: 400;\">Mobil Mutfak ve Mobil Tuvaletler,</li>\r\n<li style=\"font-weight: 400;\">Vinçli Kasalar,</li>\r\n<li style=\"font-weight: 400;\">Toplumsal Olaylara Müdahale Araçları (TOMA) bulunmaktadır.</li>\r\n</ul>\r\n<p style=\"font-weight: 400;\">Bu ürünlerin dışında ihtiyaçlarınıza yönelik özel tasarım gerektiren her türlü Araç Üstü Ekipmanlar, VİP Dizaynlı araçlar için kaliteli ve ekonomik çözümler sunmaktayız.  Ürettiğimiz her ürünün iki yıllık garantisi bulunmaktadır. Kurulmuş olduğumuz tarihten itibaren hem yurt içi hem yurt dışı oldukça satış gerçekleştirdiğimizi ve olumlu geri dönüşler aldığımızı belirtmek isteriz.</p>\r\n<p style=\"font-weight: 400;\"><strong>KORÇAK ARAÇÜSTÜ EKİPMAN</strong> olarak;</p>\r\n<p style=\"font-weight: 400;\">Müşteri memnuniyeti odaklı bir çalışma politikası ile ilerlemekteyiz. Müşterilerimizin geri dönüşlerini, özel sipariş, istek ve önerilerini özenle takip etmekte, kaliteli ve güvenilir bir şekilde hizmet sunmaktayız.</p>\r\n<p style=\"font-weight: 400;\">Mevcut deneyimimizden yararlanarak çalışanlarımızla koordineli bir şekilde çalışma yürütmekte ve ürünlerimizi işlerimizi aksatmadan zamanında teslim etmekteyiz. Siz değerli müşterilerimizin destekleriyle hem Türkiye’de hem de dünyada sektörümüzün öncü firması olmayı hedeflemekteyiz.</p>\r\n<p style=\"font-weight: 400;\"> </p>\r\n<p style=\"font-weight: 400;\"><strong>TECRÜBEMİZİ SİZ DEĞERLİ MÜŞTERİLERİMİZLE PAYLAŞMAK İSTERİZ!</strong></p>\r\n<p style=\"font-weight: 400;\"><strong>YAPTIKLARIMIZ, YAPACAKLARIMIZIN TEMİNATIDIR!...</strong></p>', '34e11894856d01347bcd31a8b85de014.webp', '6f39d61bc46022e50057e8def3595652.webp', 'tr', 1, 1, '2022-02-23 06:24:54', '2023-04-19 09:16:14', '2022-02-23 06:24:26', 'ABOUT');

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
  `description` longtext DEFAULT NULL,
  `features` longtext DEFAULT NULL,
  `lang` char(2) NOT NULL DEFAULT 'tr',
  `rank` bigint(20) NOT NULL DEFAULT 1,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `technical_information_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `top_id`, `url`, `title`, `content`, `description`, `features`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`, `img_url`, `technical_information_id`) VALUES
(1, 0, 'kare', 'Kare', '<p>Akın Haddecilik A.Ş. geniş bir kullanım yelpazesine sahip olan Kare profilin üretimini birçok farklı ölçüde, kalitede ve toleranslarda yapmaktadır.</p>', '<h2 class=\"text-danger\"><strong>KARE PROFİL BAŞLICA KULLANIM ALANLARI</strong></h2>\r\n<ul style=\"list-style: circle!important;\">\r\n<li>Ferforje demir üretimi</li>\r\n<li>Yapı ve konstrüksiyon</li>\r\n<li>Otomotiv sanayi</li>\r\n<li>Makine imalatı</li>\r\n<li>Vinç sanayi</li>\r\n<li>Tarım aletleri üretimi</li>\r\n<li>Mobilya imalatı</li>\r\n<li>Elektrik panosu imalatları </li>\r\n<li>Ve gündelik kullanılan tüm demir işlerinde</li>\r\n</ul>', '<p>‘Çeliğimizle Dünyayı Güzelleştiriyoruz’</p>', 'tr', 1, 1, '2022-11-14 14:47:48', '2022-12-22 06:57:50', '2022-11-14 14:47:18', 'fe12d8feed93514b64586791e151c878.webp', 11),
(3, 0, 't-demiri', 'T Demiri', '<p>Akın Haddecilik, İzmir ve Denizli tesislerinde üretimi yapılan, demir çelik sektöründe ve başka sektörlerde çeşitli kullanım alanları bulunan <strong>T profili</strong> birçok farklı ölçüde, kalitede ve 3mt – 12mt boyları arasında üretebilme kapasitesine sahiptir. Üretilen bu <strong>T demiri</strong> beyaz eşya sanayi ve otomotiv sektörü gibi pek çok farklı sektörlerde kullanılır.</p>', '<h2 class=\"text-danger\"><strong>T DEMİRİ BAŞLICA KULLANIM ALANLARI</strong></h2>\r\n<ul>\r\n<li>Otomotiv sanayi</li>\r\n<li>Beyaz eşya sanayi</li>\r\n<li>Sera ve benzeri örtü alanları</li>\r\n<li>Çit yapımı</li>\r\n<li>Gündelik <span style=\"font-size: 12pt;\">kullanılan</span> tüm çelik işleri</li>\r\n</ul>', '<p><strong>‘Sağlıklı ve Bol çeşitli bir zincirin yapısal halkasıyız’</strong></p>', 'tr', 3, 1, '2022-12-16 11:43:50', '2022-12-23 11:37:37', '2022-12-16 11:43:42', '0c823f97309aec23c32ff47cd1dea135.webp', 14),
(4, 0, 'esitkenar-kosebent', 'Eşitkenar Köşebent', '<p>Akın Haddecilik demir çelik sektöründe ve başka sektörlerde çeşitli kullanım alanları bulunan Eşitkenar Köşebent demirini birçok farklı ölçüde, kalitede ve 3mt – 12mt boyları arasında üretebilme kapasitesine sahiptir. Üretilen bu eşitkenar köşebent çelik konstrüksiyonlarda, enerji nakil hatlarında ve tarım makineleri imalatı olmak üzere pek çok sayamadığımız farklı sektörlerde kullanılır.</p>', '<h2 class=\"text-danger\"><strong>EŞİTKENAR KÖŞEBENT BAŞLICA KULLANIM ALANLARI<br /></strong></h2>\r\n<ul>\r\n<li>Enerji nakil hatları</li>\r\n<li>Köprü, baraj ve yol inşaatları</li>\r\n<li>Yapısal çelik sektörü</li>\r\n<li>Makina imalatı</li>\r\n<li>Tarım makineleri imalatı</li>\r\n<li>Sera ve benzeri örtü alanları</li>\r\n<li>Çit yapımı</li>\r\n<li>Gündelik kullanılan tüm demir işlerinde</li>\r\n</ul>\r\n<h2 class=\"text-danger\"><strong> </strong></h2>\r\n<h2 class=\"text-danger\"> </h2>\r\n<h2 class=\"text-danger\"><strong> </strong></h2>', '<p>‘ENERJİNİN SINIR TANIMAYAN YOLCULUĞUNA, ÇELİĞİMİZLE EŞLİK EDİYORUZ’</p>', 'tr', 4, 1, '2022-12-16 12:10:46', '2022-12-23 11:39:13', '2022-12-16 12:08:04', 'f8e27fc6aba402717ddb8f66d2a59e59.webp', 13),
(5, 0, 'npu-profil', 'NPU Profil', '<p>Akın Haddecilik, İzmir ve Denizli tesislerinde üretimi yapılan, demir çelik sektöründe ve başka sektörlerde çeşitli kullanım alanları bulunan <strong>NPU profili</strong> birçok farklı ölçüde, kalitede ve 3mt – 12mt boyları arasında üretebilme kapasitesine sahiptir. Üretilen bu <strong>NPU profili</strong> enerji nakil hatları ve makine imalatı gibi pek çok farklı sektörlerde kullanılır.</p>', '<h2 class=\"text-danger\"><strong>NPU PROFİL BAŞLICA KULLANIM ALANLARI<br /></strong></h2>\r\n<ul>\r\n<li>Enerji nakil hatları</li>\r\n<li>Köprü, baraj ve yol inşaatları</li>\r\n<li>Yapısal çelik sektörü</li>\r\n<li>Makina ve zirai alet imalatı</li>\r\n<li>Vinç Sanayi</li>\r\n<li>Ve gündelik kullanılan tüm demir işlerinde</li>\r\n</ul>\r\n<h2 class=\"text-danger\"><strong> </strong></h2>', '<p>‘Kıtaları birleştiren, uygarlıklara şekil veren bir sektörün temsilcisiyiz’</p>', 'tr', 5, 1, '2022-12-16 12:36:48', '2022-12-22 06:45:05', '2022-12-16 12:34:01', 'bb4c3797e499f8fbaa9c48fc306532fc.webp', 15),
(6, 0, 'npi-ipe-profilleri', 'NPI – IPE Profilleri', '<p>Akın Haddecilik, İzmir ve Denizli tesislerinde üretimi yapılan, demir çelik sektöründe ve başka sektörlerde çeşitli kullanım alanları bulunan <strong>NPI – IPE Profillerini</strong> birçok farklı ölçüde, kalitede ve 3mt – 12mt boyları arasında üretebilme kapasitesine sahiptir. Üretilen bu <strong>NPI – IPE Profiller</strong> yapısal çelik ve vinç sanayi gibi pek çok farklı sektörlerde kullanılır.</p>', '<h2 class=\"text-danger\"><strong>NPI - IPE PROFİLLERİ BAŞLICA KULLANIM ALANLARI<br /></strong></h2>\r\n<ul>\r\n<li>Enerji nakil hatları</li>\r\n<li>Köprü, baraj ve yol inşaatları</li>\r\n<li>Yapısal çelik sektörü</li>\r\n<li>Makine imalatı</li>\r\n<li>Tarım aletleri üretimi</li>\r\n<li>Vinç sanayi </li>\r\n</ul>\r\n<h2 class=\"text-danger\"><strong> </strong></h2>', '<p>‘GELECEK NESİLLERİN GÜVENLE YAŞAYACAKLARI YAPILARA GÜÇ KATIYORUZ’</p>', 'tr', 6, 1, '2022-12-16 13:27:35', '2022-12-23 11:35:38', '2022-12-16 13:24:02', '6bd05379de755c0a5695ef1ef608d867.webp', 10),
(7, 0, 'lama-demirleri', 'Lama Demirleri', '<p>Akın Haddecilik, İzmir ve Denizli tesislerinde üretimi yapılan, demir çelik sektöründe ve başka sektörlerde çeşitli kullanım alanları bulunan <strong>lama profilin</strong> birçok farklı ölçüde, kalitede ve 3mt – 12mt boyları arasında üretebilme kapasitesine sahiptir. Üretilen bu <strong>lama demiri</strong> çelik konstrüksiyonlar, makine sanayi ve otomotiv sektörü gibi pek çok sayamadığımız farklı sektörlerde kullanılır.</p>', '<h2 class=\"text-danger\"><strong>LAMA DEMİRLERİ BAŞLICA KULLANIM ALANLARI<br /></strong></h2>\r\n<ul>\r\n<li>Yapı ve konstrüksiyon</li>\r\n<li>Makine sanayi</li>\r\n<li>Tarım makineleri imalatı</li>\r\n<li>Gemi İnşa Sektörü</li>\r\n<li>Otomotiv sektörü</li>\r\n<li>Kamyon römorkları ve damper imalatı</li>\r\n<li>Dekoratif uygulamalar</li>\r\n<li>Demiryolları yapımı</li>\r\n</ul>\r\n<h2 class=\"text-danger\"><strong> </strong></h2>', '<p>   Gücümüze güç katan Türk makinelerinin gövdelerinde yer almaktan gurur duyuyoruz.</p>', 'tr', 7, 1, '2022-12-16 13:47:11', '2022-12-23 11:34:10', '2022-12-16 13:43:41', '833af71a1c7fcc4203d5b05545ca1ee8.webp', 12),
(8, 0, 'yuvarlak', 'Yuvarlak', '<p>Akın Haddecilik, İzmir ve Denizli tesislerinde üretimi yapılan, demir çelik sektöründe ve başka sektörlerde çeşitli kullanım alanları bulunan <strong>Yuvarlak Profili </strong>birçok farklı ölçüde, kalitede ve 3mt – 12mt boyları arasında üretebilme kapasitesine sahiptir. Üretilen bu <strong>Yuvarlak Profil</strong> inşaat sektörü ve otomotiv sanayi gibi pek çok farklı sektörlerde kullanılır.</p>', '<h2 class=\"text-danger\"><strong>T DEMİRİ BAŞLICA KULLANIM ALANLARI<br /></strong></h2>\r\n<ul>\r\n<li>Savunma sanayi</li>\r\n<li>Otomotiv sanayi</li>\r\n<li>Makine sanayi</li>\r\n<li>İnşaat sektörü</li>\r\n<li>Yedek parça üretimi</li>\r\n<li>Ve gündelik kullanılan tüm demir işleri</li>\r\n</ul>\r\n<h2 class=\"text-danger\"><strong> </strong></h2>', '.', 'tr', 2, 1, '2022-12-16 14:13:32', '2022-12-21 07:54:27', '2022-12-15 14:06:10', '5a5b02c05fb2507f738644011318bcbe.webp', NULL);

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
(22, 8, 1),
(23, 5, 2),
(24, 1, 1),
(25, 7, 1),
(26, 6, 2),
(27, 3, 1),
(28, 4, 1);

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
(1, 0, 'Yapısal Çelik Profiller', 'yapisal-celik-profiller', NULL, NULL, NULL, 'tr', 1, 1, '2022-12-15 13:03:22', '2022-12-15 13:03:22'),
(2, 0, 'I ve U Şekilli Çelik Profiller', 'i-ve-u-sekilli-celik-profiller', NULL, NULL, NULL, 'tr', 2, 1, '2022-12-15 13:03:41', '2022-12-15 13:04:48'),
(3, 0, 'Structural Steel Profiles', 'structural-steel-profiles', NULL, NULL, NULL, 'en', 1, 1, '2023-01-30 11:38:05', '2023-01-30 11:38:34'),
(4, 0, 'I and U Shaped Steel Profiles', 'i-and-u-shaped-steel-profiles', NULL, NULL, NULL, 'en', 2, 1, '2023-01-30 11:38:20', '2023-01-30 11:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_dimensions`
--

CREATE TABLE `product_dimensions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `lang` char(2) NOT NULL DEFAULT 'tr',
  `img_url` varchar(255) DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT 1,
  `rank` int(11) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_dimensions`
--

INSERT INTO `product_dimensions` (`id`, `product_id`, `title`, `lang`, `img_url`, `isActive`, `rank`, `createdAt`, `updatedAt`) VALUES
(4, 4, 'EŞİTKENAR KÖŞEBENT BİRİM AĞIRLIK TABLOSU', 'tr', '14bfcb97763e45bb62373f6bf4984301.webp', 1, 2, '2022-12-16 12:11:29', '2022-12-16 12:21:53'),
(13, 7, 'LAMA DEMİRLERİ PROFİL BİRİM AĞIRLIK TABLOSU', 'tr', '6052b161576a833f2d7dcc1ca024d50d.webp', 1, 8, '2022-12-16 13:49:31', '2022-12-16 13:49:31'),
(15, 8, 'YUVARLAK PROFİL BİRİM AĞIRLIK TABLOSU', 'tr', '37107f28d2d713c43b5d66c77af21867.webp', 1, 10, '2022-12-16 14:15:54', '2022-12-16 14:15:54'),
(23, 7, 'LAMA DEMİRLERİ PROFİL BİRİM AĞIRLIK TABLOSU', 'tr', '2a48d230a26ef18b6c7abec5bf8ac30b.webp', 1, 10, '2022-12-22 12:52:30', '2022-12-22 12:52:30'),
(24, 1, 'KARE PROFİL BİRİM AĞIRLIK TABLOSU', 'tr', '28bf61bd3ce6b0579c264dc88f7480dd.webp', 1, 10, '2022-12-22 12:55:37', '2022-12-22 12:55:37'),
(25, 5, 'NPU PROFİL BİRİM AĞIRLIK TABLOSU', 'tr', '892e37f22762b89c991f99375500e5e5.webp', 1, 9, '2022-12-22 13:05:07', '2022-12-22 13:05:07'),
(26, 5, 'NPU PROFİL BİRİM AĞIRLIK TABLOSU', 'tr', '23fca74b008a45681807b847009c0d4d.webp', 1, 10, '2022-12-22 13:05:21', '2022-12-22 13:05:21'),
(27, 3, 'T DEMİRİ BİRİM AĞIRLIK TABLOSU', 'tr', 'dea554b2d94519e086a751b45da8967c.webp', 1, 10, '2022-12-22 13:09:39', '2022-12-22 13:09:39'),
(29, 4, 'EŞİTKENAR KÖŞEBENT BİRİM AĞIRLIK TABLOSU', 'tr', '033bcb1f586a90042947a1d251d10aa7.webp', 1, 10, '2022-12-23 10:39:50', '2022-12-23 10:39:50'),
(31, 6, 'NPI – IPE Profilleri', 'tr', 'e2bbe2b0531308c7125600145bdc974b.webp', 1, 10, '2023-01-17 11:46:32', '2023-01-17 11:46:32');

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
(8, 1, 'c743e8bf2c1450031df17dd591a15052.webp', NULL, NULL, NULL, 'tr', 2, 1, 0, '2022-12-15 13:31:51', '2022-12-15 13:31:51'),
(9, 1, '51da70e554a9e99fb5c2bd0c0ebbec47.webp', NULL, NULL, NULL, 'tr', 3, 1, 1, '2022-12-15 13:31:51', '2022-12-15 13:31:58'),
(10, 1, '53b467d31358dec5ebe01e5fc8c544f0.webp', NULL, NULL, NULL, 'tr', 4, 1, 0, '2022-12-15 13:31:52', '2022-12-15 13:31:52'),
(11, 1, '51d4e0f0363f94d3097b96d915d547cc.webp', NULL, NULL, NULL, 'tr', 5, 1, 0, '2022-12-15 13:31:53', '2022-12-15 13:31:53'),
(12, 1, '0726264a916ef1fae33da64638ee09f8.webp', NULL, NULL, NULL, 'tr', 6, 1, 0, '2022-12-15 13:31:54', '2022-12-15 13:31:54'),
(13, 1, 'dfc2533e4e6820ff77a1b2c20d7b2671.webp', NULL, NULL, NULL, 'tr', 7, 1, 0, '2022-12-15 13:31:55', '2022-12-15 13:31:55'),
(14, 3, 'b8239e4f801448415f0161a418b041b8.webp', NULL, NULL, NULL, 'tr', 7, 1, 1, '2022-12-16 11:58:26', '2022-12-16 11:59:21'),
(15, 3, 'e9ea4142ee5897d121383ed156084943.webp', NULL, NULL, NULL, 'tr', 8, 1, 0, '2022-12-16 11:58:27', '2022-12-16 11:58:27'),
(16, 3, '0000ecabf7a9948acb7285a4a618f165.webp', NULL, NULL, NULL, 'tr', 9, 1, 0, '2022-12-16 11:58:29', '2022-12-16 11:58:29'),
(17, 3, 'c6aaf3e3bf7fa6632b0c068d8b30cb06.webp', NULL, NULL, NULL, 'tr', 10, 1, 0, '2022-12-16 11:58:30', '2022-12-16 11:58:30'),
(18, 3, 'f2dfa42783b67f2359188b41e30a2cc8.webp', NULL, NULL, NULL, 'tr', 11, 1, 0, '2022-12-16 11:58:31', '2022-12-16 11:58:31'),
(19, 3, '99839f6da7aae1a5da12a770425c6075.webp', NULL, NULL, NULL, 'tr', 12, 1, 0, '2022-12-16 11:58:32', '2022-12-16 11:58:32'),
(20, 3, '1b47c8791f28f6c5de157864ba619e49.webp', NULL, NULL, NULL, 'tr', 13, 1, 0, '2022-12-16 11:58:34', '2022-12-16 11:58:34'),
(21, 3, '4e1fc403f20aadbc291d57f3c4c5211c.webp', NULL, NULL, NULL, 'tr', 14, 1, 0, '2022-12-16 11:58:35', '2022-12-16 11:58:35'),
(22, 3, '07a12dad8eb6b6bfcfb95d99579658cf.webp', NULL, NULL, NULL, 'tr', 15, 1, 0, '2022-12-16 11:58:36', '2022-12-16 11:58:36'),
(23, 3, '94c8304056c0cbdf8715aa2f8a824421.webp', NULL, NULL, NULL, 'tr', 16, 1, 0, '2022-12-16 11:58:38', '2022-12-16 11:58:38'),
(24, 3, '57cba3a20c270e0548377c4824d0fdcc.webp', NULL, NULL, NULL, 'tr', 17, 1, 0, '2022-12-16 11:58:39', '2022-12-16 11:58:39'),
(25, 3, '506cbe84fec93df323d0b875b4c6129c.webp', NULL, NULL, NULL, 'tr', 18, 1, 0, '2022-12-16 11:58:40', '2022-12-16 11:58:40'),
(26, 3, 'dd7efe04f031ca5c844c84d5030f6319.webp', NULL, NULL, NULL, 'tr', 19, 1, 0, '2022-12-16 11:58:41', '2022-12-16 11:58:41'),
(27, 3, 'f0a27f9e1a91050871cf194087575dab.webp', NULL, NULL, NULL, 'tr', 20, 1, 0, '2022-12-16 11:58:42', '2022-12-16 11:58:42'),
(28, 3, 'eb881543f1bc1b59b2f3831be42d43b3.webp', NULL, NULL, NULL, 'tr', 21, 1, 0, '2022-12-16 11:58:44', '2022-12-16 11:58:44'),
(29, 3, '50b9e688d155a3980b5d04e3393e0cac.webp', NULL, NULL, NULL, 'tr', 22, 1, 0, '2022-12-16 11:58:45', '2022-12-16 11:58:45'),
(30, 3, 'b762dde11f754b3542077e7a8f54e4e3.webp', NULL, NULL, NULL, 'tr', 23, 1, 0, '2022-12-16 11:58:46', '2022-12-16 11:58:46'),
(31, 4, 'fba8bc86cd263efa89de9ee4e81ac8ec.webp', NULL, NULL, NULL, 'tr', 24, 1, 0, '2022-12-16 12:12:13', '2022-12-16 12:12:13'),
(32, 4, 'c649ab3f2e682ef87ae9f499ffb51f3f.webp', NULL, NULL, NULL, 'tr', 25, 1, 0, '2022-12-16 12:12:13', '2022-12-16 12:12:13'),
(33, 4, 'cd7700066a6d77bdd71e6d6f9e56fccf.webp', NULL, NULL, NULL, 'tr', 26, 1, 0, '2022-12-16 12:12:14', '2022-12-16 12:12:14'),
(34, 4, '74d407fea0494cbf38a263e3dc7a7d5a.webp', NULL, NULL, NULL, 'tr', 27, 1, 0, '2022-12-16 12:12:15', '2022-12-16 12:12:15'),
(35, 4, '0233e565f7c43a0d8722edf9087238d0.webp', NULL, NULL, NULL, 'tr', 28, 1, 0, '2022-12-16 12:12:16', '2022-12-16 12:12:16'),
(36, 4, 'fdfb153f3a317da189d3bbe14cc32afb.webp', NULL, NULL, NULL, 'tr', 29, 1, 0, '2022-12-16 12:12:16', '2022-12-16 12:12:16'),
(37, 4, 'a739050466bfaf3495bdfd358233883f.webp', NULL, NULL, NULL, 'tr', 30, 1, 1, '2022-12-16 12:12:17', '2022-12-16 12:12:30'),
(38, 4, '636fdf82d9bda5f08f8a696ec814eeb9.webp', NULL, NULL, NULL, 'tr', 31, 1, 0, '2022-12-16 12:12:18', '2022-12-16 12:12:18'),
(39, 4, 'cc6c8ccc9494f5e9ada3caf82919fa84.webp', NULL, NULL, NULL, 'tr', 32, 1, 0, '2022-12-16 12:12:19', '2022-12-16 12:12:19'),
(40, 4, '23147e406e87391010dd01f71478f2a3.webp', NULL, NULL, NULL, 'tr', 33, 1, 0, '2022-12-16 12:12:20', '2022-12-16 12:12:20'),
(41, 5, '0f1af9038382b04d978488bda2c7ba83.webp', NULL, NULL, NULL, 'tr', 34, 1, 0, '2022-12-16 12:37:08', '2022-12-16 12:37:08'),
(42, 5, '441ef36f4c9da7715c90d24af9fcf689.webp', NULL, NULL, NULL, 'tr', 35, 1, 0, '2022-12-16 12:37:09', '2022-12-16 12:37:09'),
(43, 5, '840900aa84a008b0ca2ebcac7ac824ef.webp', NULL, NULL, NULL, 'tr', 36, 1, 0, '2022-12-16 12:37:10', '2022-12-16 12:37:10'),
(44, 5, 'ef0b18460b12ff2ec9bbc6b4fa2da96a.webp', NULL, NULL, NULL, 'tr', 37, 1, 0, '2022-12-16 12:37:11', '2022-12-16 12:37:11'),
(45, 5, '85ad059ab17c03c1ebb0ecab7fa8e1c7.webp', NULL, NULL, NULL, 'tr', 38, 1, 0, '2022-12-16 12:37:12', '2022-12-16 12:37:12'),
(46, 5, 'b55dc3cbdacc3b6db4c62bae6ed77307.webp', NULL, NULL, NULL, 'tr', 39, 1, 0, '2022-12-16 12:37:12', '2022-12-16 12:37:12'),
(47, 5, '862d3f39f038972773aad5b4e0c6f079.webp', NULL, NULL, NULL, 'tr', 40, 1, 0, '2022-12-16 12:37:13', '2022-12-16 12:37:13'),
(48, 5, '3ed38680554484ebc76a325767b2cc5c.webp', NULL, NULL, NULL, 'tr', 41, 1, 0, '2022-12-16 12:37:14', '2022-12-16 12:37:14'),
(49, 5, '0843eded26fab8453524121bb7c1c192.webp', NULL, NULL, NULL, 'tr', 42, 1, 1, '2022-12-16 12:37:15', '2022-12-16 14:37:11'),
(50, 5, '2e774e3b1c5bc0717fd924deae3a072f.webp', NULL, NULL, NULL, 'tr', 43, 1, 0, '2022-12-16 12:37:16', '2022-12-16 12:37:16'),
(51, 6, '6fab7b4beb96d0a6f3ea49d829aca7be.webp', NULL, NULL, NULL, 'tr', 44, 1, 0, '2022-12-16 13:28:07', '2022-12-16 13:28:07'),
(52, 6, 'a142d1572a4379cf4175606e33553231.webp', NULL, NULL, NULL, 'tr', 45, 1, 0, '2022-12-16 13:28:08', '2022-12-16 13:28:08'),
(53, 6, 'e11b4fe51f3bf2b1619ad53d69d21d14.webp', NULL, NULL, NULL, 'tr', 46, 1, 0, '2022-12-16 13:28:09', '2022-12-16 13:28:09'),
(54, 6, 'ddc4ca277b2d4515d9e05224249f4d27.webp', NULL, NULL, NULL, 'tr', 47, 1, 0, '2022-12-16 13:28:10', '2022-12-16 13:28:10'),
(55, 6, 'c9afa30458e30b06fa2323d3c3aa6382.webp', NULL, NULL, NULL, 'tr', 48, 1, 0, '2022-12-16 13:28:11', '2022-12-16 13:28:11'),
(56, 6, 'd4b26777e7681dc0504c833460613aa5.webp', NULL, NULL, NULL, 'tr', 49, 1, 0, '2022-12-16 13:28:13', '2022-12-16 13:28:13'),
(57, 6, 'fce217f61ac0d33a7a0eb077d027e0b9.webp', NULL, NULL, NULL, 'tr', 50, 1, 1, '2022-12-16 13:28:14', '2022-12-16 13:28:27'),
(58, 6, 'edd3d8b2905dfa56247bbc7af38f4a76.webp', NULL, NULL, NULL, 'tr', 51, 1, 0, '2022-12-16 13:28:14', '2022-12-16 13:28:14'),
(59, 6, 'd8847db09665a385d61c600561d2db15.webp', NULL, NULL, NULL, 'tr', 52, 1, 0, '2022-12-16 13:28:15', '2022-12-16 13:28:15'),
(60, 6, '471b41444e90aa7abb623260b7d4c93f.webp', NULL, NULL, NULL, 'tr', 53, 1, 0, '2022-12-16 13:28:16', '2022-12-16 13:28:16'),
(61, 6, 'c8ee5f52e127777ea2f16f940014ea4a.webp', NULL, NULL, NULL, 'tr', 54, 1, 0, '2022-12-16 13:28:17', '2022-12-16 13:28:17'),
(62, 6, '6c1f0025d3aa3a38e61e7d6bd5069701.webp', NULL, NULL, NULL, 'tr', 55, 1, 0, '2022-12-16 13:28:18', '2022-12-16 13:28:18'),
(63, 6, '52af70fae1d3233249f83c280d135fe7.webp', NULL, NULL, NULL, 'tr', 56, 1, 0, '2022-12-16 13:28:19', '2022-12-16 13:28:19'),
(64, 6, '66fb67d3e963db0b2af30fd08f5e6f76.webp', NULL, NULL, NULL, 'tr', 57, 1, 0, '2022-12-16 13:28:20', '2022-12-16 13:28:20'),
(65, 7, '3c627d82ab376f65069a9b09d38b0213.webp', NULL, NULL, NULL, 'tr', 58, 1, 0, '2022-12-16 13:47:25', '2022-12-16 13:47:25'),
(66, 7, '41d5907186296138774bfff1c8ca0688.webp', NULL, NULL, NULL, 'tr', 59, 1, 0, '2022-12-16 13:47:26', '2022-12-16 13:47:26'),
(67, 7, 'e684a92f32afce7807fdfc129b16c4fc.webp', NULL, NULL, NULL, 'tr', 60, 1, 0, '2022-12-16 13:47:27', '2022-12-16 13:47:27'),
(68, 7, '557d06641771b1af5994bdbacaa8de1d.webp', NULL, NULL, NULL, 'tr', 61, 1, 0, '2022-12-16 13:47:28', '2022-12-16 13:47:28'),
(69, 7, '374289d12547ece4639c6e0b415d6663.webp', NULL, NULL, NULL, 'tr', 62, 1, 0, '2022-12-16 13:47:29', '2022-12-16 13:47:29'),
(70, 7, 'b499ecdf470334c80528bc1827144562.webp', NULL, NULL, NULL, 'tr', 63, 1, 0, '2022-12-16 13:47:30', '2022-12-16 13:47:30'),
(71, 7, 'b23f5810dc2135f6f002d162ce299e17.webp', NULL, NULL, NULL, 'tr', 64, 1, 0, '2022-12-16 13:47:31', '2022-12-16 13:47:31'),
(72, 7, '359545112760e36d83dc1068d637c334.webp', NULL, NULL, NULL, 'tr', 65, 1, 0, '2022-12-16 13:47:32', '2022-12-16 13:47:32'),
(73, 7, 'b3fb22bbf96e9ba11e3916ec28e45d4a.webp', NULL, NULL, NULL, 'tr', 66, 1, 0, '2022-12-16 13:47:33', '2022-12-16 13:47:33'),
(74, 7, '4f8cf283495172ce9a80c6ce62264259.webp', NULL, NULL, NULL, 'tr', 67, 1, 0, '2022-12-16 13:47:34', '2022-12-16 13:47:34'),
(75, 7, '22e6a2cd41ecdda811d5895724b5cdf6.webp', NULL, NULL, NULL, 'tr', 68, 1, 0, '2022-12-16 13:47:35', '2022-12-16 13:47:35'),
(76, 7, '610e8970271979596422429c5aa64bcc.webp', NULL, NULL, NULL, 'tr', 69, 1, 1, '2022-12-16 13:47:36', '2022-12-16 13:47:46'),
(77, 8, 'a8668e843ccaaac0ff6dd640b0a1bdfa.webp', NULL, NULL, NULL, 'tr', 70, 1, 0, '2022-12-16 14:13:44', '2022-12-16 14:13:44'),
(78, 8, '174c5fd4da3ac88a5a384e9f352920ff.webp', NULL, NULL, NULL, 'tr', 71, 1, 0, '2022-12-16 14:13:45', '2022-12-16 14:13:45'),
(79, 8, '823bf310ad7c79037993254c6dffdfcb.webp', NULL, NULL, NULL, 'tr', 72, 1, 0, '2022-12-16 14:13:45', '2022-12-16 14:13:45'),
(80, 8, 'd69f9bd9d1f64fd48ee70a8208c367d4.webp', NULL, NULL, NULL, 'tr', 73, 1, 1, '2022-12-16 14:13:46', '2022-12-16 14:13:58'),
(81, 8, 'f2886190fc0bb58ba40a1c69303073f7.webp', NULL, NULL, NULL, 'tr', 74, 1, 0, '2022-12-16 14:13:47', '2022-12-16 14:13:47'),
(82, 8, '3d7c3c092b4555040f5103933aa7af32.webp', NULL, NULL, NULL, 'tr', 75, 1, 0, '2022-12-16 14:13:48', '2022-12-16 14:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `banner_url` longtext DEFAULT NULL,
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

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `title`, `img_url`, `banner_url`, `content`, `category_id`, `lang`, `rank`, `isActive`, `seo_url`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(1, 'Enerji', '59baf22e430db19892932e1382953fcc.webp', '03e743a5b64113aaf234dd9c1b90e8a4.webp', '', 1, 'tr', 1, 1, 'enerji', '2022-03-01 14:12:33', '2022-12-14 13:20:25', '2022-03-01 14:10:47'),
(2, 'Güneş Enerjisi', 'f6a0b01b3416c0eb8130ce0a5195f582.webp', 'e7d55da9910010c75044174349356552.webp', '', 1, 'tr', 2, 1, 'gunes-enerjisi', '2022-03-01 14:12:33', '2022-12-14 13:11:52', '2022-03-01 14:10:47'),
(3, 'Yapısal Çelik', '8a43f8e3b28cebb8ccb3ccd3ca65a05c.webp', '640eaacb262905059b28f7522be6cf55.webp', '', 1, 'tr', 3, 1, 'yapisal-celik', '2022-03-01 14:12:33', '2022-12-14 13:14:11', '2022-03-01 14:10:47'),
(4, 'Yapı ve Konstrüksiyon', '802b0a7aef45c2b4be3e2b056a4edf46.webp', '9c8877d4f518780ef04d17d98147eacc.webp', '', 1, 'tr', 4, 1, 'yapi-ve-konstruksiyon', '2022-03-04 08:41:03', '2022-12-14 13:16:38', '2022-03-04 08:38:47'),
(5, 'Maden ve Tünel', '76384018066692e7b627a0c720c22d06.webp', 'cbda240db1d50bdcfa863770b8e07b91.webp', '', 1, 'tr', 5, 1, 'maden-ve-tunel', '2022-03-04 08:44:36', '2022-12-14 13:18:44', '2022-03-04 08:42:57'),
(6, 'Gemi İnşa', 'd7a5dad974454b9769502bf40078525d.webp', '1cd8feda1cf5354b1cfdc906da5c55be.webp', '', 1, 'tr', 6, 1, 'gemi-insa', '2022-03-04 09:28:17', '2022-12-14 13:27:11', '2022-03-04 09:23:38'),
(7, 'Makine İmalat', '5832c1aca4f7d2a6559b6b5da9bf3487.webp', 'e1b065d4515b89ff93f572d8a0815e57.webp', '', 1, 'tr', 7, 1, 'makine-imalat', '2022-11-18 12:59:24', '2022-12-14 13:31:52', '2022-11-18 12:59:13'),
(8, 'Tarım', 'f4b6281cc6a86ed860a7c4bf09a39547.webp', 'b1435eb87ef8b3825169bff1a5020722.webp', '', 1, 'tr', 8, 1, 'tarim', '2022-11-18 12:59:38', '2022-12-14 13:32:00', '2022-11-18 12:59:26'),
(9, 'Ulaşım', '6c98d156191cb5b07e5352eadbcbca94.webp', '6d6ac46f575c825745d6c37e88ddc8c0.webp', '', 1, 'tr', 9, 1, 'ulasim', '2022-11-18 12:59:49', '2022-12-14 13:35:34', '2022-11-18 12:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `sector_categories`
--

CREATE TABLE `sector_categories` (
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
-- Dumping data for table `sector_categories`
--

INSERT INTO `sector_categories` (`id`, `title`, `seo_url`, `img_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 'Değer ve Fark Yarattığımız Sektörler', 'deger-ve-fark-yarattigimiz-sektorler', NULL, 'tr', 1, 1, '2022-03-01 14:10:43', '2022-11-18 12:28:17'),
(2, 'Sectors Where We Create Value and Difference', 'sectors-where-we-create-value-and-difference', NULL, 'en', 1, 1, '2023-01-30 11:37:00', '2023-01-30 11:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `banner_url` longtext DEFAULT NULL,
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
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
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
(1, 'Korçak', 'Korçak Araçüstü Ekipmanları San. ve Tic. Ltd. Şti.', '														', '<p>Korçak birçok firmaya araç üstü ekipmanı yeni ürün ve kaliteli üretim hizmeti sunmaktadır.</p>', '														', '[\"\\u00c7AKIRBEYL\\u0130 MAH. 6180 SK. NO:84 TORBALI \\/ \\u0130ZM\\u0130R\"]', '[\"Merkez\"]', '[\"&lt;iframe src=&quot;https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3130.912673830256!2d27.38875957638168!3d38.304690981457924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b968e95e8c5603%3A0x3ae97edf15f1ae8b!2zRGHEn2vEsXrEsWxjYSwgNjE4MC4gU2suIE5vOjg0LCAzNTg2MCBUb3JiYWzEsS_EsHptaXI!5e0!3m2!1sen!2str!4v1681893404479!5m2!1sen!2str&quot; width=&quot;100%&quot; height=&quot;450&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot; loading=&quot;lazy&quot; referrerpolicy=&quot;no-referrer-when-downgrade&quot;&gt;&lt;\\/iframe&gt;\"]', 'feeaaf61de7042d6ff2b43d0fee1b453.webp', '3b16086ce8575133f243121317673879.webp', '9c8e66cfc20bfa6ac1e5e881f61001b8.webp', 'af02d0c023b78a2148e0697bf97f4393.webp', '405089704aa9cd40ffc8b11b38a02958.webp', 'a1c812fb7c73e61ce96426105cd78b0e.webp', '33c9ce56c9bfaaeeb5a17de2b0481239.webp', 'cbd5c3850ed221363e6a0991552ce477.webp', '472cc1c9079604e452fb5c2dae3853dc.webp', '52be06b3ad761b6508254b53aa89535a.webp', 'b0b03755b700ed32b8d8e1fa1cef8484.webp', 'c22e50caac3c393baeaf5b7287c7a77e.webp', '763d588ba49ea081c6873f6007262977.webp', '9ad37733dd839901223ffbf58a7c012b.webp', '[\"+90 532 113 60 09\"]', '[\"\"]', '[\"+90 532 113 60 09\"]', 'info@korcak.com.tr', 'https://www.facebook.com/korcakaracustuekipman', NULL, 'https://www.instagram.com/korcakaracustuekip/', 'https://www.linkedin.com/company/korcak-aracustu-ekipman', NULL, NULL, NULL, NULL, 'İnce ve orta kesit sıcak haddelenmiş Ticari Profil üretiminde Türkiye', '', '', '', 1, '2020-07-22 20:57:22', '2023-04-19 09:46:16', 1, 'tr'),
(2, 'Korçak', 'Korçak Araçüstü Ekipmanları San. ve Tic. Ltd. Şti.', '														', '														', '														', '[\"\\u00c7AKIRBEYL\\u0130 6180 ST. NO:84 TORBALI \\/ \\u0130ZM\\u0130R\"]', '[\"Central\"]', '[\"&lt;iframe src=&quot;https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3130.912673830256!2d27.38875957638168!3d38.304690981457924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b968e95e8c5603%3A0x3ae97edf15f1ae8b!2zRGHEn2vEsXrEsWxjYSwgNjE4MC4gU2suIE5vOjg0LCAzNTg2MCBUb3JiYWzEsS_EsHptaXI!5e0!3m2!1sen!2str!4v1681893585649!5m2!1sen!2str&quot; width=&quot;100%&quot; height=&quot;450&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot; loading=&quot;lazy&quot; referrerpolicy=&quot;no-referrer-when-downgrade&quot;&gt;&lt;\\/iframe&gt;\"]', '18adabe35bb773ff06566ab0da84f443.webp', '79e4fe9bd713126e79545c51f39faf91.webp', 'b30edceb1419c75335a9293efda9daf7.webp', 'eaf07566a6b71b1c8d7f125c3cf0ab11.webp', '1bbca4d6aa5b2111c2db975029e8a038.webp', 'd17998aca604ceba9a1e6705136fe772.webp', '2fb1a916e9d5a1ace003759b24ad309b.webp', 'bca21446035a7068e93aeef47d9c9a12.webp', '7443553a165a7dd06e2fc9d6e76c585b.webp', 'c38ce5b488d951ff367ce75a3495836a.webp', '95ac2e4dfb7be96b155a2a7f8f4367cf.webp', '549ec7fdadcc206a33cc5ada5c18ebc1.webp', '4a37344e053a1cdf57089970ba4519d6.webp', '0c49b981e7c7f18b6fcb7524174166e2.webp', '[\"+90 532 113 60 09\"]', '[\"\"]', '[\"+90 532 113 60 09\"]', 'info@korcak.com.tr', 'https://www.facebook.com/korcakaracustuekipman', NULL, 'https://www.instagram.com/korcakaracustuekip/', 'https://www.linkedin.com/company/korcak-aracustu-ekipman', NULL, NULL, NULL, NULL, 'İnce ve orta kesit sıcak haddelenmiş Ticari Profil üretiminde Türkiye', '', '', '', 2, '2023-01-30 07:13:57', '2023-04-19 08:58:24', 1, 'en');

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
  `service_id` int(11) DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL,
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

INSERT INTO `slides` (`id`, `title`, `description`, `img_url`, `allowButton`, `button_url`, `target`, `button_caption`, `video_url`, `video_caption`, `page_id`, `category_id`, `product_id`, `service_id`, `sector_id`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(1, 'Akın Hadde', 'Akın Hadde', 'bde9cb013bc09ab033783bd37b4c609c.webp', 0, NULL, '_self', 'Kariyerini planlamak için tıkla', 'https://www.youtube.com/watch?v=6WZoYIYCNQQ', 'Tanıtımı İzle', NULL, NULL, NULL, NULL, NULL, 'tr', 1, 1, '2022-01-03 11:00:17', '2023-01-30 11:32:16', '2022-01-03 10:59:49'),
(2, 'Akın Hadde', 'Akın Hadde', '443b252150084f75ea7373c894c6fc16.webp', 0, NULL, '_self', 'Ön Kayıt İçin Tıkla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 2, 1, '2022-01-14 11:27:30', '2023-01-30 11:32:23', '2022-01-14 11:26:43'),
(3, 'Akın Hadde', 'Akın Hadde', '3fea5c418f5fc4043e98d7927db79ca6.webp', 0, NULL, '_self', 'Yemek Odalarını İncele', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 3, 1, '2022-01-14 11:31:34', '2023-01-30 11:32:29', '2022-01-14 11:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `technical_informations`
--

CREATE TABLE `technical_informations` (
  `id` int(11) NOT NULL,
  `top_id` int(11) NOT NULL DEFAULT 0,
  `url` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `features` longtext DEFAULT NULL,
  `lang` char(2) NOT NULL DEFAULT 'tr',
  `rank` bigint(20) NOT NULL DEFAULT 1,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technical_informations`
--

INSERT INTO `technical_informations` (`id`, `top_id`, `url`, `title`, `content`, `description`, `features`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(1, 0, 'alasim-elementlerinin-celiklerin-ozelliklerine-etkileri', 'ALAŞIM ELEMENTLERİNİN ÇELİKLERİN ÖZELLİKLERİNE ETKİLERİ', '', '', '', 'tr', 1, 1, '2022-11-14 14:47:48', '2022-11-22 05:57:28', '2022-11-14 14:47:18'),
(2, 0, 'standart-karsilastirma-tablosu', 'STANDART KARŞILAŞTIRMA TABLOSU', '', '', '', 'tr', 1, 1, '2022-11-14 14:47:48', '2022-11-22 05:57:38', '2022-11-14 14:47:18'),
(3, 0, 'genel-yapi-celikleri-mekanik-ozellikleri', 'GENEL YAPI ÇELİKLERİ MEKANİK ÖZELLİKLERİ', '', '', '', 'tr', 3, 1, '2022-11-22 05:57:53', '2022-11-22 05:57:53', '2022-11-22 05:57:40'),
(4, 0, 'cekme-dayanimina-gore-ifade-edilen-genel-yapi-celikleri', 'ÇEKME DAYANIMINA GÖRE İFADE EDİLEN GENEL YAPI ÇELİKLERİ', '', '', '', 'tr', 4, 1, '2022-11-22 05:58:13', '2022-11-22 05:58:13', '2022-11-22 05:57:56'),
(5, 0, 'genel-yapi-celikleri-ve-bilesimleri', 'GENEL YAPI ÇELİKLERİ VE BİLEŞİMLERİ', '', '', '', 'tr', 5, 1, '2022-11-22 05:58:39', '2022-11-22 05:58:39', '2022-11-22 05:58:26'),
(6, 0, 'non-alloy-chemical-composition', 'NON-ALLOY CHEMICAL COMPOSITION', '', '', '', 'tr', 6, 1, '2022-11-22 05:58:52', '2022-11-22 05:58:52', '2022-11-22 05:58:41'),
(7, 0, 'non-alloy-mechanical-properties', 'NON-ALLOY MECHANICAL PROPERTIES', '', '', '', 'tr', 7, 1, '2022-11-22 05:59:06', '2022-11-22 05:59:06', '2022-11-22 05:58:54'),
(8, 0, 'gost-steel-norms', 'GOST STEEL NORMS', '', '', '', 'tr', 8, 1, '2022-11-22 05:59:14', '2022-11-22 05:59:14', '2022-11-22 05:59:08'),
(9, 0, 'inch-donusum-tablosu', 'INCH DÖNÜŞÜM TABLOSU', '', '', '', 'tr', 9, 1, '2022-11-22 05:59:29', '2022-11-22 05:59:29', '2022-11-22 05:59:17'),
(10, 0, 'npi-ipe-tolerans-tablosu', 'NPI - IPE TOLERANS TABLOSU', '', '', '', 'tr', 10, 1, '2022-12-15 14:44:53', '2022-12-15 14:44:53', '2022-12-15 14:44:21'),
(11, 0, 'kare-tolerans-tablosu', 'KARE TOLERANS TABLOSU', '', '', '', 'tr', 11, 1, '2022-12-15 14:48:02', '2023-04-06 13:03:55', '2022-12-15 14:47:46'),
(12, 0, 'lama-tolerans-tablosu', 'LAMA TOLERANS TABLOSU', '', '', '', 'tr', 12, 1, '2022-12-15 14:49:16', '2023-04-06 13:03:38', '2022-12-15 14:48:32'),
(13, 0, 'kosebent-tolerans-tablosu', 'KÖŞEBENT TOLERANS TABLOSU', '', '', '', 'tr', 13, 1, '2022-12-15 14:49:53', '2023-04-06 13:03:13', '2022-12-15 14:49:42'),
(14, 0, 't-profil-tolerans-tablosu', 'T PROFİL TOLERANS TABLOSU', '', '', '', 'tr', 14, 1, '2022-12-15 14:50:49', '2023-04-06 13:02:50', '2022-12-15 14:50:39'),
(15, 0, 'npu-profil-tolerans-tablosu', 'NPU PROFİL TOLERANS TABLOSU', '', '', '', 'tr', 15, 1, '2022-12-15 14:51:50', '2023-04-06 13:02:24', '2022-12-15 14:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `technical_informations_w_categories`
--

CREATE TABLE `technical_informations_w_categories` (
  `id` int(11) NOT NULL,
  `technical_information_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technical_informations_w_categories`
--

INSERT INTO `technical_informations_w_categories` (`id`, `technical_information_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(8, 9, 1),
(9, 8, 1),
(10, 7, 1),
(11, 10, 2),
(22, 16, 2),
(23, 17, 2),
(24, 18, 2),
(25, 19, 2),
(28, 20, 2),
(29, 21, 2),
(30, 22, 2),
(31, 15, 2),
(32, 14, 2),
(33, 13, 2),
(34, 12, 2),
(35, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `technical_information_categories`
--

CREATE TABLE `technical_information_categories` (
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
-- Dumping data for table `technical_information_categories`
--

INSERT INTO `technical_information_categories` (`id`, `top_id`, `title`, `seo_url`, `img_url`, `home_url`, `banner_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 0, 'Teknik Bilgiler', 'teknik-bilgiler', '36d71127403dfe97b8332e1009ebb618.webp', '28611029a7a23218057806cb7a3c7025.webp', 'ad8ce330578876b4db428be7870b74a1.webp', 'tr', 1, 1, '2022-11-23 00:27:35', '2022-12-22 13:25:02'),
(2, 0, 'Ölçü Tolerans Tabloları', 'olcu-tolerans-tablolari', NULL, NULL, NULL, 'tr', 2, 1, '2022-12-15 12:06:56', '2022-12-15 12:06:56'),
(3, 0, 'Technical Informations', 'technical-informations', NULL, NULL, NULL, 'en', 1, 1, '2023-01-30 11:39:45', '2023-01-30 11:39:45'),
(4, 0, 'Size Tolerance Tables', 'size-tolerance-tables', NULL, NULL, NULL, 'en', 2, 1, '2023-01-30 11:39:58', '2023-01-30 11:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `technical_information_dimensions`
--

CREATE TABLE `technical_information_dimensions` (
  `id` int(11) NOT NULL,
  `technical_information_id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `lang` char(2) NOT NULL DEFAULT 'tr',
  `img_url` varchar(255) DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT 1,
  `rank` int(11) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technical_information_dimensions`
--

INSERT INTO `technical_information_dimensions` (`id`, `technical_information_id`, `title`, `lang`, `img_url`, `isActive`, `rank`, `createdAt`, `updatedAt`) VALUES
(1, 1, '', 'tr', '6cb45af169bf6b448f90bd5ac558d43a.webp', 1, 1, '2022-12-13 13:05:29', '2022-12-13 13:09:02'),
(2, 1, '', 'tr', 'ddbb97f980b24f627791a21ec0f9c387.webp', 1, 2, '2022-12-13 13:09:48', '2022-12-13 13:09:48'),
(3, 1, '', 'tr', 'd3fb82da1333956b96e1695b347a21ab.webp', 1, 3, '2022-12-13 13:09:53', '2022-12-13 13:09:53'),
(4, 1, '', 'tr', '1a5aff22222daa6faca32e45dccfd1a7.webp', 1, 4, '2022-12-13 13:09:59', '2022-12-13 13:09:59'),
(5, 1, '', 'tr', '231aeb5d2b68f281764ae1cad18f1afd.webp', 1, 5, '2022-12-13 13:10:06', '2022-12-13 13:10:06'),
(6, 1, '', 'tr', '80652acf814c1cd8d62d927a81d6f6c8.webp', 1, 6, '2022-12-13 13:10:11', '2022-12-13 13:10:11'),
(7, 2, '', 'tr', 'da21f0ec42a805430cfd58527b5d3f2f.webp', 1, 7, '2022-12-15 14:17:12', '2022-12-15 14:17:12'),
(8, 3, '', 'tr', '3b310ef80898d6badb5002494364632f.webp', 1, 8, '2022-12-15 14:20:35', '2022-12-15 14:20:35'),
(9, 4, '', 'tr', '2a789dd91fcff3f95b3596b46d011f8d.webp', 1, 9, '2022-12-15 14:20:55', '2022-12-15 14:20:55'),
(10, 5, '', 'tr', 'f040710ad77d3bbe7958ab823ddb8a9b.webp', 1, 10, '2022-12-15 14:21:25', '2022-12-15 14:21:25'),
(11, 6, '', 'tr', 'ae8ac6ecf2277101e788b0213df43d52.webp', 1, 11, '2022-12-15 14:21:41', '2022-12-15 14:21:41'),
(12, 7, '', 'tr', 'be3ef25b9a0f5e4558c38e8c5e7a2a68.webp', 1, 12, '2022-12-15 14:22:01', '2022-12-15 14:22:01'),
(13, 8, '', 'tr', '6d6953b118bfb21a7207d96bee0802cf.webp', 1, 13, '2022-12-15 14:22:26', '2022-12-15 14:22:26'),
(14, 8, '', 'tr', '3f1225069784395f6f0b467277857a6f.webp', 1, 14, '2022-12-15 14:22:31', '2022-12-15 14:22:31'),
(15, 8, '', 'tr', '8b82a164bc40d99bff132b4711121b10.webp', 1, 15, '2022-12-15 14:22:37', '2022-12-15 14:22:37'),
(16, 9, '', 'tr', '0da406386d613d637ed076ac0635c6fc.webp', 1, 16, '2022-12-15 14:22:57', '2022-12-15 14:22:57'),
(17, 10, '', 'tr', '6aeb1d9bb3512849e3ec5f6fffd608c9.webp', 0, 17, '2022-12-15 14:45:23', '2023-04-06 11:28:32'),
(18, 10, '', 'tr', NULL, 0, 18, '2022-12-15 14:46:04', '2022-12-15 14:47:22'),
(19, 10, '', 'tr', '56cfabd5c7fda534a6b14d995459ee4d.webp', 1, 20, '2022-12-15 14:46:23', '2023-04-06 11:29:13'),
(20, 10, '', 'tr', '18b2c525ea2decdc3eaec9e2dda9328c.webp', 1, 26, '2022-12-15 14:46:29', '2023-04-06 11:29:13'),
(21, 11, 'EN 10059 : 2005 Ölçü Tolerans Tablosu', 'tr', '3447fe1d5f0ae9e9a081760246c28e73.webp', 0, 21, '2022-12-15 14:48:13', '2023-04-07 09:18:44'),
(22, 12, '', 'tr', 'd82167d9ba0badcbf7eec4c0083805ae.webp', 1, 22, '2022-12-15 14:49:26', '2023-04-07 09:09:13'),
(23, 13, '', 'tr', 'd0dbc00f4dbf3966552e23665cc31e01.webp', 1, 23, '2022-12-15 14:50:14', '2023-04-07 09:02:47'),
(24, 14, 'T PROFİL TOLERANS TABLOSU', 'tr', '1c890121bd6df99131e9844f0fcbdf6f.webp', 1, 24, '2022-12-15 14:51:00', '2023-04-07 07:26:31'),
(25, 15, 'NPU PROFİL TOLERANS TABLOSU', 'tr', '459749cc554d620ba067ff59b049994d.webp', 1, 25, '2022-12-15 14:52:07', '2023-04-07 07:21:28'),
(26, 10, '', 'tr', '9a411b731afb89b05fd94fa620c7ba9e.webp', 1, 19, '2023-04-06 11:29:00', '2023-04-06 11:29:13'),
(35, 15, '', 'tr', '39304eea90379508083bb6e1d010bd9d.webp', 0, 27, '2023-04-06 13:12:23', '2023-04-06 13:13:19'),
(36, 15, 'NPU PROFİL TOLERANS TABLOSU', 'tr', '3bcb189cf06f7e76e592855142ab94c4.webp', 1, 28, '2023-04-06 13:16:32', '2023-04-06 13:16:32'),
(37, 15, 'NPU PROFİL TOLERANS TABLOSU', 'tr', 'c53c3be1a80241766f4394160efc2484.webp', 0, 29, '2023-04-06 13:16:33', '2023-04-06 13:16:36'),
(38, 14, 'T PROFİL TOLERANS TABLOSU', 'tr', '27e9db5fc0feb3205d3672826ec8e3b2.webp', 1, 30, '2023-04-06 13:17:26', '2023-04-06 13:17:26'),
(39, 12, '', 'tr', '05ee6c48e3cc488bc82d0a69620aa691.webp', 1, 31, '2023-04-06 13:18:06', '2023-04-07 09:09:18'),
(40, 13, '', 'tr', 'db87ed98f8e28195030c98739f57a3db.webp', 1, 32, '2023-04-06 13:18:42', '2023-04-07 09:03:02'),
(41, 11, 'KARE / YUVARLAK TOLERANS TABLOSU', 'tr', '1d022f3043a1d363b1872fb03bf7d6e2.webp', 1, 35, '2023-04-06 13:19:36', '2023-04-07 09:18:53'),
(42, 10, 'IPE PROFİL TOLERANS TABLOSU', 'tr', '95b9d84deea1e3383a4f37e3e3a0b9d3.webp', 1, 34, '2023-04-06 13:21:22', '2023-04-06 13:21:22'),
(43, 11, '', 'tr', 'd8e54c73860fe5b8e2f6723dd173cbf1.webp', 0, 36, '2023-04-07 09:18:32', '2023-04-07 09:18:53'),
(44, 11, '', 'tr', 'a403e1a945896b4a8aaeb5b881bec8f4.webp', 1, 33, '2023-04-07 09:18:32', '2023-04-07 09:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `technical_information_images`
--

CREATE TABLE `technical_information_images` (
  `id` int(11) NOT NULL,
  `technical_information_id` int(11) DEFAULT NULL,
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
-- Dumping data for table `technical_information_images`
--

INSERT INTO `technical_information_images` (`id`, `technical_information_id`, `url`, `img_url`, `title`, `description`, `lang`, `rank`, `isActive`, `isCover`, `createdAt`, `updatedAt`) VALUES
(13, 9, '61f7e96d7ce4857610bce3d5ed46f8f1.webp', NULL, NULL, NULL, 'tr', 9, 1, 1, '2022-12-15 14:33:19', '2022-12-15 14:33:20'),
(14, 1, 'e53a41bc9cee0e6805c3c148701066fb.webp', NULL, NULL, NULL, 'tr', 9, 1, 1, '2022-12-15 14:33:45', '2022-12-15 14:33:50'),
(15, 2, '20e4ddb9cb69a72584646ed90bb7cf06.webp', NULL, NULL, NULL, 'tr', 9, 1, 1, '2022-12-15 14:34:03', '2022-12-15 14:34:05'),
(16, 3, '8fe6fa57c8f298c18490f869544c8c21.webp', NULL, NULL, NULL, 'tr', 9, 1, 1, '2022-12-15 14:34:22', '2022-12-15 14:34:23'),
(17, 4, '4a7ebd955cab7f4ef5ebf5dde6ef8ee3.webp', NULL, NULL, NULL, 'tr', 9, 1, 1, '2022-12-15 14:34:37', '2022-12-15 14:34:39'),
(18, 5, 'e0fd6bd32ddb44e84dd6cfbb0354beb2.webp', NULL, NULL, NULL, 'tr', 9, 1, 1, '2022-12-15 14:34:57', '2022-12-15 14:34:58'),
(19, 6, '20d26c18a850630d91bca6237d45e631.webp', NULL, NULL, NULL, 'tr', 9, 1, 1, '2022-12-15 14:35:12', '2022-12-15 14:35:13'),
(20, 7, '2a5f31072f1b188bd1dd3edc0c44917d.webp', NULL, NULL, NULL, 'tr', 9, 1, 1, '2022-12-15 14:35:30', '2022-12-15 14:35:31'),
(21, 8, '2efbb6e15394997e6d8b6944c0c70e19.webp', NULL, NULL, NULL, 'tr', 9, 1, 1, '2022-12-15 14:35:50', '2022-12-15 14:35:52'),
(22, 10, '2d9f23db924788604297f0f6cb03886c.webp', NULL, NULL, NULL, 'tr', 10, 1, 1, '2022-12-15 14:46:41', '2022-12-15 14:46:42'),
(28, 21, '380b469b035fc2c2f0a0dc5162b4e389.webp', NULL, NULL, NULL, 'tr', 16, 1, 1, '2023-04-06 12:06:51', '2023-04-06 12:06:54'),
(29, 20, '45fd3390b382b05f8924ad58316bedb0.webp', NULL, NULL, NULL, 'tr', 17, 1, 1, '2023-04-06 12:08:37', '2023-04-06 12:08:41'),
(30, 19, '109a24a617bc32c70837957e0ac95a70.webp', NULL, NULL, NULL, 'tr', 18, 1, 1, '2023-04-06 12:08:57', '2023-04-06 12:08:59'),
(31, 18, '3904a58e126e3d06ffee9f68b935a97a.webp', NULL, NULL, NULL, 'tr', 19, 1, 1, '2023-04-06 12:09:16', '2023-04-06 12:09:17'),
(32, 16, '462208019f0c78bcbe6e66d69a474179.webp', NULL, NULL, NULL, 'tr', 20, 1, 1, '2023-04-06 12:10:02', '2023-04-06 12:10:04'),
(33, 17, '93dc638ee17d9bbc22889a78d97abfe1.webp', NULL, NULL, NULL, 'tr', 21, 1, 1, '2023-04-06 12:10:18', '2023-04-06 12:10:22'),
(34, 22, '81ee01dc531200897d9abf2bfaf995bf.webp', NULL, NULL, NULL, 'tr', 22, 1, 1, '2023-04-06 12:14:16', '2023-04-06 12:15:08'),
(35, 15, '45ec9d7e0a62b1691427a5e21c2c51a8.webp', NULL, NULL, NULL, 'tr', 22, 1, 1, '2023-04-07 07:22:02', '2023-04-07 07:22:03'),
(36, 14, 'd9b1b6f9471576d229fb0ea7926a78c3.webp', NULL, NULL, NULL, 'tr', 22, 1, 1, '2023-04-07 07:26:44', '2023-04-07 07:26:46'),
(37, 13, 'b0f91c779d45636265bb3e6b96f8629b.webp', NULL, NULL, NULL, 'tr', 22, 1, 1, '2023-04-07 09:02:26', '2023-04-07 09:02:27'),
(38, 12, '06f8beafa20f7663b9f38c72a3aa6074.webp', NULL, NULL, NULL, 'tr', 22, 1, 1, '2023-04-07 09:08:49', '2023-04-07 09:08:51'),
(39, 11, '535bd80c52a8fc2b95a813ad4bf7b9ec.webp', NULL, NULL, NULL, 'tr', 22, 1, 1, '2023-04-07 09:17:56', '2023-04-07 09:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `full_name` varchar(70) DEFAULT NULL,
  `company` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(1) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'Mutfak Yapım', 'info@mutfakyapim.com', '05494410121', '0a7483867a2442352e2b86d4b4910826', 1, 1, 1, '2021-01-13 05:30:08', '2023-04-19 12:03:38', 'jxFRs9CRUfkyFgqZcegvAH1iyNOEBEU2BqFVJCvQmK04EuPmocO8wo3xFtvs67kZlP8A7RbUYlZqY2GS4jPLbppdH8zloYlmCEuDf5N234KacVkMtJq8PThypV5O6m2Ht0kXJGTsS578WwCDc1zApKbaQxI4Cpu9wyOlN0tV53SzdBGw5qWMGU1GxLW7VTn1eLdaEXXMwHofDesIW6fLainDjRiQIvLKhBYoex79eiIjgQdg1ghtN3IAnzYDrz9', 'tr'),
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
(1, 'Admin', '{\"blogs\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"blog_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"dashboard\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"emailsettings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"galleries\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"homeitems\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"menus\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"pages\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"products\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"product_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"sectors\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"sector_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"services\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"service_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"settings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"slides\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"technical_informations\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"technical_information_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"userop\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"users\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"user_role\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"}}', 1, 1, 1, '2020-07-22 20:58:34', '2022-11-16 13:56:26'),
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
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `product_dimensions`
--
ALTER TABLE `product_dimensions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_DIMENSIONPRODUCT` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PRODUCTID` (`product_id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sector_categories`
--
ALTER TABLE `sector_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `technical_informations`
--
ALTER TABLE `technical_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_informations_w_categories`
--
ALTER TABLE `technical_informations_w_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PRODUCTWID` (`technical_information_id`);

--
-- Indexes for table `technical_information_categories`
--
ALTER TABLE `technical_information_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_information_dimensions`
--
ALTER TABLE `technical_information_dimensions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_DIMENSIONTECHNICALINFORMATION` (`technical_information_id`) USING BTREE;

--
-- Indexes for table `technical_information_images`
--
ALTER TABLE `technical_information_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_TECHNICALINFORMATIONID` (`technical_information_id`) USING BTREE;

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `home_items`
--
ALTER TABLE `home_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `linguo_languages`
--
ALTER TABLE `linguo_languages`
  MODIFY `language_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products_w_categories`
--
ALTER TABLE `products_w_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_dimensions`
--
ALTER TABLE `product_dimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sector_categories`
--
ALTER TABLE `sector_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `technical_informations`
--
ALTER TABLE `technical_informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `technical_informations_w_categories`
--
ALTER TABLE `technical_informations_w_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `technical_information_categories`
--
ALTER TABLE `technical_information_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `technical_information_dimensions`
--
ALTER TABLE `technical_information_dimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `technical_information_images`
--
ALTER TABLE `technical_information_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_urls`
--
ALTER TABLE `video_urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Constraints for table `product_dimensions`
--
ALTER TABLE `product_dimensions`
  ADD CONSTRAINT `FK_DIMENSIONPRODUCT` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
