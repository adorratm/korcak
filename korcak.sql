-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 02:59 AM
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
(3, 'Müşteri Memnuniyeti', 'Tüm çalışmalarımızın ilk ve tek odak noktası müşteri memnuniyetidir.', '7bfbfd78689b5bdeb11d652daacbca95.webp', 'tr', 3, 1, '2023-04-19 20:28:44', '2023-04-19 20:28:44', '2023-04-19 20:28:16');

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
(9, 1, 'a92a5bde18487347aa2568bc72ec2e5b.webp', NULL, NULL, NULL, 'tr', 9, 1, '2023-04-19 23:57:27', '2023-04-19 23:57:27', NULL);

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
(1, 'hakkimizda', 'Hakkımızda', '<p style=\"font-weight: 400;\">1960 yılında İzmir’de Efes Karasör adı ile faaliyetlerine başlamış olan firmamız; ekipman sektörünün ihtiyacı doğrultusunda daha kurumsal ve yenilikçi bir vizyonla ulusal piyasalarda ve yurt dışı piyasalarında yerini almıştır. Her geçen gün genişleyip büyümeye devam eden firmamız, 2022 yılında <strong>KORÇAK ARAÇ ÜSTÜ EKİPMAN</strong> unvanıyla yenilenmiştir. Şirketimiz, sektöründeki öncü firma olmaya adaydır.</p>\r\n<p style=\"font-weight: 400;\"> <strong>KORÇAK ARAÇ ÜSTÜ EKİPMAN</strong>, sektöründeki deneyimiyle kalite ve değerlerinden ödün vermeden, en üst düzeyde hizmet sağlamaktadır. İzmir-Torbalı’da bulunan firmamız, 1700 m² kapalı + 1500 m² açık alana sahip fabrikasında son teknoloji ekipmanlarla üstün nitelikli üretim gerçekleştirmektedir.</p>\r\n<p style=\"font-weight: 400;\">Şirketimiz, Araç Üstü Ekipman sektörünün tüm istek ve ihtiyaçlarına cevap verebilecek düzeyde geniş ve çeşitli ürün yelpazesine sahiptir. Yaşadığımız çağın şartlarına uygun ve modern dünyanın gereksinimlerini karşılayan başlıca ürünlerimiz:</p>\r\n<ul>\r\n<li style=\"font-weight: 400;\">Merdivenli, Merdivensiz İtfaiye Araçları,</li>\r\n<li style=\"font-weight: 400;\">AKUT Kurtarma ve İlk Müdahale Araçları,</li>\r\n<li style=\"font-weight: 400;\">Kanal Açma Araçları, </li>\r\n<li style=\"font-weight: 400;\">Vidanjör,</li>\r\n<li style=\"font-weight: 400;\">Su ve Yakıt Tankerleri,</li>\r\n<li style=\"font-weight: 400;\">Damperli Kamyonlar,</li>\r\n<li style=\"font-weight: 400;\">Hidrolik Sıkıştırmalı Çöp Kasalı Araçlar, Minimatik Çöp Kasaları ve Çöp Semitreylerler,</li>\r\n<li style=\"font-weight: 400;\">Hidrolik ve Teleskopik Platformlar,</li>\r\n<li style=\"font-weight: 400;\">Mobil Bakım ve Mobil Yağlama Araçları,</li>\r\n<li style=\"font-weight: 400;\">Mobil Mutfak ve Mobil Tuvaletler,</li>\r\n<li style=\"font-weight: 400;\">Vinçli Kasalar,</li>\r\n<li style=\"font-weight: 400;\">Toplumsal Olaylara Müdahale Araçları (TOMA) bulunmaktadır.</li>\r\n</ul>\r\n<p style=\"font-weight: 400;\">Bu ürünlerin dışında ihtiyaçlarınıza yönelik özel tasarım gerektiren her türlü Araç Üstü Ekipmanlar, VİP Dizaynlı araçlar için kaliteli ve ekonomik çözümler sunmaktayız.  Ürettiğimiz her ürünün iki yıllık garantisi bulunmaktadır. Kurulmuş olduğumuz tarihten itibaren hem yurt içi hem yurt dışı oldukça satış gerçekleştirdiğimizi ve olumlu geri dönüşler aldığımızı belirtmek isteriz.</p>\r\n<p style=\"font-weight: 400;\"><strong>KORÇAK ARAÇÜSTÜ EKİPMAN</strong> olarak;</p>\r\n<p style=\"font-weight: 400;\">Müşteri memnuniyeti odaklı bir çalışma politikası ile ilerlemekteyiz. Müşterilerimizin geri dönüşlerini, özel sipariş, istek ve önerilerini özenle takip etmekte, kaliteli ve güvenilir bir şekilde hizmet sunmaktayız.</p>\r\n<p style=\"font-weight: 400;\">Mevcut deneyimimizden yararlanarak çalışanlarımızla koordineli bir şekilde çalışma yürütmekte ve ürünlerimizi işlerimizi aksatmadan zamanında teslim etmekteyiz. Siz değerli müşterilerimizin destekleriyle hem Türkiye’de hem de dünyada sektörümüzün öncü firması olmayı hedeflemekteyiz.</p>\r\n<p style=\"font-weight: 400;\"> </p>\r\n<p style=\"font-weight: 400;\"><strong>TECRÜBEMİZİ SİZ DEĞERLİ MÜŞTERİLERİMİZLE PAYLAŞMAK İSTERİZ!</strong></p>\r\n<p style=\"font-weight: 400;\"><strong>YAPTIKLARIMIZ, YAPACAKLARIMIZIN TEMİNATIDIR!...</strong></p>', '9e84192ec8779c40c605312b40363964.webp', '6f39d61bc46022e50057e8def3595652.webp', 'tr', 1, 1, '2022-02-23 06:24:54', '2023-04-19 23:47:16', '2022-02-23 06:24:26', 'SIMPLE');

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
(1, 0, 'hidrolik-merdivenli-itfaiye-araci', 'HİDROLİK MERDİVENLİ İTFAİYE ARACI', '<p style=\"font-weight: 400;\"><strong>Karasör Tipi                          :</strong> Galvaniz Sactan Modüler tip – Alüminyum panjurlu</p>\r\n<p style=\"font-weight: 400;\"><strong>Su Tankı                                :</strong> 304 Krom Nikel veya Galvaniz Sac (2.000-6.000 lt.)</p>\r\n<p style=\"font-weight: 400;\"><strong>Köpük Tankı                         :</strong> 304 veya 316 Krom Nikel veya Galvaniz Sac(250-500 lt.)</p>\r\n<p style=\"font-weight: 400;\"><strong>Toz Tankı                              :</strong>200 ila 600 Kg. arası</p>\r\n<p style=\"font-weight: 400;\"><strong>Pompa Debisi                      :</strong> 2.000 lt/dk. İla 6.000 lt/dk.Yüksek basınçta</p>\r\n<p style=\"font-weight: 400;\">                                                 250 lt/dk. İla 400 lt/dk. Alçak basınçta</p>\r\n<p style=\"font-weight: 400;\"><strong>Pompa Basıncı                    :</strong> 40 Bar Yüksek basınçta 10 Bar Alçak basınçta</p>\r\n<p style=\"font-weight: 400;\"><strong>Monitörler                           :</strong> 10 Barda 2400 lt/dk., 70 mt. Su, 60 mt. Köpük atış aralığıönme,</p>\r\n<p style=\"font-weight: 400;\">                                                    10 Barda 45-75-90 mt. Atış aralığı</p>\r\n<p style=\"font-weight: 400;\"><strong>Merdiven Boyları               :</strong> Otomatik Dengeleme Motorlu 2 kişi 200 Kg.</p>\r\n<p style=\"font-weight: 400;\">                                                 Taşıma Kapasiteli, Su monitörlü, 2 adet veya 4 adet istinat ayaklı</p>\r\n<p style=\"font-weight: 400;\"><strong>Çıkrık                                    :</strong> 20 ila 60 mt. Arası, 1 ‘’veya ¼ ‘’ Tabanca</p>\r\n<p style=\"font-weight: 400;\"><strong>Elektrik                                 :</strong> Aydınlatma Projektörleri + Teleskopik Projektör + Tepe Lambalı</p>\r\n<p style=\"font-weight: 400;\"><strong>TEKNİK DETAYLAR</strong></p>\r\n<p style=\"font-weight: 400;\">Hidrolik Merdivenli İtfaiye ekipmanımız, monte edilecek şasi kamyonun kapasitesine uygun 1.000 ila 6.000 Lt. kapasiteli su tanklı (isteğe göre Krom Nikel-Galvaniz ve ST 37 Siyah Saçtan Tank imal edilecektir.) ve yine isteğe bağlı 250 ila 500 Lt. kapasiteli köpük tankı ilaveli ve talep halinde 200 ila 699 kg. kapasiteli toz tankı monteli, isteğe bağlı olarak 12-18 mt. (Manuel), 22-26-28 mt. Elektronik Joystick kontrollü avantraya bağlı (Oransal) Hidrolik Merdivenli imalatlar, yapmaktayız. Bu itfaiye araçlarımızın karoseri, modüler sistemde, 3 parçalı olarak Galvaniz sac kaplı ve alüminyum panjurlu üst düzeyde modern olarak dizayn edilmektedir.</p>', 'tr', 1, 1, '2023-04-19 22:08:03', '2023-04-19 22:08:17', '2023-04-19 22:07:55', NULL);

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
(1, 1, 1);

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
(1, 0, 'MERDİVENLİ MERDİVENSİZ İTFAİYE ARAÇLARI', 'merdivenli-merdivensiz-itfaiye-araclari', NULL, NULL, NULL, 'tr', 1, 1, '2022-12-15 13:03:22', '2023-04-19 21:49:07'),
(2, 0, 'AKUT KURTARMA VE İLK MÜDAHELE ARAÇLARI', 'akut-kurtarma-ve-ilk-mudahele-araclari', NULL, NULL, NULL, 'tr', 2, 1, '2022-12-15 13:03:41', '2023-04-19 21:49:21'),
(3, 0, 'KANAL AÇMA ARAÇLARI', 'kanal-acma-araclari', NULL, NULL, NULL, 'tr', 3, 1, '2023-04-19 21:49:39', '2023-04-19 21:50:02'),
(4, 0, 'TANKERLER', 'tankerler', NULL, NULL, NULL, 'tr', 4, 1, '2023-04-19 21:53:13', '2023-04-19 21:53:13'),
(5, 0, 'HİDROLİK VE TELESKOPİK PLATFORMLAR', 'hidrolik-ve-teleskopik-platformlar', NULL, NULL, NULL, 'tr', 5, 1, '2023-04-19 21:53:28', '2023-04-19 21:53:28'),
(6, 0, 'DAMPERLİ KAMYONLAR', 'damperli-kamyonlar', NULL, NULL, NULL, 'tr', 6, 1, '2023-04-19 21:53:36', '2023-04-19 21:53:36'),
(7, 0, 'ARAÇ YENİLEME VE DİZAYN', 'arac-yenileme-ve-dizayn', NULL, NULL, NULL, 'tr', 7, 1, '2023-04-19 21:53:44', '2023-04-19 21:53:44');

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
(1, 1, 'd0ed8960566076fdae382cb881fd1321.webp', NULL, NULL, NULL, 'tr', 1, 1, 1, '2023-04-19 22:11:34', '2023-04-19 22:11:41');

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
(1, 'Korçak', 'Korçak Araçüstü Ekipmanları San. ve Tic. Ltd. Şti.', '																					', '				<p>Korçak birçok firmaya araç üstü ekipmanı yeni ürün ve kaliteli üretim hizmeti sunmaktadır.</p>			', '																					', '[\"\\u00c7AKIRBEYL\\u0130 MAH. 6180 SK. NO:84 TORBALI \\/ \\u0130ZM\\u0130R\"]', '[\"Merkez\"]', '[\"&lt;iframe src=&quot;https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3130.912673830256!2d27.38875957638168!3d38.304690981457924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b968e95e8c5603%3A0x3ae97edf15f1ae8b!2zRGHEn2vEsXrEsWxjYSwgNjE4MC4gU2suIE5vOjg0LCAzNTg2MCBUb3JiYWzEsS_EsHptaXI!5e0!3m2!1sen!2str!4v1681893404479!5m2!1sen!2str&quot; width=&quot;100%&quot; height=&quot;450&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot; loading=&quot;lazy&quot; referrerpolicy=&quot;no-referrer-when-downgrade&quot;&gt;&lt;\\/iframe&gt;\"]', 'feeaaf61de7042d6ff2b43d0fee1b453.webp', 'cb45cae75a42b13781e74d775d0d0ed0.webp', '9c8e66cfc20bfa6ac1e5e881f61001b8.webp', 'af02d0c023b78a2148e0697bf97f4393.webp', '405089704aa9cd40ffc8b11b38a02958.webp', 'a1c812fb7c73e61ce96426105cd78b0e.webp', '33c9ce56c9bfaaeeb5a17de2b0481239.webp', 'cbd5c3850ed221363e6a0991552ce477.webp', '472cc1c9079604e452fb5c2dae3853dc.webp', '52be06b3ad761b6508254b53aa89535a.webp', 'b0b03755b700ed32b8d8e1fa1cef8484.webp', 'c22e50caac3c393baeaf5b7287c7a77e.webp', '763d588ba49ea081c6873f6007262977.webp', '9ad37733dd839901223ffbf58a7c012b.webp', '[\"+90 532 113 60 09\"]', '[\"\"]', '[\"+90 532 113 60 09\"]', 'info@korcak.com.tr', 'https://www.facebook.com/korcakaracustuekipman', NULL, 'https://www.instagram.com/korcakaracustuekip/', 'https://www.linkedin.com/company/korcak-aracustu-ekipman', NULL, NULL, NULL, NULL, 'İnce ve orta kesit sıcak haddelenmiş Ticari Profil üretiminde Türkiye', '', '', '', 1, '2020-07-22 20:57:22', '2023-04-20 00:32:21', 1, 'tr'),
(2, 'Korçak', 'Korçak Araçüstü Ekipmanları San. ve Tic. Ltd. Şti.', '																					', '																					', '																					', '[\"\\u00c7AKIRBEYL\\u0130 6180 ST. NO:84 TORBALI \\/ \\u0130ZM\\u0130R\"]', '[\"Central\"]', '[\"&lt;iframe src=&quot;https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3130.912673830256!2d27.38875957638168!3d38.304690981457924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b968e95e8c5603%3A0x3ae97edf15f1ae8b!2zRGHEn2vEsXrEsWxjYSwgNjE4MC4gU2suIE5vOjg0LCAzNTg2MCBUb3JiYWzEsS_EsHptaXI!5e0!3m2!1sen!2str!4v1681893585649!5m2!1sen!2str&quot; width=&quot;100%&quot; height=&quot;450&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot; loading=&quot;lazy&quot; referrerpolicy=&quot;no-referrer-when-downgrade&quot;&gt;&lt;\\/iframe&gt;\"]', '18adabe35bb773ff06566ab0da84f443.webp', '66caee3ae56264f1543fd87a1b56f303.webp', 'b30edceb1419c75335a9293efda9daf7.webp', 'eaf07566a6b71b1c8d7f125c3cf0ab11.webp', '1bbca4d6aa5b2111c2db975029e8a038.webp', 'd17998aca604ceba9a1e6705136fe772.webp', '2fb1a916e9d5a1ace003759b24ad309b.webp', 'bca21446035a7068e93aeef47d9c9a12.webp', '7443553a165a7dd06e2fc9d6e76c585b.webp', 'c38ce5b488d951ff367ce75a3495836a.webp', '95ac2e4dfb7be96b155a2a7f8f4367cf.webp', '549ec7fdadcc206a33cc5ada5c18ebc1.webp', '4a37344e053a1cdf57089970ba4519d6.webp', '0c49b981e7c7f18b6fcb7524174166e2.webp', '[\"+90 532 113 60 09\"]', '[\"\"]', '[\"+90 532 113 60 09\"]', 'info@korcak.com.tr', 'https://www.facebook.com/korcakaracustuekipman', NULL, 'https://www.instagram.com/korcakaracustuekip/', 'https://www.linkedin.com/company/korcak-aracustu-ekipman', NULL, NULL, NULL, NULL, 'İnce ve orta kesit sıcak haddelenmiş Ticari Profil üretiminde Türkiye', '', '', '', 2, '2023-01-30 07:13:57', '2023-04-20 00:32:27', 1, 'en');

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
(1, 'Akın Hadde', 'Akın Hadde', 'bde9cb013bc09ab033783bd37b4c609c.webp', 0, NULL, '_self', 'Kariyerini planlamak için tıkla', 'https://www.youtube.com/watch?v=6WZoYIYCNQQ', 'Tanıtımı İzle', NULL, NULL, NULL, 'tr', 1, 1, '2022-01-03 11:00:17', '2023-01-30 11:32:16', '2022-01-03 10:59:49'),
(2, 'Akın Hadde', 'Akın Hadde', '443b252150084f75ea7373c894c6fc16.webp', 0, NULL, '_self', 'Ön Kayıt İçin Tıkla', NULL, NULL, NULL, NULL, NULL, 'tr', 2, 1, '2022-01-14 11:27:30', '2023-01-30 11:32:23', '2022-01-14 11:26:43'),
(3, 'Akın Hadde', 'Akın Hadde', '3fea5c418f5fc4043e98d7927db79ca6.webp', 0, NULL, '_self', 'Yemek Odalarını İncele', NULL, NULL, NULL, NULL, NULL, 'tr', 3, 1, '2022-01-14 11:31:34', '2023-01-30 11:32:29', '2022-01-14 11:31:05');

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
(1, 'Admin', '{\"blogs\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"blog_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"brands\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"dashboard\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"emailsettings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"galleries\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"homeitems\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"menus\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"pages\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"products\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"product_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"sectors\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"sector_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"services\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"service_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"settings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"slides\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"userop\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"users\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"user_role\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"}}', 1, 1, 1, '2020-07-22 20:58:34', '2023-04-19 22:05:34'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products_w_categories`
--
ALTER TABLE `products_w_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
