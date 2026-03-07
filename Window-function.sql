
--WINDOW FUNCTIONS
-- 1. RANK() to rank students inside each course by marks
SELECT 
    s.fname,
	e.c_id,
    g.marks,
    RANK() OVER(PARTITION BY e.c_id ORDER BY g.marks DESC) AS rank_marks
FROM grade g
JOIN enrollment e 
    ON g.e_id = e.e_id
JOIN student s 
    ON e.std_id = s.std_id;
	
	
-- 2. ROW_NUMBER() to show student order inside course

SELECT 
    s.fname,
	e.c_id,
    g.marks,
    ROW_number() OVER(PARTITION BY e.c_id ORDER BY g.marks DESC) AS rank_marks
FROM grade g
JOIN enrollment e 
    ON g.e_id = e.e_id
JOIN student s 
    ON e.std_id = s.std_id;

-- 3. AVG() OVER() to show average marks beside each student
SELECT 
    s.fname,
    AVG(g.marks) OVER(PARTITION BY e.c_id) AS avg_marks_per_course
FROM grade g
JOIN enrollment e 
    ON g.e_id = e.e_id
JOIN student s 
    ON e.std_id = s.std_id;

-- 4. Find top scorer in each course using window function

SELECT *
FROM (
    SELECT 
        s.fname,
        e.c_id,
        g.marks,
        RANK() OVER(PARTITION BY e.c_id ORDER BY g.marks DESC) AS rank_in_course
    FROM grade g
    JOIN enrollment e ON g.e_id = e.e_id
    JOIN student s ON e.std_id = s.std_id
) sub
WHERE rank_in_course = 1;


-- 5. Write a query to find: Students who scored above course average
select 
		s.fname,
		AVG(g.marks) AS avg_marks
FROM enrollment e
JOIN
	student s ON e.std_id = s.std_id
JOIN
	grade g ON g.e_id = e.e_id
GROUP BY fname

SELECT 
    s.fname,
    e.c_id,
    g.marks
FROM grade g
JOIN enrollment e ON g.e_id = e.e_id
JOIN student s ON e.std_id = s.std_id
WHERE g.marks > (
    SELECT AVG(g2.marks)
    FROM grade g2
    JOIN enrollment e2 ON g2.e_id = e2.e_id
    WHERE e2.c_id = e.c_id
);
