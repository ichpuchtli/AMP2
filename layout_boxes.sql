-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2012 at 01:40 PM
-- Server version: 5.1.65
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `austral_zc1`
--

-- --------------------------------------------------------

--
-- Table structure for table `zen_layout_boxes`
--

CREATE TABLE IF NOT EXISTS `zen_layout_boxes` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_template` varchar(64) NOT NULL DEFAULT '',
  `layout_box_name` varchar(64) NOT NULL DEFAULT '',
  `layout_box_status` tinyint(1) NOT NULL DEFAULT '0',
  `layout_box_location` tinyint(1) NOT NULL DEFAULT '0',
  `layout_box_sort_order` int(11) NOT NULL DEFAULT '0',
  `layout_box_sort_order_single` int(11) NOT NULL DEFAULT '0',
  `layout_box_status_single` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layout_id`),
  KEY `idx_name_template_zen` (`layout_template`,`layout_box_name`),
  KEY `idx_layout_box_status_zen` (`layout_box_status`),
  KEY `idx_layout_box_sort_order_zen` (`layout_box_sort_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `zen_layout_boxes`
--

INSERT INTO `zen_layout_boxes` (`layout_id`, `layout_template`, `layout_box_name`, `layout_box_status`, `layout_box_location`, `layout_box_sort_order`, `layout_box_sort_order_single`, `layout_box_status_single`) VALUES
(1, 'default_template_settings', 'banner_box_all.php', 1, 1, 5, 0, 0),
(2, 'default_template_settings', 'banner_box.php', 1, 0, 300, 1, 127),
(3, 'default_template_settings', 'banner_box2.php', 1, 1, 15, 1, 15),
(4, 'default_template_settings', 'best_sellers.php', 1, 1, 30, 70, 1),
(5, 'default_template_settings', 'categories.php', 1, 0, 10, 10, 1),
(6, 'default_template_settings', 'currencies.php', 0, 1, 80, 60, 0),
(7, 'default_template_settings', 'document_categories.php', 1, 0, 0, 0, 0),
(8, 'default_template_settings', 'ezpages.php', 1, 1, -1, 2, 1),
(9, 'default_template_settings', 'featured.php', 1, 0, 45, 0, 0),
(10, 'default_template_settings', 'information.php', 1, 0, 50, 40, 1),
(11, 'default_template_settings', 'languages.php', 0, 1, 70, 50, 0),
(12, 'default_template_settings', 'manufacturers.php', 1, 0, 30, 20, 1),
(13, 'default_template_settings', 'manufacturer_info.php', 1, 1, 35, 95, 1),
(14, 'default_template_settings', 'more_information.php', 1, 0, 200, 200, 1),
(15, 'default_template_settings', 'music_genres.php', 1, 1, 0, 0, 0),
(16, 'default_template_settings', 'order_history.php', 1, 1, 0, 0, 0),
(17, 'default_template_settings', 'product_notifications.php', 1, 1, 55, 85, 1),
(18, 'default_template_settings', 'record_companies.php', 1, 1, 0, 0, 0),
(19, 'default_template_settings', 'reviews.php', 1, 0, 40, 0, 0),
(20, 'default_template_settings', 'search.php', 1, 1, 10, 0, 0),
(21, 'default_template_settings', 'search_header.php', 0, 0, 0, 0, 1),
(22, 'default_template_settings', 'shopping_cart.php', 1, 1, 20, 30, 1),
(23, 'default_template_settings', 'specials.php', 1, 1, 45, 0, 0),
(24, 'default_template_settings', 'whats_new.php', 1, 0, 20, 0, 0),
(25, 'default_template_settings', 'whos_online.php', 1, 1, 200, 200, 1),
(26, 'template_default', 'banner_box_all.php', 1, 1, 5, 0, 0),
(27, 'template_default', 'banner_box.php', 1, 0, 300, 1, 127),
(28, 'template_default', 'banner_box2.php', 1, 1, 15, 1, 15),
(29, 'template_default', 'best_sellers.php', 1, 1, 30, 70, 1),
(30, 'template_default', 'categories.php', 1, 0, 10, 10, 1),
(31, 'template_default', 'currencies.php', 0, 1, 80, 60, 0),
(32, 'template_default', 'ezpages.php', 1, 1, -1, 2, 1),
(33, 'template_default', 'featured.php', 1, 0, 45, 0, 0),
(34, 'template_default', 'information.php', 1, 0, 50, 40, 1),
(35, 'template_default', 'languages.php', 0, 1, 70, 50, 0),
(36, 'template_default', 'manufacturers.php', 1, 0, 30, 20, 1),
(37, 'template_default', 'manufacturer_info.php', 1, 1, 35, 95, 1),
(38, 'template_default', 'more_information.php', 1, 0, 200, 200, 1),
(39, 'template_default', 'my_broken_box.php', 1, 0, 0, 0, 0),
(40, 'template_default', 'order_history.php', 1, 1, 0, 0, 0),
(41, 'template_default', 'product_notifications.php', 1, 1, 55, 85, 1),
(42, 'template_default', 'reviews.php', 1, 0, 40, 0, 0),
(43, 'template_default', 'search.php', 1, 1, 10, 0, 0),
(44, 'template_default', 'search_header.php', 0, 0, 0, 0, 1),
(45, 'template_default', 'shopping_cart.php', 1, 1, 20, 30, 1),
(46, 'template_default', 'specials.php', 1, 1, 45, 0, 0),
(47, 'template_default', 'whats_new.php', 1, 0, 20, 0, 0),
(48, 'template_default', 'whos_online.php', 1, 1, 200, 200, 1),
(49, 'classic', 'banner_box.php', 1, 0, 300, 1, 127),
(50, 'classic', 'banner_box2.php', 1, 1, 15, 1, 15),
(51, 'classic', 'banner_box_all.php', 1, 1, 5, 0, 0),
(52, 'classic', 'best_sellers.php', 1, 1, 30, 70, 1),
(53, 'classic', 'categories.php', 1, 0, 10, 10, 1),
(54, 'classic', 'currencies.php', 0, 1, 80, 60, 0),
(55, 'classic', 'document_categories.php', 1, 0, 0, 0, 0),
(56, 'classic', 'ezpages.php', 1, 1, -1, 2, 1),
(57, 'classic', 'featured.php', 1, 0, 45, 0, 0),
(58, 'classic', 'information.php', 1, 0, 50, 40, 1),
(59, 'classic', 'languages.php', 0, 1, 70, 50, 0),
(60, 'classic', 'manufacturers.php', 1, 0, 30, 20, 1),
(61, 'classic', 'manufacturer_info.php', 1, 1, 35, 95, 1),
(62, 'classic', 'more_information.php', 1, 0, 200, 200, 1),
(63, 'classic', 'music_genres.php', 1, 1, 0, 0, 0),
(64, 'classic', 'order_history.php', 1, 1, 0, 0, 0),
(65, 'classic', 'product_notifications.php', 1, 1, 55, 85, 1),
(66, 'classic', 'record_companies.php', 1, 1, 0, 0, 0),
(67, 'classic', 'reviews.php', 1, 0, 40, 0, 0),
(68, 'classic', 'search.php', 1, 1, 10, 0, 0),
(69, 'classic', 'search_header.php', 0, 0, 0, 0, 1),
(70, 'classic', 'shopping_cart.php', 1, 1, 20, 30, 1),
(71, 'classic', 'specials.php', 1, 1, 45, 0, 0),
(72, 'classic', 'whats_new.php', 1, 0, 20, 0, 0),
(73, 'classic', 'whos_online.php', 1, 1, 200, 200, 1),
(74, 'ausmade2', 'banner_box.php', 0, 0, 300, 1, 1),
(75, 'ausmade2', 'banner_box2.php', 0, 1, 15, 1, 1),
(76, 'ausmade2', 'banner_box_all.php', 0, 1, 5, 0, 0),
(77, 'ausmade2', 'best_sellers.php', 1, 1, 30, 70, 1),
(78, 'ausmade2', 'categories.php', 1, 0, 10, 10, 1),
(79, 'ausmade2', 'currencies.php', 0, 1, 80, 60, 0),
(80, 'ausmade2', 'document_categories.php', 1, 0, 0, 0, 0),
(81, 'ausmade2', 'ezpages.php', 1, 1, -1, 2, 1),
(82, 'ausmade2', 'featured.php', 1, 0, 45, 0, 0),
(83, 'ausmade2', 'information.php', 1, 0, 50, 40, 1),
(84, 'ausmade2', 'languages.php', 0, 1, 70, 50, 0),
(85, 'ausmade2', 'manufacturer_info.php', 1, 1, 35, 95, 1),
(86, 'ausmade2', 'manufacturers.php', 1, 0, 30, 20, 1),
(87, 'ausmade2', 'more_information.php', 0, 0, 200, 200, 1),
(88, 'ausmade2', 'music_genres.php', 1, 1, 0, 0, 0),
(89, 'ausmade2', 'order_history.php', 1, 1, 0, 0, 0),
(90, 'ausmade2', 'product_notifications.php', 1, 1, 55, 85, 1),
(91, 'ausmade2', 'record_companies.php', 1, 1, 0, 0, 0),
(92, 'ausmade2', 'reviews.php', 0, 0, 40, 0, 0),
(93, 'ausmade2', 'search.php', 1, 1, 10, 0, 0),
(94, 'ausmade2', 'search_header.php', 0, 0, 0, 0, 1),
(95, 'ausmade2', 'shopping_cart.php', 1, 1, 20, 30, 1),
(96, 'ausmade2', 'specials.php', 1, 1, 45, 0, 0),
(97, 'ausmade2', 'whats_new.php', 0, 0, 20, 0, 0),
(98, 'ausmade2', 'whos_online.php', 0, 1, 200, 200, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
