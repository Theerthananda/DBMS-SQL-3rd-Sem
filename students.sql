-- 1. Create a database named college.

DROP DATABASE IF EXISTS college;
CREATE DATABASE college;
USE college;


-- 2. Create a table named studentsinfo with the following fields:
-- ID, NAME, SUB1, SUB2, SUB3, SUB4, SUB5 and SUB6.

CREATE TABLE studentsinfo (
    ID INT PRIMARY KEY,
    NAME VARCHAR(15),
    SUB1 INT,
    SUB2 INT,
    SUB3 INT,
    SUB4 INT,
    SUB5 INT,
    SUB6 INT
);


-- 3. Insert 10 records into the studentsinfo table.

INSERT INTO studentsinfo VALUES
(1, 'Rahul', 85, 90, 78, 88, 92, 81),
(2, 'Arun', 76, 82, 91, 70, 85, 88),
(3, 'Kiran', 90, 87, 84, 92, 79, 95),
(4, 'Ajay', 50, 75, 50, 50, 50, 50),
(5, 'Vijay', 88, 91, 86, 84, 90, 87),
(6, 'Ravi', 72, 69, 78, 81, 75, 80),
(7, 'Suresh', 95, 92, 89, 96, 91, 94),
(8, 'Manoj', 81, 79, 83, 77, 85, 88),
(9, 'Akash', 74, 86, 30, 80, 30, 82),
(10, 'Rohan', 89, 84, 92, 88, 86, 90);


-- 4. Check the structure of the studentsinfo table
-- by using the DESC command.

DESC studentsinfo;


-- 5. Add TOTAL and PERCENTAGE fields to the studentsinfo table
-- and calculate the total marks and percentage of each student.

ALTER TABLE studentsinfo
ADD TOTAL INT,
ADD PERCENTAGE DECIMAL(5,2);

UPDATE studentsinfo
SET
    TOTAL = SUB1 + SUB2 + SUB3 + SUB4 + SUB5 + SUB6,
    PERCENTAGE = ((SUB1 + SUB2 + SUB3 + SUB4 + SUB5 + SUB6) / 600) * 100;

SELECT * FROM studentsinfo;


-- 6. Add a RESULT field to the studentsinfo table and determine
-- whether each student has PASSED or FAILED.
-- A student passes only if they score 35 or more in all six subjects.

ALTER TABLE studentsinfo
ADD RESULT VARCHAR(4);

UPDATE studentsinfo
SET RESULT =
    CASE
        WHEN SUB1 >= 35
         AND SUB2 >= 35
         AND SUB3 >= 35
         AND SUB4 >= 35
         AND SUB5 >= 35
         AND SUB6 >= 35
        THEN 'PASS'
        ELSE 'FAIL'
    END;


-- 7. Display all student details including the RESULT.

SELECT * FROM studentsinfo;


-- 8. Display ID and name of all students.

SELECT ID, NAME
FROM studentsinfo;


-- 9. Display all details of students who have PASSED.

SELECT *
FROM studentsinfo
WHERE RESULT = 'PASS';


-- 10. Display all details of students who have FAILED.

SELECT *
FROM studentsinfo
WHERE RESULT = 'FAIL';


-- 11. Count the number of students who have PASSED.

SELECT COUNT(*) AS PASS_COUNT
FROM studentsinfo
WHERE RESULT = 'PASS';


-- 12. Count the number of students who have FAILED.

SELECT COUNT(*) AS FAIL_COUNT
FROM studentsinfo
WHERE RESULT = 'FAIL';


-- 13. Display all student details whose percentage is less than 60.

SELECT *
FROM studentsinfo
WHERE PERCENTAGE < 60;