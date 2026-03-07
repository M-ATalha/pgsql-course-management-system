-- PROCUDERS
-- 1. Procedure to enroll a student in a course

CREATE OR REPLACE PROCEDURE insert_enrollment(
		e_c_id INT,
		e_std_id INT,
		e_enroll_date DATE
)
language plpgsql
AS $$
BEGIN 	
		INSERT INTO enrollment (c_id, std_id, enroll_date)
		VALUES (e_c_id, e_std_id, e_enroll_date);
END;
$$;


-- 2. Procedure to insert grade automatically calculating grade_letter:
-- 90+ → A+
-- 80–89 → A
-- 70–79 → B+
-- 60–69 → B
-- 50-59 ->C
-- Below 50 → F

CREATE OR REPLACE PROCEDURE auto_grade_insert(
		g_e_id INT,
		g_marks INT
)
language plpgsql
AS $$
DECLARE
	 auto_grade char(33);
BEGIN
		IF g_marks > 90 THEN auto_grade := 'A+';
		ELSIF g_marks BETWEEN 80 and 89 THEN auto_grade := 'A';
		ELSIF g_marks BETWEEN 70 and 79 THEN auto_grade := 'B+';
		ELSIF g_marks BETWEEN 60 and 69 THEN auto_grade := 'B';
		ELSIF g_marks BETWEEN 50 and 59 THEN auto_grade := 'C';
		ELSE auto_grade := 'F';
		END IF;

		INSERT INTO grade(e_id, marks, grade)
		VALUES (g_e_id, g_marks, auto_grade);
END;
$$;

CALL auto_grade_insert(16,7)







