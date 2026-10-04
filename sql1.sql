CREATE DATABASE college;
CREATE DATABASE xyz_company;

DROP DATABASE xyz_company;
USE college;

create table student (
   rollno int,
   name varchar(30),
   age int
);

INSERT INTO student
VALUES
(101, "adam", 12),
(102, "bob", 14);

SELECT * FROM student;

CREATE DATABASE college;

CREATE DATABASE IF NOT EXISTS instagram;
DROP DATABASE IF EXISTS college;

SHOW DATABASES;

USE instagram;
SHOW TABLES;

CREATE TABLE user (  
   id int,
   age int,
   name varchar(30) not null,
   email  varchar(50) unique,
   followers int  default 0,
   following  int,
   CONSTRAINT age_check CHECK (age >= 13),
   PRIMARY KEY (id)
);

CREATE TABLE post (
   id INT PRIMARY KEY,
   content VARCHAR(100),
   user_id INT,
   FOREIGN KEY (user_id) REFERENCES  user(id)
   );

SELECT rollno, name, age FROM student;
SELECT * FROM student;

SELECT * 
FROM student
WHERE age >= 14;


SELECT name, age
FROM student
WHERE age + 1 = 13;

SELECT name, age, rollno
FROM student
WHERE age > 11 AND rollno > 100;

SELECT name, age, rollno
FROM student
WHERE age > 11 OR rollno > 100;

SELECT name, age, rollno
FROM student
WHERE age BETWEEN 11 AND 15;

SELECT name, age, rollno
FROM student
WHERE rollno IN (101, 102, 103);

SELECT name, age, rollno
FROM student
WHERE rollno NOT IN (102, 103);

SELECT name, age, rollno
FROM student
ORDER BY rollno ASC;

SELECT name, age, rollno
FROM student
ORDER BY rollno DESC;

SELECT max(rollno)
FROM student;

SELECT count(rollno)
FROM student
WHERE age = 14;

SELECT min(rollno)
FROM student;

SELECT avg(age)
FROM student;

SELECT sum(age)
FROM student;











