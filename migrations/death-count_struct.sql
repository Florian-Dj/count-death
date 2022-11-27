/*
SQLyog Ultimate v13.1.7 (64 bit)
MySQL - 10.6.11-MariaDB-log : Database - death-count
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`death-count` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;

USE `death-count`;

/*Table structure for table `counters` */

DROP TABLE IF EXISTS `counters`;

CREATE TABLE `counters` (
  `counter_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `run_id` smallint(6) NOT NULL,
  `death_id` mediumint(9) NOT NULL,
  `counter_death` smallint(6) NOT NULL DEFAULT 0,
  `counter_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`counter_id`),
  KEY `fk_counter_run` (`run_id`),
  KEY `fk_counter_death` (`death_id`),
  CONSTRAINT `fk_counter_death` FOREIGN KEY (`death_id`) REFERENCES `deaths` (`death_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_counter_run` FOREIGN KEY (`run_id`) REFERENCES `runs` (`run_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*Table structure for table `deaths` */

DROP TABLE IF EXISTS `deaths`;

CREATE TABLE `deaths` (
  `death_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `mod_id` mediumint(9) NOT NULL,
  `death_name` varchar(64) NOT NULL,
  PRIMARY KEY (`death_id`),
  KEY `fk_death_mod` (`mod_id`),
  CONSTRAINT `fk_death_mod` FOREIGN KEY (`mod_id`) REFERENCES `mods` (`mod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*Table structure for table `games` */

DROP TABLE IF EXISTS `games`;

CREATE TABLE `games` (
  `game_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(64) NOT NULL,
  `game_steam` varchar(256) NOT NULL,
  `game_image` varchar(256) NOT NULL,
  PRIMARY KEY (`game_id`),
  UNIQUE KEY `game_ak_1` (`game_name`),
  UNIQUE KEY `game_ak_2` (`game_image`),
  UNIQUE KEY `game_ak_3` (`game_steam`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*Table structure for table `mods` */

DROP TABLE IF EXISTS `mods`;

CREATE TABLE `mods` (
  `mod_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `game_id` smallint(6) NOT NULL,
  `mod_name` varchar(64) NOT NULL,
  PRIMARY KEY (`mod_id`),
  KEY `fk_mod_game` (`game_id`),
  CONSTRAINT `fk_mod_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*Table structure for table `mods_runs` */

DROP TABLE IF EXISTS `mods_runs`;

CREATE TABLE `mods_runs` (
  `mod_run_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `run_id` smallint(6) NOT NULL,
  `mod_id` mediumint(9) NOT NULL,
  `mod_run_status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`mod_run_id`),
  KEY `fk_mod_run_mod` (`run_id`),
  KEY `fk_mod_run_run` (`mod_id`),
  CONSTRAINT `fk_mod_run_mod` FOREIGN KEY (`mod_id`) REFERENCES `mods` (`mod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mod_run_run` FOREIGN KEY (`run_id`) REFERENCES `runs` (`run_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*Table structure for table `runs` */

DROP TABLE IF EXISTS `runs`;

CREATE TABLE `runs` (
  `run_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `game_id` smallint(6) NOT NULL,
  `run_status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`run_id`),
  KEY `fk_run_game` (`game_id`),
  CONSTRAINT `fk_run_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
