-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Време на генериране: 
-- Версия на сървъра: 5.6.11
-- Версия на PHP: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- БД: `jobs-api`
--
CREATE DATABASE IF NOT EXISTS `jobs-api` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `jobs-api`;

-- --------------------------------------------------------

--
-- Структура на таблица `candidates`
--

CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `job_id` int(11) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Схема на данните от таблица `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `job_id`, `created_on`) VALUES
(1, 'pesho candidate for php', 1, '2015-06-16'),
(2, 'gosho candidate for java', 2, '2015-06-16'),
(3, 'sasho candidate for php', 1, '2015-06-16'),
(4, 'penka candidate for java', 2, '2015-06-16'),
(5, 'johan', 1, '2015-06-15');

-- --------------------------------------------------------

--
-- Структура на таблица `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Схема на данните от таблица `jobs`
--

INSERT INTO `jobs` (`id`, `position`, `description`, `created_on`) VALUES
(1, 'php developer', 'we are looking for a php developer', '2015-06-16'),
(2, 'java developer', 'we are looking for a java developer', '2015-06-16');

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
