create database studentpractice;
use studentpractice;
create table students(id int primary key, name varchar(50));
insert into students(id, name)
values(1, 'Ali'),
(2, 'Amina'),
(3, 'Yusuf');
select * from students;

create table scores(student_id int primary key, score decimal(10,2));
insert into scores(student_id, score)
values(1, 90),
(2, 85),
(4, 70);
select * from students;
select * from scores;
select sum(score) from scores;
select students.name, scores.score from students inner join scores on students.id = scores.student_id;

select students.name, scores.score from students left join scores on students.id = scores.student_id;

select students.name, scores.score from students right join scores on students.id=scores.student_id;

select students.name, scores.score from students left join scores on students.id = scores.student_id
union
select students.name, scores.score from students right join scores on students.id = scores.student_id;

select students.name, scores.score from students cross join scores;
select * from students;
select * from scores;

CREATE TABLE STUDENTSANDSCORES (NAME VARCHAR(50), SCORE DECIMAL(10,2));
INSERT INTO STUDENTSANDSCORES (NAME, SCORE)
VALUES('ALI', 90),
('AMINA',65),
('YUSUF', 40);
select * from STUDENTSANDSCORES;
select NAME, SCORE, CASE WHEN SCORE >= 80 THEN 'A' WHEN SCORE >= 60 THEN 'B' ELSE 'FAIL' END AS GRADES FROM STUDENTSANDSCORES;

CREATE TABLE STUDENTSUBJECTSCORE (STUDENT VARCHAR(50), SUBJECT VARCHAR(50), SCORE DECIMAL(10,2));
INSERT INTO STUDENTSUBJECTSCORE (STUDENT, SUBJECT, SCORE)
VALUES('ALI', 'MATH', 90),
('ALI', 'ENGLISH', 85),
('AMINA', 'MATH', 40),
('AMINA', 'ENGLISH', 30);
SELECT * FROM STUDENTSUBJECTSCORE;
SELECT STUDENT, SUBJECT, SCORE FROM studentsubjectscore;
SELECT STUDENT, AVG(SCORE) AS avg_score FROM studentsubjectscore GROUP BY STUDENT;

SELECT STUDENT, SUM(SCORE) AS TOTAL FROM STUDENTSUBJECTSCORE GROUP BY STUDENT HAVING TOTAL >100;
SELECT STUDENT, SUM(SCORE) AS TOTAL FROM STUDENTSUBJECTSCORE GROUP BY STUDENT HAVING TOTAL >60;
SELECT AVG(SCORE) FROM STUDENTSUBJECTSCORE;
SELECT STUDENT, SUBJECT, SCORE FROM studentsubjectscore;
select student , score from STUDENTSUBJECTSCORE WHERE SCORE < (SELECT AVG(SCORE) FROM STUDENTSUBJECTSCORE);
SELECT STUDENT, score, RANK() OVER (ORDER BY score DESC) AS rank_position FROM STUDENTSUBJECTSCORE;

CREATE TABLE CLASS_A (NAME VARCHAR(50));
INSERT INTO CLASS_A(NAME)
VALUES('YASIR'),
('YASIR'),
('HASSAN');
DELETE FROM CLASS_A;
select * from CLASS_A
CREATE TABLE CLASS_B (NAME VARCHAR(50));
INSERT INTO CLASS_B(NAME)
VALUES('HAMDI'),
('MUNAWAR'),
('MUCTAD');
SELECT * FROM CLASS_A;
SELECT * FROM CLASS_B;
SELECT NAME FROM CLASS_A UNION SELECT NAME FROM CLASS_B;
show tables;







