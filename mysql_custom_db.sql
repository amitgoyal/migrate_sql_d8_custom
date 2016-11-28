# Custom mysql data.

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `mysql_custom_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mysql_custom_db`;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `site_url` varchar(255) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `author` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `title`, `body`, `city`, `state`, `site_url`, `site_name`, `keywords`, `created_date`, `author`) VALUES
(1,	'Home',	'This is a Home Page.',	'City 1',	'State 1', 'http://www.example1.com',	'Example1.com',	'home,example1',	'2016-08-30T10:20:00Z',	3),
(2,	'About us',	'This is a About Page.',	'City 2',	'State 2', 'http://www.example2.com',	'Example2.com',	'about,example2',	'2016-09-10T11:15:00Z',	4);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`uid`, `username`, `password`, `email`, `created`) VALUES
(3,	'user1',	'24c9e15e52afc47c225b757e7bee1f9d',	'user1@example1.com',	'2016-08-30T10:00:00Z'),
(4,	'user2',	'7e58d63b60197ceb55a1c487989a3720',	'user2@example2.com',	'2016-08-30T10:00:00Z');
