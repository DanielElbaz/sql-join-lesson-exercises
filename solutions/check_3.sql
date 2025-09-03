USE sql_intro;
CREATE TABLE Student(
    s_id INT PRIMARY KEY NOT NULL,
    s_name VARCHAR(25),
    is_brillant BOOL
)

CREATE TABLE Teacher(
    t_id INT PRIMARY KEY NOT NULL,
    t_name VARCHAR(25),
    is_tenured BOOL
)

CREATE TABLE Student_Teacher(
    student_id INT ,
    teacher_id INT,
    Foreign Key (student_id) REFERENCES student(s_id),
    Foreign Key (teacher_id) REFERENCES teacher(t_id)
);

INSERT INTO Student VALUES (1, 'Ryan', 1); -- note the use of 1 for TRUE
INSERT INTO Student VALUES (2, 'Leo', 1); 
INSERT INTO Student VALUES (3, 'Ernie', 0); -- and 0 for FALSE in SQL

INSERT INTO Teacher VALUES (1, 'Levine', 1);
INSERT INTO Teacher VALUES (2, 'Foster', 0);
INSERT INTO Teacher VALUES (3, 'Schwimmer', 0);

INSERT INTO  student_teacher VALUES(1,1);
INSERT INTO  student_teacher VALUES(1,2);
INSERT INTO  student_teacher VALUES(2,1);
INSERT INTO  student_teacher VALUES(2,2);
INSERT INTO  student_teacher VALUES(2,3);
INSERT INTO  student_teacher VALUES(3,1);