# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.20)
# Database: school-db
# Generation Time: 2016-02-06 19:40:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table courses
# ------------------------------------------------------------
create database if not exists schooldb;
grant all on schooldb.* to
    'school_db_user'@'localhost'
    identified by 'password';
flush privileges;

use schooldb;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`school_id`),
  KEY `fk_courses_schools_idx` (`school_id`),
  CONSTRAINT `fk_courses_schools` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;

INSERT INTO `courses` (`id`, `course_name`, `school_id`, `teacher_id`)
VALUES
	(1,'Elektrotechnik',1,1),
	(2,'Tiefbau',1,NULL),
	(3,'Projektleiter',2,2),
	(4,'Mikrobiologe',2,3),
	(5,'Deutsch',3,4),
	(6,'Englisch',3,1);

/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table courses_students
# ------------------------------------------------------------

CREATE TABLE `courses_students` (
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`),
  KEY `fk_persons_has_courses_courses1_idx` (`course_id`),
  KEY `fk_persons_has_courses_persons1_idx` (`student_id`),
  CONSTRAINT `fk_persons_has_courses_courses1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persons_has_courses_persons1` FOREIGN KEY (`student_id`) REFERENCES `persons` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `courses_students` WRITE;
/*!40000 ALTER TABLE `courses_students` DISABLE KEYS */;

INSERT INTO `courses_students` (`course_id`, `student_id`)
VALUES
	(1,5),
	(1,6),
	(2,8),
	(2,9),
	(4,7),
	(4,8),
	(4,10),
	(4,12),
	(5,9),
	(5,10),
	(6,5),
	(6,6),
	(6,11),
	(6,12);

/*!40000 ALTER TABLE `courses_students` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table person_types
# ------------------------------------------------------------

CREATE TABLE `person_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `person_types` WRITE;
/*!40000 ALTER TABLE `person_types` DISABLE KEYS */;

INSERT INTO `person_types` (`id`, `type`)
VALUES
	(1,'Dozent'),
	(2,'Student');

/*!40000 ALTER TABLE `person_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table persons
# ------------------------------------------------------------

CREATE TABLE `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `person_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`person_type_id`),
  KEY `fk_persons_person_types1_idx` (`person_type_id`),
  CONSTRAINT `fk_persons_person_types1` FOREIGN KEY (`person_type_id`) REFERENCES `person_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;

INSERT INTO `persons` (`id`, `name`, `firstname`, `person_type_id`)
VALUES
	(1,'Teufel','Phil',1),
	(2,'Heusser','Harry',1),
	(3,'Dankner','Claudia',1),
	(4,'Pechstein','Daphne',1),
	(5,'Petrovic','Doris',2),
	(6,'Adam','Samuel',2),
	(7,'Lustig','Peter',2),
	(8,'Herzig','Daniela',2),
	(9,'Matt','Bernhard',2),
	(10,'Eichmann','Rolf',2),
	(11,'Witzig','Barbara',2),
	(12,'Decker','Eberhard',2);

/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schools
# ------------------------------------------------------------

CREATE TABLE `schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;

INSERT INTO `schools` (`id`, `name`, `city`)
VALUES
	(1,'ibz','Aarau'),
	(2,'benedict','Zürich'),
	(3,'bellingua','Zürich');

/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
