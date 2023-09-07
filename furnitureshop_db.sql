-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 03:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furnitureshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add signup', 7, 'add_signup'),
(26, 'Can change signup', 7, 'change_signup'),
(27, 'Can delete signup', 7, 'delete_signup'),
(28, 'Can view signup', 7, 'view_signup'),
(29, 'Can add add product', 8, 'add_addproduct'),
(30, 'Can change add product', 8, 'change_addproduct'),
(31, 'Can delete add product', 8, 'delete_addproduct'),
(32, 'Can view add product', 8, 'view_addproduct'),
(33, 'Can add createshop', 9, 'add_createshop'),
(34, 'Can change createshop', 9, 'change_createshop'),
(35, 'Can delete createshop', 9, 'delete_createshop'),
(36, 'Can view createshop', 9, 'view_createshop'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add orders', 11, 'add_orders'),
(42, 'Can change orders', 11, 'change_orders'),
(43, 'Can delete orders', 11, 'delete_orders'),
(44, 'Can view orders', 11, 'view_orders');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'account', 'addproduct'),
(9, 'account', 'createshop'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'main_pages', 'signup'),
(10, 'orders', 'cart'),
(11, 'orders', 'orders'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'account', '0001_initial', '2023-01-23 09:04:32.903062'),
(2, 'contenttypes', '0001_initial', '2023-01-23 09:04:32.935974'),
(3, 'auth', '0001_initial', '2023-01-23 09:04:33.270053'),
(4, 'admin', '0001_initial', '2023-01-23 09:04:33.361807'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-01-23 09:04:33.368790'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-23 09:04:33.374774'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-01-23 09:04:33.423643'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-01-23 09:04:33.457551'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-01-23 09:04:33.475504'),
(10, 'auth', '0004_alter_user_username_opts', '2023-01-23 09:04:33.482486'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-01-23 09:04:33.518388'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-01-23 09:04:33.521387'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-01-23 09:04:33.528363'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-01-23 09:04:33.543323'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-01-23 09:04:33.556287'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-01-23 09:04:33.572246'),
(17, 'auth', '0011_update_proxy_permissions', '2023-01-23 09:04:33.580224'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-01-23 09:04:33.594200'),
(19, 'main_pages', '0001_initial', '2023-01-23 09:04:33.612138'),
(21, 'sessions', '0001_initial', '2023-01-23 09:04:33.657019'),
(22, 'orders', '0001_initial', '2023-01-23 09:33:15.814381'),
(23, 'orders', '0002_alter_cart_cart_image', '2023-01-23 09:41:15.508375'),
(24, 'orders', '0003_orders', '2023-01-23 11:35:35.094357'),
(25, 'orders', '0004_orders_order_prodowner', '2023-01-23 12:11:18.976944'),
(26, 'account', '0002_alter_addproduct_price', '2023-01-23 12:34:29.302631'),
(27, 'orders', '0005_alter_orders_order_price', '2023-01-23 12:38:17.523412');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2in1bhowyyfljohbnhbs7fj9ndnb0axc', 'eyJpZCI6MiwiZnVsbG5hbWUiOiJTYXJhaCBNYWdwYW50YXkiLCJlbWFpbCI6InNhcmFoQHVpLmNvbSJ9:1pJss8:00vJGBtttrdKXcFcjHAjiJRd9jr20fTZVk8XwEW3gC4', '2023-02-06 09:12:12.465645'),
('d75ax9thz9400dhpk6udh10vfa0e2lz0', 'eyJpZCI6MiwiZnVsbG5hbWUiOiJTYXJhaCBNYWdwYW50YXkiLCJlbWFpbCI6InNhcmFoQHVpLmNvbSJ9:1pKgli:k8W3XJtEwEO5OYB0qnrA5SWOQwRolDB_qG_R2_rq2uA', '2023-02-08 14:28:54.144221'),
('jbb4iknsqqux5n5ynetg6wyqhchtatan', 'eyJpZCI6MiwiZnVsbG5hbWUiOiJTYXJhaCBNYWdwYW50YXkiLCJlbWFpbCI6InNhcmFoQHVpLmNvbSJ9:1pJw9J:Fqm99NplE-neGa9dzYUm8Fr_wkYvDwhNT4fuozZi3Mo', '2023-02-06 12:42:09.406986'),
('u9ehjryemnrze9oy7kc8i6majjidqqeq', 'eyJpZCI6MiwiZnVsbG5hbWUiOiJTYXJhaCBNYWdwYW50YXkiLCJlbWFpbCI6InNhcmFoQHVpLmNvbSJ9:1pJwJ8:hn0mPlpVT-qnTUqx-IXcEA-HsitduPVBtvFM_wV73Fo', '2023-02-06 12:52:18.449470'),
('y6d7gpqpxsk7burm5uubjnj33vwpz6bu', 'e30:1pLDqm:DT28ab1uiOOCJrztlEI_hw61fpVCmW1_5Q2hu2hmEoA', '2023-02-10 01:48:20.445731');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` bigint(20) NOT NULL,
  `cart_owner` int(11) NOT NULL,
  `cart_quantity` int(11) NOT NULL,
  `cart_prodId` int(11) NOT NULL,
  `cart_price` varchar(225) NOT NULL,
  `cart_category` varchar(225) NOT NULL,
  `cart_image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `cart_owner`, `cart_quantity`, `cart_prodId`, `cart_price`, `cart_category`, `cart_image`) VALUES
(11, 3, 3, 8, '2500', 'Chair', 'image_uploads/Screenshot_102.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` bigint(20) NOT NULL,
  `order_name` varchar(225) NOT NULL,
  `order_product` varchar(225) NOT NULL,
  `order_price` int(11) NOT NULL,
  `order_img` varchar(225) NOT NULL,
  `order_phone` int(11) NOT NULL,
  `order_address` varchar(225) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `order_prodowner` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `order_name`, `order_product`, `order_price`, `order_img`, `order_phone`, `order_address`, `order_quantity`, `order_prodowner`) VALUES
(13, 'Sarah Magpantay', 'Chair', 2500, 'image_uploads/Screenshot_102.png', 932424, 'sadad', 1, 1),
(14, 'Joshua Pedragosa', 'Chair', 1500, 'image_uploads/Screenshot_103.png', 9876324, 'Calapan', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` bigint(20) NOT NULL,
  `img` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `categories` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `price` int(11) NOT NULL,
  `product_owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `img`, `quantity`, `categories`, `description`, `price`, `product_owner`) VALUES
(8, 'image_uploads/Screenshot_102.png', 15, 'Chair', 'Matibay Kaya dalawang tao', 2500, 1),
(9, 'image_uploads/Screenshot_100.png', 7, 'Bed', 'Good Quality', 10500, 1),
(10, 'image_uploads/Screenshot_103.png', 6, 'Chair', 'Matibay', 1500, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop`
--

CREATE TABLE `tbl_shop` (
  `id` bigint(20) NOT NULL,
  `shop_name` varchar(225) NOT NULL,
  `shop_email` varchar(225) NOT NULL,
  `shop_owner` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_shop`
--

INSERT INTO `tbl_shop` (`id`, `shop_name`, `shop_email`, `shop_owner`) VALUES
(2, 'Uwah Furnitures', 'uwahfurnitures@gmail.com', '1'),
(3, 'Guess furnitures', 'guess@gmail.com', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_signup`
--

CREATE TABLE `tbl_signup` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_signup`
--

INSERT INTO `tbl_signup` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'Joshua Pedragosa', 'uwah@ui.com', 'uwah123'),
(2, 'Sarah Magpantay', 'sarah@ui.com', 'sarah123'),
(3, 'Im a Guess', 'guess@ui.com', 'pass123');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop`
--
ALTER TABLE `tbl_shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_shop`
--
ALTER TABLE `tbl_shop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
