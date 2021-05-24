INSERT INTO `rank`(`rank_id`,`name`) VALUES(17,'ასისტეტნტი');
INSERT INTO `rank`(`rank_id`,`name`) VALUES(7,'ასოცირებული');
INSERT INTO `rank`(`rank_id`,`name`) VALUES(8,'სრული');
select * from `rank`;
INSERT INTO `lecturer`(`lecturer_id`,`name`,`suraname`,`rank_id`,`personal_id`,`email`,`address`,`date_of_birth`,`sex`,`address_2`,`apartment`,`bank_acount_number`)
VALUES(4,'name1','surname1',5,'11111111111','lecturer1@gmail.com','address1',now(),null,9,null,'GETB00000000001');
select * from `lecturer`;
INSERT INTO `classes`(`class_id`,`class_name`,`subject_id`)
VALUES(4,'math',2);
select * from `classes`;
INSERT INTO `class_student`(`class_id`,`student_id`)
VALUES(3,4);
INSERT INTO `students`( `students_id`,`students_name`,`surname`,`personal_id`,`email`,`address`,`date_of_birth`, `sex`, `address_2`,`apartment`)
VALUES(6,'ggg','fff',1,'student@gmail.com','masasd234',now(),'famle','sdasdasda2','appart');
select * from `students`;
INSERT INTO `classes_cources`(`class_id`,`cources_id`)
VALUES(1,2);
select * from `classes_cources`;
INSERT INTO `courses`(`course_id`,`name`)
VALUES(15,'dev');
select * from `courses`;
INSERT INTO `major_fields`(`field_id`,`field_name`)
VALUES(20,'fff');
select * from `major_fields`;
insert into `cources_fields`(`cources_id`,`field_id`)
VALUES(34,33);
select * from `cources_fields`;