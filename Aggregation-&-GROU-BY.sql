-- Aggregation & GROUP BY

-- 1. Find average marks per course
select c_name, AVG(marks) AS average_marks
from grade g
JOIN 
	enrollment e ON e.e_id = g.e_id
JOIN
	cource c ON c.c_id = e.c_id
GROUP BY c_name

-- 2. Find highest marks in each course
select c_name, MAX(marks) AS Highest_marks
from grade g
JOIN 
	enrollment e ON e.e_id=g.e_id
JOIN
	cource c on c.c_id = e.c_id
GROUP BY c_name

-- 3. Find total revenue generated per course
select c.c_name, sum(c.fee) AS Total_revenue
FROM enrollment e
JOIN 
	cource c ON e.c_id = c.c_id
GROUP BY c.c_name


-- 4. Find total revenue per instructor
select t_name, sum(fee) AS Teacher_salary
FROM teacher t
JOIN 
	cource c ON t.t_id = c.t_id
JOIN 
	 enrollment e ON e.c_id = c.c_id
GROUP BY t_name

-- 5. Find course with highest enrollment
select c_name,  count(e_id) as total_student
from enrollment e
Join
	cource c ON e.c_id = c.c_id
GROUP BY C_name order by total_student desc 
limit 1



