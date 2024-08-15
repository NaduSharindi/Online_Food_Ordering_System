-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 03, 2021 at 03:23 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adm_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', ''),
(12, 'koholana-alawwa', '25d55ad283aa400af464c76d713c07ad', 'koholanaalawwa@gmail.com', 'QX5ZMN'),
(13, 'warakapola-admin', '25d55ad283aa400af464c76d713c07ad', 'warakapolaadmin@gmail.com', 'QFE6ZM'),
(14, 'ambepussa-admin', '25d55ad283aa400af464c76d713c07ad', 'ambepussaadmin@gmail.com', 'QMZR92');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

DROP TABLE IF EXISTS `admin_codes`;
CREATE TABLE IF NOT EXISTS `admin_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codes` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
CREATE TABLE IF NOT EXISTS `dishes` (
  `d_id` int NOT NULL AUTO_INCREMENT,
  `rs_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(27, 61, 'Butter Chicken', '  Boneless Tandoori Chicken Tikka Cooked in Creamy Tomato Gravy. Served with Naan Bread', '1488.00', '60fd3878c9b86.png'),
(28, 61, 'Cajun Chicken Burger', '  Cajun Spiced  Grilled Chicken Breast, Fried Egg, Jalapeno Peppers, Cheese on Tossed Rosemary & Garlic Ciabatta Bun', '1388.00', '60fd3fa7df4e1.png'),
(31, 61, 'Devils Chicken Pizza', '  Deviled Chicken, Tomato Sauce & Mozzarella Cheese.', '2288.00', '60fd445963231.png'),
(32, 61, 'Club Sandwich', 'Roasted Chicken Thigh, Bacon, Fried Egg, Tomato, Cucumber, Cheese, Lettuce & Capsicum Pesto', '1888.00', '60fd872f9435a.png'),
(34, 61, 'Chicken Kottu', '  A Delicious Combination of Godamba Roti Strips Mixed with Chicken.', '1388.00', '60fd888534b21.png'),
(35, 61, 'Spicy Tuna Croissant (5 Pcs)', '.', '928.00', '60fd8ba71f858.png'),
(36, 61, 'Fish And Egg Triangle (10Pcs)', '.', '1828.00', '60fd8f1d54ae4.png'),
(37, 61, 'Chicken And Leek Pie (10 Pcs)', '.', '1800.00', '61043a489d2a8.jpg'),
(38, 61, 'Milk Rice (5 Pcs)', '.', '100.00', '61043afa0bd52.jpg'),
(39, 61, 'Rotti (5 Pcs)', '.', '100.00', '61043c18e8ece.jpg'),
(40, 61, 'Pittu (2 Pcs)', '.', '120.00', '61043c7b75d18.jpg'),
(41, 61, 'Rice and Curry (1 Plate)', '.', '120.00', '61043f5bf4236.jpg'),
(42, 61, 'Rice (Rathukakulu) and Curry (1 Plate)', '.', '150.00', '610441217aa33.jpg'),
(43, 61, 'Kottu (Full)', '.', '320.00', '610441babb5ed.jpg'),
(44, 61, 'Coconut Pineapple Gateau', '.', '780.00', '610442496899c.jpg'),
(45, 61, 'Strawberry Lover', '.', '890.00', '610442f42c301.jpg'),
(46, 61, 'Tiramisu Black Forest', '.', '890.00', '6104433f87cf7.jpg'),
(48, 61, 'Smoothie', '.', '250.00', '610444b1aca4e.png'),
(49, 61, 'Bubble tea', '.', '280.00', '61044508184d9.jpg'),
(50, 61, 'Non-alcoholic drink', '.', '200.00', '6104456055077.jpg'),
(51, 61, 'Lemon & Blueberry (1kg)', '.', '4400.00', '610445d7a5740.jpg'),
(52, 61, 'Ombre Cake (1kg)', '.', '4800.00', '610446cb828a2.jpg'),
(53, 61, 'Chocolate Expresso (1kg)', '.', '3900.00', '610447344089a.jpg'),
(54, 62, 'Bibimbap (02) - Korea', '.', '2000.00', '610452328941f.jpg'),
(55, 62, 'Butter Chicken', '.', '1500.00', '6104525c281fe.jpg'),
(56, 62, 'Cajun Chicken Burger', '.', '1400.00', '6104529e74dcb.jpg'),
(57, 62, 'Chicken And Leek Pie (10 Pcs)', '.', '1800.00', '610452eec92e8.jpg'),
(58, 62, 'Milk Rice (5 Pcs)', '.', '100.00', '6104530968cd4.jpg'),
(59, 63, 'Milk Rice (5 Pcs)', '.', '100.00', '610453177c81b.jpg'),
(60, 63, 'Chicken And Leek Pie (10 Pcs)', '.', '1800.00', '6104532db1168.jpg'),
(61, 62, 'Rotti (5 Pcs)', '.', '100.00', '6104534170f61.jpg'),
(62, 63, 'Rotti (5 Pcs)', '.', '100.00', '6104534d51fb7.jpg'),
(63, 62, 'Pittu (2 Pcs)', '.', '120.00', '6104539ad4233.jpg'),
(64, 63, 'Pittu (2 Pcs)', '.', '120.00', '610453a792088.jpg'),
(65, 62, 'Rice and Curry (1 Plate)', '.', '120.00', '610453e6c9926.jpg'),
(66, 63, 'Rice and Curry (1 Plate)', '.', '120.00', '6104542447963.jpg'),
(67, 62, 'Rice (Rathukakulu) and Curry (1 Plate)', '.', '150.00', '61045460e7eda.jpg'),
(68, 63, 'Rice (Rathukakulu) and Curry (1 Plate)', '.', '150.00', '6104546a69502.jpg'),
(69, 62, 'Kottu (Full)', '.', '320.00', '61045485335b1.jpg'),
(70, 63, 'Kottu (Full)', '.', '320.00', '61045493cc647.jpg'),
(71, 62, 'Coconut Pineapple Gateau', '.', '780.00', '610454b15c2a5.jpg'),
(72, 63, 'Coconut Pineapple Gateau', '.', '780.00', '610454c72f065.jpg'),
(73, 62, 'Strawberry Lover', '.', '890.00', '610454e601c7d.jpg'),
(74, 63, 'Strawberry Lover', '.', '890.00', '610454f037e83.jpg'),
(75, 62, 'Tiramisu Black Forest', '.', '890.00', '61045505e73f0.jpg'),
(76, 63, 'Tiramisu Black Forest', '.', '890.00', '61045511f0346.jpg'),
(77, 62, 'Smoothie', '.', '250.00', '6104552275d1b.png'),
(78, 63, 'Smoothie', '.', '250.00', '6104552e5c56c.png'),
(79, 62, 'Bubble tea', '.', '280.00', '6104553e3a657.jpg'),
(80, 63, 'Bubble tea', '.', '280.00', '6104554a1c27a.jpg'),
(81, 62, 'Non-alcoholic drink', '.', '200.00', '6104557258c15.jpg'),
(82, 63, 'Non-alcoholic drink', '.', '200.00', '61045582cf990.jpg'),
(83, 62, 'Lemon & Blueberry (1kg)', '.', '4400.00', '6104559796c97.jpg'),
(84, 63, 'Lemon & Blueberry (1kg)', '.', '4400.00', '610455a37dfbf.jpg'),
(85, 62, 'Ombre Cake (1kg)', '.', '4800.00', '610455b7a4b03.jpg'),
(86, 63, 'Ombre Cake (1kg)', '.', '4800.00', '610455c1b2575.jpg'),
(87, 62, 'Chocolate Expresso (1kg)', '.', '3900.00', '610455dc413a5.jpg'),
(88, 63, 'Chocolate Expresso (1kg)', '.', '3900.00', '610455e674a53.jpg'),
(89, 63, 'Bibimbap (02) - Korea', '.', '2000.00', '61045628d0a13.jpg'),
(90, 63, 'Butter Chicken', '.', '1500.00', '610456407df61.jpg'),
(91, 63, 'Cajun Chicken Burger', '.', '1400.00', '6104565221a99.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `email_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

DROP TABLE IF EXISTS `remark`;
CREATE TABLE IF NOT EXISTS `remark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `frm_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `rs_id` int NOT NULL AUTO_INCREMENT,
  `c_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`) VALUES
