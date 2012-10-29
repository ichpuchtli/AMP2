-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 29, 2012 at 12:26 PM
-- Server version: 5.5.24
-- PHP Version: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zencart`
--

-- --------------------------------------------------------

--
-- Table structure for table `ezpages`
--

CREATE TABLE IF NOT EXISTS `ezpages` (
  `pages_id` int(11) NOT NULL AUTO_INCREMENT,
  `languages_id` int(11) NOT NULL DEFAULT '1',
  `pages_title` varchar(64) NOT NULL DEFAULT '',
  `alt_url` varchar(255) NOT NULL DEFAULT '',
  `alt_url_external` varchar(255) NOT NULL DEFAULT '',
  `pages_html_text` mediumtext,
  `status_header` int(1) NOT NULL DEFAULT '1',
  `status_sidebox` int(1) NOT NULL DEFAULT '1',
  `status_footer` int(1) NOT NULL DEFAULT '1',
  `status_toc` int(1) NOT NULL DEFAULT '1',
  `header_sort_order` int(3) NOT NULL DEFAULT '0',
  `sidebox_sort_order` int(3) NOT NULL DEFAULT '0',
  `footer_sort_order` int(3) NOT NULL DEFAULT '0',
  `toc_sort_order` int(3) NOT NULL DEFAULT '0',
  `page_open_new_window` int(1) NOT NULL DEFAULT '0',
  `page_is_ssl` int(1) NOT NULL DEFAULT '0',
  `toc_chapter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `idx_lang_id_zen` (`languages_id`),
  KEY `idx_ezp_status_header_zen` (`status_header`),
  KEY `idx_ezp_status_sidebox_zen` (`status_sidebox`),
  KEY `idx_ezp_status_footer_zen` (`status_footer`),
  KEY `idx_ezp_status_toc_zen` (`status_toc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ezpages`
--

INSERT INTO `ezpages` (`pages_id`, `languages_id`, `pages_title`, `alt_url`, `alt_url_external`, `pages_html_text`, `status_header`, `status_sidebox`, `status_footer`, `status_toc`, `header_sort_order`, `sidebox_sort_order`, `footer_sort_order`, `toc_sort_order`, `page_open_new_window`, `page_is_ssl`, `toc_chapter`) VALUES
(1, 1, 'About Us', '', '', 'Text goes here', 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0),
(2, 1, 'Home', 'index.php', '', '', 1, 1, 1, 0, 8, 0, 0, 0, 0, 0, 0),
(3, 1, 'Contact Us', '', '', '', 1, 1, 1, 0, 4, 0, 0, 0, 0, 0, 0),
(4, 1, 'Delivery', '', '', '', 1, 1, 1, 0, 3, 0, 0, 0, 0, 0, 0),
(5, 1, 'Delivery Cost', '', '', '<p>\r\n	We deliver to ANYWHERE in Australia or the world! Our website calculates delivery cost from the weight of your order and your address. Delivery Cost Table Low Order Fee: If your order is less than $20, there is a low order fee of $5 to cover packaging costs. *Free delivery is only for the first 50kg products We try to keep delivery costs as low as possible. Also see Frequently Asked Questions Page (FAQ) . If you think our website has incorrectly calculated the delivery cost (it does occasionally happen), please record the weight of your order and your postcode and contact us. Via email: admin@onlyoz.com.au Via phone: 07 3354 3081, after hours: 0407 725 272. Australia Post Table : go to. http://auspost.com.au/apps/domestic-parcel.html Australia Post Delivery Costs (rough) All orders are packaged with care and sent via Australia Post or Fastway Couriers or Startrack Express which are all Australian owned. We usually send orders out on the same business day that we receive them if ordered before 12noon. Orders in Brisbane, South East Queensland, Sydney and Melbourne are usually send by Fastway Couriers. For areas other than South East Queensland, Sydney and Melbourne, we often use Australia Post. We charge roughly 20% less than the Australia Post charge. You can use the Australia Post website to calculate the rough delivery cost if you like. Here is the link: http://www1.auspost.com.au/pac/ As your parcel is packed we email you the consignment number so you can track your order online. International orders are sent by Australia Post: Air Mail is available to most countries. Go to: http://www1.auspost.com.au/pac/int_parcel.asp , to roughly calculate your delivery cost. All International orders can be easily traced. As the parcel is packed you are emailed the international tracking number. You can place a test order: To find out what the delivery costs would be, you could choose the products you are interested in and start to go through the ordering process. After you have entered your address, the website will tell you the delivery charge. If you are not happy with this delivery charge you can just close the page and your order will not reach us. Customer Service is very important to us. If you are concerned about an order, please e-mail or call us and we will get back to you as soon as possible. As your parcel is packed we email you the consignment number so you can track your order online. Delivery Disclaimer: We try to get all orders out on the same day we receive them. The delivery times on our website are an indication only. We rely on Couriers and Australia Post to deliver our orders. On occasion an Australia Post contractor or a Courier company may let us down; therefore we can not guarantee delivery times. Packaging materials: Our loose-fill packaging material is Gluten Free and 100% biodegradable. Just put it on the garden, or in the sink with water, or in the toilet. It is made from aerated Australian corn. Animals and children may play with it. It is not toxic. Our cardboard boxes are often from recycled cardboard and they are recyclable. We use Australian made and owned recycled paper, cardboard and packaging materials.. Customer Comments About Delivery: &bull; We just received our first shipment from you - very prompt AND ACCURATE - not one mistake! I&#39;m impressed. I&#39;ve been using Woollies Homeshop for years, and almost no order comes without at least one error or omission. &bull; Thank you everyone - my order has just arrived - I am delighted at the speed. &bull; I&#39;m very impressed with the concept of your loose 100% biodegradable packing material - not only does it do the job but it smelled so good. &bull; I placed and received my first order yesterday, and was amazed ! Everything I ordered was there, it arrived the same day, it was perfectly packed, the delivery driver left it at the front door as requested, what a pleasant surprise ! I deal with deliveries every day, both sending and receiving them, and from my experiences, what you achieved really is amazing. Thank you, service like this will make your business grow rapidly. And it feels good too to be doing the &#39;right thing&#39; for Australian made growers &amp; producers. &bull; Hello there. I have just received my first order from you and I just want you to know how pleased I am with the goods and how well packed it was. The delivery was prompt and friendly. I will certainly be reordering in the future. Thank you. &bull; Nothing gets wasted and we have a few ways of re using the packing wheat. 1. We fill the pet rat cage with it and she loves to burrow and chew it and alleviates boredom for a while. 2. Re use it for sending my own parcels on ebay or my soap making sales. 3. Never underestimate the play value of a box of non toxic filler!</p>', 1, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
