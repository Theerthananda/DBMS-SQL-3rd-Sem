-- ============================================================
-- Create a database named employee_db.
-- ============================================================

DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;


-- ============================================================
-- Create a table named employee_info with the following fields:
-- ID, NAME, EDU_QUAL, SALARY, and DESIGNATION.
-- ============================================================

CREATE TABLE employee_info (
    ID INT PRIMARY KEY,
    NAME VARCHAR(30),
    EDU_QUAL VARCHAR(30),
    SALARY DECIMAL(10,2),
    DESIGNATION VARCHAR(30)
);


-- ============================================================
-- Insert 5 records into the employee_info table.
-- ============================================================

INSERT INTO employee_info VALUES
(101, 'Arun', 'BE', 35000, 'Software Engineer'),
(102, 'Bhavana', 'MCA', 40000, 'Software Engineer'),
(103, 'Charan', 'BCA', 30000, 'Tester'),
(104, 'Divya', 'MTech', 45000, 'Software Engineer'),
(105, 'Kiran', 'MCA', 32000, 'Developer');


-- ============================================================
-- Display all employee details.
-- ============================================================

SELECT * FROM employee_info;


-- ============================================================
-- Alter the employee_info table and add CITY, PROJECT, and
-- WORK_LOCATION fields.
-- ============================================================

ALTER TABLE employee_info
ADD CITY VARCHAR(30),
ADD PROJECT VARCHAR(30),
ADD WORK_LOCATION VARCHAR(30);


-- ============================================================
-- Update the CITY, PROJECT, and WORK_LOCATION of all 5
-- employees using their IDs. Use the cities Bangalore,
-- Hassan, Mysore, and Mandya, and projects Project 1,
-- Project 2, and Project 3.
-- ============================================================

UPDATE employee_info
SET CITY = 'Bangalore',
    PROJECT = 'Project 1',
    WORK_LOCATION = 'Bangalore'
WHERE ID = 101;

UPDATE employee_info
SET CITY = 'Hassan',
    PROJECT = 'Project 2',
    WORK_LOCATION = 'Bangalore'
WHERE ID = 102;

UPDATE employee_info
SET CITY = 'Mysore',
    PROJECT = 'Project 1',
    WORK_LOCATION = 'Mysore'
WHERE ID = 103;

UPDATE employee_info
SET CITY = 'Mandya',
    PROJECT = 'Project 2',
    WORK_LOCATION = 'Hassan'
WHERE ID = 104;

UPDATE employee_info
SET CITY = 'Hassan',
    PROJECT = 'Project 3',
    WORK_LOCATION = 'Hassan'
WHERE ID = 105;


-- ============================================================
-- Display all employee details.
-- ============================================================

SELECT * FROM employee_info;


-- ============================================================
-- 1. Count the number of Software Engineers in the table.
-- ============================================================

SELECT COUNT(*) AS TOTAL_SOFTWARE_ENGINEERS
FROM employee_info
WHERE DESIGNATION = 'Software Engineer';


-- ============================================================
-- 2. Display the name and ID of those employees who live
-- in Mysore.
-- ============================================================

SELECT NAME, ID
FROM employee_info
WHERE CITY = 'Mysore';


-- ============================================================
-- 3. Count the number of employees who work on Project 1
-- and Project 2.
-- ============================================================

SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM employee_info
WHERE PROJECT IN ('Project 1', 'Project 2');


-- ============================================================
-- 4. List the employees who live in Hassan but work
-- in Bangalore.
-- ============================================================

SELECT *
FROM employee_info
WHERE CITY = 'Hassan'
AND WORK_LOCATION = 'Bangalore';