(61, 27, 'Koholana Restaurent - Alawwa', 'koholanaofficial@gmail.com', '+94372278123', 'https://kohlana-rest.lk', '7am', '8pm', 'mon-sat', '  Koholana Restaurent,Koholana Rd, Alawwa 60280, Sri Lanka.  ', '60fd2e65de68c.png'),
(62, 27, 'Koholana Restaurent - Warakapola', 'koholanaofficial@gmail.com', '+94372278124', 'https://kohlana-rest.lk', '6am', '8pm', 'mon-sat', ' Koholana Restaurent, Warakapola, Sri Lanka. ', '60fd2ef46d63b.png'),
(63, 27, 'Koholana Restaurant - Ambepussa', 'koholanaofficial@gmail.com', '+94372278125', 'https://koholana-res.lk', '7am', '8pm', 'mon-sat', '  Koholana Restaurent, Ambepussa, Sri Lanka.  ', '60fd2d9e2dcb5.png');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

DROP TABLE IF EXISTS `res_category`;
CREATE TABLE IF NOT EXISTS `res_category` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`) VALUES
(24, 'Fine Dining'),
(25, 'Casual Dining'),
(26, 'Contemporary Casual'),
(27, ' Family Style'),
(28, 'Fast Casual'),
(29, ' Fast Food'),
(30, 'Cafe'),
(31, ' Buffet'),
(32, ' Pop-Up Restaurant'),
(33, 'Ghost Restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`) VALUES
(45, 'thiranjaya', 's.m.d', 'thiranjaya', 'thiranjaya@gmail.com', '0716534899', 'e10adc3949ba59abbe56e057f20f883e', 'No :- 25, koholana road, alawwa', 1),
(46, 'sharindi', 'N', 'Sharindi', 'sharindi@gmail.com', '0716523987', 'e10adc3949ba59abbe56e057f20f883e', 'no -112, main road, warakapola', 1),
(47, 'ASamod', 'Av', 'Samod', 'asamod999@gmail.com', '0761122345', '14e1b600b1fd579f47433b88e8d85291', 'No 100, main road, ambepussa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

DROP TABLE IF EXISTS `users_orders`;
CREATE TABLE IF NOT EXISTS `users_orders` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
