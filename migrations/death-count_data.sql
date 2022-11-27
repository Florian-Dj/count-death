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

/*Data for the table `counters` */

/*Data for the table `deaths` */

insert  into `deaths`(`death_id`,`mod_id`,`death_name`) values 
(1,1,'Asylum Demon'),
(2,1,'Bell Gargoyle'),
(3,1,'Capra Demon'),
(4,1,'Ceaseless Discharge'),
(5,1,'Centipede Demon'),
(6,1,'Chaos Witch Quelaag'),
(7,1,'Crossbreed Priscilla'),
(8,1,'Dark Sun Gwyndolin'),
(9,1,'Demon Firesage'),
(10,1,'Four Kings'),
(11,1,'Gaping Dragon'),
(12,1,'Great Grey Wolf Sif'),
(13,1,'Gwyn Lord of Cinder'),
(14,1,'Iron Golem'),
(15,1,'Moonlight Butterfly'),
(16,1,'Nito'),
(17,1,'Ornstein and Smough'),
(18,1,'Pinwheel'),
(19,1,'Seath the Scaleless'),
(20,1,'Stray Demon'),
(21,1,'Taurus Demon'),
(22,1,'The Bed of Chaos'),
(23,2,'Black Hydra'),
(24,2,'Black Phantom'),
(25,2,'Butcher'),
(26,2,'Fang Boar'),
(27,2,'Giant Cat'),
(28,2,'Giant Rat'),
(29,2,'Golden Crystal Golem'),
(30,2,'Havel The Rock'),
(31,2,'Hydra'),
(32,2,'Ricard the Archer'),
(33,2,'The Berenike Knights'),
(34,2,'The Black Knight'),
(35,2,'The Bridge Wyvern'),
(36,2,'The Channeler'),
(37,2,'Titanite Demon'),
(38,2,'Undead Dragon'),
(39,2,'Mass of Souls'),
(40,3,'Artorias the Abysswalker'),
(41,3,'Black Dragon Kalameet'),
(42,3,'Manus, Father of the Abyss'),
(43,3,'Sanctuary Guardian'),
(44,4,'Monsters'),
(45,4,'Fall');

/*Data for the table `games` */

insert  into `games`(`game_id`,`game_name`,`game_steam`,`game_image`) values 
(1,'DARK SOULS: Prepare To Die','https://store.steampowered.com/app/211420/DARK_SOULS_Prepare_To_Die_Edition/','https://cdn.akamai.steamstatic.com/steam/apps/211420/header.jpg?t=1667594629'),
(2,'DARK SOULS: REMASTERED','https://store.steampowered.com/app/570940/DARK_SOULS_REMASTERED/','https://cdn.akamai.steamstatic.com/steam/apps/570940/header.jpg?t=1668145065');

/*Data for the table `mods` */

insert  into `mods`(`mod_id`,`game_id`,`mod_name`) values 
(1,2,'Area Bosses'),
(2,2,'Mini Bosses'),
(3,2,'Expansion Bosses'),
(4,2,'Other');

/*Data for the table `mods_runs` */

/*Data for the table `runs` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
