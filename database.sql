/*
SQLyog Ultimate v11.5 (64 bit)
MySQL - 5.5.50 : Database - weather_app_bd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


/*Table structure for table `transactiontezos` */

DROP TABLE IF EXISTS `transactiontezos`;

CREATE TABLE `transactiontezos` (
  `idtrans` int(10) NOT NULL AUTO_INCREMENT,
  `pkhsource` varchar(255) DEFAULT NULL,
  `pkhdestination` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `datetrans` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idtrans`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `transactiontezos` */

insert  into `transactiontezos`(`idtrans`,`pkhsource`,`pkhdestination`,`amount`,`fee`,`datetrans`) values (1,'tz1byEzc7Yx5fycvVM79WRR5gtjJBQpFJaD6','tz1TANP8y62Gbb5d2CwC8PJAPNQJrSBcGLWh',500000,1500,'2019-08-03 03:27:18'),(2,'tz1byEzc7Yx5fycvVM79WRR5gtjJBQpFJaD6','tz1TANP8y62Gbb5d2CwC8PJAPNQJrSBcGLWh',500000,1500,'2019-08-03 07:23:08'),(3,'tz1byEzc7Yx5fycvVM79WRR5gtjJBQpFJaD6','tz1TANP8y62Gbb5d2CwC8PJAPNQJrSBcGLWh',500000,1500,'2019-08-04 01:51:31'),(4,'tz1byEzc7Yx5fycvVM79WRR5gtjJBQpFJaD6','tz1TANP8y62Gbb5d2CwC8PJAPNQJrSBcGLWh',500000,1500,'2019-08-04 02:09:23'),(5,'tz1dg4qeBETdNzShsMUkJUEjk6pfuGL2jX5o','tz1byEzc7Yx5fycvVM79WRR5gtjJBQpFJaD6',10000000,3000,'2019-08-04 13:15:22'),(6,'tz1dg4qeBETdNzShsMUkJUEjk6pfuGL2jX5o','tz1byEzc7Yx5fycvVM79WRR5gtjJBQpFJaD6',500000,1500,'2019-08-04 17:42:02'),(7,'tz1dg4qeBETdNzShsMUkJUEjk6pfuGL2jX5o','tz1byEzc7Yx5fycvVM79WRR5gtjJBQpFJaD6',500000,1500,'2019-08-04 18:42:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
  `nom_prenom` varchar(255) NOT NULL,
  `email_users` varchar(255) NOT NULL,
  `password_users` varchar(100) NOT NULL,
  `active` int(11) DEFAULT '0',
  `alphFaucetAccount` varchar(500) DEFAULT NULL,
  `keystore` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id_users`,`nom_prenom`,`email_users`,`password_users`,`active`,`alphFaucetAccount`,`keystore`) values (1,'junior','junior@gmail.com','junior',0,NULL,NULL),(2,'Junior Mve','nana@gmail.com','mvemve',0,NULL,NULL),(3,'Essam','admin@gmail.com','admin',0,NULL,NULL),(4,'test','fouomenedaniel@gmail.com','test',1,'{\"mnemonic\":[\"noise\",\"orient\",\"provide\",\"animal\",\"squirrel\",\"awkward\",\"physical\",\"science\",\"nature\",\"woman\",\"orient\",\"raise\",\"main\",\"input\",\"bachelor\"],\"secret\":\"68a66fc1367228f5e283be3a86302f6e92280ab2\",\"amount\":\"58219428237\",\"pkh\":\"tz1byEzc7Yx5fycvVM79WRR5gtjJBQpFJaD6\",\"password\":\"0A3bpTYap0\",\"email\":\"xchznuab.mvqizwbg@tezos.example.org\"}','{\"publicKey\":\"edpkvZ6fmXyZ3NKUX7rga8oPQcCuA6KV6RnCPQHzms6vVoZFmjcJFe\",\"privateKey\":\"edskRtqftSjhwxXAb1TdXpxHM4tfnfiHerrhTd6tRoyMUeZTbU7DusT5htmmBWn48pd82oHcCEvVRtR6X7yFGq8QRw2xpEbEhM\",\"publicKeyHash\":\"tz1byEzc7Yx5fycvVM79WRR5gtjJBQpFJaD6\",\"seed\":\"\",\"storeType\":1}'),(5,'test1','testtest@gmail.com','test',0,NULL,NULL),(6,'Daniel Rene Fouomene Pewo','test@tezos.com','test',2,'{\"mnemonic\":[\"noise\",\"orient\",\"provide\",\"animal\",\"squirrel\",\"awkward\",\"physical\",\"science\",\"nature\",\"woman\",\"orient\",\"raise\",\"main\",\"input\",\"bachelor\"],\"secret\":\"68a66fc1367228f5e283be3a86302f6e92280ab2\",\"amount\":\"58219428237\",\"pkh\":\"tz1byEzc7Yx5fycvVM79WRR5gtjJBQpFJaD6\",\"password\":\"0A3bpTYap0\",\"email\":\"xchznuab.mvqizwbg@tezos.example.org\"}','{\"publicKey\":\"edpkvZ6fmXyZ3NKUX7rga8oPQcCuA6KV6RnCPQHzms6vVoZFmjcJFe\",\"privateKey\":\"edskRtqftSjhwxXAb1TdXpxHM4tfnfiHerrhTd6tRoyMUeZTbU7DusT5htmmBWn48pd82oHcCEvVRtR6X7yFGq8QRw2xpEbEhM\",\"publicKeyHash\":\"tz1byEzc7Yx5fycvVM79WRR5gtjJBQpFJaD6\",\"seed\":\"\",\"storeType\":1}'),(7,'Arsene Arsene','arsene@tezos.com','test',2,'{\"mnemonic\":[\"belt\",\"taxi\",\"devote\",\"local\",\"letter\",\"craft\",\"boat\",\"arm\",\"fog\",\"comic\",\"area\",\"actual\",\"alone\",\"hope\",\"bunker\"],\"secret\":\"9390418a75b6f51ceece7ab2bb1d989c5cdfc06a\",\"amount\":\"14962996880\",\"pkh\":\"tz1dg4qeBETdNzShsMUkJUEjk6pfuGL2jX5o\",\"password\":\"Kvre8vYuH5\",\"email\":\"zpranccc.vpaiznwf@tezos.example.org\"}','{\"publicKey\":\"edpktrHGQ789D1687kpNj8Jv3t6t6RivwYYHUqV2ZJjboKLa43kw12\",\"privateKey\":\"edskRzFHGK56NfHGzGCJiW65e2iw8TkfwkziezSxovfTr2a6jFTFzVz8YBpZxMbsKF7BftDWitmD3yB2eS943yqijvmfEhd3X1\",\"publicKeyHash\":\"tz1dg4qeBETdNzShsMUkJUEjk6pfuGL2jX5o\",\"seed\":\"\",\"storeType\":1}'),(8,'yvan yvan','yvan@tezos.com','test',2,'{\"mnemonic\":[\"belt\",\"taxi\",\"devote\",\"local\",\"letter\",\"craft\",\"boat\",\"arm\",\"fog\",\"comic\",\"area\",\"actual\",\"alone\",\"hope\",\"bunker\"],\"secret\":\"9390418a75b6f51ceece7ab2bb1d989c5cdfc06a\",\"amount\":\"14962996880\",\"pkh\":\"tz1dg4qeBETdNzShsMUkJUEjk6pfuGL2jX5o\",\"password\":\"Kvre8vYuH5\",\"email\":\"zpranccc.vpaiznwf@tezos.example.org\"}','{\"publicKey\":\"edpktrHGQ789D1687kpNj8Jv3t6t6RivwYYHUqV2ZJjboKLa43kw12\",\"privateKey\":\"edskRzFHGK56NfHGzGCJiW65e2iw8TkfwkziezSxovfTr2a6jFTFzVz8YBpZxMbsKF7BftDWitmD3yB2eS943yqijvmfEhd3X1\",\"publicKeyHash\":\"tz1dg4qeBETdNzShsMUkJUEjk6pfuGL2jX5o\",\"seed\":\"\",\"storeType\":1}'),(9,'didi didi','didi@tezos.com','test',2,'{\"mnemonic\":[\"belt\",\"taxi\",\"devote\",\"local\",\"letter\",\"craft\",\"boat\",\"arm\",\"fog\",\"comic\",\"area\",\"actual\",\"alone\",\"hope\",\"bunker\"],\"secret\":\"9390418a75b6f51ceece7ab2bb1d989c5cdfc06a\",\"amount\":\"14962996880\",\"pkh\":\"tz1dg4qeBETdNzShsMUkJUEjk6pfuGL2jX5o\",\"password\":\"Kvre8vYuH5\",\"email\":\"zpranccc.vpaiznwf@tezos.example.org\"}','{\"publicKey\":\"edpktrHGQ789D1687kpNj8Jv3t6t6RivwYYHUqV2ZJjboKLa43kw12\",\"privateKey\":\"edskRzFHGK56NfHGzGCJiW65e2iw8TkfwkziezSxovfTr2a6jFTFzVz8YBpZxMbsKF7BftDWitmD3yB2eS943yqijvmfEhd3X1\",\"publicKeyHash\":\"tz1dg4qeBETdNzShsMUkJUEjk6pfuGL2jX5o\",\"seed\":\"\",\"storeType\":1}');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
