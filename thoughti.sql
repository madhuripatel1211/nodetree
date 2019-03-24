-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 24, 2019 at 08:06 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thoughti`
--

-- --------------------------------------------------------

--
-- Table structure for table `treeview_items`
--

DROP TABLE IF EXISTS `treeview_items`;
CREATE TABLE IF NOT EXISTS `treeview_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `text` varchar(200) NOT NULL,
  `parent_id` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treeview_items`
--

INSERT INTO `treeview_items` (`id`, `name`, `text`, `parent_id`) VALUES
(1, 'NodeMain', 'NodeMain', '0'),
(2, 'Node Main1', 'Node Main1', '1'),
(3, 'Node Main2', 'Node Main2', '1'),
(4, 'Node 1', 'Node 1', '2'),
(5, 'Node 1', 'Node 1', '3'),
(6, 'Node 2', 'Node 2', '2'),
(7, 'Node 3 ', 'Node 3 ', '4'),
(8, 'Node 3 ', 'Node 3 ', '4'),
(9, 'Node 3 ', 'Node 3 ', '6'),
(10, 'Node 2 1', 'Node 2 1 ', '3'),
(11, 'Node 3 ', 'Node 3 ', '6'),
(12, 'Node 2 1', 'Node 2 1 ', '6');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
