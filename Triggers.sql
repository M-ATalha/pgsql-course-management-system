-- TRIGGERS

-- 1. Trigger that: Automatically sets grade_letter when marks inserted

-- CREATE FUNCTION 
CREATE OR REPLACE FUNCTION auto_grade_set()
RETURNS TRIGGER
language plpgsql
AS $$
BEGIN
		IF NEW.marks > 90 THEN NEW.grade := 'A+';
		ELSIF NEW.marks BETWEEN 80 and 89 THEN NEW.grade := 'A';
		ELSIF NEW.marks BETWEEN 70 and 79 THEN NEW.grade := 'B+';
		ELSIF NEW.marks BETWEEN 60 and 69 THEN NEW.grade := 'B';
		ELSIF NEW.marks BETWEEN 50 and 59 THEN NEW.grade := 'C';
		ELSE NEW.grade := 'F';
		END IF;

		   RETURN NEW;
END;
$$;

-- CREATE TRIGGER 
CREATE TRIGGER auto_grade_insert
BEFORE INSERT ON grade
FOR EACH ROW
EXECUTE FUNCTION auto_grade_set();

-- CHCECK IT
insert into grade(e_id, marks) values(18,97)


-- 2. Trigger that: Prevents enrollment if course has more than 5 students

-- CREATE FUNCTIION()
CREATE OR REPLACE FUNCTION enroll_course()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
    student_count INT;
BEGIN
    -- Count students already enrolled in this course
    SELECT COUNT(*) INTO student_count
    FROM enrollment
    WHERE c_id = NEW.c_id;

    -- Check if course already has 5 students
    IF student_count >= 5 THEN
        RAISE EXCEPTION 'Cannot enroll: Course already has 5 students';
    END IF;

    RETURN NEW;
END;
$$;

-- CREATE TRIGGER
CREATE TRIGGER check_course_limit
BEFORE INSERT ON enrollment
FOR EACH ROW
EXECUTE FUNCTION enroll_course();

-- CHHECK IT
INSERT INTO COURCE(c_id, c_name, t_id, fee)
VALUES
(7, 'Maths', 3, 4500)

SELECT *FROM cource






