/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.28 : Database - bookstore
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookstore` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bookstore`;

/*Table structure for table `mall_goods` */

DROP TABLE IF EXISTS `mall_goods`;

CREATE TABLE `mall_goods` (
  `goods_id` varchar(10) NOT NULL,
  `goods_name` varchar(100) DEFAULT NULL,
  `shop_price` float DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mall_goods` */

insert  into `mall_goods`(`goods_id`,`goods_name`,`shop_price`,`add_time`) values ('1001','book',10,'2014-03-10 00:00:00'),('1002','pan',20,'2014-03-11 00:00:00'),('1003','ball',30,'2014-03-12 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
