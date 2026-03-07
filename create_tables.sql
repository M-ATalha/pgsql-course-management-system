-- CREATE student TABLE
CREATE TABLE studnet(
std_id SERIAL PRIMARY KEY,
fname VARCHAR(20) NOT NULL,
lname VARCHAR(20) NOT NULL,
reg_date DATE NOT NULL
);

-- CREATE tacher TABLE

CREATE TABLE teacher(
t_id SERIAL PRIMARY KEY,
t_name VARCHAR(20),
t_email VARCHAR(20)
);

--CREATE cource TABLE

CREATE TABLE cource(
c_id SERIAL PRIMARY KEY,
c_name VARCHAR(20) NOT NULL,
t_id INT(20) NOT NULL,
fee NUMERIC NOT NULL,
FOREIGN KEY (t_id) REFERENCES teacher (t_id)
);

-- CREATE enrollment TABLE

CREATE TABLE enrollment(
e_id SERIAL PRIMARY KEY,
c_id INT NOT NULL,
std_id INT NOT NULL,
enroll_date DATE NOT NULL,
FOREIGN KEY (c_id) REFERENCES coruce (c_id),
FOREIGN KEY (std_id) REFERNCES student (std_id)
);


--CREATE grade TABLE

CREATE TABLE grade(
grade_id SERIAL PRIMARY KEY,
e_id INT NOT NULL,
marks NUMERIC(20),
grade CHAR(2)
);



