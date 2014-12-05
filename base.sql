/*
SQLyog Ultimate v8.61 
MySQL - 5.6.20 : Database - ejemplophpstorm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ejemplophpstorm` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ejemplophpstorm`;

/*Table structure for table `asignagrupo` */

DROP TABLE IF EXISTS `asignagrupo`;

CREATE TABLE `asignagrupo` (
  `Id` int(11) NOT NULL,
  `IdAlumno` int(11) DEFAULT NULL,
  `IdGrupo` int(11) DEFAULT NULL,
  `Estatus` int(3) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdAlumno` (`IdAlumno`),
  KEY `IdGrupo` (`IdGrupo`),
  CONSTRAINT `asignagrupo_ibfk_1` FOREIGN KEY (`IdAlumno`) REFERENCES `usuario` (`id`),
  CONSTRAINT `asignagrupo_ibfk_2` FOREIGN KEY (`IdGrupo`) REFERENCES `grupo` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `asignagrupo` */

insert  into `asignagrupo`(`Id`,`IdAlumno`,`IdGrupo`,`Estatus`) values (1,1,1,0);

/*Table structure for table `asignarmaterias` */

DROP TABLE IF EXISTS `asignarmaterias`;

CREATE TABLE `asignarmaterias` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdMaestro` int(11) DEFAULT NULL,
  `IdMateria` int(11) DEFAULT NULL,
  `Estatus` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdMaestro` (`IdMaestro`),
  KEY `IdMateria` (`IdMateria`),
  CONSTRAINT `asignarmaterias_ibfk_1` FOREIGN KEY (`IdMaestro`) REFERENCES `usuario` (`id`),
  CONSTRAINT `asignarmaterias_ibfk_2` FOREIGN KEY (`IdMateria`) REFERENCES `materias` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*Data for the table `asignarmaterias` */

insert  into `asignarmaterias`(`Id`,`IdMaestro`,`IdMateria`,`Estatus`) values (1,2,1,'0'),(4,2,2,'0'),(13,2,3,'1'),(14,4,1,'0'),(15,4,2,'0'),(16,4,3,'1'),(17,4,1,'0'),(18,4,2,'0'),(19,4,2,'0'),(20,4,1,'1'),(21,6,1,'0'),(22,6,2,'0'),(23,6,3,'0'),(24,6,2,'1'),(25,5,1,'0'),(26,5,2,'1'),(27,6,1,'1'),(28,5,3,'1'),(29,6,4,'1'),(30,2,2,'0'),(31,2,2,'0'),(32,2,1,'1');

/*Table structure for table `grupo` */

DROP TABLE IF EXISTS `grupo`;

CREATE TABLE `grupo` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `Estatus` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `grupo` */

insert  into `grupo`(`Id`,`Nombre`,`Estatus`) values (1,'71','1');

/*Table structure for table `materias` */

DROP TABLE IF EXISTS `materias`;

CREATE TABLE `materias` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `Estatus` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `materias` */

insert  into `materias`(`Id`,`Nombre`,`Estatus`) values (1,'Matematicas','1'),(2,'Español','1'),(3,'Ciencias','1'),(4,'Biologia','1');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(250) DEFAULT NULL,
  `ApellidoPaterno` varchar(250) DEFAULT NULL,
  `ApellidoMaterno` varchar(250) DEFAULT NULL,
  `Telefono` varchar(250) DEFAULT NULL,
  `Calle` varchar(250) DEFAULT NULL,
  `NumeroExterior` varchar(250) DEFAULT NULL,
  `NumeroInterior` varchar(250) DEFAULT NULL,
  `Colonia` varchar(250) DEFAULT NULL,
  `Municipio` varchar(250) DEFAULT NULL,
  `Estado` varchar(250) DEFAULT NULL,
  `CP` int(10) DEFAULT NULL,
  `Correo` varchar(250) DEFAULT NULL,
  `Usuario` varchar(250) DEFAULT NULL,
  `Contrasena` varchar(250) DEFAULT NULL,
  `Nivel` varchar(250) DEFAULT NULL,
  `Estatus` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`Nombre`,`ApellidoPaterno`,`ApellidoMaterno`,`Telefono`,`Calle`,`NumeroExterior`,`NumeroInterior`,`Colonia`,`Municipio`,`Estado`,`CP`,`Correo`,`Usuario`,`Contrasena`,`Nivel`,`Estatus`) values (1,'Pedro','Lopez','Gama',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pedro','123','3','1'),(2,'Jorge','Garcia','Nava Puta','2496723','jhgfkuf','7656',NULL,'fgdtrgv','vgjhgfgh','7657',7656,'ufgh','fghfg','hgfghf','2','1'),(3,'Brandon','Interino','De la Rosa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'brandon','321','2','1'),(4,'Rogelio','Interino','De la Rosa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rojo','123','1','1'),(5,'Joel','Herrera','Cruz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'joel','123','2','1'),(6,'Raul','Garcia','M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Raul','rg','2','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
