CREATE DATABASE college;

USE college;

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

INSERT INTO studentsinfo
VALUES
(1, 'Rahul', 85, 90, 78, 88, 92, 81),
(2, 'Arun', 76, 82, 91, 70, 85, 88),
(3, 'Kiran', 90, 87, 84, 92, 79, 95),
(4, 'Ajay', 68, 75, 80, 72, 77, 81),
(5, 'Vijay', 88, 91, 86, 84, 90, 87),
(6, 'Ravi', 72, 69, 78, 81, 75, 80),
(7, 'Suresh', 95, 92, 89, 96, 91, 94),
(8, 'Manoj', 81, 79, 83, 77, 85, 88),
(9, 'Akash', 74, 86, 71, 80, 78, 82),
(10, 'Rohan', 89, 84, 92, 88, 86, 90);

DESC studentsinfo;

ALTER TABLE studentsinfo
ADD TOTAL INT,
ADD PERCENTAGE DECIMAL(5,2);

UPDATE studentsinfo
SET
    TOTAL = SUB1 + SUB2 + SUB3 + SUB4 + SUB5 + SUB6,
    PERCENTAGE = ((SUB1 + SUB2 + SUB3 + SUB4 + SUB5 + SUB6) / 600) * 100;

SELECT * FROM studentsinfo;

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

SELECT * FROM studentsinfo;

SELECT ID, NAME, SUB1, SUB2, SUB3, SUB4, SUB5, SUB6, RESULT
FROM studentsinfo;

SELECT ID, NAME
FROM studentsinfo;

SELECT *
FROM studentsinfo
WHERE RESULT = 'PASS';

SELECT *
FROM studentsinfo
WHERE RESULT = 'FAIL';



SELECT COUNT(*) AS PASS_COUNT
FROM studentsinfo
WHERE RESULT = 'PASS';

SELECT COUNT(*) AS FAIL _COUNT
FROM studentsinfo
WHERE RESULT = 'FAIL';


SELECT *
FROM studentsinfo
WHERE PERCENTAGE < 60;