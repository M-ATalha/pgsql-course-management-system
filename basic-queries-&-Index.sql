--BASIC  QUERIES

-- 1. List all students sorted by registration date (latest first)
select *from student order by reg_date DESC

-- 2. Show all courses with instructor names
select t_name, c_name
from cource c
join 
	teacher t on t.t_id = c.t_id; 
select *from teacher

-- 3. Find students enrolled in a specific course
SELECT fname, lname, c_name
from enrollment e
JOIN
	cource c on e.c_id = c.c_id
JOIN
	student s on e.std_id = s.std_id;

-- 4. Show students who scored more than 80 marks
select fname, lname,marks
from grade g
JOIN
	enrollment e ON e.e_id = g.e_id
JOIN
	student s ON e.std_id = s.std_id
WHERE
	marks >= 80 

-- 5. Count how many students per course
select c_name, count(fname)
from enrollment e
JOIN 
	student s ON s.std_id = e.std_id
JOIN
	cource c ON c.c_id = e.c_id
GROUP BY c_name


-- CREATING INDEXES


-- CREATE INDEX FOR STUDENT NAMES
CREATE INDEX idx_std_name
ON student(fname);

SELECT fname FROM student;

SELECT *FROM student WHERE fname = 'Talha';

--Index for Join Column

CREATE INDEX idx_enroll_std
ON enrollment(std_id);

SELECT 
FROM 
	student s
JOIN
	 enrollment e ON e.std_id = s.std_id;


--Index for Course Search
CREATE INDEX idx_cource_search
ON cource(c_name);

select *from cource;

-- 4. Index for Marks Sorting

CREATE INDEX idx_marks_sort
ON grade(marks)

SELECT marks from grade where grade_id = '1';

--Composite Index(adding two or more columns)
CREATE INDEX idx_std_cource
ON enrollment(std_id, c_id)

SELECT e_id FROM enrollment WHERE std_id = 1 AND c_id = 1

--DROPPING THE INDEXES
DROP INDEX idx_student_name;

DROP INDEX idx_std_cource;