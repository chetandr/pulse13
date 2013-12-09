-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 09, 2013 at 01:00 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pulsescore`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `eventid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `date` date NOT NULL,
  `perclan` int(11) NOT NULL,
  `perteam` int(11) NOT NULL,
  `ratio` int(11) NOT NULL,
  PRIMARY KEY (`eventid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eventid`, `name`, `date`, `perclan`, `perteam`, `ratio`) VALUES
(3, 'Judgement day', '2013-12-09', 4, 5, 0),
(4, 'Health Fight', '2013-12-06', 2, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `participating_teams`
--

CREATE TABLE IF NOT EXISTS `participating_teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `player` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `participations`
--

CREATE TABLE IF NOT EXISTS `participations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empid` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `empid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `team` int(64) NOT NULL,
  `group` enum('Hero','Sidekick') NOT NULL,
  `participations` int(11) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=406 ;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`empid`, `name`, `team`, `group`, `participations`, `gender`) VALUES
(1, 'Punam Fadte', 3, 'Hero', 0, 'm'),
(2, 'Pratibha Javali', 3, 'Hero', 0, 'm'),
(3, 'Deepti Kalangutkar', 3, 'Hero', 0, 'm'),
(4, 'Vishakha Sawant', 3, 'Hero', 0, 'm'),
(5, 'Nagraj Sunkeri', 3, 'Hero', 0, 'm'),
(6, 'Archa Bhandare', 3, 'Hero', 0, 'm'),
(7, 'Rajendra Barve', 3, 'Hero', 0, 'm'),
(8, 'Rodley Nunes', 3, 'Hero', 0, 'm'),
(9, 'Anuja Kamat', 3, 'Hero', 0, 'm'),
(10, 'Sidhesh Kamat', 3, 'Hero', 0, 'm'),
(11, 'Sheena Viegas', 3, 'Hero', 0, 'm'),
(12, 'Harish Manjrekar', 3, 'Hero', 0, 'm'),
(13, 'Gaynell Gonsalves', 3, 'Hero', 0, 'm'),
(14, 'Ganta Sundeep', 3, 'Hero', 0, 'm'),
(15, 'Mahesh Nagvekar', 3, 'Hero', 0, 'm'),
(16, 'Durga Khedekar', 3, 'Hero', 0, 'm'),
(17, 'Harshad Savant', 3, 'Hero', 0, 'm'),
(18, 'Chandan Verlekar', 3, 'Hero', 0, 'm'),
(19, 'Mangesh Naik', 3, 'Hero', 0, 'm'),
(21, 'Milea Colaco', 3, 'Hero', 0, 'm'),
(22, 'Gautami Thakur', 3, 'Hero', 0, 'm'),
(23, 'Yashwant Borkar', 3, 'Hero', 0, 'm'),
(24, 'Vrushali Talekar', 3, 'Hero', 0, 'm'),
(25, 'Tanvi Rasik Deodhar', 3, 'Hero', 0, 'm'),
(26, 'Rohit Malhotra', 3, 'Hero', 0, 'm'),
(27, 'Tanvi Bhat', 3, 'Hero', 0, 'm'),
(28, 'Dhruti Dinesh Dedhia', 3, 'Hero', 0, 'm'),
(29, 'Rahul Halankar', 3, 'Hero', 0, 'm'),
(30, 'Savita Ranjanagi', 3, 'Hero', 0, 'm'),
(31, 'Siddharaj Nayak', 3, 'Hero', 0, 'm'),
(32, 'Amey Shikerkar', 3, 'Hero', 0, 'm'),
(33, 'Ramanath  Kamat', 3, 'Hero', 0, 'm'),
(34, 'Avaneesh Desai', 3, 'Hero', 0, 'm'),
(35, 'Steffie  Rodrigues', 3, 'Hero', 0, 'm'),
(36, 'Bharathiraja Natraj', 3, 'Hero', 0, 'm'),
(37, 'Jatin Chimote', 3, 'Hero', 0, 'm'),
(38, 'Ajith Chettiparambil', 3, 'Hero', 0, 'm'),
(39, 'Siddhesh Vishwanath Naik', 3, 'Hero', 0, 'm'),
(40, 'Sanjay Joshi', 3, 'Hero', 0, 'm'),
(41, 'Vinayak Bhomkar', 3, 'Hero', 0, 'm'),
(42, 'Suraj Pavaskar', 3, 'Hero', 0, 'm'),
(43, 'Uttkarsha Dessai', 3, 'Hero', 0, 'm'),
(44, 'Amitkumar Ghatwal', 3, 'Hero', 0, 'm'),
(45, 'Ravi Gangavarapu', 3, 'Hero', 0, 'm'),
(46, 'Gopal Sagalani', 3, 'Hero', 0, 'm'),
(47, 'Farihal Nimbergi', 3, 'Hero', 0, 'm'),
(48, 'Sarvesh Tamba', 3, 'Hero', 0, 'm'),
(49, 'Sandy Mendes', 3, 'Hero', 0, 'm'),
(50, 'Gourav Shenoy', 3, 'Hero', 0, 'm'),
(51, 'Chandrashekar Gawas', 3, 'Hero', 0, 'm'),
(52, 'Anshu Rao', 3, 'Sidekick', 0, 'm'),
(53, 'Chandranana Naik', 3, 'Sidekick', 0, 'm'),
(54, 'Archana Dessai', 3, 'Sidekick', 0, 'm'),
(55, 'Poonam Patil', 3, 'Sidekick', 0, 'm'),
(56, 'Sarvesh Borkar', 3, 'Sidekick', 0, 'm'),
(57, 'Ambika Gaonkar', 3, 'Sidekick', 0, 'm'),
(58, 'Ranu Keny', 3, 'Sidekick', 0, 'm'),
(59, 'Sneha Borkar', 3, 'Sidekick', 0, 'm'),
(60, 'Pankaja Khandeparkar', 3, 'Sidekick', 0, 'm'),
(61, 'Avijit Chark', 3, 'Sidekick', 0, 'm'),
(62, 'Senjith KK', 3, 'Sidekick', 0, 'm'),
(63, 'Alan Lobo', 3, 'Sidekick', 0, 'm'),
(64, 'Sairaj Kalekar', 3, 'Sidekick', 0, 'm'),
(65, 'Rujuta Kulkarni', 3, 'Sidekick', 0, 'm'),
(66, 'Amit Kumar Jaiswal', 3, 'Sidekick', 0, 'm'),
(67, 'Rahul Hegde', 3, 'Sidekick', 0, 'm'),
(68, 'Mithil Raj Srivastav', 3, 'Sidekick', 0, 'm'),
(69, 'Priyanka Khandeparkar', 3, 'Sidekick', 0, 'm'),
(70, 'Sonal Pai Kakode', 3, 'Sidekick', 0, 'm'),
(71, 'Nimish Mudhale', 3, 'Sidekick', 0, 'm'),
(72, 'Adiyta Sardesai', 3, 'Sidekick', 0, 'm'),
(73, 'Mayur Mahale', 3, 'Sidekick', 0, 'm'),
(74, 'Sajish P. P.', 3, 'Sidekick', 0, 'm'),
(75, 'Aditya Vilas Ballikar', 3, 'Sidekick', 0, 'm'),
(76, 'Neville Fernandes', 3, 'Sidekick', 0, 'm'),
(77, 'Sudhir Sathar', 3, 'Sidekick', 0, 'm'),
(78, 'Pracila Fernandes', 3, 'Sidekick', 0, 'm'),
(79, 'Maryushka Fernandes', 3, 'Sidekick', 0, 'm'),
(80, 'Trupti Divkar', 3, 'Sidekick', 0, 'm'),
(81, 'Yussuf Ibrahim Shaikh', 3, 'Sidekick', 0, 'm'),
(82, 'Mayuri Dua', 3, 'Sidekick', 0, 'm'),
(83, 'Maria Costa', 3, 'Sidekick', 0, 'm'),
(84, 'Shylesh Sangodkar', 3, 'Sidekick', 0, 'm'),
(85, 'Omkar Prabhu', 3, 'Sidekick', 0, 'm'),
(86, 'Shambhavi Totekar', 3, 'Sidekick', 0, 'm'),
(87, 'Vivek Samant', 3, 'Sidekick', 0, 'm'),
(88, 'Gauri Desai', 3, 'Sidekick', 0, 'm'),
(89, 'Saeel Parsekar', 3, 'Sidekick', 0, 'm'),
(90, 'Vivek Srivastava', 3, 'Sidekick', 0, 'm'),
(91, 'Richard Fernandes', 3, 'Sidekick', 0, 'm'),
(92, 'Janice  De Souza', 3, 'Sidekick', 0, 'm'),
(93, 'Avinash Gupta', 3, 'Sidekick', 0, 'm'),
(94, 'Pawankumar Raikar', 3, 'Sidekick', 0, 'm'),
(95, 'Poonam Rane', 3, 'Sidekick', 0, 'm'),
(96, 'Krapesh Naik', 3, 'Sidekick', 0, 'm'),
(97, 'Shavnak Anil Bakhale', 3, 'Sidekick', 0, 'm'),
(98, 'Kedar Pai Raikar', 3, 'Sidekick', 0, 'm'),
(99, 'Nash Saldanha', 3, 'Sidekick', 0, 'm'),
(100, 'Saiyesh Mahambrey', 3, 'Sidekick', 0, 'm'),
(101, 'Akash Valsangkar', 3, 'Sidekick', 0, 'm'),
(102, 'Suzie Ferrao', 3, 'Sidekick', 0, 'm'),
(103, 'Bhupen Panwar', 1, 'Hero', 0, 'm'),
(104, 'Anupa Narvenkar', 1, 'Hero', 0, 'm'),
(105, 'Salil Verlekar', 1, 'Hero', 0, 'm'),
(106, 'Vipindas Nambiar', 1, 'Hero', 0, 'm'),
(107, 'Aneet Cheema', 1, 'Hero', 0, 'm'),
(108, 'Amogh Tarcar', 1, 'Hero', 0, 'm'),
(109, 'Subhankar Patra', 1, 'Hero', 0, 'm'),
(110, 'Cleophas Rodrigues', 1, 'Hero', 0, 'm'),
(111, 'Ramchandra Gauns Desai', 1, 'Hero', 0, 'm'),
(112, 'Sonal Mahambrey', 1, 'Hero', 0, 'm'),
(113, 'Vandana Tari Volvoiker', 1, 'Hero', 0, 'm'),
(114, 'Aditya Kunkolienkar', 1, 'Hero', 0, 'm'),
(115, 'Eunicia Fernandes', 1, 'Hero', 0, 'm'),
(116, 'Vidhya Shikerkar', 1, 'Hero', 0, 'm'),
(117, 'Pooja Joshi', 1, 'Hero', 0, 'm'),
(118, 'Sujay Cuncoliencar', 1, 'Hero', 0, 'm'),
(119, 'Sukhiya Sardesai', 1, 'Hero', 0, 'm'),
(120, 'Akash Prakash Patrekar', 1, 'Hero', 0, 'm'),
(121, 'Sonia Gaonkar', 1, 'Hero', 0, 'm'),
(122, 'Zishan Shaikh', 1, 'Hero', 0, 'm'),
(123, 'Afrin Tashildar (Trainee)', 1, 'Hero', 0, 'm'),
(124, 'Anupama Rajkumar', 1, 'Hero', 0, 'm'),
(125, 'Sunil Morajkar', 1, 'Hero', 0, 'm'),
(126, 'Guddu Kumar', 1, 'Hero', 0, 'm'),
(127, 'Ketan Kamat', 1, 'Hero', 0, 'm'),
(128, 'Sayali Bodke', 1, 'Hero', 0, 'm'),
(129, 'Jeetendra Nayak', 1, 'Hero', 0, 'm'),
(130, 'Virej Arun Salker', 1, 'Hero', 0, 'm'),
(131, 'Prakash Pun', 1, 'Hero', 0, 'm'),
(132, 'Astrid Fernandes', 1, 'Hero', 0, 'm'),
(133, 'Joyel Fernandes', 1, 'Hero', 0, 'm'),
(134, 'Veena Shrivallabh Kamat', 1, 'Hero', 0, 'm'),
(135, 'Shridhar Acharya', 1, 'Hero', 0, 'm'),
(136, 'Roopa Sawant', 1, 'Hero', 0, 'm'),
(137, 'Ganesh Bhattathiri', 1, 'Hero', 0, 'm'),
(138, 'Preeti Khorjuvenkar', 1, 'Hero', 0, 'm'),
(139, 'Akshata Navelkar', 1, 'Hero', 0, 'm'),
(140, 'Daval Nadaf', 1, 'Hero', 0, 'm'),
(141, 'Mayur Hegde', 1, 'Hero', 0, 'm'),
(142, 'Floyd Lewis', 1, 'Hero', 0, 'm'),
(143, 'Vinda Naik', 1, 'Hero', 0, 'm'),
(144, 'Lenzie Camilo', 1, 'Hero', 0, 'm'),
(145, 'Anil Dongre', 1, 'Hero', 0, 'm'),
(146, 'Rohit Naik', 1, 'Hero', 0, 'm'),
(147, 'Aaron Bernard DeMelo', 1, 'Hero', 0, 'm'),
(148, 'Amit Manerkar', 1, 'Hero', 0, 'm'),
(149, 'Nikhil Dabholkar', 1, 'Hero', 0, 'm'),
(150, 'Urvee Avinash Usgaonker', 1, 'Hero', 0, 'm'),
(151, 'Nikhil Da Gama Pais', 1, 'Hero', 0, 'm'),
(152, 'Vidula Anvekar', 1, 'Hero', 0, 'm'),
(153, 'Amrita Nevrekar', 1, 'Hero', 0, 'm'),
(154, 'Sanat alias Jagannath Keni', 1, 'Sidekick', 0, 'm'),
(155, 'Nikhil Bhat', 1, 'Sidekick', 0, 'm'),
(156, 'Amrutha Kamath', 1, 'Sidekick', 0, 'm'),
(157, 'Dinesh Mandrekar', 1, 'Sidekick', 0, 'm'),
(158, 'Sonam Salkar', 1, 'Sidekick', 0, 'm'),
(159, 'Shuchi Gude', 1, 'Sidekick', 0, 'm'),
(160, 'Prasad Barve', 1, 'Sidekick', 0, 'm'),
(161, 'Akshata Raikar', 1, 'Sidekick', 0, 'm'),
(162, 'Vincent Gracias Flor', 1, 'Sidekick', 0, 'm'),
(163, 'Vibhav Kurtarkar', 1, 'Sidekick', 0, 'm'),
(164, 'Vidhi Desai', 1, 'Sidekick', 0, 'm'),
(165, 'Sanjivi Sardesai', 1, 'Sidekick', 0, 'm'),
(166, 'Neha Anil Saudagar', 1, 'Sidekick', 0, 'm'),
(168, 'Dattaraj Kande', 1, 'Sidekick', 0, 'm'),
(169, 'Navin Malik', 1, 'Sidekick', 0, 'm'),
(170, 'Satish Gauns', 1, 'Sidekick', 0, 'm'),
(171, 'Saurabh Prabhuchimulkar', 1, 'Sidekick', 0, 'm'),
(172, 'Pushpak Natekar', 1, 'Sidekick', 0, 'm'),
(173, 'Sagar Gaude', 1, 'Sidekick', 0, 'm'),
(174, 'Akshata Naik', 1, 'Sidekick', 0, 'm'),
(175, 'Ketan Kunde', 1, 'Sidekick', 0, 'm'),
(176, 'Shrinidhi Patil', 1, 'Sidekick', 0, 'm'),
(177, 'Gauri Sawaiker', 1, 'Sidekick', 0, 'm'),
(178, 'Sapnil Dessai', 1, 'Sidekick', 0, 'm'),
(179, 'Nelda Pires', 1, 'Sidekick', 0, 'm'),
(180, 'Priyanka Jha', 1, 'Sidekick', 0, 'm'),
(181, 'Neethi  Thilakan', 1, 'Sidekick', 0, 'm'),
(182, 'Meryl Fernandes', 1, 'Sidekick', 0, 'm'),
(183, 'Karthik Saravanan', 1, 'Sidekick', 0, 'm'),
(184, 'Ajit Mense', 1, 'Sidekick', 0, 'm'),
(186, 'Nitin Singh', 1, 'Sidekick', 0, 'm'),
(187, 'Satish Kenkre', 1, 'Sidekick', 0, 'm'),
(188, 'Mangirish Ajit Wagle', 1, 'Sidekick', 0, 'm'),
(189, 'Melody Merlyn Coelho', 1, 'Sidekick', 0, 'm'),
(190, 'Shubhangi Kinekar', 1, 'Sidekick', 0, 'm'),
(191, 'Rajesh Dhume', 1, 'Sidekick', 0, 'm'),
(193, 'Amar Talaulikar', 1, 'Sidekick', 0, 'm'),
(194, 'Savio Mesquita', 1, 'Sidekick', 0, 'm'),
(195, 'Rakhi Metri', 1, 'Sidekick', 0, 'm'),
(196, 'Nagesh Majik', 1, 'Sidekick', 0, 'm'),
(197, 'Kiran Belani', 1, 'Sidekick', 0, 'm'),
(198, 'Ameya Prabhudessai', 1, 'Sidekick', 0, 'm'),
(199, 'Gaurav Parrikar', 1, 'Sidekick', 0, 'm'),
(200, 'Ramnath Phadte', 1, 'Sidekick', 0, 'm'),
(201, 'Sindhu Herle', 1, 'Sidekick', 0, 'm'),
(202, 'Tanuja Saravanan', 1, 'Sidekick', 0, 'm'),
(203, 'Vinda Parab', 1, 'Sidekick', 0, 'm'),
(204, 'Charles De Menezes', 1, 'Sidekick', 0, 'm'),
(205, 'Preeti Shetty', 2, 'Hero', 0, 'm'),
(206, 'Lemmuela Louzado', 2, 'Hero', 0, 'm'),
(207, 'Karol Lawrence Fernandes', 2, 'Hero', 0, 'm'),
(208, 'Susana Quadros', 2, 'Hero', 0, 'm'),
(209, 'Prachi Kurade', 2, 'Hero', 0, 'm'),
(210, 'Harsh Agicha', 2, 'Hero', 0, 'm'),
(211, 'Renuka Gangavarapu', 2, 'Hero', 0, 'm'),
(212, 'Harish Volvoikar', 2, 'Hero', 0, 'm'),
(213, 'Nadia Fernandes', 2, 'Hero', 0, 'm'),
(214, 'Aniruddh  Kulkarni', 2, 'Hero', 0, 'm'),
(215, 'Sangeeta Pai', 2, 'Hero', 0, 'm'),
(216, 'Namrata Khandeparkar', 2, 'Hero', 0, 'm'),
(217, 'Pandurang Kamat', 2, 'Hero', 0, 'm'),
(218, 'Kirti Gaonkar', 2, 'Hero', 0, 'm'),
(219, 'Shubhangi Gupta', 2, 'Hero', 0, 'm'),
(220, 'Aviraj Madkaiker', 2, 'Hero', 0, 'm'),
(221, 'Niyati Patnekar (Trainee)', 2, 'Hero', 0, 'm'),
(222, 'Priya Parab', 2, 'Hero', 0, 'm'),
(223, 'Samba Nimmaluri', 2, 'Hero', 0, 'm'),
(224, 'Suraj Desai', 2, 'Hero', 0, 'm'),
(225, 'Ranjit Naik', 2, 'Hero', 0, 'm'),
(226, 'Manjula Athani', 2, 'Hero', 0, 'm'),
(227, 'Rui  Xavier', 2, 'Hero', 0, 'm'),
(228, 'Ambuja Prabhudesai', 2, 'Hero', 0, 'm'),
(229, 'Keshav Alias Pranav Kirtani', 2, 'Hero', 0, 'm'),
(230, 'Amarnath Dasari', 2, 'Hero', 0, 'm'),
(231, 'Vinay Patil', 2, 'Hero', 0, 'm'),
(232, 'Lubna Khan', 2, 'Hero', 0, 'm'),
(233, 'Prashant Gaonkar', 2, 'Hero', 0, 'm'),
(234, 'Shweta Nadkarni', 2, 'Hero', 0, 'm'),
(235, 'Yogesh Naik', 2, 'Hero', 0, 'm'),
(236, 'Angelina Fernandes', 2, 'Hero', 0, 'm'),
(237, 'Chetan Kudalkar', 2, 'Hero', 0, 'm'),
(238, 'Parikshit Sardessai', 2, 'Hero', 0, 'm'),
(239, 'Asmita Gaonker', 2, 'Hero', 0, 'm'),
(240, 'Jairam Gauns', 2, 'Hero', 0, 'm'),
(241, 'Richa Kadkade', 2, 'Hero', 0, 'm'),
(242, 'Faisal Shaikh', 2, 'Hero', 0, 'm'),
(243, 'Shakil Usgaonker', 2, 'Hero', 0, 'm'),
(244, 'Vassant Kunde', 2, 'Hero', 0, 'm'),
(245, 'Nikhil Kulkarni', 2, 'Hero', 0, 'm'),
(246, 'Shravankumar Angadi', 2, 'Hero', 0, 'm'),
(247, 'Abhijit Fadte', 2, 'Hero', 0, 'm'),
(248, 'Jyothi P', 2, 'Hero', 0, 'm'),
(249, 'Veeresh Gouri', 2, 'Hero', 0, 'm'),
(250, 'Tarun Singh', 2, 'Hero', 0, 'm'),
(251, 'Anjali Shirvoikar', 2, 'Hero', 0, 'm'),
(252, 'Asmita Dessai', 2, 'Hero', 0, 'm'),
(253, 'Valareyano Joseph Dias', 2, 'Hero', 0, 'm'),
(254, 'Aditya Gaonkar', 2, 'Hero', 0, 'm'),
(255, 'Rajeshri Shetye', 2, 'Hero', 0, 'm'),
(256, 'Steve Fernandes', 2, 'Sidekick', 0, 'm'),
(257, 'Anantrao Bhatkal', 2, 'Sidekick', 0, 'm'),
(258, 'Dhanusha Varik', 2, 'Sidekick', 0, 'm'),
(259, 'Bishal Sahu', 2, 'Sidekick', 0, 'm'),
(260, 'Savita Phadte', 2, 'Sidekick', 0, 'm'),
(261, 'Akshata Gaonkar', 2, 'Sidekick', 0, 'm'),
(262, 'Anand Verlekar', 2, 'Sidekick', 0, 'm'),
(263, 'Sandeep Kumar Pandey', 2, 'Sidekick', 0, 'm'),
(264, 'Niloday Tamhankar', 2, 'Sidekick', 0, 'm'),
(265, 'Sadhvi Nayak', 2, 'Sidekick', 0, 'm'),
(266, 'Guruprasad Pramod Pai Kane', 2, 'Sidekick', 0, 'm'),
(267, 'Vijayanand Gaunkar', 2, 'Sidekick', 0, 'm'),
(268, 'Ryan DMello', 2, 'Sidekick', 0, 'm'),
(269, 'Dinesh Korgaonkar', 2, 'Sidekick', 0, 'm'),
(270, 'Manjiri Anand Kamat', 2, 'Sidekick', 0, 'm'),
(271, 'Ashwinee Vengurlekar', 2, 'Sidekick', 0, 'm'),
(272, 'R Priji Rajendran', 2, 'Sidekick', 0, 'm'),
(273, 'Domnic Mendes', 2, 'Sidekick', 0, 'm'),
(274, 'Durgadas Shridhar Kamath', 2, 'Sidekick', 0, 'm'),
(275, 'Kshipra Adpaikar', 2, 'Sidekick', 0, 'm'),
(276, 'Sheetal Prabhu', 2, 'Sidekick', 0, 'm'),
(277, 'Amar Ramesh Pai Fondekar', 2, 'Sidekick', 0, 'm'),
(278, 'Xavier Pinto', 2, 'Sidekick', 0, 'm'),
(279, 'Njallacat Sebastian', 2, 'Sidekick', 0, 'm'),
(280, 'Hrishikesh Pai', 2, 'Sidekick', 0, 'm'),
(281, 'Prashant Prasannakumaran', 2, 'Sidekick', 0, 'm'),
(282, 'Manasi Pahalwan', 2, 'Sidekick', 0, 'm'),
(283, 'Charles Fernandes', 2, 'Sidekick', 0, 'm'),
(284, 'Sneha Shirgaonkar', 2, 'Sidekick', 0, 'm'),
(285, 'Shivani Ajgaonkar', 2, 'Sidekick', 0, 'm'),
(286, 'Yvonne Almeida', 2, 'Sidekick', 0, 'm'),
(287, 'Ramanand Sharma', 2, 'Sidekick', 0, 'm'),
(288, 'Dattprasad Shet-Kurtarkar', 2, 'Sidekick', 0, 'm'),
(289, 'Siddhesh Deodhar', 2, 'Sidekick', 0, 'm'),
(290, 'Gauree Upadhye', 2, 'Sidekick', 0, 'm'),
(291, 'Lance Rodrigues', 2, 'Sidekick', 0, 'm'),
(292, 'Dinesh Kudtadkar', 2, 'Sidekick', 0, 'm'),
(293, 'Harish Bhat', 2, 'Sidekick', 0, 'm'),
(294, 'Supriya Gupta', 2, 'Sidekick', 0, 'm'),
(295, 'Minal Pundalik Nagwekar', 2, 'Sidekick', 0, 'm'),
(296, 'Pooja Raikar', 2, 'Sidekick', 0, 'm'),
(297, 'Priyantha Kamat', 2, 'Sidekick', 0, 'm'),
(298, 'Darshan Divekar', 2, 'Sidekick', 0, 'm'),
(299, 'Vikram Makkineni', 2, 'Sidekick', 0, 'm'),
(300, 'Chetan Rane', 2, 'Sidekick', 0, 'm'),
(301, 'Amol Kunde', 2, 'Sidekick', 0, 'm'),
(302, 'Rachna Vadala', 2, 'Sidekick', 0, 'm'),
(303, 'Poonam Havanur', 2, 'Sidekick', 0, 'm'),
(304, 'Anshuja Lotlikar', 2, 'Sidekick', 0, 'm'),
(305, 'Kunnal Raikar', 2, 'Sidekick', 0, 'm'),
(306, 'Shreya Kantak', 4, 'Hero', 0, 'm'),
(307, 'Harish Usgaonkar', 4, 'Hero', 0, 'm'),
(308, 'Sneha Gaitonde', 4, 'Hero', 0, 'm'),
(309, 'Prathamesh Kavlekar', 4, 'Hero', 0, 'm'),
(310, 'Vibha Choudhary', 4, 'Hero', 0, 'm'),
(311, 'Elroy Antao', 4, 'Hero', 0, 'm'),
(312, 'Trupti Kakodkar', 4, 'Hero', 0, 'm'),
(313, 'Sanjay Singh', 4, 'Hero', 0, 'm'),
(314, 'Srinidha Hande', 4, 'Hero', 0, 'm'),
(315, 'Sagar Rivankar', 4, 'Hero', 0, 'm'),
(316, 'Siddhi Sheldenkar', 4, 'Hero', 0, 'm'),
(317, 'Siddhi Pai Kuchelkar', 4, 'Hero', 0, 'm'),
(318, 'Chaitan Chodankar', 4, 'Hero', 0, 'm'),
(319, 'Ramnath Pai', 4, 'Hero', 0, 'm'),
(320, 'Amar Tari', 4, 'Hero', 0, 'm'),
(321, 'Marwin Menezes', 4, 'Hero', 0, 'm'),
(322, 'Bikram  Kundu', 4, 'Hero', 0, 'm'),
(323, 'Prathamesh Kanekar', 4, 'Hero', 0, 'm'),
(324, 'Vijaya Chavan', 4, 'Hero', 0, 'm'),
(325, 'Sidhesh Dessai', 4, 'Hero', 0, 'm'),
(326, 'Gautam  Wagh', 4, 'Hero', 0, 'm'),
(327, 'Abhijit Gaonkar', 4, 'Hero', 0, 'm'),
(328, 'Arya Khedekar', 4, 'Hero', 0, 'm'),
(329, 'Romit Ravishankar Godi', 4, 'Hero', 0, 'm'),
(330, 'Viraj Shirgaonkar', 4, 'Hero', 0, 'm'),
(331, 'Girish Mulgaonkar', 4, 'Hero', 0, 'm'),
(332, 'Minakshi Ghanekar', 4, 'Hero', 0, 'm'),
(333, 'Viddhesh Borkar', 4, 'Hero', 0, 'm'),
(334, 'Sandeep Gaonkar', 4, 'Hero', 0, 'm'),
(335, 'Anaya Prabhudesai', 4, 'Hero', 0, 'm'),
(336, 'Marinha Pereira', 4, 'Hero', 0, 'm'),
(337, 'Sharon Rodrigues', 4, 'Hero', 0, 'm'),
(338, 'Sachin Despande', 4, 'Hero', 0, 'm'),
(339, 'Vivek Sawant', 4, 'Hero', 0, 'm'),
(340, 'Siddhesh Naik Kurade', 4, 'Hero', 0, 'm'),
(341, 'Madhuri Naik', 4, 'Hero', 0, 'm'),
(342, 'Yatin Dalvi', 4, 'Hero', 0, 'm'),
(343, 'Maria Braganza', 4, 'Hero', 0, 'm'),
(344, 'Pankaj Jha', 4, 'Hero', 0, 'm'),
(345, 'Bhushan Borkar', 4, 'Hero', 0, 'm'),
(346, 'Smita Dessai', 4, 'Hero', 0, 'm'),
(347, 'Satyen Chimulkar', 4, 'Hero', 0, 'm'),
(348, 'Vandita Kadam', 4, 'Hero', 0, 'm'),
(349, 'Akshay Mungrey', 4, 'Hero', 0, 'm'),
(350, 'Valencia Fernandes', 4, 'Hero', 0, 'm'),
(351, 'Mahesh Sawaiker', 4, 'Hero', 0, 'm'),
(352, 'Mallinath Naik', 4, 'Hero', 0, 'm'),
(353, 'Sanyam Mohandas Kamat', 4, 'Hero', 0, 'm'),
(354, 'Sankalp Karpe', 4, 'Hero', 0, 'm'),
(355, 'Rakesh Raul', 4, 'Hero', 0, 'm'),
(356, 'Abhishek Aroskar', 4, 'Sidekick', 0, 'm'),
(357, 'Kalpataru Sahoo', 4, 'Sidekick', 0, 'm'),
(358, 'Pranjali Apte', 4, 'Sidekick', 0, 'm'),
(359, 'Sunnaiya Tiwari', 4, 'Sidekick', 0, 'm'),
(360, 'Richa Dhaimodker', 4, 'Sidekick', 0, 'm'),
(361, 'Gaurish Chandelkar', 4, 'Sidekick', 0, 'm'),
(362, 'Hirensinh Chavda', 4, 'Sidekick', 0, 'm'),
(363, 'Pooja Dabholker', 4, 'Sidekick', 0, 'm'),
(364, 'Pradosh Manjrekar', 4, 'Sidekick', 0, 'm'),
(365, 'Deepak Tiwari', 4, 'Sidekick', 0, 'm'),
(366, 'Uddesh Parob', 4, 'Sidekick', 0, 'm'),
(367, 'Abhay Deshmukh', 4, 'Sidekick', 0, 'm'),
(368, 'Mittal Saglani', 4, 'Sidekick', 0, 'm'),
(369, 'Vijay Dessai', 4, 'Sidekick', 0, 'm'),
(370, 'Amitkumar Chavda', 4, 'Sidekick', 0, 'm'),
(371, 'Julius Fernandes', 4, 'Sidekick', 0, 'm'),
(372, 'Nitin Kumar', 4, 'Sidekick', 0, 'm'),
(373, 'Yoguesh Dalal', 4, 'Sidekick', 0, 'm'),
(374, 'Vishnu Mahajan', 4, 'Sidekick', 0, 'm'),
(375, 'Pallavi Desai', 4, 'Sidekick', 0, 'm'),
(376, 'Dattaraj Devane', 4, 'Sidekick', 0, 'm'),
(377, 'Gautam Borkar', 4, 'Sidekick', 0, 'm'),
(378, 'Pallavi Gawas', 4, 'Sidekick', 0, 'm'),
(379, 'Swapnil Konkankar', 4, 'Sidekick', 0, 'm'),
(380, 'Amod Borkar', 4, 'Sidekick', 0, 'm'),
(381, 'Priya Mokatekar', 4, 'Sidekick', 0, 'm'),
(382, 'Saish Cuncoliencar', 4, 'Sidekick', 0, 'm'),
(383, 'Alston Gama', 4, 'Sidekick', 0, 'm'),
(384, 'Suchana Kankonkar', 4, 'Sidekick', 0, 'm'),
(385, 'Siddhi Sinai Borkar', 4, 'Sidekick', 0, 'm'),
(386, 'Prachi Bhandare', 4, 'Sidekick', 0, 'm'),
(387, 'Namita Shetkar', 4, 'Sidekick', 0, 'm'),
(388, 'Jasmira Fernandes', 4, 'Sidekick', 0, 'm'),
(389, 'Namrata Bhave', 4, 'Sidekick', 0, 'm'),
(390, 'Vyankatesh Abhisheki', 4, 'Sidekick', 0, 'm'),
(391, 'Jishin V', 4, 'Sidekick', 0, 'm'),
(392, 'Shaunak Shilimkan', 4, 'Sidekick', 0, 'm'),
(393, 'Sheldon Fernandes', 4, 'Sidekick', 0, 'm'),
(394, 'Vallabh Naik', 4, 'Sidekick', 0, 'm'),
(395, 'Mayuri Rivankar', 4, 'Sidekick', 0, 'm'),
(396, 'Pawan khadpe', 4, 'Sidekick', 0, 'm'),
(397, 'Sapana Bilguche', 4, 'Sidekick', 0, 'm'),
(398, 'Dinesh Rivankar', 4, 'Sidekick', 0, 'm'),
(399, 'Vithal Marathe', 4, 'Sidekick', 0, 'm'),
(400, 'Rashmi Sakhalkar', 4, 'Sidekick', 0, 'm'),
(401, 'Morto Nevreker', 4, 'Sidekick', 0, 'm'),
(402, 'Girish Bharne', 4, 'Sidekick', 0, 'm'),
(403, 'Amol Rawool', 4, 'Sidekick', 0, 'm'),
(404, 'Misbah Khatoon', 4, 'Sidekick', 0, 'm'),
(405, 'Renuka Kharangate', 4, 'Sidekick', 0, 'm');

-- --------------------------------------------------------

--
-- Table structure for table `rounds`
--

CREATE TABLE IF NOT EXISTS `rounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` int(11) NOT NULL,
  `particpants` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` int(11) NOT NULL,
  `partcipating_team` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(64) NOT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `Name`, `points`) VALUES
(1, 'X-Men', 6250),
(2, 'Justice League', 6250),
(3, 'Avengers', 6250),
(4, 'Autobots', 6250);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
