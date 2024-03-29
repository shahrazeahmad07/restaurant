-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2020 at 01:10 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_currencies`
--

CREATE TABLE `tbl_admin_currencies` (
  `id` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `symbol` varchar(25) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin_currencies`
--

INSERT INTO `tbl_admin_currencies` (`id`, `country`, `currency`, `code`, `symbol`, `del_status`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek', 'Live'),
(2, 'America', 'Dollars', 'USD', '$', 'Live'),
(3, 'Afghanistan', 'Afghanis', 'AF', '؋', 'Live'),
(4, 'Argentina', 'Pesos', 'ARS', '$', 'Live'),
(5, 'Aruba', 'Guilders', 'AWG', 'ƒ', 'Live'),
(6, 'Australia', 'Dollars', 'AUD', '$', 'Live'),
(7, 'Azerbaijan', 'New Manats', 'AZ', 'ман', 'Live'),
(8, 'Bahamas', 'Dollars', 'BSD', '$', 'Live'),
(9, 'Barbados', 'Dollars', 'BBD', '$', 'Live'),
(10, 'Belarus', 'Rubles', 'BYR', 'p.', 'Live'),
(11, 'Belgium', 'Euro', 'EUR', '€', 'Live'),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$', 'Live'),
(13, 'Bermuda', 'Dollars', 'BMD', '$', 'Live'),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b', 'Live'),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', 'Live'),
(16, 'Botswana', 'Pula\'s', 'BWP', 'P', 'Live'),
(17, 'Bulgaria', 'Leva', 'BG', 'лв', 'Live'),
(18, 'Brazil', 'Reais', 'BRL', 'R$', 'Live'),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£', 'Live'),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$', 'Live'),
(21, 'Cambodia', 'Riels', 'KHR', '៛', 'Live'),
(22, 'Canada', 'Dollars', 'CAD', '$', 'Live'),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$', 'Live'),
(24, 'Chile', 'Pesos', 'CLP', '$', 'Live'),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥', 'Live'),
(26, 'Colombia', 'Pesos', 'COP', '$', 'Live'),
(27, 'Costa Rica', 'Colón', 'CRC', '₡', 'Live'),
(28, 'Croatia', 'Kuna', 'HRK', 'kn', 'Live'),
(29, 'Cuba', 'Pesos', 'CUP', '₱', 'Live'),
(30, 'Cyprus', 'Euro', 'EUR', '€', 'Live'),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', 'Live'),
(32, 'Denmark', 'Kroner', 'DKK', 'kr', 'Live'),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', 'Live'),
(34, 'East Caribbean', 'Dollars', 'XCD', '$', 'Live'),
(35, 'Egypt', 'Pounds', 'EGP', '£', 'Live'),
(36, 'El Salvador', 'Colones', 'SVC', '$', 'Live'),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', '£', 'Live'),
(38, 'Euro', 'Euro', 'EUR', '€', 'Live'),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£', 'Live'),
(40, 'Fiji', 'Dollars', 'FJD', '$', 'Live'),
(41, 'France', 'Euro', 'EUR', '€', 'Live'),
(42, 'Ghana', 'Cedis', 'GHC', '¢', 'Live'),
(43, 'Gibraltar', 'Pounds', 'GIP', '£', 'Live'),
(44, 'Greece', 'Euro', 'EUR', '€', 'Live'),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', 'Live'),
(46, 'Guernsey', 'Pounds', 'GGP', '£', 'Live'),
(47, 'Guyana', 'Dollars', 'GYD', '$', 'Live'),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', '€', 'Live'),
(49, 'Honduras', 'Lempiras', 'HNL', 'L', 'Live'),
(50, 'Hong Kong', 'Dollars', 'HKD', '$', 'Live'),
(51, 'Hungary', 'Forint', 'HUF', 'Ft', 'Live'),
(52, 'Iceland', 'Kronur', 'ISK', 'kr', 'Live'),
(53, 'India', 'Rupees', 'INR', 'Rp', 'Live'),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', 'Live'),
(55, 'Iran', 'Rials', 'IRR', '﷼', 'Live'),
(56, 'Ireland', 'Euro', 'EUR', '€', 'Live'),
(57, 'Isle of Man', 'Pounds', 'IMP', '£', 'Live'),
(58, 'Israel', 'New Shekels', 'ILS', '₪', 'Live'),
(59, 'Italy', 'Euro', 'EUR', '€', 'Live'),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$', 'Live'),
(61, 'Japan', 'Yen', 'JPY', '¥', 'Live'),
(62, 'Jersey', 'Pounds', 'JEP', '£', 'Live'),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', 'Live'),
(64, 'Korea (North)', 'Won', 'KPW', '₩', 'Live'),
(65, 'Korea (South)', 'Won', 'KRW', '₩', 'Live'),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', 'Live'),
(67, 'Laos', 'Kips', 'LAK', '₭', 'Live'),
(68, 'Latvia', 'Lati', 'LVL', 'Ls', 'Live'),
(69, 'Lebanon', 'Pounds', 'LBP', '£', 'Live'),
(70, 'Liberia', 'Dollars', 'LRD', '$', 'Live'),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', 'Live'),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt', 'Live'),
(73, 'Luxembourg', 'Euro', 'EUR', '€', 'Live'),
(74, 'Macedonia', 'Denars', 'MKD', 'ден', 'Live'),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM', 'Live'),
(76, 'Malta', 'Euro', 'EUR', '€', 'Live'),
(77, 'Mauritius', 'Rupees', 'MUR', '₨', 'Live'),
(78, 'Mexico', 'Pesos', 'MX', '$', 'Live'),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮', 'Live'),
(80, 'Mozambique', 'Meticais', 'MZ', 'MT', 'Live'),
(81, 'Namibia', 'Dollars', 'NAD', '$', 'Live'),
(82, 'Nepal', 'Rupees', 'NPR', '₨', 'Live'),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', 'Live'),
(84, 'Netherlands', 'Euro', 'EUR', '€', 'Live'),
(85, 'New Zealand', 'Dollars', 'NZD', '$', 'Live'),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', 'Live'),
(87, 'Nigeria', 'Nairas', 'NG', '₦', 'Live'),
(88, 'North Korea', 'Won', 'KPW', '₩', 'Live'),
(89, 'Norway', 'Krone', 'NOK', 'kr', 'Live'),
(90, 'Oman', 'Rials', 'OMR', '﷼', 'Live'),
(91, 'Pakistan', 'Rupees', 'PKR', '₨', 'Live'),
(92, 'Panama', 'Balboa', 'PAB', 'B/.', 'Live'),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs', 'Live'),
(94, 'Peru', 'Nuevos Soles', 'PE', 'S/.', 'Live'),
(95, 'Philippines', 'Pesos', 'PHP', 'Php', 'Live'),
(96, 'Poland', 'Zlotych', 'PL', 'zł', 'Live'),
(97, 'Qatar', 'Rials', 'QAR', '﷼', 'Live'),
(98, 'Romania', 'New Lei', 'RO', 'lei', 'Live'),
(99, 'Russia', 'Rubles', 'RUB', 'руб', 'Live'),
(100, 'Saint Helena', 'Pounds', 'SHP', '£', 'Live'),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', 'Live'),
(102, 'Serbia', 'Dinars', 'RSD', 'Дин.', 'Live'),
(103, 'Seychelles', 'Rupees', 'SCR', '₨', 'Live'),
(104, 'Singapore', 'Dollars', 'SGD', '$', 'Live'),
(105, 'Slovenia', 'Euro', 'EUR', '€', 'Live'),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$', 'Live'),
(107, 'Somalia', 'Shillings', 'SOS', 'S', 'Live'),
(108, 'South Africa', 'Rand', 'ZAR', 'R', 'Live'),
(109, 'South Korea', 'Won', 'KRW', '₩', 'Live'),
(110, 'Spain', 'Euro', 'EUR', '€', 'Live'),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₨', 'Live'),
(112, 'Sweden', 'Kronor', 'SEK', 'kr', 'Live'),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF', 'Live'),
(114, 'Suriname', 'Dollars', 'SRD', '$', 'Live'),
(115, 'Syria', 'Pounds', 'SYP', '£', 'Live'),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', 'Live'),
(117, 'Thailand', 'Baht', 'THB', '฿', 'Live'),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', 'Live'),
(119, 'Turkey', 'Lira', 'TRY', 'TL', 'Live'),
(120, 'Turkey', 'Liras', 'TRL', '£', 'Live'),
(121, 'Tuvalu', 'Dollars', 'TVD', '$', 'Live'),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴', 'Live'),
(123, 'United Kingdom', 'Pounds', 'GBP', '£', 'Live'),
(124, 'United States of America', 'Dollars', 'USD', '$', 'Live'),
(125, 'Uruguay', 'Pesos', 'UYU', '$U', 'Live'),
(126, 'Uzbekistan', 'Sums', 'UZS', 'лв', 'Live'),
(127, 'Vatican City', 'Euro', 'EUR', '€', 'Live'),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', 'Live'),
(129, 'Vietnam', 'Dong', 'VND', '₫', 'Live'),
(130, 'Yemen', 'Rials', 'YER', '﷼', 'Live'),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', 'Live'),
(132, 'Bangladesh', 'Bangladeshi Taka', 'BDT', '৳', 'Live'),
(133, 'Kuwait ', 'KWD', 'KWD', 'KWD', 'Live'),
(134, 'Pakistan', 'Pakistani rupee', 'PKR', 'RS', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_user_menus`
--

CREATE TABLE `tbl_admin_user_menus` (
  `id` int(10) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `controller_name` varchar(50) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin_user_menus`
--

INSERT INTO `tbl_admin_user_menus` (`id`, `menu_name`, `controller_name`, `del_status`) VALUES
(1, 'Sale', 'Sale', 'Live'),
(2, 'Purchase', 'Purchase', 'Live'),
(3, 'Inventory', 'Inventory', 'Live'),
(4, 'Waste', 'Waste', 'Live'),
(6, 'Expense', 'Expense', 'Live'),
(7, 'Report', 'Report', 'Live'),
(8, 'Dashboard', 'Dashboard', 'Live'),
(9, 'Master', 'Master', 'Live'),
(10, 'User', 'User', 'Live'),
(11, 'Supplier Payment', 'SupplierPayment', 'Live'),
(13, 'Inventory Adjustment', 'Inventory_adjustment', 'Live'),
(14, 'Short Message Service', 'Short_message_service', 'Live'),
(15, 'Customer Due Receive', 'Customer_due_receive', 'Live'),
(16, 'Attendance', 'Attendance', 'Live'),
(17, 'Bar', 'Bar', 'Live'),
(18, 'Kitchen', 'Kitchen', 'Live'),
(19, 'Waiter', 'Waiter', 'Live'),
(20, 'Waiter Pos', 'WaiterPos', 'Live'),
(21, 'back2', 'Backup', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(10) NOT NULL,
  `reference_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `reference_no`, `employee_id`, `date`, `in_time`, `out_time`, `note`, `user_id`, `company_id`, `del_status`) VALUES
(1, '000001', NULL, '2018-12-12', '20:16:56', '23:30:00', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_companies`
--

CREATE TABLE `tbl_companies` (
  `id` int(10) NOT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) DEFAULT NULL,
  `outlet_id` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_companies`
--

INSERT INTO `tbl_companies` (`id`, `currency`, `timezone`, `date_format`, `outlet_id`) VALUES
(1, '৳', 'Asia/Dhaka', 'd/m/Y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `gst_number` varchar(50) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `date_of_birth` date DEFAULT NULL,
  `date_of_anniversary` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `name`, `phone`, `email`, `address`, `gst_number`, `area_id`, `user_id`, `company_id`, `del_status`, `date_of_birth`, `date_of_anniversary`) VALUES
(1, 'Walk-in Customer', '', NULL, NULL, NULL, 0, 1, 1, 'Live', NULL, NULL),
(2, 'fawad khan', '92123123', '', 'multan', '', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(3, 'afaq khan', '03334568490', 'theprofexo@gmail.com', 'Naka chowk', '', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(4, 'afaq ali', '03334568490', '', '', '', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_due_receives`
--

CREATE TABLE `tbl_customer_due_receives` (
  `id` int(10) NOT NULL,
  `reference_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `only_date` date DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses`
--

CREATE TABLE `tbl_expenses` (
  `id` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_items`
--

CREATE TABLE `tbl_expense_items` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus`
--

CREATE TABLE `tbl_food_menus` (
  `id` int(10) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `sale_price` float(10,2) DEFAULT NULL,
  `tax_information` text,
  `vat_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `veg_item` varchar(50) DEFAULT 'Veg No',
  `beverage_item` varchar(50) DEFAULT 'Beverage No',
  `bar_item` varchar(50) DEFAULT 'Bar No',
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_food_menus`
--

INSERT INTO `tbl_food_menus` (`id`, `code`, `name`, `category_id`, `description`, `sale_price`, `tax_information`, `vat_id`, `user_id`, `company_id`, `photo`, `veg_item`, `beverage_item`, `bar_item`, `del_status`) VALUES
(1, '001', 'Pizza', 1, '', 500.00, '[]', NULL, 1, 1, '703fff804b28df5c69c9cc03b5ccfa38.jpg', 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(2, '002', 'chicken', 3, '', 150.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage Yes', 'Bar No', 'Live'),
(3, '003', 'small piza', 1, 'paper fund', 150.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage Yes', 'Bar No', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus_ingredients`
--

CREATE TABLE `tbl_food_menus_ingredients` (
  `id` bigint(50) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `food_menu_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_food_menus_ingredients`
--

INSERT INTO `tbl_food_menus_ingredients` (`id`, `ingredient_id`, `consumption`, `food_menu_id`, `user_id`, `company_id`, `del_status`) VALUES
(1, 2, 0.50, 1, 1, 1, 'Live'),
(2, 1, 0.01, 1, 1, 1, 'Live'),
(3, 2, 2.00, 2, 1, 1, 'Live'),
(4, 2, 2.00, 3, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus_modifiers`
--

CREATE TABLE `tbl_food_menus_modifiers` (
  `id` bigint(50) NOT NULL,
  `modifier_id` int(10) DEFAULT NULL,
  `food_menu_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menu_categories`
--

CREATE TABLE `tbl_food_menu_categories` (
  `id` int(10) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food_menu_categories`
--

INSERT INTO `tbl_food_menu_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Fast Food', '', 1, 1, 'Live'),
(2, 'BAR B.Q', '', 1, 1, 'Live'),
(3, 'Chicken', '', 1, 1, 'Live'),
(4, 'Drinks', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds`
--

CREATE TABLE `tbl_holds` (
  `id` int(10) NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `hold_no` varchar(30) NOT NULL DEFAULT '000000',
  `total_items` int(10) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` double(10,2) DEFAULT NULL,
  `due_payment_date` date DEFAULT NULL,
  `disc` varchar(50) DEFAULT NULL,
  `disc_actual` float(10,2) DEFAULT NULL,
  `vat` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `payment_method_id` int(10) DEFAULT NULL,
  `table_id` int(10) DEFAULT NULL,
  `total_item_discount_amount` float(10,2) NOT NULL,
  `sub_total_with_discount` float(10,2) NOT NULL,
  `sub_total_discount_amount` float(10,2) NOT NULL,
  `total_discount_amount` float(10,2) NOT NULL,
  `delivery_charge` float(10,2) NOT NULL,
  `sub_total_discount_value` varchar(10) NOT NULL,
  `sub_total_discount_type` varchar(20) NOT NULL,
  `token_no` varchar(50) DEFAULT NULL,
  `sale_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_time` varchar(15) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `waiter_id` int(10) DEFAULT '0',
  `outlet_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) DEFAULT NULL COMMENT '1=new order, 2=cancelled order, 3=invoiced order',
  `sale_vat_objects` text,
  `order_type` tinyint(1) DEFAULT NULL COMMENT '1=dine in, 2 = take away, 3 = delivery',
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_holds`
--

INSERT INTO `tbl_holds` (`id`, `customer_id`, `hold_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `due_payment_date`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `token_no`, `sale_date`, `date_time`, `sale_time`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `sale_vat_objects`, `order_type`, `del_status`) VALUES
(1, '', '1', 1, 500.00, NULL, NULL, NULL, NULL, NULL, 0.00, 500.00, NULL, 0, 0.00, 500.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2019-11-13', '2019-11-13 09:03:43', '2019-11-13 02:0', 3, 0, 1, 1, '[]', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds_details`
--

CREATE TABLE `tbl_holds_details` (
  `id` int(10) NOT NULL,
  `food_menu_id` int(10) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `menu_price_without_discount` float(10,2) NOT NULL,
  `menu_price_with_discount` float(10,2) NOT NULL,
  `menu_unit_price` float(10,2) NOT NULL,
  `menu_vat_percentage` float(10,2) NOT NULL,
  `menu_taxes` text,
  `menu_discount_value` varchar(20) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL,
  `menu_note` varchar(150) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `holds_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_holds_details`
--

INSERT INTO `tbl_holds_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `holds_id`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 1, 'Pizza (001)', 1, 500.00, 500.00, 500.00, 0.00, '[]', '0', 'plain', '', 0.00, 1, 3, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds_details_modifiers`
--

CREATE TABLE `tbl_holds_details_modifiers` (
  `id` int(15) NOT NULL,
  `modifier_id` int(15) NOT NULL,
  `modifier_price` float(10,2) NOT NULL,
  `food_menu_id` int(10) NOT NULL,
  `holds_id` int(15) NOT NULL,
  `holds_details_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `customer_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ingredients`
--

CREATE TABLE `tbl_ingredients` (
  `id` int(10) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `purchase_price` float(10,2) DEFAULT NULL,
  `alert_quantity` float(10,2) DEFAULT NULL,
  `unit_id` int(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_ingredients`
--

INSERT INTO `tbl_ingredients` (`id`, `code`, `name`, `category_id`, `purchase_price`, `alert_quantity`, `unit_id`, `user_id`, `company_id`, `del_status`) VALUES
(1, '001', 'Salt', 1, 100.00, 1.00, 1, 1, 1, 'Live'),
(2, '002', 'Cheese', 1, 200.00, 2.00, 1, 1, 1, 'Live'),
(3, '003', 'chicken', 2, 123.00, 2.00, 3, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ingredient_categories`
--

CREATE TABLE `tbl_ingredient_categories` (
  `id` int(10) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_ingredient_categories`
--

INSERT INTO `tbl_ingredient_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Cooking Item', '', 1, 1, 'Live'),
(2, 'test', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_adjustment`
--

CREATE TABLE `tbl_inventory_adjustment` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_adjustment_ingredients`
--

CREATE TABLE `tbl_inventory_adjustment_ingredients` (
  `id` int(10) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption_amount` float(10,2) DEFAULT NULL,
  `inventory_adjustment_id` int(10) DEFAULT NULL,
  `consumption_status` enum('Plus','Minus','','') DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modifiers`
--

CREATE TABLE `tbl_modifiers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modifier_ingredients`
--

CREATE TABLE `tbl_modifier_ingredients` (
  `id` bigint(50) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `modifier_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `id` bigint(50) NOT NULL,
  `notification` text NOT NULL,
  `outlet_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_bar_kitchen_panel`
--

CREATE TABLE `tbl_notification_bar_kitchen_panel` (
  `id` int(15) NOT NULL,
  `notification` text NOT NULL,
  `outlet_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notification_bar_kitchen_panel`
--

INSERT INTO `tbl_notification_bar_kitchen_panel` (`id`, `notification`, `outlet_id`) VALUES
(1, 'Order:A 000016 has been modified', 1),
(2, 'Order:A 000016 has been modified', 1),
(3, 'Order:A 000017 has been modified', 1),
(4, 'Order:A 000033 has been modified', 1),
(5, 'Order:A 000034 has been modified', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders_table`
--

CREATE TABLE `tbl_orders_table` (
  `id` bigint(50) NOT NULL,
  `persons` int(5) NOT NULL,
  `booking_time` datetime NOT NULL,
  `sale_id` int(10) NOT NULL,
  `sale_no` varchar(20) NOT NULL,
  `outlet_id` int(10) NOT NULL,
  `table_id` int(10) NOT NULL,
  `del_status` varchar(20) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_orders_table`
--

INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES
(1, 2, '2019-11-13 13:31:46', 2, '000002', 1, 1, 'Deleted'),
(2, 4, '2019-11-13 13:31:46', 2, '000002', 1, 2, 'Deleted'),
(5, 4, '2019-11-13 13:37:55', 8, '000008', 1, 2, 'Deleted'),
(6, 3, '2019-11-13 15:31:11', 10, '000010', 1, 1, 'Deleted'),
(7, 2, '2019-12-18 18:25:24', 14, '000014', 1, 1, 'Deleted'),
(8, 3, '2019-12-19 19:42:48', 16, '000016', 1, 1, 'Deleted'),
(9, 1, '2019-12-22 00:26:36', 17, '000017', 1, 3, 'Deleted'),
(10, 3, '2020-01-11 16:14:42', 31, '000031', 1, 1, 'Deleted'),
(13, 1, '2020-01-16 13:00:44', 35, '000035', 1, 2, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outlets`
--

CREATE TABLE `tbl_outlets` (
  `id` int(10) NOT NULL,
  `outlet_name` varchar(50) DEFAULT NULL,
  `outlet_code` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `invoice_print` enum('Yes','No') DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `invoice_footer` varchar(500) DEFAULT NULL,
  `collect_tax` varchar(10) DEFAULT NULL,
  `tax_title` varchar(10) DEFAULT NULL,
  `tax_registration_no` varchar(30) DEFAULT NULL,
  `tax_is_gst` varchar(10) NOT NULL,
  `state_code` varchar(10) DEFAULT NULL,
  `pre_or_post_payment` varchar(500) DEFAULT 'Post Payment',
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_outlets`
--

INSERT INTO `tbl_outlets` (`id`, `outlet_name`, `outlet_code`, `address`, `phone`, `invoice_print`, `starting_date`, `invoice_footer`, `collect_tax`, `tax_title`, `tax_registration_no`, `tax_is_gst`, `state_code`, `pre_or_post_payment`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'HANGRY RESTAURANT', '000001', 'Gulghast Mall', '(210) 224-1313', 'Yes', '2018-02-18', 'Thank you for visiting us!', 'No', '', '', 'No', '', 'Post Payment', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outlet_taxes`
--

CREATE TABLE `tbl_outlet_taxes` (
  `id` int(15) NOT NULL,
  `tax` varchar(50) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `company_id` int(15) NOT NULL,
  `del_status` varchar(100) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_methods`
--

CREATE TABLE `tbl_payment_methods` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment_methods`
--

INSERT INTO `tbl_payment_methods` (`id`, `name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(3, 'Cash', '', 1, 1, 'Deleted'),
(4, 'Card', '', 1, 1, 'Live'),
(5, 'Paypal', '', 1, 1, 'Deleted'),
(6, 'Cash', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `id` int(10) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `supplier_id` int(10) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  `subtotal` float(10,2) DEFAULT NULL,
  `other` float(10,2) DEFAULT NULL,
  `grand_total` float(10,2) DEFAULT NULL,
  `paid` float(10,2) DEFAULT NULL,
  `due` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`id`, `reference_no`, `supplier_id`, `date`, `subtotal`, `other`, `grand_total`, `paid`, `due`, `note`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, '000001', 1, '2019-11-14', NULL, NULL, 1000.00, 1000.00, 0.00, NULL, 1, 1, 'Live'),
(2, '000002', 2, '2019-11-13', NULL, NULL, 2000.00, 2000.00, 0.00, NULL, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_ingredients`
--

CREATE TABLE `tbl_purchase_ingredients` (
  `id` int(10) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `unit_price` float(10,2) DEFAULT NULL,
  `quantity_amount` float(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `purchase_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchase_ingredients`
--

INSERT INTO `tbl_purchase_ingredients` (`id`, `ingredient_id`, `unit_price`, `quantity_amount`, `total`, `purchase_id`, `outlet_id`, `del_status`) VALUES
(1, 1, 10.00, 100.00, 1000.00, 1, 1, 'Live'),
(2, 2, 10.00, 200.00, 2000.00, 2, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `id` int(15) NOT NULL,
  `opening_balance` float(10,2) NOT NULL,
  `closing_balance` float(10,2) NOT NULL,
  `opening_balance_date_time` datetime NOT NULL,
  `closing_balance_date_time` datetime NOT NULL,
  `sale_paid_amount` float(10,2) NOT NULL,
  `customer_due_receive` float(10,2) NOT NULL,
  `payment_methods_sale` text NOT NULL,
  `register_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=open,2=closed',
  `user_id` int(15) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `company_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES
(38, 0.00, 0.00, '2020-01-11 21:13:28', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(39, 0.00, 0.00, '2020-01-11 00:00:00', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 23, 1, 1),
(40, 0.00, 0.00, '2020-01-13 19:16:59', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(41, 0.00, 0.00, '2020-01-15 13:03:18', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(42, 0.00, 0.00, '2020-01-16 12:41:55', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `id` int(10) NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `sale_no` varchar(30) NOT NULL DEFAULT '000000',
  `total_items` int(10) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` float(10,2) DEFAULT NULL,
  `disc` varchar(50) DEFAULT NULL,
  `disc_actual` float(10,2) DEFAULT NULL,
  `vat` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `payment_method_id` int(10) DEFAULT NULL,
  `close_time` time NOT NULL,
  `table_id` int(10) DEFAULT NULL,
  `total_item_discount_amount` float(10,2) NOT NULL,
  `sub_total_with_discount` float(10,2) NOT NULL,
  `sub_total_discount_amount` float(10,2) NOT NULL,
  `total_discount_amount` float(10,2) NOT NULL,
  `delivery_charge` float(10,2) NOT NULL,
  `sub_total_discount_value` varchar(10) NOT NULL,
  `sub_total_discount_type` varchar(20) NOT NULL,
  `sale_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_time` time NOT NULL,
  `cooking_start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cooking_done_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `user_id` int(10) DEFAULT NULL,
  `waiter_id` int(10) NOT NULL DEFAULT '0',
  `outlet_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order, 2=invoiced order, 3=closed order',
  `order_type` tinyint(1) NOT NULL COMMENT '1=dine in, 2 = take away, 3 = delivery',
  `del_status` varchar(50) DEFAULT 'Live',
  `sale_vat_objects` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sales`
--

INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES
(35, '4', '000035', 3, 950.00, NULL, NULL, NULL, NULL, 0.00, 950.00, NULL, '00:00:00', NULL, 0.00, 950.00, 0.00, 0.00, 0.00, '', 'plain', '2020-01-16', '2020-01-16 08:00:44', '13:00:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 20, 1, 1, 1, 'Live', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_details`
--

CREATE TABLE `tbl_sales_details` (
  `id` bigint(50) NOT NULL,
  `food_menu_id` int(10) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `menu_price_without_discount` float(10,2) NOT NULL,
  `menu_price_with_discount` float(10,2) NOT NULL,
  `menu_unit_price` float(10,2) NOT NULL,
  `menu_vat_percentage` float(10,2) NOT NULL,
  `menu_taxes` text,
  `menu_discount_value` varchar(20) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL,
  `menu_note` varchar(150) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `cooking_status` varchar(30) DEFAULT NULL,
  `cooking_start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cooking_done_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `previous_id` bigint(50) NOT NULL,
  `sales_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sales_details`
--

INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES
(93, 3, 'small piza (003)', 2, 300.00, 300.00, 150.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 93, 35, 0, 1, 1, 'Live'),
(94, 1, 'Pizza (001)', 1, 500.00, 500.00, 500.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 94, 35, 0, 1, 1, 'Live'),
(95, 2, 'chicken (002)', 1, 150.00, 150.00, 150.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 95, 35, 0, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_details_modifiers`
--

CREATE TABLE `tbl_sales_details_modifiers` (
  `id` bigint(50) NOT NULL,
  `modifier_id` int(15) NOT NULL,
  `modifier_price` float(10,2) NOT NULL,
  `food_menu_id` int(10) NOT NULL,
  `sales_id` int(15) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `sales_details_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `customer_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_consumptions`
--

CREATE TABLE `tbl_sale_consumptions` (
  `id` bigint(50) NOT NULL,
  `sale_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sale_consumptions`
--

INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 1, 0, 1, 1, 'Live'),
(2, 2, 0, 1, 1, 'Live'),
(8, 8, 0, 1, 1, 'Live'),
(9, 9, 0, 1, 1, 'Live'),
(10, 10, 0, 1, 1, 'Live'),
(11, 11, 0, 1, 1, 'Live'),
(12, 12, 0, 1, 1, 'Live'),
(13, 13, 0, 1, 1, 'Live'),
(14, 14, 0, 1, 1, 'Live'),
(15, 15, 0, 3, 1, 'Live'),
(18, 16, 0, 1, 1, 'Live'),
(20, 17, 0, 1, 1, 'Live'),
(21, 18, 0, 1, 1, 'Live'),
(22, 19, 0, 1, 1, 'Live'),
(23, 20, 0, 1, 1, 'Live'),
(24, 21, 0, 1, 1, 'Live'),
(25, 22, 0, 1, 1, 'Live'),
(26, 23, 0, 1, 1, 'Live'),
(27, 24, 0, 1, 1, 'Live'),
(28, 25, 0, 1, 1, 'Live'),
(29, 26, 0, 1, 1, 'Live'),
(30, 27, 0, 1, 1, 'Live'),
(31, 28, 0, 1, 1, 'Live'),
(32, 29, 0, 1, 1, 'Live'),
(33, 30, 0, 3, 1, 'Live'),
(34, 31, 0, 12, 1, 'Live'),
(35, 32, 0, 1, 1, 'Live'),
(37, 33, 0, 1, 1, 'Live'),
(40, 35, 0, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_consumptions_of_menus`
--

CREATE TABLE `tbl_sale_consumptions_of_menus` (
  `id` bigint(50) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `sale_consumption_id` int(10) DEFAULT NULL,
  `sales_id` int(10) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `food_menu_id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sale_consumptions_of_menus`
--

INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 2, 0.50, 1, 1, 0, 1, 1, 1, 'Live'),
(2, 1, 0.01, 1, 1, 0, 1, 1, 1, 'Live'),
(3, 2, 0.50, 2, 2, 0, 1, 1, 1, 'Live'),
(4, 1, 0.01, 2, 2, 0, 1, 1, 1, 'Live'),
(15, 2, 0.50, 8, 8, 0, 1, 1, 1, 'Live'),
(16, 1, 0.01, 8, 8, 0, 1, 1, 1, 'Live'),
(17, 2, 0.50, 9, 9, 0, 1, 1, 1, 'Live'),
(18, 2, 0.50, 37, 33, 0, 1, 1, 1, 'Live'),
(19, 1, 0.01, 37, 33, 0, 1, 1, 1, 'Live'),
(20, 2, 1.00, 37, 33, 0, 1, 1, 1, 'Live'),
(21, 1, 0.02, 37, 33, 0, 1, 1, 1, 'Live'),
(31, 2, 4.00, 40, 35, 0, 3, 1, 1, 'Live'),
(32, 2, 0.50, 40, 35, 0, 1, 1, 1, 'Live'),
(33, 1, 0.01, 40, 35, 0, 1, 1, 1, 'Live'),
(34, 2, 2.00, 40, 35, 0, 2, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_consumptions_of_modifiers_of_menus`
--

CREATE TABLE `tbl_sale_consumptions_of_modifiers_of_menus` (
  `id` bigint(50) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `sale_consumption_id` int(10) DEFAULT NULL,
  `sales_id` int(10) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `food_menu_id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `date_format` varchar(20) DEFAULT NULL,
  `time_zone` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `date_format`, `time_zone`, `currency`, `company_id`, `del_status`) VALUES
(4, 'd/m/Y', 'Asia/Karachi', 'PKR', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_settings`
--

CREATE TABLE `tbl_sms_settings` (
  `id` int(11) NOT NULL,
  `email_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sms_settings`
--

INSERT INTO `tbl_sms_settings` (`id`, `email_address`, `password`, `company_id`, `del_status`) VALUES
(1, '', '', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suppliers`
--

CREATE TABLE `tbl_suppliers` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_suppliers`
--

INSERT INTO `tbl_suppliers` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Sup1', '12345', '123123', 'sub', '', '', 1, 1, 'Live'),
(2, 'cheese supplier', '12312', '123123', '', '', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier_payments`
--

CREATE TABLE `tbl_supplier_payments` (
  `id` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tables`
--

CREATE TABLE `tbl_tables` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sit_capacity` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tables`
--

INSERT INTO `tbl_tables` (`id`, `name`, `sit_capacity`, `position`, `description`, `user_id`, `outlet_id`, `company_id`, `del_status`) VALUES
(1, 'Table 1', '3', 'Front hall', '', 1, 1, 1, 'Live'),
(2, 'Table 2', '4', 'Front hall', '', 1, 1, 1, 'Live'),
(3, 'Table 3', '6', 'Front hall', '', 1, 1, 1, 'Live'),
(4, 'Family Table', '4', 'Family Hall/Upper Hall', '', 1, 1, 1, 'Live'),
(5, 'Family Table 2', '10', 'Family Hall/Upper Hall', '', 1, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_kot`
--

CREATE TABLE `tbl_temp_kot` (
  `id` int(10) NOT NULL,
  `temp_kot_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_time_zone`
--

CREATE TABLE `tbl_time_zone` (
  `id` int(10) NOT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `zone_name` varchar(35) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_time_zone`
--

INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES
(1, 'AD', 'Europe/Andorra', 'Live'),
(2, 'AE', 'Asia/Dubai', 'Live'),
(3, 'AF', 'Asia/Kabul', 'Live'),
(4, 'AG', 'America/Antigua', 'Live'),
(5, 'AI', 'America/Anguilla', 'Live'),
(6, 'AL', 'Europe/Tirane', 'Live'),
(7, 'AM', 'Asia/Yerevan', 'Live'),
(8, 'AO', 'Africa/Luanda', 'Live'),
(9, 'AQ', 'Antarctica/McMurdo', 'Live'),
(10, 'AQ', 'Antarctica/Casey', 'Live'),
(11, 'AQ', 'Antarctica/Davis', 'Live'),
(12, 'AQ', 'Antarctica/DumontDUrville', 'Live'),
(13, 'AQ', 'Antarctica/Mawson', 'Live'),
(14, 'AQ', 'Antarctica/Palmer', 'Live'),
(15, 'AQ', 'Antarctica/Rothera', 'Live'),
(16, 'AQ', 'Antarctica/Syowa', 'Live'),
(17, 'AQ', 'Antarctica/Troll', 'Live'),
(18, 'AQ', 'Antarctica/Vostok', 'Live'),
(19, 'AR', 'America/Argentina/Buenos_Aires', 'Live'),
(20, 'AR', 'America/Argentina/Cordoba', 'Live'),
(21, 'AR', 'America/Argentina/Salta', 'Live'),
(22, 'AR', 'America/Argentina/Jujuy', 'Live'),
(23, 'AR', 'America/Argentina/Tucuman', 'Live'),
(24, 'AR', 'America/Argentina/Catamarca', 'Live'),
(25, 'AR', 'America/Argentina/La_Rioja', 'Live'),
(26, 'AR', 'America/Argentina/San_Juan', 'Live'),
(27, 'AR', 'America/Argentina/Mendoza', 'Live'),
(28, 'AR', 'America/Argentina/San_Luis', 'Live'),
(29, 'AR', 'America/Argentina/Rio_Gallegos', 'Live'),
(30, 'AR', 'America/Argentina/Ushuaia', 'Live'),
(31, 'AS', 'Pacific/Pago_Pago', 'Live'),
(32, 'AT', 'Europe/Vienna', 'Live'),
(33, 'AU', 'Australia/Lord_Howe', 'Live'),
(34, 'AU', 'Antarctica/Macquarie', 'Live'),
(35, 'AU', 'Australia/Hobart', 'Live'),
(36, 'AU', 'Australia/Currie', 'Live'),
(37, 'AU', 'Australia/Melbourne', 'Live'),
(38, 'AU', 'Australia/Sydney', 'Live'),
(39, 'AU', 'Australia/Broken_Hill', 'Live'),
(40, 'AU', 'Australia/Brisbane', 'Live'),
(41, 'AU', 'Australia/Lindeman', 'Live'),
(42, 'AU', 'Australia/Adelaide', 'Live'),
(43, 'AU', 'Australia/Darwin', 'Live'),
(44, 'AU', 'Australia/Perth', 'Live'),
(45, 'AU', 'Australia/Eucla', 'Live'),
(46, 'AW', 'America/Aruba', 'Live'),
(47, 'AX', 'Europe/Mariehamn', 'Live'),
(48, 'AZ', 'Asia/Baku', 'Live'),
(49, 'BA', 'Europe/Sarajevo', 'Live'),
(50, 'BB', 'America/Barbados', 'Live'),
(51, 'BD', 'Asia/Dhaka', 'Live'),
(52, 'BE', 'Europe/Brussels', 'Live'),
(53, 'BF', 'Africa/Ouagadougou', 'Live'),
(54, 'BG', 'Europe/Sofia', 'Live'),
(55, 'BH', 'Asia/Bahrain', 'Live'),
(56, 'BI', 'Africa/Bujumbura', 'Live'),
(57, 'BJ', 'Africa/Porto-Novo', 'Live'),
(58, 'BL', 'America/St_Barthelemy', 'Live'),
(59, 'BM', 'Atlantic/Bermuda', 'Live'),
(60, 'BN', 'Asia/Brunei', 'Live'),
(61, 'BO', 'America/La_Paz', 'Live'),
(62, 'BQ', 'America/Kralendijk', 'Live'),
(63, 'BR', 'America/Noronha', 'Live'),
(64, 'BR', 'America/Belem', 'Live'),
(65, 'BR', 'America/Fortaleza', 'Live'),
(66, 'BR', 'America/Recife', 'Live'),
(67, 'BR', 'America/Araguaina', 'Live'),
(68, 'BR', 'America/Maceio', 'Live'),
(69, 'BR', 'America/Bahia', 'Live'),
(70, 'BR', 'America/Sao_Paulo', 'Live'),
(71, 'BR', 'America/Campo_Grande', 'Live'),
(72, 'BR', 'America/Cuiaba', 'Live'),
(73, 'BR', 'America/Santarem', 'Live'),
(74, 'BR', 'America/Porto_Velho', 'Live'),
(75, 'BR', 'America/Boa_Vista', 'Live'),
(76, 'BR', 'America/Manaus', 'Live'),
(77, 'BR', 'America/Eirunepe', 'Live'),
(78, 'BR', 'America/Rio_Branco', 'Live'),
(79, 'BS', 'America/Nassau', 'Live'),
(80, 'BT', 'Asia/Thimphu', 'Live'),
(81, 'BW', 'Africa/Gaborone', 'Live'),
(82, 'BY', 'Europe/Minsk', 'Live'),
(83, 'BZ', 'America/Belize', 'Live'),
(84, 'CA', 'America/St_Johns', 'Live'),
(85, 'CA', 'America/Halifax', 'Live'),
(86, 'CA', 'America/Glace_Bay', 'Live'),
(87, 'CA', 'America/Moncton', 'Live'),
(88, 'CA', 'America/Goose_Bay', 'Live'),
(89, 'CA', 'America/Blanc-Sablon', 'Live'),
(90, 'CA', 'America/Toronto', 'Live'),
(91, 'CA', 'America/Nipigon', 'Live'),
(92, 'CA', 'America/Thunder_Bay', 'Live'),
(93, 'CA', 'America/Iqaluit', 'Live'),
(94, 'CA', 'America/Pangnirtung', 'Live'),
(95, 'CA', 'America/Atikokan', 'Live'),
(96, 'CA', 'America/Winnipeg', 'Live'),
(97, 'CA', 'America/Rainy_River', 'Live'),
(98, 'CA', 'America/Resolute', 'Live'),
(99, 'CA', 'America/Rankin_Inlet', 'Live'),
(100, 'CA', 'America/Regina', 'Live'),
(101, 'CA', 'America/Swift_Current', 'Live'),
(102, 'CA', 'America/Edmonton', 'Live'),
(103, 'CA', 'America/Cambridge_Bay', 'Live'),
(104, 'CA', 'America/Yellowknife', 'Live'),
(105, 'CA', 'America/Inuvik', 'Live'),
(106, 'CA', 'America/Creston', 'Live'),
(107, 'CA', 'America/Dawson_Creek', 'Live'),
(108, 'CA', 'America/Fort_Nelson', 'Live'),
(109, 'CA', 'America/Vancouver', 'Live'),
(110, 'CA', 'America/Whitehorse', 'Live'),
(111, 'CA', 'America/Dawson', 'Live'),
(112, 'CC', 'Indian/Cocos', 'Live'),
(113, 'CD', 'Africa/Kinshasa', 'Live'),
(114, 'CD', 'Africa/Lubumbashi', 'Live'),
(115, 'CF', 'Africa/Bangui', 'Live'),
(116, 'CG', 'Africa/Brazzaville', 'Live'),
(117, 'CH', 'Europe/Zurich', 'Live'),
(118, 'CI', 'Africa/Abidjan', 'Live'),
(119, 'CK', 'Pacific/Rarotonga', 'Live'),
(120, 'CL', 'America/Santiago', 'Live'),
(121, 'CL', 'America/Punta_Arenas', 'Live'),
(122, 'CL', 'Pacific/Easter', 'Live'),
(123, 'CM', 'Africa/Douala', 'Live'),
(124, 'CN', 'Asia/Shanghai', 'Live'),
(125, 'CN', 'Asia/Urumqi', 'Live'),
(126, 'CO', 'America/Bogota', 'Live'),
(127, 'CR', 'America/Costa_Rica', 'Live'),
(128, 'CU', 'America/Havana', 'Live'),
(129, 'CV', 'Atlantic/Cape_Verde', 'Live'),
(130, 'CW', 'America/Curacao', 'Live'),
(131, 'CX', 'Indian/Christmas', 'Live'),
(132, 'CY', 'Asia/Nicosia', 'Live'),
(133, 'CY', 'Asia/Famagusta', 'Live'),
(134, 'CZ', 'Europe/Prague', 'Live'),
(135, 'DE', 'Europe/Berlin', 'Live'),
(136, 'DE', 'Europe/Busingen', 'Live'),
(137, 'DJ', 'Africa/Djibouti', 'Live'),
(138, 'DK', 'Europe/Copenhagen', 'Live'),
(139, 'DM', 'America/Dominica', 'Live'),
(140, 'DO', 'America/Santo_Domingo', 'Live'),
(141, 'DZ', 'Africa/Algiers', 'Live'),
(142, 'EC', 'America/Guayaquil', 'Live'),
(143, 'EC', 'Pacific/Galapagos', 'Live'),
(144, 'EE', 'Europe/Tallinn', 'Live'),
(145, 'EG', 'Africa/Cairo', 'Live'),
(146, 'EH', 'Africa/El_Aaiun', 'Live'),
(147, 'ER', 'Africa/Asmara', 'Live'),
(148, 'ES', 'Europe/Madrid', 'Live'),
(149, 'ES', 'Africa/Ceuta', 'Live'),
(150, 'ES', 'Atlantic/Canary', 'Live'),
(151, 'ET', 'Africa/Addis_Ababa', 'Live'),
(152, 'FI', 'Europe/Helsinki', 'Live'),
(153, 'FJ', 'Pacific/Fiji', 'Live'),
(154, 'FK', 'Atlantic/Stanley', 'Live'),
(155, 'FM', 'Pacific/Chuuk', 'Live'),
(156, 'FM', 'Pacific/Pohnpei', 'Live'),
(157, 'FM', 'Pacific/Kosrae', 'Live'),
(158, 'FO', 'Atlantic/Faroe', 'Live'),
(159, 'FR', 'Europe/Paris', 'Live'),
(160, 'GA', 'Africa/Libreville', 'Live'),
(161, 'GB', 'Europe/London', 'Live'),
(162, 'GD', 'America/Grenada', 'Live'),
(163, 'GE', 'Asia/Tbilisi', 'Live'),
(164, 'GF', 'America/Cayenne', 'Live'),
(165, 'GG', 'Europe/Guernsey', 'Live'),
(166, 'GH', 'Africa/Accra', 'Live'),
(167, 'GI', 'Europe/Gibraltar', 'Live'),
(168, 'GL', 'America/Godthab', 'Live'),
(169, 'GL', 'America/Danmarkshavn', 'Live'),
(170, 'GL', 'America/Scoresbysund', 'Live'),
(171, 'GL', 'America/Thule', 'Live'),
(172, 'GM', 'Africa/Banjul', 'Live'),
(173, 'GN', 'Africa/Conakry', 'Live'),
(174, 'GP', 'America/Guadeloupe', 'Live'),
(175, 'GQ', 'Africa/Malabo', 'Live'),
(176, 'GR', 'Europe/Athens', 'Live'),
(177, 'GS', 'Atlantic/South_Georgia', 'Live'),
(178, 'GT', 'America/Guatemala', 'Live'),
(179, 'GU', 'Pacific/Guam', 'Live'),
(180, 'GW', 'Africa/Bissau', 'Live'),
(181, 'GY', 'America/Guyana', 'Live'),
(182, 'HK', 'Asia/Hong_Kong', 'Live'),
(183, 'HN', 'America/Tegucigalpa', 'Live'),
(184, 'HR', 'Europe/Zagreb', 'Live'),
(185, 'HT', 'America/Port-au-Prince', 'Live'),
(186, 'HU', 'Europe/Budapest', 'Live'),
(187, 'ID', 'Asia/Jakarta', 'Live'),
(188, 'ID', 'Asia/Pontianak', 'Live'),
(189, 'ID', 'Asia/Makassar', 'Live'),
(190, 'ID', 'Asia/Jayapura', 'Live'),
(191, 'IE', 'Europe/Dublin', 'Live'),
(192, 'IL', 'Asia/Jerusalem', 'Live'),
(193, 'IM', 'Europe/Isle_of_Man', 'Live'),
(194, 'IN', 'Asia/Kolkata', 'Live'),
(195, 'IO', 'Indian/Chagos', 'Live'),
(196, 'IQ', 'Asia/Baghdad', 'Live'),
(197, 'IR', 'Asia/Tehran', 'Live'),
(198, 'IS', 'Atlantic/Reykjavik', 'Live'),
(199, 'IT', 'Europe/Rome', 'Live'),
(200, 'JE', 'Europe/Jersey', 'Live'),
(201, 'JM', 'America/Jamaica', 'Live'),
(202, 'JO', 'Asia/Amman', 'Live'),
(203, 'JP', 'Asia/Tokyo', 'Live'),
(204, 'KE', 'Africa/Nairobi', 'Live'),
(205, 'KG', 'Asia/Bishkek', 'Live'),
(206, 'KH', 'Asia/Phnom_Penh', 'Live'),
(207, 'KI', 'Pacific/Tarawa', 'Live'),
(208, 'KI', 'Pacific/Enderbury', 'Live'),
(209, 'KI', 'Pacific/Kiritimati', 'Live'),
(210, 'KM', 'Indian/Comoro', 'Live'),
(211, 'KN', 'America/St_Kitts', 'Live'),
(212, 'KP', 'Asia/Pyongyang', 'Live'),
(213, 'KR', 'Asia/Seoul', 'Live'),
(214, 'KW', 'Asia/Kuwait', 'Live'),
(215, 'KY', 'America/Cayman', 'Live'),
(216, 'KZ', 'Asia/Almaty', 'Live'),
(217, 'KZ', 'Asia/Qyzylorda', 'Live'),
(218, 'KZ', 'Asia/Aqtobe', 'Live'),
(219, 'KZ', 'Asia/Aqtau', 'Live'),
(220, 'KZ', 'Asia/Atyrau', 'Live'),
(221, 'KZ', 'Asia/Oral', 'Live'),
(222, 'LA', 'Asia/Vientiane', 'Live'),
(223, 'LB', 'Asia/Beirut', 'Live'),
(224, 'LC', 'America/St_Lucia', 'Live'),
(225, 'LI', 'Europe/Vaduz', 'Live'),
(226, 'LK', 'Asia/Colombo', 'Live'),
(227, 'LR', 'Africa/Monrovia', 'Live'),
(228, 'LS', 'Africa/Maseru', 'Live'),
(229, 'LT', 'Europe/Vilnius', 'Live'),
(230, 'LU', 'Europe/Luxembourg', 'Live'),
(231, 'LV', 'Europe/Riga', 'Live'),
(232, 'LY', 'Africa/Tripoli', 'Live'),
(233, 'MA', 'Africa/Casablanca', 'Live'),
(234, 'MC', 'Europe/Monaco', 'Live'),
(235, 'MD', 'Europe/Chisinau', 'Live'),
(236, 'ME', 'Europe/Podgorica', 'Live'),
(237, 'MF', 'America/Marigot', 'Live'),
(238, 'MG', 'Indian/Antananarivo', 'Live'),
(239, 'MH', 'Pacific/Majuro', 'Live'),
(240, 'MH', 'Pacific/Kwajalein', 'Live'),
(241, 'MK', 'Europe/Skopje', 'Live'),
(242, 'ML', 'Africa/Bamako', 'Live'),
(243, 'MM', 'Asia/Yangon', 'Live'),
(244, 'MN', 'Asia/Ulaanbaatar', 'Live'),
(245, 'MN', 'Asia/Hovd', 'Live'),
(246, 'MN', 'Asia/Choibalsan', 'Live'),
(247, 'MO', 'Asia/Macau', 'Live'),
(248, 'MP', 'Pacific/Saipan', 'Live'),
(249, 'MQ', 'America/Martinique', 'Live'),
(250, 'MR', 'Africa/Nouakchott', 'Live'),
(251, 'MS', 'America/Montserrat', 'Live'),
(252, 'MT', 'Europe/Malta', 'Live'),
(253, 'MU', 'Indian/Mauritius', 'Live'),
(254, 'MV', 'Indian/Maldives', 'Live'),
(255, 'MW', 'Africa/Blantyre', 'Live'),
(256, 'MX', 'America/Mexico_City', 'Live'),
(257, 'MX', 'America/Cancun', 'Live'),
(258, 'MX', 'America/Merida', 'Live'),
(259, 'MX', 'America/Monterrey', 'Live'),
(260, 'MX', 'America/Matamoros', 'Live'),
(261, 'MX', 'America/Mazatlan', 'Live'),
(262, 'MX', 'America/Chihuahua', 'Live'),
(263, 'MX', 'America/Ojinaga', 'Live'),
(264, 'MX', 'America/Hermosillo', 'Live'),
(265, 'MX', 'America/Tijuana', 'Live'),
(266, 'MX', 'America/Bahia_Banderas', 'Live'),
(267, 'MY', 'Asia/Kuala_Lumpur', 'Live'),
(268, 'MY', 'Asia/Kuching', 'Live'),
(269, 'MZ', 'Africa/Maputo', 'Live'),
(270, 'NA', 'Africa/Windhoek', 'Live'),
(271, 'NC', 'Pacific/Noumea', 'Live'),
(272, 'NE', 'Africa/Niamey', 'Live'),
(273, 'NF', 'Pacific/Norfolk', 'Live'),
(274, 'NG', 'Africa/Lagos', 'Live'),
(275, 'NI', 'America/Managua', 'Live'),
(276, 'NL', 'Europe/Amsterdam', 'Live'),
(277, 'NO', 'Europe/Oslo', 'Live'),
(278, 'NP', 'Asia/Kathmandu', 'Live'),
(279, 'NR', 'Pacific/Nauru', 'Live'),
(280, 'NU', 'Pacific/Niue', 'Live'),
(281, 'NZ', 'Pacific/Auckland', 'Live'),
(282, 'NZ', 'Pacific/Chatham', 'Live'),
(283, 'OM', 'Asia/Muscat', 'Live'),
(284, 'PA', 'America/Panama', 'Live'),
(285, 'PE', 'America/Lima', 'Live'),
(286, 'PF', 'Pacific/Tahiti', 'Live'),
(287, 'PF', 'Pacific/Marquesas', 'Live'),
(288, 'PF', 'Pacific/Gambier', 'Live'),
(289, 'PG', 'Pacific/Port_Moresby', 'Live'),
(290, 'PG', 'Pacific/Bougainville', 'Live'),
(291, 'PH', 'Asia/Manila', 'Live'),
(292, 'PK', 'Asia/Karachi', 'Live'),
(293, 'PL', 'Europe/Warsaw', 'Live'),
(294, 'PM', 'America/Miquelon', 'Live'),
(295, 'PN', 'Pacific/Pitcairn', 'Live'),
(296, 'PR', 'America/Puerto_Rico', 'Live'),
(297, 'PS', 'Asia/Gaza', 'Live'),
(298, 'PS', 'Asia/Hebron', 'Live'),
(299, 'PT', 'Europe/Lisbon', 'Live'),
(300, 'PT', 'Atlantic/Madeira', 'Live'),
(301, 'PT', 'Atlantic/Azores', 'Live'),
(302, 'PW', 'Pacific/Palau', 'Live'),
(303, 'PY', 'America/Asuncion', 'Live'),
(304, 'QA', 'Asia/Qatar', 'Live'),
(305, 'RE', 'Indian/Reunion', 'Live'),
(306, 'RO', 'Europe/Bucharest', 'Live'),
(307, 'RS', 'Europe/Belgrade', 'Live'),
(308, 'RU', 'Europe/Kaliningrad', 'Live'),
(309, 'RU', 'Europe/Moscow', 'Live'),
(310, 'RU', 'Europe/Simferopol', 'Live'),
(311, 'RU', 'Europe/Volgograd', 'Live'),
(312, 'RU', 'Europe/Kirov', 'Live'),
(313, 'RU', 'Europe/Astrakhan', 'Live'),
(314, 'RU', 'Europe/Saratov', 'Live'),
(315, 'RU', 'Europe/Ulyanovsk', 'Live'),
(316, 'RU', 'Europe/Samara', 'Live'),
(317, 'RU', 'Asia/Yekaterinburg', 'Live'),
(318, 'RU', 'Asia/Omsk', 'Live'),
(319, 'RU', 'Asia/Novosibirsk', 'Live'),
(320, 'RU', 'Asia/Barnaul', 'Live'),
(321, 'RU', 'Asia/Tomsk', 'Live'),
(322, 'RU', 'Asia/Novokuznetsk', 'Live'),
(323, 'RU', 'Asia/Krasnoyarsk', 'Live'),
(324, 'RU', 'Asia/Irkutsk', 'Live'),
(325, 'RU', 'Asia/Chita', 'Live'),
(326, 'RU', 'Asia/Yakutsk', 'Live'),
(327, 'RU', 'Asia/Khandyga', 'Live'),
(328, 'RU', 'Asia/Vladivostok', 'Live'),
(329, 'RU', 'Asia/Ust-Nera', 'Live'),
(330, 'RU', 'Asia/Magadan', 'Live'),
(331, 'RU', 'Asia/Sakhalin', 'Live'),
(332, 'RU', 'Asia/Srednekolymsk', 'Live'),
(333, 'RU', 'Asia/Kamchatka', 'Live'),
(334, 'RU', 'Asia/Anadyr', 'Live'),
(335, 'RW', 'Africa/Kigali', 'Live'),
(336, 'SA', 'Asia/Riyadh', 'Live'),
(337, 'SB', 'Pacific/Guadalcanal', 'Live'),
(338, 'SC', 'Indian/Mahe', 'Live'),
(339, 'SD', 'Africa/Khartoum', 'Live'),
(340, 'SE', 'Europe/Stockholm', 'Live'),
(341, 'SG', 'Asia/Singapore', 'Live'),
(342, 'SH', 'Atlantic/St_Helena', 'Live'),
(343, 'SI', 'Europe/Ljubljana', 'Live'),
(344, 'SJ', 'Arctic/Longyearbyen', 'Live'),
(345, 'SK', 'Europe/Bratislava', 'Live'),
(346, 'SL', 'Africa/Freetown', 'Live'),
(347, 'SM', 'Europe/San_Marino', 'Live'),
(348, 'SN', 'Africa/Dakar', 'Live'),
(349, 'SO', 'Africa/Mogadishu', 'Live'),
(350, 'SR', 'America/Paramaribo', 'Live'),
(351, 'SS', 'Africa/Juba', 'Live'),
(352, 'ST', 'Africa/Sao_Tome', 'Live'),
(353, 'SV', 'America/El_Salvador', 'Live'),
(354, 'SX', 'America/Lower_Princes', 'Live'),
(355, 'SY', 'Asia/Damascus', 'Live'),
(356, 'SZ', 'Africa/Mbabane', 'Live'),
(357, 'TC', 'America/Grand_Turk', 'Live'),
(358, 'TD', 'Africa/Ndjamena', 'Live'),
(359, 'TF', 'Indian/Kerguelen', 'Live'),
(360, 'TG', 'Africa/Lome', 'Live'),
(361, 'TH', 'Asia/Bangkok', 'Live'),
(362, 'TJ', 'Asia/Dushanbe', 'Live'),
(363, 'TK', 'Pacific/Fakaofo', 'Live'),
(364, 'TL', 'Asia/Dili', 'Live'),
(365, 'TM', 'Asia/Ashgabat', 'Live'),
(366, 'TN', 'Africa/Tunis', 'Live'),
(367, 'TO', 'Pacific/Tongatapu', 'Live'),
(368, 'TR', 'Europe/Istanbul', 'Live'),
(369, 'TT', 'America/Port_of_Spain', 'Live'),
(370, 'TV', 'Pacific/Funafuti', 'Live'),
(371, 'TW', 'Asia/Taipei', 'Live'),
(372, 'TZ', 'Africa/Dar_es_Salaam', 'Live'),
(373, 'UA', 'Europe/Kiev', 'Live'),
(374, 'UA', 'Europe/Uzhgorod', 'Live'),
(375, 'UA', 'Europe/Zaporozhye', 'Live'),
(376, 'UG', 'Africa/Kampala', 'Live'),
(377, 'UM', 'Pacific/Midway', 'Live'),
(378, 'UM', 'Pacific/Wake', 'Live'),
(379, 'US', 'America/New_York', 'Live'),
(380, 'US', 'America/Detroit', 'Live'),
(381, 'US', 'America/Kentucky/Louisville', 'Live'),
(382, 'US', 'America/Kentucky/Monticello', 'Live'),
(383, 'US', 'America/Indiana/Indianapolis', 'Live'),
(384, 'US', 'America/Indiana/Vincennes', 'Live'),
(385, 'US', 'America/Indiana/Winamac', 'Live'),
(386, 'US', 'America/Indiana/Marengo', 'Live'),
(387, 'US', 'America/Indiana/Petersburg', 'Live'),
(388, 'US', 'America/Indiana/Vevay', 'Live'),
(389, 'US', 'America/Chicago', 'Live'),
(390, 'US', 'America/Indiana/Tell_City', 'Live'),
(391, 'US', 'America/Indiana/Knox', 'Live'),
(392, 'US', 'America/Menominee', 'Live'),
(393, 'US', 'America/North_Dakota/Center', 'Live'),
(394, 'US', 'America/North_Dakota/New_Salem', 'Live'),
(395, 'US', 'America/North_Dakota/Beulah', 'Live'),
(396, 'US', 'America/Denver', 'Live'),
(397, 'US', 'America/Boise', 'Live'),
(398, 'US', 'America/Phoenix', 'Live'),
(399, 'US', 'America/Los_Angeles', 'Live'),
(400, 'US', 'America/Anchorage', 'Live'),
(401, 'US', 'America/Juneau', 'Live'),
(402, 'US', 'America/Sitka', 'Live'),
(403, 'US', 'America/Metlakatla', 'Live'),
(404, 'US', 'America/Yakutat', 'Live'),
(405, 'US', 'America/Nome', 'Live'),
(406, 'US', 'America/Adak', 'Live'),
(407, 'US', 'Pacific/Honolulu', 'Live'),
(408, 'UY', 'America/Montevideo', 'Live'),
(409, 'UZ', 'Asia/Samarkand', 'Live'),
(410, 'UZ', 'Asia/Tashkent', 'Live'),
(411, 'VA', 'Europe/Vatican', 'Live'),
(412, 'VC', 'America/St_Vincent', 'Live'),
(413, 'VE', 'America/Caracas', 'Live'),
(414, 'VG', 'America/Tortola', 'Live'),
(415, 'VI', 'America/St_Thomas', 'Live'),
(416, 'VN', 'Asia/Ho_Chi_Minh', 'Live'),
(417, 'VU', 'Pacific/Efate', 'Live'),
(418, 'WF', 'Pacific/Wallis', 'Live'),
(419, 'WS', 'Pacific/Apia', 'Live'),
(420, 'YE', 'Asia/Aden', 'Live'),
(421, 'YT', 'Indian/Mayotte', 'Live'),
(422, 'ZA', 'Africa/Johannesburg', 'Live'),
(423, 'ZM', 'Africa/Lusaka', 'Live'),
(424, 'ZW', 'Africa/Harare', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units`
--

CREATE TABLE `tbl_units` (
  `id` int(10) NOT NULL,
  `unit_name` varchar(10) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `company_id` int(1) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_units`
--

INSERT INTO `tbl_units` (`id`, `unit_name`, `description`, `company_id`, `del_status`) VALUES
(1, 'kg', '', 1, 'Live'),
(2, 'mg', '', 1, 'Live'),
(3, 'pcs', '', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `full_name` varchar(25) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `will_login` varchar(20) NOT NULL DEFAULT 'No',
  `role` varchar(25) NOT NULL,
  `outlet_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `account_creation_date` datetime NOT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'english',
  `last_login` datetime NOT NULL,
  `active_status` varchar(25) NOT NULL DEFAULT 'Active',
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `full_name`, `phone`, `email_address`, `password`, `designation`, `will_login`, `role`, `outlet_id`, `company_id`, `account_creation_date`, `language`, `last_login`, `active_status`, `del_status`) VALUES
(1, 'admin', '03335021961', 'admin@admin.com', 'admin', 'admin', 'No', 'Admin', 1, 1, '2020-01-11 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(20, 'ahmed', '033365464688', 'all@gmail.com', '123456', 'waiter', 'Yes', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(21, 'afaq', '0333654646', 'afaq@gmail.com', '123456', 'Waiter', 'Yes', 'Waiter User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(22, 'ali hasan', '0315624120', 'hasan@gmail.com', '123456', 'waiter', 'Yes', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(23, 'fawad', '03156244120', 'admin@gmail.com', '123456', 'Waiter', 'Yes', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_menu_access`
--

CREATE TABLE `tbl_user_menu_access` (
  `id` int(10) NOT NULL,
  `menu_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_menu_access`
--

INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 9, 1),
(12, 11, 1),
(46, 13, 1),
(103, 14, 1),
(104, 15, 1),
(118, 16, 1),
(133, 5, 1),
(134, 10, 1),
(135, 12, 1),
(140, 17, 1),
(141, 18, 1),
(142, 19, 1),
(160, 17, 4),
(161, 18, 4),
(162, 19, 4),
(172, 18, 10),
(186, 1, 9),
(187, 19, 9),
(193, 1, 3),
(194, 19, 3),
(195, 14, 13),
(196, 1, 14),
(197, 15, 14),
(200, 1, 16),
(203, 1, 18),
(205, 15, 17),
(206, 1, 17),
(208, 1, 20),
(209, 1, 21),
(210, 20, 1),
(211, 20, 22),
(212, 20, 22),
(215, 19, 23),
(216, 20, 23),
(217, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vats`
--

CREATE TABLE `tbl_vats` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `percentage` float(10,2) NOT NULL,
  `user_id` float(10,2) NOT NULL DEFAULT '1.00',
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(6) DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vats`
--

INSERT INTO `tbl_vats` (`id`, `name`, `percentage`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'General VAT', 15.00, 0.00, 1, 'Live'),
(2, 'Sales Tax', 15.00, 1.00, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wastes`
--

CREATE TABLE `tbl_wastes` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `total_loss` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  `food_menu_id` int(11) DEFAULT NULL,
  `food_menu_waste_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waste_ingredients`
--

CREATE TABLE `tbl_waste_ingredients` (
  `id` int(10) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `waste_amount` float(10,2) DEFAULT NULL,
  `last_purchase_price` float(10,2) DEFAULT NULL,
  `loss_amount` float(10,2) DEFAULT NULL,
  `waste_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_currencies`
--
ALTER TABLE `tbl_admin_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_user_menus`
--
ALTER TABLE `tbl_admin_user_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_due_receives`
--
ALTER TABLE `tbl_customer_due_receives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expense_items`
--
ALTER TABLE `tbl_expense_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus`
--
ALTER TABLE `tbl_food_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus_ingredients`
--
ALTER TABLE `tbl_food_menus_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus_modifiers`
--
ALTER TABLE `tbl_food_menus_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menu_categories`
--
ALTER TABLE `tbl_food_menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds`
--
ALTER TABLE `tbl_holds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds_details`
--
ALTER TABLE `tbl_holds_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds_details_modifiers`
--
ALTER TABLE `tbl_holds_details_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ingredients`
--
ALTER TABLE `tbl_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ingredient_categories`
--
ALTER TABLE `tbl_ingredient_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventory_adjustment`
--
ALTER TABLE `tbl_inventory_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modifiers`
--
ALTER TABLE `tbl_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modifier_ingredients`
--
ALTER TABLE `tbl_modifier_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification_bar_kitchen_panel`
--
ALTER TABLE `tbl_notification_bar_kitchen_panel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders_table`
--
ALTER TABLE `tbl_orders_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_outlets`
--
ALTER TABLE `tbl_outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_outlet_taxes`
--
ALTER TABLE `tbl_outlet_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase_ingredients`
--
ALTER TABLE `tbl_purchase_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales_details_modifiers`
--
ALTER TABLE `tbl_sales_details_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_consumptions`
--
ALTER TABLE `tbl_sale_consumptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_consumptions_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_consumptions_of_modifiers_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_modifiers_of_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sms_settings`
--
ALTER TABLE `tbl_sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_supplier_payments`
--
ALTER TABLE `tbl_supplier_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tables`
--
ALTER TABLE `tbl_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_temp_kot`
--
ALTER TABLE `tbl_temp_kot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_time_zone`
--
ALTER TABLE `tbl_time_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_units`
--
ALTER TABLE `tbl_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_menu_access`
--
ALTER TABLE `tbl_user_menu_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vats`
--
ALTER TABLE `tbl_vats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wastes`
--
ALTER TABLE `tbl_wastes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_waste_ingredients`
--
ALTER TABLE `tbl_waste_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_currencies`
--
ALTER TABLE `tbl_admin_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `tbl_admin_user_menus`
--
ALTER TABLE `tbl_admin_user_menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_customer_due_receives`
--
ALTER TABLE `tbl_customer_due_receives`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expense_items`
--
ALTER TABLE `tbl_expense_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_food_menus`
--
ALTER TABLE `tbl_food_menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_food_menus_ingredients`
--
ALTER TABLE `tbl_food_menus_ingredients`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_food_menus_modifiers`
--
ALTER TABLE `tbl_food_menus_modifiers`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_food_menu_categories`
--
ALTER TABLE `tbl_food_menu_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_holds`
--
ALTER TABLE `tbl_holds`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_holds_details`
--
ALTER TABLE `tbl_holds_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_holds_details_modifiers`
--
ALTER TABLE `tbl_holds_details_modifiers`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ingredients`
--
ALTER TABLE `tbl_ingredients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_ingredient_categories`
--
ALTER TABLE `tbl_ingredient_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_inventory_adjustment`
--
ALTER TABLE `tbl_inventory_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_modifiers`
--
ALTER TABLE `tbl_modifiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_modifier_ingredients`
--
ALTER TABLE `tbl_modifier_ingredients`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notification_bar_kitchen_panel`
--
ALTER TABLE `tbl_notification_bar_kitchen_panel`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_orders_table`
--
ALTER TABLE `tbl_orders_table`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_outlets`
--
ALTER TABLE `tbl_outlets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_outlet_taxes`
--
ALTER TABLE `tbl_outlet_taxes`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_purchase_ingredients`
--
ALTER TABLE `tbl_purchase_ingredients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tbl_sales_details_modifiers`
--
ALTER TABLE `tbl_sales_details_modifiers`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sale_consumptions`
--
ALTER TABLE `tbl_sale_consumptions`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_sale_consumptions_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_menus`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_sale_consumptions_of_modifiers_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_modifiers_of_menus`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_sms_settings`
--
ALTER TABLE `tbl_sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_supplier_payments`
--
ALTER TABLE `tbl_supplier_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tables`
--
ALTER TABLE `tbl_tables`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_temp_kot`
--
ALTER TABLE `tbl_temp_kot`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_time_zone`
--
ALTER TABLE `tbl_time_zone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `tbl_units`
--
ALTER TABLE `tbl_units`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_user_menu_access`
--
ALTER TABLE `tbl_user_menu_access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `tbl_vats`
--
ALTER TABLE `tbl_vats`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_wastes`
--
ALTER TABLE `tbl_wastes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_waste_ingredients`
--
ALTER TABLE `tbl_waste_ingredients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
