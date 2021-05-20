
SELECT students.students_name, classes.class_name
FROM students
INNER JOIN class_student ON students.students_id = class_student.student_id
INNER JOIN classes ON classes.class_id = class_student.class_id;

select* from students; 