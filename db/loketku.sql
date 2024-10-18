/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.24-MariaDB : Database - loketku
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`loketku` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `loketku`;

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `bookingID` varchar(25) NOT NULL,
  `kapalID` varchar(25) DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `tgl_pemesanan` date DEFAULT NULL,
  `waktu` enum('08:00','10:30','12:30','14:00','16:30') DEFAULT NULL,
  `rute` enum('Batam','nusa penida') DEFAULT NULL,
  `nama_dermaga` varchar(30) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `hargaTot` int(50) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`bookingID`),
  KEY `kapalID` (`kapalID`),
  KEY `userID` (`userID`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`kapalID`) REFERENCES `kapal` (`kapalID`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`bookingID`,`kapalID`,`userID`,`tgl_pemesanan`,`waktu`,`rute`,`nama_dermaga`,`jumlah`,`hargaTot`,`status`) values 
('1','1002',1084,'2024-10-18','10:30','','Tanjungpinang',1,50000,'');

/*Table structure for table `crew` */

DROP TABLE IF EXISTS `crew`;

CREATE TABLE `crew` (
  `crewID` varchar(25) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `gender` enum('laki-laki','perempuan') DEFAULT NULL,
  `noTelp` varchar(30) DEFAULT NULL,
  `telpKeluarga` varchar(30) DEFAULT NULL,
  `kapalID` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`crewID`),
  KEY `kapalID` (`kapalID`),
  CONSTRAINT `crew_ibfk_1` FOREIGN KEY (`kapalID`) REFERENCES `kapal` (`kapalID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `crew` */

/*Table structure for table `detailbooking` */

DROP TABLE IF EXISTS `detailbooking`;

CREATE TABLE `detailbooking` (
  `id_detail_booking` int(11) NOT NULL AUTO_INCREMENT,
  `booking_ID` varchar(25) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `metodePembayaran` varchar(10) NOT NULL,
  `jumlah_tiket` int(2) NOT NULL,
  `harga` int(50) NOT NULL,
  `harga_Tot` int(50) NOT NULL,
  `bayar` int(50) NOT NULL,
  PRIMARY KEY (`id_detail_booking`),
  KEY `bookingID` (`booking_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

/*Data for the table `detailbooking` */

insert  into `detailbooking`(`id_detail_booking`,`booking_ID`,`tgl_transaksi`,`metodePembayaran`,`jumlah_tiket`,`harga`,`harga_Tot`,`bayar`) values 
(30,'1248','2024-10-18','OVO',3,23213,69639,69639),
(31,'1','2024-10-18','Gopay',1,50000,50000,50000);

/*Table structure for table `detailkapal` */

DROP TABLE IF EXISTS `detailkapal`;

CREATE TABLE `detailkapal` (
  `kapalID` varchar(25) NOT NULL,
  `tgl_pemesanan` date NOT NULL,
  `sisaTiket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `detailkapal` */

/*Table structure for table `detailuser` */

DROP TABLE IF EXISTS `detailuser`;

CREATE TABLE `detailuser` (
  `id_detail_user` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `noTelp` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  PRIMARY KEY (`id_detail_user`),
  KEY `id_pengguna` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `detailuser` */

insert  into `detailuser`(`id_detail_user`,`userID`,`nama`,`alamat`,`noTelp`,`jenis_kelamin`) values 
(36,1082,'ee ','dfawd','08123921942194','Laki-laki'),
(37,1083,'qwdeqw ','dsvsdv','12324325325','Laki-laki'),
(38,1084,'qwertr ','fbdbdfhb','12432432452','Laki-laki');

/*Table structure for table `kapal` */

DROP TABLE IF EXISTS `kapal`;

CREATE TABLE `kapal` (
  `kapalID` varchar(25) NOT NULL,
  `jenis` enum('fast boat','Roro','jukung/motor boat') DEFAULT NULL,
  `waktu` enum('08:00','10:30','12:30','14:00','16:30') DEFAULT NULL,
  `rute` varchar(30) NOT NULL,
  `nama_dermaga` varchar(30) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `jml_tiket` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`kapalID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kapal` */

insert  into `kapal`(`kapalID`,`jenis`,`waktu`,`rute`,`nama_dermaga`,`harga`,`kapasitas`,`jml_tiket`,`foto`) values 
('1001','fast boat','08:00','Batam','Tanjungpinang',80000,200,200,'19-tnj-batam.jpeg'),
('1002','fast boat','10:30','Natuna','Tanjungpinang',50000,150,149,'631-foto 14.jpg'),
('1003','fast boat','14:00','Tanjungpinang','Batam',85000,250,250,'138-batam-tnj.jpeg');

/*Table structure for table `tiket` */

DROP TABLE IF EXISTS `tiket`;

CREATE TABLE `tiket` (
  `tiketID` varchar(25) NOT NULL,
  `bookingID` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`tiketID`),
  KEY `bookingID` (`bookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tiket` */

insert  into `tiket`(`tiketID`,`bookingID`) values 
('2076','1'),
('1991','1212'),
('1992','1213'),
('1993','1213'),
('1994','1214'),
('1995','1215'),
('1996','1215'),
('1997','1215'),
('1998','1215'),
('1999','1215'),
('2000','1216'),
('2001','1217'),
('2002','1218'),
('2003','1218'),
('2004','1218'),
('2005','1218'),
('2006','1219'),
('2007','1219'),
('2008','1220'),
('2009','1220'),
('2010','1221'),
('2011','1221'),
('2012','1222'),
('2013','1222'),
('2014','1223'),
('2015','1223'),
('2016','1223'),
('2017','1223'),
('2018','1223'),
('2019','1223'),
('2020','1224'),
('2021','1224'),
('2022','1225'),
('2023','1225'),
('2024','1230'),
('2025','1230'),
('2026','1230'),
('2027','1231'),
('2028','1231'),
('2029','1231'),
('2030','1231'),
('2031','1231'),
('2032','1231'),
('2033','1231'),
('2034','1231'),
('2035','1231'),
('2036','1231'),
('2037','1232'),
('2038','1232'),
('2039','1232'),
('2040','1232'),
('2041','1232'),
('2042','1232'),
('2043','1232'),
('2044','1232'),
('2045','1233'),
('2046','1234'),
('2047','1234'),
('2048','1234'),
('2049','1234'),
('2050','1234'),
('2051','1234'),
('2052','1234'),
('2053','1234'),
('2054','1234'),
('2055','1234'),
('2056','1235'),
('2057','1235'),
('2058','1236'),
('2059','1236'),
('2060','1236'),
('2061','1244'),
('2062','1244'),
('2063','1244'),
('2064','1245'),
('2065','1245'),
('2066','1246'),
('2067','1246'),
('2068','1246'),
('2069','1246'),
('2070','1246'),
('2071','1247'),
('2072','1247'),
('2073','1248'),
('2074','1248'),
('2075','1248');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(25) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tingkatan_user` enum('admin','user','','') NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=1085 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`userID`,`email`,`password`,`tingkatan_user`) values 
(1001,'siumbaraya@gmail.com','a580da32eb387c4f0c3b410168e6366f','user'),
(1002,'bsgsd@gmail.com','2c3451bb1945a8c11209444ab02c5cee','user'),
(1003,'cnakr22@gmail.com','eca4ba272ff3b09b74921960fd905f8a','user'),
(1004,'there123','123','admin'),
(1078,'tinny2bell@gmail.com','4db1d28743f1311479769f3ce1088698','user'),
(1081,'putunovia','202cb962ac59075b964b07152d234b70','user'),
(1082,'r@gmail.com','ec6a6536ca304edf844d1d248a4f08dc','user'),
(1083,'qwert','d9b1d7db4cd6e70935368a1efb10e377','user'),
(1084,'qwerty','202cb962ac59075b964b07152d234b70','user');

/* Trigger structure for table `booking` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tiket_keluar` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `tiket_keluar` AFTER INSERT ON `booking` FOR EACH ROW BEGIN 
UPDATE kapal SET jml_tiket = jml_tiket - new.jumlah
WHERE kapalID = new.kapalID;
END */$$


DELIMITER ;

/* Trigger structure for table `booking` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `balik` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `balik` AFTER DELETE ON `booking` FOR EACH ROW UPDATE kapal SET jml_tiket = jml_tiket + OLD.jumlah 
WHERE kapalID = OLD.kapalID */$$


DELIMITER ;

/* Procedure structure for procedure `insert_data` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_data` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_data`(IN `u_email` VARCHAR(25), IN `u_pass` VARCHAR(255), IN `u_tingkatan_user` VARCHAR(30), IN `u_nama` VARCHAR(30), IN `u_alamat` VARCHAR(50), IN `u_notelp` VARCHAR(30), IN `u_jenis_kelamin` VARCHAR(30))
BEGIN
 INSERT INTO USER (email, PASSWORD, tingkatan_user) VALUES (u_email, md5(u_pass), u_tingkatan_user);
 INSERT INTO detailuser (userID,nama,alamat,noTelp,jenis_kelamin) VALUES (LAST_INSERT_ID(),u_nama,u_alamat,u_notelp,u_jenis_kelamin);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `tes` */

/*!50003 DROP PROCEDURE IF EXISTS  `tes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tes`(IN `u_email` VARCHAR(25), IN `u_pass` VARCHAR(30), IN `u_tingkatan_user` VARCHAR(30), IN `u_nama` VARCHAR(30), IN `u_alamat` VARCHAR(50), IN `u_notelp` VARCHAR(30), IN `u_jenis_kelamin` VARCHAR(30))
BEGIN
 INSERT INTO USER (email, PASSWORD, tingkatan_user) VALUES (u_email, u_pass, u_tingkatan_user);
 INSERT INTO detailuser (userID,nama,alamat,noTelp,jenis_kelamin) VALUES (LAST_INSERT_ID(),u_nama,u_alamat,u_notelp,u_jenis_kelamin);
	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
