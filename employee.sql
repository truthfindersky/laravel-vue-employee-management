-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 22, 2022 at 07:39 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dhaka', '2022-10-21 23:34:38', '2022-10-21 23:34:38'),
(2, 2, 'Khulna', '2022-10-21 23:34:48', '2022-10-21 23:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dial_code` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `dial_code`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', '+93', 'AF', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(2, 'Aland Islands', '+358', 'AX', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(3, 'Albania', '+355', 'AL', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(4, 'Algeria', '+213', 'DZ', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(5, 'AmericanSamoa', '+1684', 'AS', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(6, 'Andorra', '+376', 'AD', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(7, 'Angola', '+244', 'AO', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(8, 'Anguilla', '+1264', 'AI', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(9, 'Antarctica', '+672', 'AQ', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(10, 'Antigua and Barbuda', '+1268', 'AG', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(11, 'Argentina', '+54', 'AR', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(12, 'Armenia', '+374', 'AM', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(13, 'Aruba', '+297', 'AW', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(14, 'Australia', '+61', 'AU', '2022-10-21 23:32:52', '2022-10-21 23:32:52'),
(15, 'Austria', '+43', 'AT', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(16, 'Azerbaijan', '+994', 'AZ', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(17, 'Bahamas', '+1242', 'BS', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(18, 'Bahrain', '+973', 'BH', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(19, 'Bangladesh', '+880', 'BD', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(20, 'Barbados', '+1246', 'BB', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(21, 'Belarus', '+375', 'BY', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(22, 'Belgium', '+32', 'BE', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(23, 'Belize', '+501', 'BZ', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(24, 'Benin', '+229', 'BJ', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(25, 'Bermuda', '+1441', 'BM', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(26, 'Bhutan', '+975', 'BT', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(27, 'Bolivia, Plurinational State of', '+591', 'BO', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(28, 'Bosnia and Herzegovina', '+387', 'BA', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(29, 'Botswana', '+267', 'BW', '2022-10-21 23:32:53', '2022-10-21 23:32:53'),
(30, 'Brazil', '+55', 'BR', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(31, 'British Indian Ocean Territory', '+246', 'IO', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(32, 'Brunei Darussalam', '+673', 'BN', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(33, 'Bulgaria', '+359', 'BG', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(34, 'Burkina Faso', '+226', 'BF', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(35, 'Burundi', '+257', 'BI', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(36, 'Cambodia', '+855', 'KH', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(37, 'Cameroon', '+237', 'CM', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(38, 'Canada', '+1', 'CA', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(39, 'Cape Verde', '+238', 'CV', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(40, 'Cayman Islands', '+ 345', 'KY', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(41, 'Central African Republic', '+236', 'CF', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(42, 'Chad', '+235', 'TD', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(43, 'Chile', '+56', 'CL', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(44, 'China', '+86', 'CN', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(45, 'Christmas Island', '+61', 'CX', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(46, 'Cocos (Keeling) Islands', '+61', 'CC', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(47, 'Colombia', '+57', 'CO', '2022-10-21 23:32:54', '2022-10-21 23:32:54'),
(48, 'Comoros', '+269', 'KM', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(49, 'Congo', '+242', 'CG', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(50, 'Congo, The Democratic Republic of the Congo', '+243', 'CD', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(51, 'Cook Islands', '+682', 'CK', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(52, 'Costa Rica', '+506', 'CR', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(53, 'Cote d\'Ivoire', '+225', 'CI', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(54, 'Croatia', '+385', 'HR', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(55, 'Cuba', '+53', 'CU', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(56, 'Cyprus', '+357', 'CY', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(57, 'Czech Republic', '+420', 'CZ', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(58, 'Denmark', '+45', 'DK', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(59, 'Djibouti', '+253', 'DJ', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(60, 'Dominica', '+1767', 'DM', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(61, 'Dominican Republic', '+1849', 'DO', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(62, 'Ecuador', '+593', 'EC', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(63, 'Egypt', '+20', 'EG', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(64, 'El Salvador', '+503', 'SV', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(65, 'Equatorial Guinea', '+240', 'GQ', '2022-10-21 23:32:55', '2022-10-21 23:32:55'),
(66, 'Eritrea', '+291', 'ER', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(67, 'Estonia', '+372', 'EE', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(68, 'Ethiopia', '+251', 'ET', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(69, 'Falkland Islands (Malvinas)', '+500', 'FK', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(70, 'Faroe Islands', '+298', 'FO', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(71, 'Fiji', '+679', 'FJ', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(72, 'Finland', '+358', 'FI', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(73, 'France', '+33', 'FR', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(74, 'French Guiana', '+594', 'GF', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(75, 'French Polynesia', '+689', 'PF', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(76, 'Gabon', '+241', 'GA', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(77, 'Gambia', '+220', 'GM', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(78, 'Georgia', '+995', 'GE', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(79, 'Germany', '+49', 'DE', '2022-10-21 23:32:56', '2022-10-21 23:32:56'),
(80, 'Ghana', '+233', 'GH', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(81, 'Gibraltar', '+350', 'GI', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(82, 'Greece', '+30', 'GR', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(83, 'Greenland', '+299', 'GL', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(84, 'Grenada', '+1473', 'GD', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(85, 'Guadeloupe', '+590', 'GP', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(86, 'Guam', '+1671', 'GU', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(87, 'Guatemala', '+502', 'GT', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(88, 'Guernsey', '+44', 'GG', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(89, 'Guinea', '+224', 'GN', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(90, 'Guinea-Bissau', '+245', 'GW', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(91, 'Guyana', '+595', 'GY', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(92, 'Haiti', '+509', 'HT', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(93, 'Holy See (Vatican City State)', '+379', 'VA', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(94, 'Honduras', '+504', 'HN', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(95, 'Hong Kong', '+852', 'HK', '2022-10-21 23:32:57', '2022-10-21 23:32:57'),
(96, 'Hungary', '+36', 'HU', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(97, 'Iceland', '+354', 'IS', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(98, 'India', '+91', 'IN', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(99, 'Indonesia', '+62', 'ID', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(100, 'Iran, Islamic Republic of Persian Gulf', '+98', 'IR', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(101, 'Iraq', '+964', 'IQ', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(102, 'Ireland', '+353', 'IE', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(103, 'Isle of Man', '+44', 'IM', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(104, 'Israel', '+972', 'IL', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(105, 'Italy', '+39', 'IT', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(106, 'Jamaica', '+1876', 'JM', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(107, 'Japan', '+81', 'JP', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(108, 'Jersey', '+44', 'JE', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(109, 'Jordan', '+962', 'JO', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(110, 'Kazakhstan', '+77', 'KZ', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(111, 'Kenya', '+254', 'KE', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(112, 'Kiribati', '+686', 'KI', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(113, 'Korea, Democratic People\'s Republic of Korea', '+850', 'KP', '2022-10-21 23:32:58', '2022-10-21 23:32:58'),
(114, 'Korea, Republic of South Korea', '+82', 'KR', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(115, 'Kuwait', '+965', 'KW', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(116, 'Kyrgyzstan', '+996', 'KG', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(117, 'Laos', '+856', 'LA', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(118, 'Latvia', '+371', 'LV', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(119, 'Lebanon', '+961', 'LB', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(120, 'Lesotho', '+266', 'LS', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(121, 'Liberia', '+231', 'LR', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(122, 'Libyan Arab Jamahiriya', '+218', 'LY', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(123, 'Liechtenstein', '+423', 'LI', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(124, 'Lithuania', '+370', 'LT', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(125, 'Luxembourg', '+352', 'LU', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(126, 'Macao', '+853', 'MO', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(127, 'Macedonia', '+389', 'MK', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(128, 'Madagascar', '+261', 'MG', '2022-10-21 23:32:59', '2022-10-21 23:32:59'),
(129, 'Malawi', '+265', 'MW', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(130, 'Malaysia', '+60', 'MY', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(131, 'Maldives', '+960', 'MV', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(132, 'Mali', '+223', 'ML', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(133, 'Malta', '+356', 'MT', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(134, 'Marshall Islands', '+692', 'MH', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(135, 'Martinique', '+596', 'MQ', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(136, 'Mauritania', '+222', 'MR', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(137, 'Mauritius', '+230', 'MU', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(138, 'Mayotte', '+262', 'YT', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(139, 'Mexico', '+52', 'MX', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(140, 'Micronesia, Federated States of Micronesia', '+691', 'FM', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(141, 'Moldova', '+373', 'MD', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(142, 'Monaco', '+377', 'MC', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(143, 'Mongolia', '+976', 'MN', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(144, 'Montenegro', '+382', 'ME', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(145, 'Montserrat', '+1664', 'MS', '2022-10-21 23:33:00', '2022-10-21 23:33:00'),
(146, 'Morocco', '+212', 'MA', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(147, 'Mozambique', '+258', 'MZ', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(148, 'Myanmar', '+95', 'MM', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(149, 'Namibia', '+264', 'NA', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(150, 'Nauru', '+674', 'NR', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(151, 'Nepal', '+977', 'NP', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(152, 'Netherlands', '+31', 'NL', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(153, 'Netherlands Antilles', '+599', 'AN', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(154, 'New Caledonia', '+687', 'NC', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(155, 'New Zealand', '+64', 'NZ', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(156, 'Nicaragua', '+505', 'NI', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(157, 'Niger', '+227', 'NE', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(158, 'Nigeria', '+234', 'NG', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(159, 'Niue', '+683', 'NU', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(160, 'Norfolk Island', '+672', 'NF', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(161, 'Northern Mariana Islands', '+1670', 'MP', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(162, 'Norway', '+47', 'NO', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(163, 'Oman', '+968', 'OM', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(164, 'Pakistan', '+92', 'PK', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(165, 'Palau', '+680', 'PW', '2022-10-21 23:33:01', '2022-10-21 23:33:01'),
(166, 'Palestinian Territory, Occupied', '+970', 'PS', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(167, 'Panama', '+507', 'PA', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(168, 'Papua New Guinea', '+675', 'PG', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(169, 'Paraguay', '+595', 'PY', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(170, 'Peru', '+51', 'PE', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(171, 'Philippines', '+63', 'PH', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(172, 'Pitcairn', '+872', 'PN', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(173, 'Poland', '+48', 'PL', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(174, 'Portugal', '+351', 'PT', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(175, 'Puerto Rico', '+1939', 'PR', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(176, 'Qatar', '+974', 'QA', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(177, 'Romania', '+40', 'RO', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(178, 'Russia', '+7', 'RU', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(179, 'Rwanda', '+250', 'RW', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(180, 'Reunion', '+262', 'RE', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(181, 'Saint Barthelemy', '+590', 'BL', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(182, 'Saint Helena, Ascension and Tristan Da Cunha', '+290', 'SH', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(183, 'Saint Kitts and Nevis', '+1869', 'KN', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(184, 'Saint Lucia', '+1758', 'LC', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(185, 'Saint Martin', '+590', 'MF', '2022-10-21 23:33:02', '2022-10-21 23:33:02'),
(186, 'Saint Pierre and Miquelon', '+508', 'PM', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(187, 'Saint Vincent and the Grenadines', '+1784', 'VC', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(188, 'Samoa', '+685', 'WS', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(189, 'San Marino', '+378', 'SM', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(190, 'Sao Tome and Principe', '+239', 'ST', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(191, 'Saudi Arabia', '+966', 'SA', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(192, 'Senegal', '+221', 'SN', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(193, 'Serbia', '+381', 'RS', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(194, 'Seychelles', '+248', 'SC', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(195, 'Sierra Leone', '+232', 'SL', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(196, 'Singapore', '+65', 'SG', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(197, 'Slovakia', '+421', 'SK', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(198, 'Slovenia', '+386', 'SI', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(199, 'Solomon Islands', '+677', 'SB', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(200, 'Somalia', '+252', 'SO', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(201, 'South Africa', '+27', 'ZA', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(202, 'South Sudan', '+211', 'SS', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(203, 'South Georgia and the South Sandwich Islands', '+500', 'GS', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(204, 'Spain', '+34', 'ES', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(205, 'Sri Lanka', '+94', 'LK', '2022-10-21 23:33:03', '2022-10-21 23:33:03'),
(206, 'Sudan', '+249', 'SD', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(207, 'Suriname', '+597', 'SR', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(208, 'Svalbard and Jan Mayen', '+47', 'SJ', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(209, 'Swaziland', '+268', 'SZ', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(210, 'Sweden', '+46', 'SE', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(211, 'Switzerland', '+41', 'CH', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(212, 'Syrian Arab Republic', '+963', 'SY', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(213, 'Taiwan', '+886', 'TW', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(214, 'Tajikistan', '+992', 'TJ', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(215, 'Tanzania, United Republic of Tanzania', '+255', 'TZ', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(216, 'Thailand', '+66', 'TH', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(217, 'Timor-Leste', '+670', 'TL', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(218, 'Togo', '+228', 'TG', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(219, 'Tokelau', '+690', 'TK', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(220, 'Tonga', '+676', 'TO', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(221, 'Trinidad and Tobago', '+1868', 'TT', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(222, 'Tunisia', '+216', 'TN', '2022-10-21 23:33:04', '2022-10-21 23:33:04'),
(223, 'Turkey', '+90', 'TR', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(224, 'Turkmenistan', '+993', 'TM', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(225, 'Turks and Caicos Islands', '+1649', 'TC', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(226, 'Tuvalu', '+688', 'TV', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(227, 'Uganda', '+256', 'UG', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(228, 'Ukraine', '+380', 'UA', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(229, 'United Arab Emirates', '+971', 'AE', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(230, 'United Kingdom', '+44', 'GB', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(231, 'United States', '+1', 'US', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(232, 'Uruguay', '+598', 'UY', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(233, 'Uzbekistan', '+998', 'UZ', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(234, 'Vanuatu', '+678', 'VU', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(235, 'Venezuela, Bolivarian Republic of Venezuela', '+58', 'VE', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(236, 'Vietnam', '+84', 'VN', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(237, 'Virgin Islands, British', '+1284', 'VG', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(238, 'Virgin Islands, U.S.', '+1340', 'VI', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(239, 'Wallis and Futuna', '+681', 'WF', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(240, 'Yemen', '+967', 'YE', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(241, 'Zambia', '+260', 'ZM', '2022-10-21 23:33:05', '2022-10-21 23:33:05'),
(242, 'Zimbabwe', '+263', 'ZW', '2022-10-21 23:33:05', '2022-10-21 23:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Engineering', '2022-10-21 23:37:18', '2022-10-21 23:37:18'),
(2, 'Medical', '2022-10-21 23:37:23', '2022-10-21 23:37:23'),
(3, 'Science', '2022-10-21 23:37:29', '2022-10-21 23:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `zip_code` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_20_234118_create_countries_table', 1),
(6, '2022_10_20_234128_create_states_table', 1),
(7, '2022_10_20_234135_create_cities_table', 1),
(8, '2022_10_20_234148_create_departments_table', 1),
(9, '2022_10_20_234156_create_employees_table', 1);

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
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 19, 'Dhaka Division', '2022-10-21 23:34:13', '2022-10-21 23:34:13'),
(2, 19, 'Khulna Division', '2022-10-21 23:34:23', '2022-10-21 23:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `last_name`, `first_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'johndoe', 'Doe', 'John', 'johndoe@gmail.com', NULL, '$2y$10$rcSLnjkMUM4X6W6wZ9L7B.j61zHl9Y2wy8GbjJSxMu9fgv9qCz8IK', NULL, '2022-10-21 23:33:39', '2022-10-21 23:33:39'),
(2, 'mamun', 'Al Mamun', 'Abdullah', 'mamun@gmail.com', NULL, '$2y$10$p71FxzWSJjhbF8SPE4/zNOnPBein0qS9oIicjMpOzs3KoUb9x7s82', NULL, '2022-10-21 23:35:23', '2022-10-21 23:35:23'),
(3, 'moana', 'Maherin', 'Moana', 'moana@gmail.com', NULL, '$2y$10$bwwGeeisgxzCx4UzsuDQ0utSXoCOagCyyG5EvnvId16ytT/mpt.pS', NULL, '2022-10-21 23:35:44', '2022-10-21 23:36:29'),
(5, 'laz', 'Laz', 'Sabiha', 'laz@gmail.com', NULL, '$2y$10$f97y0Gk50zgISpcvqBFaaelj7g27hXfgWTDfkHvxxUtOsnNlsqXQS', NULL, '2022-10-21 23:36:50', '2022-10-21 23:36:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_department_id_foreign` (`department_id`),
  ADD KEY `employees_country_id_foreign` (`country_id`),
  ADD KEY `employees_state_id_foreign` (`state_id`),
  ADD KEY `employees_city_id_foreign` (`city_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `employees_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `employees_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `employees_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
