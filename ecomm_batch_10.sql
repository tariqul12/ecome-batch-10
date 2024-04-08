-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 12:07 PM
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
-- Database: `ecomm_batch_10`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Regal', 'Regal', 'upload/Brand-images/1708005915.png', 1, '2024-02-15 08:05:15', '2024-02-15 08:05:15'),
(2, 'Akter', 'Akter Furnicher', 'upload/Brand-images/1708006409.jpeg', 1, '2024-02-15 08:13:29', '2024-02-15 08:13:29'),
(3, 'Fantech', 'Fantech', 'upload/Brand-images/1708007327.jpeg', 1, '2024-02-15 08:28:47', '2024-02-15 08:28:47'),
(4, 'A4Tec', 'A4Tec', 'upload/Brand-images/1708007562.png', 1, '2024-02-15 08:32:42', '2024-02-15 08:32:42'),
(5, 'TP Link', 'TP Link', 'upload/Brand-images/1708007911.jpeg', 1, '2024-02-15 08:38:31', '2024-02-15 08:38:31'),
(6, 'Reach Man', 'Reach Man', 'upload/Brand-images/1708008269.png', 1, '2024-02-15 08:44:29', '2024-02-15 08:44:29'),
(7, 'Arong', 'Arong', 'upload/Brand-images/1708008897.jpeg', 1, '2024-02-15 08:54:57', '2024-02-15 08:54:57'),
(8, 'KidStar', 'KidStar', 'upload/Brand-images/1708257798.jpeg', 1, '2024-02-18 06:03:18', '2024-02-18 06:03:18'),
(9, 'Kodomo', 'Kodomo', 'upload/Brand-images/1708258172.jpeg', 1, '2024-02-18 06:09:32', '2024-02-18 06:09:32'),
(10, 'Kiam', 'Kiam', 'upload/Brand-images/1708259402.png', 1, '2024-02-18 06:30:02', '2024-02-18 06:30:02'),
(11, 'Chocolet', 'Chocolet', 'upload/Brand-images/1708259973.jpeg', 1, '2024-02-18 06:39:33', '2024-02-18 06:39:33'),
(12, 'Nodles', 'Nodles', 'upload/Brand-images/1708260767.png', 1, '2024-02-18 06:52:47', '2024-02-18 06:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home & Living', 'Home & LIving\r\nPicture for category Home Furniture\r\nHome Furniture', 'upload/category-images/1708005625.jpeg', 1, '2024-02-15 08:00:25', '2024-02-15 08:00:25'),
(2, 'Electronics', 'Electronics', 'upload/category-images/1708006918.jpeg', 1, '2024-02-15 08:21:58', '2024-02-15 08:21:58'),
(3, 'Men Fashion', 'Men Fashion', 'upload/category-images/1708008139.jpeg', 1, '2024-02-15 08:42:19', '2024-02-15 08:42:19'),
(4, 'Women Feshion', 'Women Feshion', 'upload/category-images/1708008806.jpeg', 1, '2024-02-15 08:53:26', '2024-02-15 08:53:26'),
(5, 'Baby & Kids', 'Baby & Kids', 'upload/category-images/1708257662.jpeg', 1, '2024-02-18 06:01:02', '2024-02-18 06:01:02'),
(6, 'Food & Grocery', 'Food & Grocery', 'upload/category-images/1708259880.jpeg', 1, '2024-02-18 06:38:00', '2024-02-18 06:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `cost` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `email`, `mobile`, `address`, `logo`, `cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sagor Khan', 'korim@gmail.com', '3214', 'sdfsdf', 'upload/courier-images/69804.jpg', 123, 1, '2024-03-21 04:50:53', '2024-03-21 04:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_of_birth` text DEFAULT NULL,
  `blood_group` text DEFAULT NULL,
  `nid` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `date_of_birth`, `blood_group`, `nid`, `address`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Rofik Khan', 'khan@gmail.com', '01715123456', '$2y$12$AVBNIayHZFYvW5JXogC43erdaIt0J3LR0n8.iU69qqWRTyHBG6JBa', NULL, NULL, NULL, NULL, NULL, 1, '2024-02-27 07:39:53', '2024-02-27 07:39:53'),
(3, 'Sumiya Toma', 'toma@gmail.com', '123123', '$2y$12$K2uBSHvOeUMinE/3bXaKue5aPevnLxL34ua4k1KdYcfsa0wmEhEbG', NULL, NULL, NULL, NULL, NULL, 1, '2024-02-27 08:15:42', '2024-02-27 08:15:42'),
(4, 'Sojib Khan', 'sojib@gmail.com', '01715554433', '$2y$12$deakcPltsyNxJ6RaExg6r.CFNZhzKZwqgCj918GE2jGbyaQOYlUWW', NULL, NULL, NULL, NULL, NULL, 1, '2024-02-29 06:42:09', '2024-02-29 06:42:09'),
(7, 'Samira Akter', 'samira@gmail.com', '017154135465', '$2y$12$4up7wSSOdBsILpq04IvtTuHgSKYw95eWiAuElrm1KlkUKzxTzr.3y', NULL, NULL, NULL, NULL, NULL, 1, '2024-03-03 07:20:02', '2024-03-03 07:20:02'),
(8, 'sadf', 'xfgbds@SDG', '01915472456', '$2y$12$zPqw8h4/5Z.LVGhtBJt5DePzs5iJfR79EsCUww/rsbQfzc1S6V7ry', NULL, NULL, NULL, 'fdj', NULL, 1, '2024-03-07 07:31:18', '2024-03-07 07:31:18'),
(9, 'customer', 'customer@gmail.com', '052484564', '$2y$12$2j014lPB.PAUfJdYDviV3u9FbIG4xFrkxvkETshEFDGqugCKyW1s2', NULL, NULL, NULL, NULL, NULL, 1, '2024-03-07 07:39:45', '2024-03-07 07:39:45'),
(10, 'Sahadat Khan', 'habib.php.laravel@gmail.com', '234234234', '$2y$12$Ar.eLlpnqUMv7ygc5SylQuaKki822YKDZsE6RwUD12WhGtwoZSVFK', NULL, NULL, NULL, 'Dhaka', NULL, 1, '2024-03-10 08:51:05', '2024-03-10 08:51:05'),
(11, 'Korim Box', 'korim@gmail.com', '01815456123', '$2y$12$728.N1ohhRGrmV2fwbOXFenXyHZ5v5RBdnSHxXFYP7jZNtzvTqoXi', NULL, NULL, NULL, 'Sonir Akhra', NULL, 1, '2024-03-14 04:13:19', '2024-03-14 04:13:19');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_01_21_125002_create_sessions_table', 1),
(7, '2024_01_28_124820_create_categories_table', 1),
(8, '2024_01_30_145304_create_sub_categories_table', 1),
(9, '2024_02_01_130331_create_brands_table', 1),
(10, '2024_02_04_135118_create_units_table', 1),
(11, '2024_02_06_133308_create_products_table', 1),
(12, '2024_02_06_135038_create_product_images_table', 1),
(15, '2024_02_22_135113_create_orders_table', 2),
(16, '2024_02_22_135307_create_order_details_table', 2),
(17, '2024_02_25_132814_create_customers_table', 2),
(18, '2024_03_21_102641_create_couriers_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `courier_id` int(11) NOT NULL DEFAULT 0,
  `order_total` double(8,2) NOT NULL,
  `tax_total` double(8,2) NOT NULL,
  `shipping_total` double(8,2) NOT NULL,
  `order_date` text NOT NULL,
  `order_timestamp` text NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_address` text NOT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_date` text DEFAULT NULL,
  `delivery_timestamp` text DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_date` text DEFAULT NULL,
  `payment_timestamp` text DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `currency` varchar(255) NOT NULL DEFAULT 'BDT',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `courier_id`, `order_total`, `tax_total`, `shipping_total`, `order_date`, `order_timestamp`, `order_status`, `delivery_address`, `delivery_status`, `delivery_date`, `delivery_timestamp`, `payment_method`, `payment_status`, `payment_date`, `payment_timestamp`, `transaction_id`, `currency`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 10161.00, 1312.00, 100.00, '2024-02-27', '1708992000', 'Complete', 'Dhaka', 'Complete', '2024-03-07', '1709769600', 'Cash', 'Complete', '2024-03-07', '1709769600', NULL, 'BDT', '2024-02-27 07:39:53', '2024-03-07 06:57:07'),
(3, 3, 0, 10161.00, 1312.00, 100.00, '2024-02-27', '1708992000', 'Cancel', 'Vuter Gioli', 'Cancel', NULL, NULL, 'Cash', 'Cancel', NULL, NULL, NULL, 'BDT', '2024-02-27 08:15:42', '2024-03-07 06:57:13'),
(4, 4, 0, 2630.00, 330.00, 100.00, '2024-02-29', '1709164800', 'Pending', 'Savar', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, NULL, 'BDT', '2024-02-29 06:42:09', '2024-02-29 06:42:09'),
(5, 4, 0, 1998.00, 248.00, 100.00, '2024-02-29', '1709164800', 'Pending', 'Dhaka', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, NULL, 'BDT', '2024-02-29 07:09:50', '2024-02-29 07:09:50'),
(6, 8, 0, 4240.00, 540.00, 100.00, '2024-03-07', '1709769600', 'Pending', 'fdj', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, NULL, 'BDT', '2024-03-07 07:31:18', '2024-03-07 07:31:18'),
(7, 9, 0, 2630.00, 330.00, 100.00, '2024-03-07', '1709769600', 'Pending', 'fdbdfbh', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, NULL, 'BDT', '2024-03-07 08:45:19', '2024-03-07 08:45:19'),
(18, 11, 0, 5160.00, 660.00, 100.00, '2024-03-14', '1710374400', 'Processing', 'Sonir Akhra', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, '65f2cf85b921f', 'BDT', NULL, NULL),
(20, 11, 0, 100.00, 0.00, 100.00, '2024-03-14', '1710374400', 'Processing', 'Sonir AKhra', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, '65f2d1c427085', 'BDT', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_code`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 2, 22, 'Mr. Noodles 12 pcs Family Pack Masala 62gm x 12pcs', '05145156', 250.00, 3, '2024-02-27 07:39:53', '2024-02-27 07:39:53'),
(2, 2, 8, 'Mens Winter Jacket', '876576', 5799.00, 1, '2024-02-27 07:39:53', '2024-02-27 07:39:53'),
(3, 2, 21, 'Jar Cake Vanilla', '4546', 2200.00, 1, '2024-02-27 07:39:53', '2024-02-27 07:39:53'),
(4, 3, 22, 'Mr. Noodles 12 pcs Family Pack Masala 62gm x 12pcs', '05145156', 250.00, 3, '2024-02-27 08:15:42', '2024-02-27 08:15:42'),
(5, 3, 8, 'Mens Winter Jacket', '876576', 5799.00, 1, '2024-02-27 08:15:42', '2024-02-27 08:15:42'),
(6, 3, 21, 'Jar Cake Vanilla', '4546', 2200.00, 1, '2024-02-27 08:15:42', '2024-02-27 08:15:42'),
(7, 4, 21, 'Jar Cake Vanilla', '4546', 2200.00, 1, '2024-02-29 06:42:09', '2024-02-29 06:42:09'),
(8, 5, 22, 'Mr. Noodles 12 pcs Family Pack Masala 62gm x 12pcs', '05145156', 250.00, 1, '2024-02-29 07:09:50', '2024-02-29 07:09:50'),
(9, 5, 20, 'Black Forest Cake 1kg For Sylhet Metro', '564496', 1400.00, 1, '2024-02-29 07:09:50', '2024-02-29 07:09:50'),
(10, 6, 20, 'Black Forest Cake 1kg For Sylhet Metro', '564496', 1400.00, 1, '2024-03-07 07:31:18', '2024-03-07 07:31:18'),
(11, 6, 21, 'Jar Cake Vanilla', '4546', 2200.00, 1, '2024-03-07 07:31:18', '2024-03-07 07:31:18'),
(12, 7, 21, 'Jar Cake Vanilla', '4546', 2200.00, 1, '2024-03-07 08:45:19', '2024-03-07 08:45:19'),
(15, 18, 21, 'Jar Cake Vanilla', '4546', 2200.00, 2, '2024-03-14 04:20:53', '2024-03-14 04:20:53');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `regular_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `stock_amount` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `featured_status` tinyint(4) NOT NULL DEFAULT 0,
  `trending_status` tinyint(4) NOT NULL DEFAULT 0,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `short_description`, `long_description`, `meta_title`, `meta_description`, `regular_price`, `selling_price`, `stock_amount`, `status`, `featured_status`, `trending_status`, `sales_count`, `hit_count`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'Regal Jamdani Wooden Dressing Table Antique', '000001', 'Regal Jamdani Wooden Dressing Table Antique', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"font-size: 10pt; font-family: verdana, geneva;\">Regal Jamdani Wooden Dressing Table Antique<br style=\"box-sizing: inherit;\">Product Code: DTH-362-3-1-20<br style=\"box-sizing: inherit;\">Item code: 992559<br style=\"box-sizing: inherit;\">Brand: Regal<br style=\"box-sizing: inherit;\">Material:<span style=\"font-family: verdana, geneva, sans-serif; font-size: 10pt;\">&nbsp;Wood</span><br style=\"box-sizing: inherit;\">Dimension: L-75 X W-43.8 X H-175 CM<br style=\"box-sizing: inherit;\">Color: (Antique)&nbsp;As given picture</span></p><p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 10pt;\"><span style=\"box-sizing: inherit; font-family: verdana, geneva;\"><strong style=\"box-sizing: inherit;\">Specification:</strong></span><br style=\"box-sizing: inherit;\">The Dressing Table is made of durable Veneered Engineered Wood that lasts longer and better withstands wear and tear, 600-pound weight limit<br style=\"box-sizing: inherit;\">Frame &amp; Floor Touch Material: Solid Mahogany Wood<br style=\"box-sizing: inherit;\">Lacquer: High-quality environment-friendly Italian Ultra Violet (UV), Durable and Anti-Fungal lacquer finish<br style=\"box-sizing: inherit;\">Any assembly or installation required will be done by the Regal team<br style=\"box-sizing: inherit;\">Imported high-quality hardware fittings Indoor use only Most of our furniture is made of natural components, which will have natural differences in grain construction and occasional minor blemish</span></p>', 'Regal Jamdani Wooden Dressing Table Antique', 'Regal Jamdani Wooden Dressing Table Antique', 29400, 27930, 50, 1, 0, 0, 0, 0, 'upload/product-images/1708006135.jpeg', '2024-02-15 08:08:55', '2024-02-15 08:08:55'),
(2, 1, 1, 1, 1, 'Regal Bluebell Wooden Dressing Table Antique', '000002', 'Regal Bluebell Wooden Dressing Table Antique', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"font-size: 10pt; font-family: verdana, geneva;\">Regal Bluebell Wooden Dressing Table Antique<br style=\"box-sizing: inherit;\">Product Code: DTH-304-3-1-20-Classic<br style=\"box-sizing: inherit;\">Item code: 812302<br style=\"box-sizing: inherit;\">Brand: Regal<br style=\"box-sizing: inherit;\">Material: Wooden<br style=\"box-sizing: inherit;\">Dimension: 58 (L) X 40 (W) X 180 (H) cm<br style=\"box-sizing: inherit;\">Color: (Antique)&nbsp;As given picture</span></p><p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 10pt;\"><span style=\"box-sizing: inherit; font-family: verdana, geneva;\"><strong style=\"box-sizing: inherit;\">Specification:</strong></span><br style=\"box-sizing: inherit;\">The Dressing Table is made of durable Veneered Engineered Wood that lasts longer and better withstands wear and tear, 600-pound weight limit<br style=\"box-sizing: inherit;\">Frame &amp; Floor Touch Material: Solid Mahogany Wood<br style=\"box-sizing: inherit;\">Lacquer: High-quality environment-friendly Italian Ultra Violet (UV), Durable and Anti-Fungal lacquer finish<br style=\"box-sizing: inherit;\">Any assembly or installation required will be done by the Regal team<br style=\"box-sizing: inherit;\">Imported high-quality hardware fittings Indoor use only Most of our furniture is made of natural components, which will have natural differences in grain construction and occasional minor blemish<br style=\"box-sizing: inherit;\"></span></p>', 'Regal Bluebell Wooden Dressing Table Antique', 'Regal Bluebell Wooden Dressing Table Antique', 16900, 15210, 40, 1, 0, 0, 0, 0, 'upload/product-images/1708006293.jpeg', '2024-02-15 08:11:33', '2024-02-15 08:11:33'),
(3, 1, 1, 2, 1, 'Regal Athena Wooden Dressing Table Antique', '000003', 'Regal Athena Wooden Dressing Table Antique', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"font-size: 10pt; font-family: verdana, geneva;\">Regal Athena Wooden Dressing Table Antique<br style=\"box-sizing: inherit;\">Product Code: DTH-357-3-1-20<br style=\"box-sizing: inherit;\">Item code: 992067<br style=\"box-sizing: inherit;\">Brand: Regal<br style=\"box-sizing: inherit;\">Material:<span style=\"font-family: verdana, geneva, sans-serif; font-size: 10pt;\">&nbsp;Wood</span><br style=\"box-sizing: inherit;\">Dimension: L-90xW-37.5x175 CM<br style=\"box-sizing: inherit;\">Color: (Antique)&nbsp;As given picture</span></p><p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 10pt;\"><span style=\"box-sizing: inherit; font-family: verdana, geneva;\"><strong style=\"box-sizing: inherit;\">Specification:</strong></span><br style=\"box-sizing: inherit;\">The Dressing Table is made of durable Veneered Engineered Wood that lasts longer and better withstands wear and tear, 600-pound weight limit<br style=\"box-sizing: inherit;\">Frame &amp; Floor Touch Material: Solid Mahogany Wood<br style=\"box-sizing: inherit;\">Lacquer: High-quality environment-friendly Italian Ultra Violet (UV), Durable and Anti-Fungal lacquer finish<br style=\"box-sizing: inherit;\">Any assembly or installation required will be done by the Regal team<br style=\"box-sizing: inherit;\">Imported high-quality hardware fittings Indoor use only Most of our furniture is made of natural components, which will have natural differences in grain construction and occasional minor blemish</span></p>', 'Regal Athena Wooden Dressing Table Antique', 'Regal Athena Wooden Dressing Table Antique', 24500, 23500, 79, 1, 0, 0, 0, 0, 'upload/product-images/1708006530.jpeg', '2024-02-15 08:15:30', '2024-02-15 08:15:30'),
(4, 2, 3, 3, 1, 'Fantech K511 Hunter PRO Backlit Gaming Keyboard', '10329', 'Fantech K511 Hunter PRO Backlit Gaming Keyboard', '<p><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Fantech K511 Hunter PRO Backlit Gaming Keyboard</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Brand: Fantech</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Item code: K511</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">104 Total Keys</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">19 Keys Anti-Ghosting</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">RGB Lightning Illumination</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">8 Million Keys Lifetime</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">1.5m Nylon Braided Cable</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Size: 458mm x 187mm x 34mm</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Type of Switch: Membrane</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Switch Lifetime: 8 million clicks</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Replaceable: No</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Total keys: 104</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Multimedia keys: 12</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Anti-ghosting: 19 keys</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Illumination: RGB lighting</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Top Material: ABS Plastic</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Keycaps: Laser Printing</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Core Construction: ABS Plastic</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Weight: 606gr without cable</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Length: 458mm</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Width: 187mm</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Height: 34mm</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Cable Material: PVC</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Cable Length: 1.5m</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Color: Black (as given picture)</span><br></p>', 'Fantech K511 Hunter PRO Backlit Gaming Keyboard', 'Fantech K511 Hunter PRO Backlit Gaming Keyboard', 5454, 4666, 90, 1, 0, 0, 0, 0, 'upload/product-images/1708007474.jpeg', '2024-02-15 08:31:14', '2024-02-15 08:31:14'),
(5, 2, 3, 4, 1, 'A4tech KK-3330 USB Multimedia Keyboard Mouse Combo', '10366', 'A4tech KK-3330 USB Multimedia Keyboard Mouse Combo', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">A4tech KK-3330 USB Multimedia Keyboard Mouse Combo<br style=\"box-sizing: inherit;\">Brand: A4TECH<br style=\"box-sizing: inherit;\">Item code: KK-3330<br style=\"box-sizing: inherit;\">Color: Black (as given picture)</span></p><p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Keyboard &nbsp; &nbsp; &nbsp; &nbsp;</span><br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Multimedia Keys: 12 FN Multimedia Hotkeys &nbsp; &nbsp;</span><br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">DPI: 1200 DPI &nbsp; &nbsp;</span><br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Interface: Mechanical &nbsp; &nbsp;</span><br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Others &nbsp; &nbsp;</span><br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Keyboard: KK-3 &nbsp; &nbsp;</span><br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Keycaps: Traditional &nbsp; &nbsp;</span><br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Splash Proof: Yes &nbsp; &nbsp;</span><br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Rating: 5 V / 100 mA &nbsp; &nbsp;</span><br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Cable Length: 150 cm &nbsp; &nbsp;</span><br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Dimension(LxWxH): 18x6.5x0.8 &nbsp; &nbsp;</span></p><p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Mouse &nbsp; &nbsp; &nbsp; &nbsp;</span><br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Mouse: OP-330(S) &nbsp; &nbsp;</span><br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Cable Length &nbsp; &nbsp;150 cm&nbsp; &nbsp;&nbsp;</span></p>', 'A4tech KK-3330 USB Multimedia Keyboard Mouse Combo', 'A4tech KK-3330 USB Multimedia Keyboard Mouse Combo', 6454, 3445, 645, 1, 0, 0, 0, 0, 'upload/product-images/1708007717.jpeg', '2024-02-15 08:35:17', '2024-02-15 08:35:17'),
(6, 2, 4, 5, 1, 'DIR-615 Z1 300mbps 2 Antenna WiFi Router', '68798070', 'DIR-615 Z1 300mbps 2 Antenna WiFi Router', '<p><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">D-Link DIR-615 Z1 300mbps 2 Antenna WiFi Router</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Brand: D-Link</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Antenna: Two fixed external 2 dBi Omni-directional antennas &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Button: Reset Button &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Frequency: 2.4 GHz to 2.497 GHz &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Interface: 4 10/100 LAN Ports &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">1 10/100 WAN Port &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Network Standard: IEEE 802.11b &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">IEEE 802.11g &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">IEEE 802.11n &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Encryption: WEP 64/128-bit data encryption &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Wi-Fi Protected Access (WPA/WPA2) &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">WPS &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Ports: 5 ports &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Others: UPnP support &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Network Address Translation (NAT) &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Stateful Packet Inspection (SPI) &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">MAC Address Filtering &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">URL Filtering &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Web UI &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">D-Link Network Monitor Yahoo! Widget &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">D-Link Internet Usage Meter Yahoo! Widget &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Operating System Support: Cable or DSL modem with Ethernet port &nbsp; &nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px; text-align: justify;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Computer with: Windows XP SP2, Windows Vista, Windows 7, or Mac OS X (v10.3/v10.4, or Linux-based Operating System</span><br></p>', 'DIR-615 Z1 300mbps 2 Antenna WiFi Router', 'DIR-615 Z1 300mbps 2 Antenna WiFi Router', 54547, 46779, 78, 1, 0, 0, 0, 0, 'upload/product-images/1708008048.jpeg', '2024-02-15 08:40:48', '2024-02-15 08:40:48'),
(7, 3, 5, 6, 1, 'Mens Denim Jacket', '698798', 'Mens Denim Jacket', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Mens Denim Jacket<br style=\"box-sizing: inherit;\">Brand: Winner fashions<br style=\"box-sizing: inherit;\">Item code: 55721<br style=\"box-sizing: inherit;\">Style: MDJKT23-201<br style=\"box-sizing: inherit;\">Fabric: 100% Cotton<br style=\"box-sizing: inherit;\">Excellent Quality Product<br style=\"box-sizing: inherit;\">100% QC Passed<br style=\"box-sizing: inherit;\">Size: M, L, XL.<br style=\"box-sizing: inherit;\">Color: Navy (As given picture)</span></p><p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-family: verdana, geneva, sans-serif; font-size: 10pt;\"><strong style=\"box-sizing: inherit;\">Size Chart:</strong></span></p>', 'Mens Denim Jacket', 'Mens Denim Jacket', 5557, 4354, 88, 1, 0, 0, 0, 0, 'upload/product-images/1708008420.jpeg', '2024-02-15 08:47:00', '2024-02-15 08:47:00'),
(8, 3, 5, 6, 1, 'Mens Winter Jacket', '876576', 'Mens Winter Jacket', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Mens Winter Jacket<br style=\"box-sizing: inherit;\">Brand: Winner fashions<br style=\"box-sizing: inherit;\">Item code: 55713<br style=\"box-sizing: inherit;\">Style: MJKTW23-103<br style=\"box-sizing: inherit;\">Fabric: Micro Fabric<br style=\"box-sizing: inherit;\">Excellent Quality Product<br style=\"box-sizing: inherit;\">100% QC Passed<br style=\"box-sizing: inherit;\">Size: M, L, XL.<br style=\"box-sizing: inherit;\">Color: Maroon(As given picture)</span></p><p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-family: verdana, geneva, sans-serif; font-size: 10pt;\"><strong style=\"box-sizing: inherit;\">Size Chart:</strong></span></p><table border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"width: 411px; border-spacing: 0px; text-indent: 0px; margin: 15px 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 12px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Tahoma, Verdana, Arial, Helvetica, sans-serif; line-height: normal; background-image: none; background-position: 0% 0%; background-size: initial; background-repeat: repeat; background-attachment: scroll; background-origin: initial; background-clip: initial; height: 155px;\"><tbody style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; outline: 0px; vertical-align: baseline; background: transparent;\"><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 28px;\"><td rowspan=\"2\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 104px; height: 58px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">Size<br style=\"box-sizing: inherit;\"></span></strong></td><td colspan=\"2\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 96px; height: 28px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">Measurement (Inch.)</span></strong></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 30px;\"><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 65px; height: 30px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">Length</span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 31px; height: 30px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">Chest</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 30.6667px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 104px; height: 30.6667px;\"><span style=\"box-sizing: inherit; font-family: verdana, geneva, sans-serif; font-size: 10pt;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">M</strong></span></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 65px; height: 30.6667px;\"><span style=\"box-sizing: inherit; font-family: verdana, geneva, sans-serif; font-size: 10pt;\">27</span></td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 31px; height: 30.6667px;\"><span style=\"box-sizing: inherit; font-family: verdana, geneva, sans-serif; font-size: 10pt;\">42</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 30px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 104px; height: 30px;\"><span style=\"box-sizing: inherit; font-family: verdana, geneva, sans-serif; font-size: 10pt;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">L</strong></span></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 65px; height: 30px;\"><span style=\"margin: 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 10pt; vertical-align: baseline; font-family: verdana, geneva, sans-serif; background: none 0% 0% repeat scroll transparent;\"><span style=\"box-sizing: inherit; font-size: 10pt;\">27</span>.5</span></td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 31px; height: 30px;\"><span style=\"margin: 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 10pt; vertical-align: baseline; font-family: verdana, geneva, sans-serif; background: none 0% 0% repeat scroll transparent;\">44</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 30px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 104px; height: 30px;\"><span style=\"box-sizing: inherit; font-family: verdana, geneva, sans-serif; font-size: 10pt;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">XL</strong></span></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 65px; height: 30px;\"><span style=\"margin: 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 10pt; vertical-align: baseline; font-family: verdana, geneva, sans-serif; background: none 0% 0% repeat scroll transparent;\"><span style=\"box-sizing: inherit; font-size: 10pt;\">28</span>.5</span></td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 31px; height: 30px;\"><span style=\"margin: 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 10pt; vertical-align: baseline; font-family: verdana, geneva, sans-serif; background: none 0% 0% repeat scroll transparent;\">46<br><br></span></td></tr></tbody></table>', 'Mens Winter Jacket', 'Mens Winter Jacket', 5454, 5799, 99, 1, 0, 0, 0, 0, 'upload/product-images/1708008682.jpeg', '2024-02-15 08:51:22', '2024-02-15 08:51:22'),
(9, 4, 6, 7, 1, 'New Exclusive Designed Women 2 Piece Set Pink AOP', '698795', 'New Exclusive Designed Women 2 Piece Set Pink AOP', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">New Exclusive Designed Womens Stylish Kurti<br style=\"box-sizing: inherit;\">Brand: Winner fashions<br style=\"box-sizing: inherit;\">Item code:<br style=\"box-sizing: inherit;\">Style No: WIN-WWK-207<br style=\"box-sizing: inherit;\">Product type: Ladies Kurti<br style=\"box-sizing: inherit;\">Fabric: Linen<br style=\"box-sizing: inherit;\">Excellent quality Product<br style=\"box-sizing: inherit;\">Very Comfortable to use in all seasons<br style=\"box-sizing: inherit;\">Size: S, M, L, XL<br style=\"box-sizing: inherit;\">Color:&nbsp;Pink AOP (As given picture)<span style=\"box-sizing: inherit; color: rgb(255, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal;\"><span style=\"box-sizing: inherit; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: 18.5714px;\"><br style=\"box-sizing: inherit;\"></span></span></span></p><table border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"width: 332px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; border-spacing: 0px; text-indent: 0px; margin: 15px 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 12px; vertical-align: baseline; height: 203px; color: rgb(85, 85, 85); font-family: Tahoma, Verdana, Arial, Helvetica, sans-serif; line-height: normal; background-image: none; background-position: 0% 0%; background-size: initial; background-repeat: repeat; background-attachment: scroll; background-origin: initial; background-clip: initial;\"><tbody style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; outline: 0px; vertical-align: baseline; background: transparent;\"><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 28px;\"><td rowspan=\"2\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 78px; width: 105px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Size Chart:</strong></span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 28px; width: 112px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">Measurement (Inch)</strong></span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 112px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">&nbsp;</strong></span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 112px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Body</span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 112px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 10pt; vertical-align: baseline; font-family: verdana, geneva, sans-serif; background: transparent;\">Length</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 105px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">S<br></strong></span></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 112px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 10pt; vertical-align: baseline; font-family: verdana, geneva, sans-serif; background: transparent;\">37</span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 112px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 10pt; vertical-align: baseline; font-family: verdana, geneva, sans-serif; background: transparent;\">41<br style=\"box-sizing: inherit;\"></span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50.0667px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50.0667px; width: 105px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">M</strong></span></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50.0667px; width: 112px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 10pt; vertical-align: baseline; font-family: verdana, geneva, sans-serif; background: transparent;\">39</span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 112px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 10pt; vertical-align: baseline; font-family: verdana, geneva, sans-serif; background: transparent;\">42<br style=\"box-sizing: inherit;\"></span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 105px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\"><strong style=\"box-sizing: inherit;\">L</strong></span></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 112px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">41</span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 112px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">43</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 105px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\"><strong style=\"box-sizing: inherit;\">XL</strong></span></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 112px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">43</span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; width: 112px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">44<br><br></span></td></tr></tbody></table>', 'New Exclusive Designed Women 2 Piece Set Pink AOP', 'New Exclusive Designed Women 2 Piece Set Pink AOP', 86094, 54485, 800, 1, 0, 0, 0, 0, 'upload/product-images/1708009063.jpeg', '2024-02-15 08:57:43', '2024-02-15 08:57:43');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `short_description`, `long_description`, `meta_title`, `meta_description`, `regular_price`, `selling_price`, `stock_amount`, `status`, `featured_status`, `trending_status`, `sales_count`, `hit_count`, `image`, `created_at`, `updated_at`) VALUES
(10, 4, 6, 7, 1, 'Buy Ladies\' One Piece Online at Best Price Ladies\' One Piece', '10325', 'Buy Ladies\' One Piece Online at Best Price\r\nLadies\' One Piece', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Ladies\' One Piece<br style=\"box-sizing: inherit;\">Brand: Winner fashions<br style=\"box-sizing: inherit;\">Item code: 43938<br style=\"box-sizing: inherit;\">Style code: LSKW 21-004<br style=\"box-sizing: inherit;\">Fabrics: Linen<br style=\"box-sizing: inherit;\">Size: S, M, L, XL<br style=\"box-sizing: inherit;\">Color: Mixed (As given picture)</span><span style=\"box-sizing: inherit; color: rgb(255, 0, 0); font-family: verdana, geneva; font-size: small; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal; widows: 1;\"><span style=\"box-sizing: inherit; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: 18.5714px;\"><br style=\"box-sizing: inherit;\"></span></span></p><table cellspacing=\"0\" cellpadding=\"0\" border=\"1\" style=\"width: 332px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; border-spacing: 0px; text-indent: 0px; margin: 15px 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 12px; vertical-align: baseline; height: 203px; color: rgb(85, 85, 85); font-family: Tahoma, Verdana, Arial, Helvetica, sans-serif; line-height: normal; background-image: none; background-position: 0% 0%; background-size: initial; background-repeat: repeat; background-attachment: scroll; background-origin: initial; background-clip: initial;\"><tbody style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; outline: 0px; vertical-align: baseline; background: transparent;\"><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 28px;\"><td rowspan=\"2\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 78px; width: 105.45px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">Size Chart:</strong></span></td><td colspan=\"4\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 28px; width: 224.55px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">Measurement (Inch)</span></strong></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 70.7px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">Bust</span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 68.25px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">&nbsp;Hip<br style=\"box-sizing: inherit;\"></span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 85.6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">Length</span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 85.6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">Sleeve length</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 105.45px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">S<br></span></strong></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 70.7px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">33</span></td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 68.25px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">38</span></td><td data-th=\"Shoulder\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 85.6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">36</span></td><td data-th=\"Shoulder\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 85.6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">15</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50.0667px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50.0667px; width: 105.45px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">M</span></strong></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50.0667px; width: 70.7px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">35</span></td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50.0667px; width: 68.25px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">40</span></td><td data-th=\"Shoulder\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50.0667px; width: 85.6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">38</span></td><td data-th=\"Shoulder\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50.0667px; width: 85.6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">16</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 105.45px;\"><strong style=\"box-sizing: inherit;\">L</strong></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 70.7px;\">37</td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 68.25px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">42</span></td><td data-th=\"Shoulder\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 85.6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">38</span></td><td data-th=\"Shoulder\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 85.6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">16</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 105.45px;\"><strong style=\"box-sizing: inherit;\">XL</strong></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 70.7px;\">39</td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 68.25px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">44</span></td><td data-th=\"Shoulder\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 85.6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">40</span></td><td data-th=\"Shoulder\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 85.6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">17<br><br></span></td></tr></tbody></table>', 'Buy Ladies\' One Piece Online at Best Price\r\nLadies\' One Piece', 'Buy Ladies\' One Piece Online at Best Price\r\nLadies\' One Piece', 5454, 585, 55, 1, 0, 0, 0, 0, 'upload/product-images/1708009166.jpeg', '2024-02-15 08:59:26', '2024-02-15 08:59:26'),
(11, 4, 7, 7, 1, 'Women\'s Fashionable Kurti', '84504', 'Women\'s Fashionable Kurti', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Women\'s Fashionable Kurti<br style=\"box-sizing: inherit;\">Brand: Winner fashions<br style=\"box-sizing: inherit;\">Item code: 55695<br style=\"box-sizing: inherit;\">Product type: Ladies Kurti<br style=\"box-sizing: inherit;\">Style: LKW23-18007<br style=\"box-sizing: inherit;\">Fabric: LC Cotton<br style=\"box-sizing: inherit;\">Size: S, M, L, XL<br style=\"box-sizing: inherit;\">Color: Black (As given picture)</span><span style=\"box-sizing: inherit; color: rgb(255, 0, 0); font-family: verdana, geneva; font-size: small; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal; widows: 1;\"><span style=\"box-sizing: inherit; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: 18.5714px;\"><br style=\"box-sizing: inherit;\"></span></span></p><table border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"width: 332px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; border-spacing: 0px; text-indent: 0px; margin: 15px 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 12px; vertical-align: baseline; height: 203px; color: rgb(85, 85, 85); font-family: Tahoma, Verdana, Arial, Helvetica, sans-serif; line-height: normal; background-image: none; background-position: 0% 0%; background-size: initial; background-repeat: repeat; background-attachment: scroll; background-origin: initial; background-clip: initial;\"><tbody style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; outline: 0px; vertical-align: baseline; background: transparent;\"><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 28px;\"><td rowspan=\"2\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 78px; width: 105.45px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">Size Chart:</strong></span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 28px; width: 224.55px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">Measurement (Inch)</span></strong></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 70.7px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">Bust</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 105.45px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">S<br></span></strong></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 70.7px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">33</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50.0667px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50.0667px; width: 105.45px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">M</span></strong></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50.0667px; width: 70.7px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">35</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 105.45px;\"><strong style=\"box-sizing: inherit;\">L</strong></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 70.7px;\">37</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 105.45px;\"><strong style=\"box-sizing: inherit;\">XL</strong></td><td data-th=\"Length\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 70.7px;\">39<br><br></td></tr></tbody></table>', 'Women\'s Fashionable Kurti', 'Women\'s Fashionable Kurti', 1100, 900, 30, 1, 0, 0, 0, 0, 'upload/product-images/1708257281.jpeg', '2024-02-18 05:54:41', '2024-02-18 05:54:41'),
(12, 4, 8, 7, 1, 'Womens Fashion Tops', '69888', 'Womens Fashion Tops', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Womens Fasion Tops<br style=\"box-sizing: inherit;\">Brand: Winner fashions<br style=\"box-sizing: inherit;\">Item code: 55400<br style=\"box-sizing: inherit;\">Style: WKT-018<br style=\"box-sizing: inherit;\">Fabric: 95% Cotton &amp; 5 % Lycra<br style=\"box-sizing: inherit;\">GSM: 170-180<br style=\"box-sizing: inherit;\">Size: S, M, L.<br style=\"box-sizing: inherit;\">Color: Cream (As given picture)</span><span style=\"box-sizing: inherit; color: rgb(255, 0, 0); font-family: verdana, geneva; font-size: small; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal; widows: 1;\"><span style=\"box-sizing: inherit; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: 18.5714px;\"><br style=\"box-sizing: inherit;\"></span></span></p><table border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"width: 332px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; border-spacing: 0px; text-indent: 0px; margin: 15px 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 12px; vertical-align: baseline; height: 203px; color: rgb(85, 85, 85); font-family: Tahoma, Verdana, Arial, Helvetica, sans-serif; line-height: normal; background-image: none; background-position: 0% 0%; background-size: initial; background-repeat: repeat; background-attachment: scroll; background-origin: initial; background-clip: initial;\"><tbody style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; outline: 0px; vertical-align: baseline; background: transparent;\"><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 28px;\"><td rowspan=\"2\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 78px; width: 105px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">Size Chart:</strong></span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 28px; width: 138px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">Measurement (Inch)</span></strong></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 138px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">&nbsp;Bust<br style=\"box-sizing: inherit;\"></span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 105px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">S<br></span></strong></td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 138px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">33</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50.0667px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50.0667px; width: 105px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">M</span></strong></td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50.0667px; width: 138px;\">35</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 105px;\"><strong style=\"box-sizing: inherit;\">L</strong></td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 138px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">37<br><br></span></td></tr></tbody></table>', 'Womens Fashion Tops', 'Womens Fashion Tops', 1200, 700, 120, 1, 0, 0, 0, 0, 'upload/product-images/1708257456.jpeg', '2024-02-18 05:57:36', '2024-02-18 05:57:36'),
(13, 4, 8, 7, 1, 'Womens Fashion Tops', '78988', 'Womens Fashion Tops', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Womens Fasion Tops<br style=\"box-sizing: inherit;\">Brand: Winner fashions<br style=\"box-sizing: inherit;\">Item code: 55400<br style=\"box-sizing: inherit;\">Style: WKT-018<br style=\"box-sizing: inherit;\">Fabric: 95% Cotton &amp; 5 % Lycra<br style=\"box-sizing: inherit;\">GSM: 170-180<br style=\"box-sizing: inherit;\">Size: S, M, L.<br style=\"box-sizing: inherit;\">Color: Chocolate (As given picture)</span><span style=\"box-sizing: inherit; color: rgb(255, 0, 0); font-family: verdana, geneva; font-size: small; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal; widows: 1;\"><span style=\"box-sizing: inherit; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: 18.5714px;\"><br style=\"box-sizing: inherit;\"></span></span></p><table border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"width: 332px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; border-spacing: 0px; text-indent: 0px; margin: 15px 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 12px; vertical-align: baseline; height: 203px; color: rgb(85, 85, 85); font-family: Tahoma, Verdana, Arial, Helvetica, sans-serif; line-height: normal; background-image: none; background-position: 0% 0%; background-size: initial; background-repeat: repeat; background-attachment: scroll; background-origin: initial; background-clip: initial;\"><tbody style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; outline: 0px; vertical-align: baseline; background: transparent;\"><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 28px;\"><td rowspan=\"2\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 78px; width: 105px;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent;\">Size Chart:</strong></span></td><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 28px; width: 138px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">Measurement (Inch)</span></strong></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 138px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">&nbsp;Bust<br style=\"box-sizing: inherit;\"></span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 105px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">S<br></span></strong></td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 138px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">33</span></td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50.0667px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50.0667px; width: 105px;\"><strong style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">M</span></strong></td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50.0667px; width: 138px;\">35</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: none; border-color: initial; border-image: initial; outline: none 0px; vertical-align: baseline; background: none 0% 0% repeat scroll transparent; height: 50px;\"><td data-th=\"Size Chart:\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: none 0px; vertical-align: middle; text-align: center; background: none 0% 0% repeat scroll transparent; height: 50px; width: 105px;\"><strong style=\"box-sizing: inherit;\">L</strong></td><td data-th=\"Width\" style=\"padding: 5px; margin: 0px; border-width: 2px; border-color: rgb(0, 0, 0); border-image: initial; outline: 0px; vertical-align: middle; text-align: center; background: transparent; height: 50px; width: 138px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: small; vertical-align: baseline; font-family: verdana, geneva; background: transparent;\">37<br><br></span></td></tr></tbody></table>', 'Womens Fashion Tops', 'Womens Fashion Tops', 1100, 900, 70, 1, 0, 0, 0, 0, 'upload/product-images/1708257563.jpeg', '2024-02-18 05:59:23', '2024-02-18 05:59:23'),
(14, 5, 9, 8, 1, 'Mina Water Bottle 450 ML - Printed', '67988', 'Mina Water Bottle 450 ML - Printed', '<p><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-family: verdana, geneva; font-size: 10pt;\">Mina Water Bottle 450 ML - Printed<br style=\"box-sizing: inherit;\"></span><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); text-align: justify; font-family: verdana, geneva; font-size: 10pt;\"><span style=\"box-sizing: inherit; font-size: 10pt;\">Item Code:930350</span><br style=\"box-sizing: inherit;\">Brand: RFL Houseware<br style=\"box-sizing: inherit;\">Product type: Water Bottle<br style=\"box-sizing: inherit;\">Group: Pacific<br style=\"box-sizing: inherit;\">Capacity: 450 ml<br style=\"box-sizing: inherit;\">Material: Polycarbonate<br style=\"box-sizing: inherit;\">Color: (As given picture).</span><br></p>', 'Mina Water Bottle 450 ML - Printed', 'Mina Water Bottle 450 ML - Printed', 500, 300, 100, 1, 0, 0, 0, 0, 'upload/product-images/1708257904.jpeg', '2024-02-18 06:05:04', '2024-02-18 06:05:04'),
(15, 5, 9, 8, 1, 'Italiano Kids Gift -5 Pcs Set', '869765', 'Italiano Kids Gift -5 Pcs Set', '<p><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Italiano Kids Gift -5 Pcs Set</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Item code: 92263</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Brand: Italiano</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Materials: Melamine</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Quantity: 5&nbsp;</span><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 10pt; text-align: justify;\">pcs</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 13.3333px; text-align: justify;\">Color: As given picture.</span><br></p>', 'Italiano Kids Gift -5 Pcs Set', 'Italiano Kids Gift -5 Pcs Set', 677, 477, 30, 1, 0, 0, 0, 0, 'upload/product-images/1708258007.jpeg', '2024-02-18 06:06:47', '2024-02-18 06:06:47'),
(16, 5, 9, 9, 1, 'Kodomo Baby Shampoo Original 200ml', '869988', 'Kodomo Baby Shampoo Original 200ml', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\">Kodomo Baby Shampoo Original 200ml<br style=\"box-sizing: inherit;\">Item code: 1000000226<br style=\"box-sizing: inherit;\">Brand: Kodomo<br style=\"box-sizing: inherit;\">Net weight: 200ml<br style=\"box-sizing: inherit;\">Product type: Shampoo</span></p><p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102); text-align: justify;\"><strong style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt;\"><span style=\"box-sizing: inherit; color: rgb(255, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal; text-align: left;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal;\"><span style=\"box-sizing: inherit; color: rgb(227, 108, 10); font-size: 14.6667px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: 16.8667px;\">Product Delivery Conditions:</span></span></span></span></strong></p><ul style=\"box-sizing: inherit; font-size: 13px; color: rgb(102, 102, 102);\"><ul style=\"box-sizing: inherit; font-size: 1.3rem;\"><li style=\"box-sizing: inherit; text-align: justify;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\"><strong style=\"box-sizing: inherit;\">To add more items of&nbsp;<strong style=\"box-sizing: inherit;\">Daily Shopping</strong>&nbsp;to your cart, please&nbsp;<strong style=\"box-sizing: inherit;\"><a href=\"https://www.othoba.com/daily-shopping\" target=\"_blank\" rel=\"noopener\" style=\"box-sizing: inherit; transition: color 0.3s ease 0s;\"><span style=\"box-sizing: inherit; color: rgb(255, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal; text-align: left;\"><span style=\"box-sizing: inherit; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal;\"><span style=\"box-sizing: inherit; color: rgb(227, 108, 10); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: 16.8667px;\"><span class=\"Apple-converted-space\" style=\"box-sizing: inherit;\">Click here.</span></span></span></span></a></strong></strong></span><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\"><br style=\"box-sizing: inherit;\"></span></li><li style=\"box-sizing: inherit; text-align: justify;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\"><strong style=\"box-sizing: inherit;\">Return/cancellation</strong>: No change will be applicable which are already delivered to customer. If product quality or quantity problem found then customer can return/cancel their order on delivery time with presence of delivery person.<br style=\"box-sizing: inherit;\"></span></li><li style=\"box-sizing: inherit; text-align: justify;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\"><span style=\"box-sizing: inherit; font-size: 10pt;\"><span style=\"box-sizing: inherit; color: rgb(255, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal; text-align: left;\"><span style=\"box-sizing: inherit; color: rgb(227, 108, 10); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: 16.8667px;\"><strong style=\"box-sizing: inherit;\">Note:</strong>&nbsp;Product delivery duration may vary due to product availability in stock.</span></span></span></span></li></ul></ul>', 'Kodomo Baby Shampoo Original 200ml', 'Kodomo Baby Shampoo Original 200ml', 6546, 5663, 50, 1, 0, 0, 0, 0, 'upload/product-images/1708258332.jpeg', '2024-02-18 06:12:12', '2024-02-18 06:12:12');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `short_description`, `long_description`, `meta_title`, `meta_description`, `regular_price`, `selling_price`, `stock_amount`, `status`, `featured_status`, `trending_status`, `sales_count`, `hit_count`, `image`, `created_at`, `updated_at`) VALUES
(17, 1, 11, 10, 1, 'Wellmax Shelf Support For Railing Double Rack - WRDR 427', '765887', 'Wellmax Shelf Support For Railing Double Rack - WRDR 427', '<p><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Wellmax Shelf Support For Railing Double Rack - WRDR 427</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Model : WRDR 427</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Size (L x W x H) : 11 x 7 x 17 Inch</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Material:chrome steel</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Few modern kitchens do without a railing system these days.</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">An ordinary hollow tube with hooks located on it turned out to be an indispensable assistant for housewives, and often it is an ornament and attracts the attention of guests.</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">The double shelf allows you to conveniently place jars for spices on kitchen rails.</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Color: As given picture.</span><br></p>', 'Wellmax Shelf Support For Railing Double Rack - WRDR 427', 'Wellmax Shelf Support For Railing Double Rack - WRDR 427', 656, 501, 50, 1, 0, 0, 0, 0, 'upload/product-images/1708259638.jpeg', '2024-02-18 06:33:58', '2024-02-18 06:33:58'),
(18, 1, 11, 10, 1, 'WELLMAX Creative Kitchen Household Rack', '8697', 'WELLMAX Creative Kitchen Household Rack Chopsticks Wall Mounted Stainless Steel- WCWS 426', '<p><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">WELLMAX Creative Kitchen Household Rack Chopsticks Wall Mounted Stainless Steel- WCWS 426</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Model : WCWS 426</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Creative Kitchen Household Rack Chopsticks</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Wall Mounted Stainless Steel Chopsticks</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Storage Bucket Drain Rack</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Without Hanging Tube</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Size (L x W x H) : 4.5 x 6 x 10 Inch</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 13.3333px;\">Color: As given picture.</span><br></p>', 'WELLMAX Creative Kitchen Household Rack', 'WELLMAX Creative Kitchen Household Rack Chopsticks Wall Mounted Stainless Steel- WCWS 426', 5454, 4552, 80, 1, 0, 0, 0, 0, 'upload/product-images/1708259764.jpeg', '2024-02-18 06:36:04', '2024-02-18 06:36:04'),
(19, 6, 12, 11, 2, 'Chocolate Cake 1kg', '4456', 'Chocolate Cake 1 Pound', '<p><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva; color: rgb(0, 0, 0);\"><span style=\"line-height: 16.8667px;\">Chocolate Cake 1Pound<br style=\"box-sizing: inherit;\">Item code: 46649<br style=\"box-sizing: inherit;\">Brand: Tasty Treat<br style=\"box-sizing: inherit;\">Product Type: Cake</span></span><strong style=\"box-sizing: inherit; color: rgb(227, 108, 10); font-family: verdana, geneva, sans-serif; font-size: 13.3333px;\"><span style=\"box-sizing: inherit; font-size: 10pt;\"><span style=\"font-weight: normal; line-height: 16.8667px;\"><span class=\"Apple-converted-space\"><span style=\"line-height: 16.8667px;\"><strong style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"></strong></span></span></span></span></strong><span style=\"box-sizing: inherit; color: rgb(227, 108, 10); font-family: verdana, geneva, sans-serif; font-size: 10pt;\"><span style=\"line-height: 16.8667px;\"><span class=\"Apple-converted-space\"><span style=\"line-height: 16.8667px;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Net weight:</span></span></span></span></span><span style=\"box-sizing: inherit; color: rgb(227, 108, 10); font-family: verdana, geneva, sans-serif; font-size: 10pt;\"><span style=\"line-height: 16.8667px;\">&nbsp;</span></span><span style=\"box-sizing: inherit; font-family: verdana, geneva, sans-serif; font-size: 10pt; color: rgb(0, 0, 0);\"><span style=\"line-height: 16.8667px;\">1pound</span></span><br></p>', 'Chocolate Cake 1pound', 'Chocolate Cake 1Kg\r\nItem code: 46649\r\nBrand: Tasty Treat\r\nProduct Type: Cake\r\nNet weight: 1Kg', 5000, 4000, 20, 1, 0, 0, 0, 0, 'upload/product-images/1708260126.jpeg', '2024-02-18 06:42:06', '2024-02-18 06:42:06'),
(20, 6, 12, 11, 2, 'Black Forest Cake 1kg For Sylhet Metro', '564496', 'Black Forest Cake 1kg For Sylhet Metro', '<p><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva, sans-serif; font-size: 10pt;\">Black forest cake<br style=\"box-sizing: inherit;\">Item code:&nbsp;46648<br style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt;\"><span style=\"box-sizing: inherit; font-size: 10pt;\">Brand: Tasty Treat</span></span></span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Flavor: Black forest</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Net Weight: 1kg</span><br></p>', 'Black Forest Cake 1kg For Sylhet Metro', 'Black Forest Cake 1kg For Sylhet Metro', 1600, 1400, 30, 1, 0, 0, 0, 0, 'upload/product-images/1708260241.webp', '2024-02-18 06:44:01', '2024-02-18 06:44:01'),
(21, 6, 12, 11, 2, 'Jar Cake Vanilla', '4546', 'Jar Cake Vanilla', '<p><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 10pt;\">Jar Cake Vanilla&nbsp;</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 10pt;\">Item code: 51850</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 10pt;\">Brand: Mithai</span><br style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-size: 13px;\"><span style=\"box-sizing: inherit; color: rgb(102, 102, 102); font-family: verdana, geneva; font-size: 10pt;\">Product Type: Jar cake</span><br></p>', 'Jar Cake Vanilla', 'Jar Cake Vanilla', 2500, 2200, 30, 1, 0, 0, 0, 0, 'upload/product-images/1708260470.jpeg', '2024-02-18 06:47:50', '2024-02-18 06:47:50'),
(22, 6, 13, 12, 3, 'Mr. Noodles 12 pcs Family Pack Masala 62gm x 12pcs', '05145156', 'Mr. Noodles 12 pcs Family Pack Masala 62gm x 12pcs', '<p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102);\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\">Brand:&nbsp;<span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva, sans-serif;\">Mr. Noodles</span><br style=\"box-sizing: inherit;\">Item code:&nbsp;5500000078<br style=\"box-sizing: inherit;\">Quantity: 12 pack<br style=\"box-sizing: inherit;\">Size: 62 gm</span></p><p style=\"box-sizing: inherit; margin-right: auto; margin-bottom: 0px; margin-left: auto; font-size: 13px; line-height: 2; color: rgb(102, 102, 102); text-align: justify;\"><strong style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 10pt;\"><span style=\"box-sizing: inherit; color: rgb(255, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal; text-align: left;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal;\"><span style=\"box-sizing: inherit; color: rgb(227, 108, 10); font-size: 14.6667px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: 16.8667px;\">Product Delivery Conditions:</span></span></span></span></strong></p><ul style=\"box-sizing: inherit; font-size: 13px; color: rgb(102, 102, 102);\"><ul style=\"box-sizing: inherit; font-size: 1.3rem;\"><li style=\"box-sizing: inherit; text-align: justify;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\"><strong style=\"box-sizing: inherit;\">To add more items of&nbsp;<strong style=\"box-sizing: inherit;\">Daily Shopping</strong>&nbsp;to your cart, please&nbsp;<strong style=\"box-sizing: inherit;\"><a href=\"https://www.othoba.com/daily-shopping\" target=\"_blank\" rel=\"noopener\" style=\"box-sizing: inherit; transition: color 0.3s ease 0s;\"><span style=\"box-sizing: inherit; color: rgb(255, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal; text-align: left;\"><span style=\"box-sizing: inherit; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: normal;\"><span style=\"box-sizing: inherit; color: rgb(227, 108, 10); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; line-height: 16.8667px;\"><span class=\"Apple-converted-space\" style=\"box-sizing: inherit;\">Click here.</span></span></span></span></a></strong></strong></span><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\"><br style=\"box-sizing: inherit;\"></span></li><li style=\"box-sizing: inherit; text-align: justify;\"><span style=\"box-sizing: inherit; font-size: 10pt; font-family: verdana, geneva;\"><strong style=\"box-sizing: inherit;\">Return/cancellation</strong>: No change will be applicable which are already delivered to customer. If product quality or quantity problem found then customer can return/cancel their order on delivery time with presence of delivery person.</span></li></ul></ul>', 'Mr. Noodles 12 pcs Family Pack Masala 62gm x 12pcs', 'Mr. Noodles 12 pcs Family Pack Masala 62gm x 12pcs', 300, 250, 50, 1, 0, 0, 0, 0, 'upload/product-images/1708260882.png', '2024-02-18 06:54:42', '2024-02-18 06:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/product-other-images/4659.jpeg', '2024-02-15 08:08:55', '2024-02-15 08:08:55'),
(2, 1, 'upload/product-other-images/3269.jpeg', '2024-02-15 08:08:55', '2024-02-15 08:08:55'),
(3, 1, 'upload/product-other-images/4429.jpeg', '2024-02-15 08:08:55', '2024-02-15 08:08:55'),
(4, 2, 'upload/product-other-images/354.jpeg', '2024-02-15 08:11:33', '2024-02-15 08:11:33'),
(5, 3, 'upload/product-other-images/1085.jpeg', '2024-02-15 08:15:30', '2024-02-15 08:15:30'),
(6, 3, 'upload/product-other-images/1918.jpeg', '2024-02-15 08:15:30', '2024-02-15 08:15:30'),
(7, 3, 'upload/product-other-images/2068.jpeg', '2024-02-15 08:15:30', '2024-02-15 08:15:30'),
(8, 4, 'upload/product-other-images/963.jpeg', '2024-02-15 08:31:14', '2024-02-15 08:31:14'),
(9, 4, 'upload/product-other-images/286.jpeg', '2024-02-15 08:31:14', '2024-02-15 08:31:14'),
(10, 4, 'upload/product-other-images/1146.jpeg', '2024-02-15 08:31:14', '2024-02-15 08:31:14'),
(11, 5, 'upload/product-other-images/3822.jpeg', '2024-02-15 08:35:17', '2024-02-15 08:35:17'),
(12, 5, 'upload/product-other-images/2717.jpeg', '2024-02-15 08:35:17', '2024-02-15 08:35:17'),
(13, 5, 'upload/product-other-images/3484.jpeg', '2024-02-15 08:35:17', '2024-02-15 08:35:17'),
(14, 6, 'upload/product-other-images/305.jpeg', '2024-02-15 08:40:48', '2024-02-15 08:40:48'),
(15, 6, 'upload/product-other-images/534.jpeg', '2024-02-15 08:40:48', '2024-02-15 08:40:48'),
(16, 6, 'upload/product-other-images/1824.jpeg', '2024-02-15 08:40:48', '2024-02-15 08:40:48'),
(17, 7, 'upload/product-other-images/4261.jpeg', '2024-02-15 08:47:00', '2024-02-15 08:47:00'),
(18, 7, 'upload/product-other-images/520.jpeg', '2024-02-15 08:47:00', '2024-02-15 08:47:00'),
(19, 7, 'upload/product-other-images/1732.jpeg', '2024-02-15 08:47:00', '2024-02-15 08:47:00'),
(20, 7, 'upload/product-other-images/924.jpeg', '2024-02-15 08:47:00', '2024-02-15 08:47:00'),
(21, 8, 'upload/product-other-images/1988.jpeg', '2024-02-15 08:51:22', '2024-02-15 08:51:22'),
(22, 8, 'upload/product-other-images/844.jpeg', '2024-02-15 08:51:22', '2024-02-15 08:51:22'),
(23, 8, 'upload/product-other-images/4599.jpeg', '2024-02-15 08:51:22', '2024-02-15 08:51:22'),
(24, 9, 'upload/product-other-images/4928.jpeg', '2024-02-15 08:57:43', '2024-02-15 08:57:43'),
(25, 9, 'upload/product-other-images/3510.jpeg', '2024-02-15 08:57:43', '2024-02-15 08:57:43'),
(26, 9, 'upload/product-other-images/3783.jpeg', '2024-02-15 08:57:43', '2024-02-15 08:57:43'),
(27, 9, 'upload/product-other-images/2719.jpeg', '2024-02-15 08:57:43', '2024-02-15 08:57:43'),
(28, 10, 'upload/product-other-images/967.jpeg', '2024-02-15 08:59:26', '2024-02-15 08:59:26'),
(29, 10, 'upload/product-other-images/4776.jpeg', '2024-02-15 08:59:26', '2024-02-15 08:59:26'),
(30, 10, 'upload/product-other-images/275.jpeg', '2024-02-15 08:59:26', '2024-02-15 08:59:26'),
(31, 11, 'upload/product-other-images/3761.jpeg', '2024-02-18 05:54:41', '2024-02-18 05:54:41'),
(32, 11, 'upload/product-other-images/1036.jpeg', '2024-02-18 05:54:41', '2024-02-18 05:54:41'),
(33, 12, 'upload/product-other-images/2114.jpeg', '2024-02-18 05:57:36', '2024-02-18 05:57:36'),
(34, 12, 'upload/product-other-images/413.jpeg', '2024-02-18 05:57:36', '2024-02-18 05:57:36'),
(35, 13, 'upload/product-other-images/939.jpeg', '2024-02-18 05:59:23', '2024-02-18 05:59:23'),
(36, 13, 'upload/product-other-images/3715.jpeg', '2024-02-18 05:59:23', '2024-02-18 05:59:23'),
(37, 13, 'upload/product-other-images/2427.jpeg', '2024-02-18 05:59:23', '2024-02-18 05:59:23'),
(38, 14, 'upload/product-other-images/3542.jpeg', '2024-02-18 06:05:04', '2024-02-18 06:05:04'),
(39, 14, 'upload/product-other-images/3086.jpeg', '2024-02-18 06:05:04', '2024-02-18 06:05:04'),
(40, 15, 'upload/product-other-images/2732.jpeg', '2024-02-18 06:06:47', '2024-02-18 06:06:47'),
(41, 15, 'upload/product-other-images/1680.jpeg', '2024-02-18 06:06:47', '2024-02-18 06:06:47'),
(42, 16, 'upload/product-other-images/2108.jpeg', '2024-02-18 06:12:12', '2024-02-18 06:12:12'),
(43, 16, 'upload/product-other-images/260.jpeg', '2024-02-18 06:12:12', '2024-02-18 06:12:12'),
(44, 17, 'upload/product-other-images/4918.jpeg', '2024-02-18 06:33:58', '2024-02-18 06:33:58'),
(45, 17, 'upload/product-other-images/4688.jpeg', '2024-02-18 06:33:58', '2024-02-18 06:33:58'),
(46, 17, 'upload/product-other-images/4987.jpeg', '2024-02-18 06:33:58', '2024-02-18 06:33:58'),
(47, 18, 'upload/product-other-images/2483.jpeg', '2024-02-18 06:36:04', '2024-02-18 06:36:04'),
(48, 18, 'upload/product-other-images/2695.jpeg', '2024-02-18 06:36:04', '2024-02-18 06:36:04'),
(49, 19, 'upload/product-other-images/1128.jpeg', '2024-02-18 06:42:06', '2024-02-18 06:42:06'),
(50, 20, 'upload/product-other-images/2965.jpeg', '2024-02-18 06:44:01', '2024-02-18 06:44:01'),
(51, 20, 'upload/product-other-images/4132.webp', '2024-02-18 06:44:01', '2024-02-18 06:44:01'),
(52, 20, 'upload/product-other-images/1657.webp', '2024-02-18 06:44:01', '2024-02-18 06:44:01'),
(53, 21, 'upload/product-other-images/4855.jpeg', '2024-02-18 06:47:50', '2024-02-18 06:47:50'),
(54, 22, 'upload/product-other-images/3196.png', '2024-02-18 06:54:42', '2024-02-18 06:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0ga2hQSSYBCgtGVPF9oX6MVuvJ3pcQ3IfgBSMYSS', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieldLWVZNTTNMZXhMTGY1Q2QxYjUyQ3F3MGcxQ1U5Q0xtejhGMXV3MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1710411674),
('2PJk0h6oB4B7o5iCaBq32SH5JHNCp1Ml3hFpXpmU', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibUpDd3JlWm5jaXh1a1ZoamdCQmJpTDdObGgxZjRKaWVFUFhDaFAxUyI7czoxMToiY3VzdG9tZXJfaWQiO3M6MjoiMTEiO3M6MTM6ImN1c3RvbWVyX25hbWUiO3M6OToiS29yaW0gQm94IjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo1MjoiaHR0cDovL2xvY2FsaG9zdC9lY29tbS1iYXRjaDEwL3B1YmxpYy9jb21wbGV0ZS1vcmRlciI7fX0=', 1710412312),
('Am3mWH8yYjZQZILSh3RqReHNoGOyFdi8mOmOPOTI', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYTc4cm9WRmdvZTRaNnZTNWRZYVR2MkRQZmU3Mm5zMUN3RTBXZE50WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1710412036),
('bkMrXXA2OcOFw0OXbRoVIYUYDueEN9iN5b0J2Zwe', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiejlvSHNCalA3ZnJOblFjU3ZMaHM2VUhvY2NlWU9xZjNPTlJaUG5CTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbW0tYmF0Y2gxMC9wdWJsaWMvY2hlY2tvdXQiO31zOjQ6ImNhcnQiO2E6MTp7czo3OiJkZWZhdWx0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiIwZmRmODVkMjgxODIzNWViMmFlMTRmNjEwM2Y3NDk5YSI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjg6e3M6NToicm93SWQiO3M6MzI6IjBmZGY4NWQyODE4MjM1ZWIyYWUxNGY2MTAzZjc0OTlhIjtzOjI6ImlkIjtzOjE6IjIiO3M6MzoicXR5IjtzOjE6IjEiO3M6NDoibmFtZSI7czo0NDoiUmVnYWwgQmx1ZWJlbGwgV29vZGVuIERyZXNzaW5nIFRhYmxlIEFudGlxdWUiO3M6NToicHJpY2UiO2Q6MTUyMTA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czo0OiJjb2RlIjtzOjY6IjAwMDAwMiI7czo1OiJpbWFnZSI7czozNzoidXBsb2FkL3Byb2R1Y3QtaW1hZ2VzLzE3MDgwMDYyOTMuanBlZyI7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToxNTt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6Mzoic3VtIjtkOjE1MjEwO30=', 1710411971),
('iF1bs8OjCbrMbFh3YaK753C0lxDnXddPrV56lK4F', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY2FSSFlIanJTeGowME5kWkp2TTVFeUw5ektGZ2ExZ3hrZkpGc0Y2cCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1710412248),
('KKildo9oPkwLz7tQZFt5YpXBfpGClkVZ6WlhirsA', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoidHlkRU5ndmNWWUVtZHBQQzhyRVplNzZMWUNGVjBEajlnWVlFNFc0NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbW0tYmF0Y2gxMC9wdWJsaWMvY29tcGxldGUtb3JkZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjQ6ImNhcnQiO2E6MTp7czo3OiJkZWZhdWx0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czozOiJzdW0iO2Q6MjIwMDtzOjExOiJjdXN0b21lcl9pZCI7aToxMDtzOjEzOiJjdXN0b21lcl9uYW1lIjtzOjEyOiJTYWhhZGF0IEtoYW4iO30=', 1710082269),
('kXPAzlWLmUZGOKAWgkgcKugjeBpt6VnbuVOybeAN', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOHp5cnpxYjNyNWpraTFnbklwdE5SR2xidTlDbldWTTF0ZnlBeUwyRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbW0tYmF0Y2gxMC9wdWJsaWMvZXhhbXBsZTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjQ6ImNhcnQiO2E6MTp7czo3OiJkZWZhdWx0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiI5Mzc1NWQ2OTljNGVjMjdlNGZhYmFkNzIwNGQwNDljNSI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjg6e3M6NToicm93SWQiO3M6MzI6IjkzNzU1ZDY5OWM0ZWMyN2U0ZmFiYWQ3MjA0ZDA0OWM1IjtzOjI6ImlkIjtzOjE6IjEiO3M6MzoicXR5IjtzOjE6IjEiO3M6NDoibmFtZSI7czo0MzoiUmVnYWwgSmFtZGFuaSBXb29kZW4gRHJlc3NpbmcgVGFibGUgQW50aXF1ZSI7czo1OiJwcmljZSI7ZDoyNzkzMDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YToyOntzOjQ6ImNvZGUiO3M6NjoiMDAwMDAxIjtzOjU6ImltYWdlIjtzOjM3OiJ1cGxvYWQvcHJvZHVjdC1pbWFnZXMvMTcwODAwNjEzNS5qcGVnIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtOO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjE1O319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czozOiJzdW0iO2Q6Mjc5MzA7fQ==', 1710239655),
('MScDhGTt7kSIiVkmnlvNVOmcvgNolFdi60gKCShF', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoieHg1ZTZROVVoekJLdVU2MG9XWnZBNGV1WUhkZmF6TExpcWgzZGxSciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbW0tYmF0Y2gxMC9wdWJsaWMvY2hlY2tvdXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjQ6ImNhcnQiO2E6MTp7czo3OiJkZWZhdWx0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiJhZjdiZjExMTRlOWVkMTg3NWQ0ZTE2MDNlMjYxNDU4YiI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjg6e3M6NToicm93SWQiO3M6MzI6ImFmN2JmMTExNGU5ZWQxODc1ZDRlMTYwM2UyNjE0NThiIjtzOjI6ImlkIjtzOjI6IjIxIjtzOjM6InF0eSI7czoxOiIyIjtzOjQ6Im5hbWUiO3M6MTY6IkphciBDYWtlIFZhbmlsbGEiO3M6NToicHJpY2UiO2Q6MjIwMDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YToyOntzOjQ6ImNvZGUiO3M6NDoiNDU0NiI7czo1OiJpbWFnZSI7czozNzoidXBsb2FkL3Byb2R1Y3QtaW1hZ2VzLzE3MDgyNjA0NzAuanBlZyI7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToxNTt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6Mzoic3VtIjtkOjQ0MDA7czoxMToiY3VzdG9tZXJfaWQiO2k6MTE7czoxMzoiY3VzdG9tZXJfbmFtZSI7czo5OiJLb3JpbSBCb3giO30=', 1710411646),
('N5rXjPe1TQy0JkufpsoLROMrD2xE8wj7hWiC8eI5', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblVMelBsN1Vhd1BjcXBpUjE2NzFyaHB2cnVSdW41bW5IRGQwQXZYNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbW0tYmF0Y2gxMC9wdWJsaWMvY2hlY2tvdXQiO319', 1710412214),
('TiZh8vxr811TCOk3V2AAQK62J0aNry0wJ9Upc0nC', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN2ptZTRmUHBWWnNkWTNDVW1Sb2RqaDEzd1VtUU50UzVwdFhmb3pXZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1710411710),
('toaFFuuBVEts2tfVZOvVnIfiFzn0SCdubQ60zIsP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNmRkc1NrcEZRcUtZWTg3bE9RbnNkSEFvVVJudGNGdmZwQmd2RnNTTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbW0tYmF0Y2gxMC9wdWJsaWMvY3VzdG9tZXItZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiYWY3YmYxMTE0ZTllZDE4NzVkNGUxNjAzZTI2MTQ1OGIiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo4OntzOjU6InJvd0lkIjtzOjMyOiJhZjdiZjExMTRlOWVkMTg3NWQ0ZTE2MDNlMjYxNDU4YiI7czoyOiJpZCI7czoyOiIyMSI7czozOiJxdHkiO3M6MToiMSI7czo0OiJuYW1lIjtzOjE2OiJKYXIgQ2FrZSBWYW5pbGxhIjtzOjU6InByaWNlIjtkOjIyMDA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czo0OiJjb2RlIjtzOjQ6IjQ1NDYiO3M6NToiaW1hZ2UiO3M6Mzc6InVwbG9hZC9wcm9kdWN0LWltYWdlcy8xNzA4MjYwNDcwLmpwZWciO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MTU7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjM6InN1bSI7ZDoyMjAwO3M6MTE6ImN1c3RvbWVyX2lkIjtpOjEwO3M6MTM6ImN1c3RvbWVyX25hbWUiO3M6MTI6IlNhaGFkYXQgS2hhbiI7fQ==', 1710406457),
('UgHQsVHFj9fa1cnpB3WQW7GL8gm3rTBVSt3J5XAn', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiQVhtbkxCbGtlT0tnOVJaMm1DMkc0Mk9vM3NBeEFiUXptUmxURUFPWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbW0tYmF0Y2gxMC9wdWJsaWMvY291cmllciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6Mzoic3VtIjtkOjQ4NTQ7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRMVTRnWGJJWXMyQkJrdjJ5blRPNGcuc3l1eEM1NEVQMmdVTDdad0ZBcmtpdVRFOFN0UjBWeSI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozMjoiNmVlOWYyNGQ2MzhhNzM2OTM0YjY5NmY0YWNjMzNlYTQiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo4OntzOjU6InJvd0lkIjtzOjMyOiI2ZWU5ZjI0ZDYzOGE3MzY5MzRiNjk2ZjRhY2MzM2VhNCI7czoyOiJpZCI7czoyOiIyMiI7czozOiJxdHkiO3M6MToiMiI7czo0OiJuYW1lIjtzOjUwOiJNci4gTm9vZGxlcyAxMiBwY3MgRmFtaWx5IFBhY2sgTWFzYWxhIDYyZ20geCAxMnBjcyI7czo1OiJwcmljZSI7ZDoyNTA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czo0OiJjb2RlIjtzOjg6IjA1MTQ1MTU2IjtzOjU6ImltYWdlIjtzOjM2OiJ1cGxvYWQvcHJvZHVjdC1pbWFnZXMvMTcwODI2MDg4Mi5wbmciO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MTU7fXM6MzI6ImQyMjUwZjIyOWM4NjA0N2FkOGUyMTVjNDliZWJjYTE1IjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6ODp7czo1OiJyb3dJZCI7czozMjoiZDIyNTBmMjI5Yzg2MDQ3YWQ4ZTIxNWM0OWJlYmNhMTUiO3M6MjoiaWQiO3M6MToiNyI7czozOiJxdHkiO3M6MToiMSI7czo0OiJuYW1lIjtzOjE3OiJNZW5zIERlbmltIEphY2tldCI7czo1OiJwcmljZSI7ZDo0MzU0O3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjI6e3M6NDoiY29kZSI7czo2OiI2OTg3OTgiO3M6NToiaW1hZ2UiO3M6Mzc6InVwbG9hZC9wcm9kdWN0LWltYWdlcy8xNzA4MDA4NDIwLmpwZWciO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MTU7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX19', 1711018881);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dressing Table', 'Dressing Table', 'upload/sub-category-images/1708005760.jpeg', 1, '2024-02-15 08:02:40', '2024-02-15 08:02:40'),
(2, 2, 'Smartwatch', 'Smartwatch', 'upload/sub-category-images/1708007203.jpeg', 1, '2024-02-15 08:26:43', '2024-02-15 08:26:43'),
(3, 2, 'Computer Accessories', 'Computer Accessories', 'upload/sub-category-images/1708007264.jpeg', 1, '2024-02-15 08:27:44', '2024-02-15 08:27:44'),
(4, 2, 'Modem & Router', 'Modem & Router', 'upload/sub-category-images/1708007836.jpg', 1, '2024-02-15 08:37:16', '2024-02-15 08:37:16'),
(5, 3, 'Men\'s Clothing', 'Men\'s Clothing', 'upload/sub-category-images/1708008201.jpeg', 1, '2024-02-15 08:43:21', '2024-02-15 08:43:21'),
(6, 4, 'Kamis 2 Pcs', 'Kamis 2 Pcs', 'upload/sub-category-images/1708008865.jpeg', 1, '2024-02-15 08:54:25', '2024-02-18 05:51:42'),
(7, 4, 'Kurti', 'Kurti', 'upload/sub-category-images/1708257178.jpeg', 1, '2024-02-18 05:52:58', '2024-02-18 05:52:58'),
(8, 4, 'Tops', 'Tops', 'upload/sub-category-images/1708257353.jpeg', 1, '2024-02-18 05:55:53', '2024-02-18 05:55:53'),
(9, 5, 'Baby Accessories', 'Baby Accessories', 'upload/sub-category-images/1708257724.jpeg', 1, '2024-02-18 06:02:04', '2024-02-18 06:02:04'),
(10, 5, 'Baby Care', 'Baby Care', 'upload/sub-category-images/1708258131.jpeg', 1, '2024-02-18 06:08:51', '2024-02-18 06:08:51'),
(11, 1, 'Kitchen & Dining', 'Kitchen & Dining', 'upload/sub-category-images/1708259193.jpeg', 1, '2024-02-18 06:26:33', '2024-02-18 06:26:33'),
(12, 6, 'Cake & Pastry', 'Cake & Pastry', 'upload/sub-category-images/1708259931.jpeg', 1, '2024-02-18 06:38:51', '2024-02-18 06:38:51'),
(13, 6, 'Groceries', 'Groceries', 'upload/sub-category-images/1708260676.jpeg', 1, '2024-02-18 06:51:16', '2024-02-18 06:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PCS', '001', 'PCS', 1, '2024-02-15 08:05:55', '2024-02-15 08:05:55'),
(2, 'Pound', '002', 'Pound', 1, '2024-02-18 06:39:55', '2024-02-18 06:39:55'),
(3, 'Packet', '004', 'Packet', 1, '2024-02-18 06:53:19', '2024-02-18 06:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Masum', 'admin@admin.com', NULL, '$2y$12$LU4gXbIYs2BBkv2ynTO4g.syuxC54EP2gUL7ZwFArkiuTE8StR0Vy', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-15 07:53:36', '2024-02-15 07:53:36'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$12$Y6YVUjYEM1IQOrY5VsUaTOsqgXOL4iYAuHYwoMvZtXADKzaZvrVhC', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-22 06:01:42', '2024-02-22 06:01:42'),
(3, 'Nobin Khan', 'nobin@gmail.com', NULL, '$2y$12$ZU2bY6tL.nL20v5ry1MgCepKa3sUb9oAxwbno18CEckXFRa/KGHx2', NULL, NULL, NULL, NULL, NULL, 'upload/user-images/272492.webp', '2024-03-21 04:03:01', '2024-03-21 04:03:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `couriers_name_unique` (`name`),
  ADD UNIQUE KEY `couriers_email_unique` (`email`),
  ADD UNIQUE KEY `couriers_mobile_unique` (`mobile`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
