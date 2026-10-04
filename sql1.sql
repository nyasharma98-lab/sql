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

