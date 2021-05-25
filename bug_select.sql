INSERT INTO `rank`(`rank_id`,`name`) VALUES(17,'ასისტეტნტი');
INSERT INTO `rank`(`rank_id`,`name`) VALUES(7,'ასოცირებული');
INSERT INTO `rank`(`rank_id`,`name`) VALUES(8,'სრული');
select * from `rank`;
INSERT INTO `lecturer`(`lecturer_id`,`name`,`suraname`,`rank_id`,`personal_id`,`email`,`address`,`date_of_birth`,`sex`,`address_2`,`apartment`,`bank_acount_number`)
VALUES(4,'name1','surname1',5,'11111111111','lecturer1@gmail.com','address1',now(),9,null,null,'GETB00000000001')
select * from `lecturer`;
INSERT INTO `class_student`(`class_id`,`student_id`)
VALUES(3,4);
INSERT INTO `classes`(`class_id`,`class_name`,`subject_id`)
VALUES(3,'math',2);