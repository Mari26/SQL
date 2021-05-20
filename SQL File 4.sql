CREATE DATABASE blue;
USE blue;


CREATE TABLE `class_student` (
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  KEY `fk_student_idx` (`student_id`),
  KEY `fk_class` (`class_id`),
  CONSTRAINT `fk_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`),
  CONSTRAINT `fk_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`students_id`)
) ;

CREATE TABLE `lecturer`(
`lecturer_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `suraname` varchar(45) NOT NULL,
  `personal_id` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(150) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `sex` binary(1) NOT NULL,
  `address_2` varchar(150) DEFAULT NULL,
  `apartment` varchar(45) DEFAULT NULL,
  `bank_acount_number` varchar(45) NOT NULL,
  PRIMARY KEY (`lecturer_id`),
  UNIQUE KEY `personal_id_UNIQUE` (`personal_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `address_UNIQUE` (`address`),
  KEY `fk_rank_idx` (`rank_id`),
  CONSTRAINT `fk_rank` FOREIGN KEY (`rank_id`) REFERENCES `rank` (`rank_id`)
) ;


CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(45) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`class_id`)
) ;


CREATE TABLE `classes_cources` (
  `class_id` int(11) DEFAULT NULL,
  `cources_id` int(11) DEFAULT NULL,
  KEY `fk_class_id_idx` (`class_id`),
  KEY `fk_course_id_idx` (`cources_id`),
  CONSTRAINT `fk_class_id` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`),
  CONSTRAINT `fk_course_id` FOREIGN KEY (`cources_id`) REFERENCES `courses` (`course_id`)
);

CREATE TABLE `cources_fields` (
  `cources_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  KEY `fk_courses_id_idx` (`cources_id`),
  KEY `fk_fields_id_idx` (`field_id`),
  CONSTRAINT `fk_courses_id` FOREIGN KEY (`cources_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `fk_fields_id` FOREIGN KEY (`field_id`) REFERENCES `major_fields` (`field_id`)
) ;

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`course_id`)
) ;

CREATE TABLE `lecturer_subject` (
  `lecturer_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  KEY `subject_id_idx` (`subject_id`),
  KEY `fk_lecturer_id_idx` (`lecturer_id`),
  CONSTRAINT `fk_lecturer_id` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`lecturer_id`),
  CONSTRAINT `fk_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`)
);
CREATE TABLE `major_fields` (
  `field_id` int(11) NOT NULL,
  `field_name` varchar(45) NOT NULL,
  PRIMARY KEY (`field_id`)
);
CREATE TABLE `rank` (
  `rank_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`rank_id`)
) ;
CREATE TABLE `session` (
  `session_id` int(11) NOT NULL,
  `session_name` varchar(45) NOT NULL,
  PRIMARY KEY (`session_id`)
);
select * from `session`;
CREATE TABLE `session_subject`(
  `session_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  KEY `fk_session_idx` (`session_id`),
  KEY `fk_subject_idx` (`subject_id`),
  CONSTRAINT `fk_session` FOREIGN KEY (`session_id`) REFERENCES `session` (`session_id`),
  CONSTRAINT `fk_subject` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`)
);
CREATE TABLE `students` (
  `students_id` int(11) NOT NULL,
  `students_name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `personal_id` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(150) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `sex` binary(1) DEFAULT NULL,
  `address_2` varchar(150) DEFAULT NULL,
  `apartment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `personal_id_UNIQUE` (`personal_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
);

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(45) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ;

