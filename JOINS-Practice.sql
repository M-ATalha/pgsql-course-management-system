-- JOINS Practice

-- 1. Show all students and their course names (even if not enrolled)
SELECT fname, lname, c_name
from enrollment e
LEFT JOIN 
	cource c ON e.c_id = c.c_id
LEFT JOIN
	student s ON s.std_id = e.std_id

-- 2. Show all courses and number of enrolled students
SELECT c.c_name, count(e.std_id) as enrolled_student
from cource c
LEFT JOIN 
	enrollment e ON c.c_id = e.c_id
GROUP BY c.c_name

-- 3. Show instructors who currently have no courses
select t.t_name, c_name
from teacher t
left join 
	cource c ON t.t_id = c.t_id
WHERE c.t_id is null






