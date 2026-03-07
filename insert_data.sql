-- INSERT DATA INTO studnet TABLE
INSERT INTO student(fname, lname, DATE) 
VALUES
('Talha', 'Zaman', '04.08.2026') -- ADD MORE stundets 

SELECT *FROM student

-- INSERT DATA INTO taacher TABLE
INSERT INTO teacher(t_id, t_name, t_email)
VALUES
(6, 'Ahmad', 'ahmad@gmail.com'); -- ADD MORE 6 teachers

SELECT *FROM teacher;


-- INSERT DATA INTO cource TABLE
INSERT INTO cource(c_id, c_name, t_id, fee)
VALUES
(6, 'Web Dev', 6, 4000 ) -- ADD 5 cources

select *from cource;


-- INSET DATA INTO enrollment TABLE
INSERT INTO enrollment(e_id, c_id, std_id, enroll_date)
VALUES
(18, 6, 6, '03.04.2026'); -- ADD MORE 20 enrollment

SELECT *FROM enrollment; 

-- INSERRT DATA INTO grade TABLE
INSERT INTO grade(grade_id, e_id, marks, grade)
VALUES
(19, 19, 98, 'A+'); -- ADD ALL student marks AND grade

SELECT *FROM grade;  

