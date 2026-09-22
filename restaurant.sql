-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 07:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `adddishes`
--

CREATE TABLE `adddishes` (
  `id` bigint(20) NOT NULL,
  `dish_name` varchar(100) NOT NULL,
  `dish_category` varchar(100) NOT NULL,
  `dish_description` varchar(500) NOT NULL,
  `offer_price` varchar(15) NOT NULL,
  `actual_price` varchar(15) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adddishes`
--

INSERT INTO `adddishes` (`id`, `dish_name`, `dish_category`, `dish_description`, `offer_price`, `actual_price`, `image`) VALUES
(22, 'Kung Pao Chicken', 'Chinese', 'Fresh Chinese dish at just Rs.300', '300', '370', 'images/chinese1_NZTBGzt.webp'),
(24, 'Pizza Margherita', 'Italian', 'Fresh Italian dish at just Rs.250', '250', '350', 'images/italian6_G94x0Hs.jpg'),
(25, 'Pulihora', 'Indian', 'Fresh Indian dish at just Rs.300', '300', '320', 'images/indian1_kxq87kW.jpg'),
(26, 'Croquetas', 'Spanish', 'Fresh Spanish dish at just Rs.210', '210', '300', 'images/span1_IPTtJVt.webp'),
(27, 'Ma Po Tofu', 'Chinese', 'Fresh Chinese dish at just Rs.200', '200', '320', 'images/chinese4.webp'),
(28, 'Pisto', 'Spanish', 'Fresh Spanish dish at just Rs.280', '280', '350', 'images/span3.jpg'),
(29, 'Tater tots', 'American', 'Fresh American dish at just Rs.430', '430', '480', 'images/amer1.jpg'),
(30, 'Dal makhani', 'Indian', 'Fresh Italian dish at just Rs.180', '180', '250', 'images/indian3_GdRX74t.jpg'),
(31, 'Gazpacho', 'Spanish', 'Fresh Spanish dish at just Rs.280', '280', '370', 'images/span2.webp'),
(32, 'Banana split', 'American', 'Fresh American dish at just Rs.320', '320', '400', 'images/amer4_jWMaJCT.jpg'),
(33, 'Jambalaya', 'American', 'Fresh American dish at just Rs.250', '250', '320', 'images/amer5.jpg'),
(34, 'Chow Mein', 'Chinese', 'Fresh Chinese dish at just Rs.300', '300', '320', 'images/chinese5.webp');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add add dishes', 7, 'add_adddishes'),
(26, 'Can change add dishes', 7, 'change_adddishes'),
(27, 'Can delete add dishes', 7, 'delete_adddishes'),
(28, 'Can view add dishes', 7, 'view_adddishes'),
(29, 'Can add signup', 8, 'add_signup'),
(30, 'Can change signup', 8, 'change_signup'),
(31, 'Can delete signup', 8, 'delete_signup'),
(32, 'Can view signup', 8, 'view_signup'),
(33, 'Can add bag', 9, 'add_bag'),
(34, 'Can change bag', 9, 'change_bag'),
(35, 'Can delete bag', 9, 'delete_bag'),
(36, 'Can view bag', 9, 'view_bag'),
(37, 'Can add order', 10, 'add_order'),
(38, 'Can change order', 10, 'change_order'),
(39, 'Can delete order', 10, 'delete_order'),
(40, 'Can view order', 10, 'view_order'),
(41, 'Can add contactus', 11, 'add_contactus'),
(42, 'Can change contactus', 11, 'change_contactus'),
(43, 'Can delete contactus', 11, 'delete_contactus'),
(44, 'Can view contactus', 11, 'view_contactus');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$1mA47w5ZDpx6z7TB0VzcJ2$537saIx8wJb09zxhkIGa9cmAiPR9cELsVR9XMy+asGg=', '2023-08-12 05:00:27.228794', 0, 'anusidhu', 'anu', 'sidhu', 'anusidhu403@gmail.com', 0, 1, '2023-08-01 04:36:47.005323'),
(2, 'pbkdf2_sha256$600000$8TcrecAkfeYbGi6cWxzSmv$QrFuy/hrgLpUKyXhzbocHMt8jSXFhiDiE/wSL7XUAHE=', '2023-08-03 15:06:22.072304', 0, 'divyanshu', 'divyanshu', 'sharma', 'divyanshu@gmail.com', 0, 1, '2023-08-03 14:50:10.398295');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bag`
--

CREATE TABLE `bag` (
  `id` bigint(20) NOT NULL,
  `dish_id` varchar(15) NOT NULL,
  `dish_name` varchar(100) NOT NULL,
  `dish_price` varchar(15) NOT NULL,
  `quantity` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `total_pr` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `username`, `email`, `message`) VALUES
(1, 'anusidhu', 'anusidhu403@gmail.com', '        hlooo'),
(2, 'anusidhu', 'anusidhu403@gmail.com', '        hlooo'),
(3, 'anusidhu', 'anusidhu403@gmail.com', '        hlooooooooo');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'myrestaurant', 'adddishes'),
(9, 'myrestaurant', 'bag'),
(11, 'myrestaurant', 'contactus'),
(10, 'myrestaurant', 'order'),
(8, 'myrestaurant', 'signup'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-31 11:30:50.215573'),
(2, 'auth', '0001_initial', '2023-07-31 11:30:50.686045'),
(3, 'admin', '0001_initial', '2023-07-31 11:30:50.801200'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-31 11:30:50.808801'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-31 11:30:50.821507'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-07-31 11:30:50.909036'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-07-31 11:30:50.962484'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-07-31 11:30:51.010838'),
(9, 'auth', '0004_alter_user_username_opts', '2023-07-31 11:30:51.021759'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-07-31 11:30:51.094709'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-07-31 11:30:51.098203'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-07-31 11:30:51.107826'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-07-31 11:30:51.141640'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-07-31 11:30:51.173791'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-07-31 11:30:51.204789'),
(16, 'auth', '0011_update_proxy_permissions', '2023-07-31 11:30:51.212594'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-07-31 11:30:51.248270'),
(18, 'myrestaurant', '0001_initial', '2023-07-31 11:30:51.288439'),
(19, 'sessions', '0001_initial', '2023-07-31 11:30:51.341755'),
(20, 'myrestaurant', '0002_bag', '2023-08-01 05:13:07.422817'),
(21, 'myrestaurant', '0003_bag_total_pr', '2023-08-01 05:59:26.569751'),
(22, 'myrestaurant', '0004_order', '2023-08-03 04:44:26.389736'),
(23, 'myrestaurant', '0005_rename_total_price_order_total_pr', '2023-08-03 05:41:07.670689'),
(24, 'myrestaurant', '0006_contactus', '2023-08-04 04:56:23.200948'),
(25, 'myrestaurant', '0007_order_card_number_order_cvv_order_expiry_date', '2023-08-07 06:26:03.488965'),
(26, 'myrestaurant', '0008_order_status', '2023-08-07 06:38:50.510138');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2eniq28hml1cn9wp5r72kb1feabc67ao', '.eJxVjEEOwiAQRe_C2hCgwIhL9z0DmRlAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xSuIitDj9boT8yG0H6Y7tNkue27pMJHdFHrTLcU75eT3cv4OKvX7roNFCAAgEpQzkEMEPKnmbgqHsPDEUUIH5bIpBVQp61Nk7a5m1ARLvD-cTOD0:1qUQhC:JX3N1o1UDkC5ixYj5woRagZbRzF_iI1SHbvODXYeQnI', '2023-08-25 11:52:46.492604'),
('d1qouqdjdwczt6819hmu741dcum7rwcp', '.eJxVjEEOwiAQRe_C2hCgwIhL9z0DmRlAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xSuIitDj9boT8yG0H6Y7tNkue27pMJHdFHrTLcU75eT3cv4OKvX7roNFCAAgEpQzkEMEPKnmbgqHsPDEUUIH5bIpBVQp61Nk7a5m1ARLvD-cTOD0:1qRnYx:v58tzVxzgAuMUGrFgM_wR4Z-a9gOSa_1CE4Zw-8ou08', '2023-08-18 05:41:23.966604'),
('e5m0f7lbbvlhyuqxogz6tmkz8syxeeth', '.eJxVjEEOwiAQRe_C2hCgwIhL9z0DmRlAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xSuIitDj9boT8yG0H6Y7tNkue27pMJHdFHrTLcU75eT3cv4OKvX7roNFCAAgEpQzkEMEPKnmbgqHsPDEUUIH5bIpBVQp61Nk7a5m1ARLvD-cTOD0:1qQnbM:c4cHeZ4u3MrlW4EOkQ7UN70BSk_SQbLLPldgpnNLc6M', '2023-08-15 11:31:44.280970'),
('kv6q60xvywc1mbkpxhi49gzdsywvoqyg', '.eJxVjMsOwiAQRf-FtSE8hgIu3fsNZBhAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hTuzMFDv9bhHpkdsO0h3brXPqbV3myHeFH3Twa0_5eTncv4OKo35rqynHyQgEJ4sAlEZ7yjQlUYRFhR5d0cK56MFHEABWSemUgWSIJFr2_gDWuTc1:1qRZuA:X4I-OLzpC7_rKlcaJc54BnkEUoaHRekwU8DXz-TW7Ug', '2023-08-17 15:06:22.075501');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_dishes` varchar(100) NOT NULL,
  `total_pr` varchar(15) NOT NULL,
  `payment` varchar(15) NOT NULL,
  `card_number` varchar(100) NOT NULL,
  `cvv` varchar(15) NOT NULL,
  `expiry_date` varchar(15) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `firstname`, `lastname`, `email`, `contact`, `address`, `total_dishes`, `total_pr`, `payment`, `card_number`, `cvv`, `expiry_date`, `status`) VALUES
(28, 'anu', 'sidhu', 'anusidhu@gmail.com', '8872423904', 'hsp', '[\'Pizza Margherita\', \'Pulihora\', \'Pisto\', \'Pizza Margherita\', \'Pulihora\', \'Pisto\']', '1330', 'cashondelivery', '1', '1', '1', 'pending'),
(29, 'anu', 'sidhu', 'anusidhu@gmail.com', '8872423904', 'hsp', '[\'Pizza Margherita\', \'Pulihora\', \'Pizza Margherita\', \'Pulihora\']', '550', 'creditcard', '2324244675', '123', '2023-08-25', '1'),
(30, 'divyanshu', 'sharma', 'divyanshu@gmail.com', '1234566788', 'hsp', '[\'Pizza Margherita\', \'Pizza Margherita\']', '250', 'cod', '', '', '', '1'),
(31, 'anu', 'sidhu', 'anusidhu@gmail.com', '8872423904', 'banga', '[\'Pizza Margherita\', \'Pizza Margherita\']', '750', 'cod', '', '', '', 'order confirmed'),
(32, 'anu', 'sidhu', 'anusidhu@gmail.com', '8872423904', 'hsp', '[\'Pizza Margherita\']', '750', 'cod', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(15) NOT NULL,
  `confirm_password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adddishes`
--
ALTER TABLE `adddishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bag`
--
ALTER TABLE `bag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adddishes`
--
ALTER TABLE `adddishes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bag`
--
ALTER TABLE `bag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
