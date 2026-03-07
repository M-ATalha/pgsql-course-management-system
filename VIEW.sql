--  VIEWS
-- View showing: student full name, course name, marks, grade letter

CREATE VIEW result AS
SELECT 
	fname,
	lname,
	c_name,
	marks,
	grade
from enrollment e
JOIN 	
	grade g ON g.e_id = e.e_id
JOIN
	student s ON s.std_id = e.std_id
JOIN
	cource c ON c.c_id = e.c_id

SELECT *FROM result

--View showing: course name, total students, average marks

CREATE VIEW student_average_marks AS
select c_name, count(std_id) as total_student, avg(marks) as avg_marks
from enrollment e
JOIN 
	cource c ON c.c_id = e.c_id
JOIN 	
	grade g on e.e_id = g.e_id
GROUP BY c_name

SELECT *FROM student_average_marks







