-- ============================================================
-- CREATE DATABASE
-- Create database company.
-- ============================================================
DROP DATABASE IF EXISTS company;
CREATE DATABASE company;
USE company;


-- ============================================================
-- CREATE EMPLOYEE TABLE
-- Create table employee with fields ID, name, salary,
-- designation and destination.
-- ============================================================

CREATE TABLE employee (
    ID INT PRIMARY KEY,
    NAME VARCHAR(30),
    SALARY DECIMAL(10,2),
    DESIGNATION VARCHAR(30),
    DESTINATION VARCHAR(30),
    SUPERVISOR_ID INT
);


-- ============================================================
-- CREATE DEPARTMENT TABLE
-- Create table department, department number, department name,
-- and employee ID.
-- ============================================================

CREATE TABLE department (
    DEPARTMENT_NO INT,
    DEPARTMENT_NAME VARCHAR(30),
    EMPLOYEE_ID INT
);


-- ============================================================
-- 1. Insert five records into the employee and department table.
-- ============================================================

INSERT INTO employee VALUES
(111, 'Arun', 28000, 'Clerk', 'Mandya', NULL),
(222, 'Priya', 35000, 'Manager', 'Mysore', 555),
(333, 'Ravi', 42000, 'Engineer', 'Bangalore', 555),
(444, 'Sneha', 38000, 'Researcher', 'Bangalore', 222),
(555, 'Kiran', 55000, 'HR Executive', 'Hassan', NULL);

INSERT INTO department VALUES
(3, 'Sales', 111),
(4, 'Research', 222),
(5, 'Development', 333),
(3, 'Sales', 444),
(6, 'HR', 555);


-- ============================================================
-- 2. Display ID, name and designation from employee table.
-- ============================================================

SELECT ID, NAME, DESIGNATION
FROM employee;


-- ============================================================
-- 3. Retrieve all the columns in different sequence.
-- ============================================================

SELECT NAME, DESIGNATION, ID, DESTINATION, SALARY, SUPERVISOR_ID
FROM employee;


-- ============================================================
-- 4. Display employee name in alphabetical order.
-- ============================================================

SELECT NAME
FROM employee
ORDER BY NAME ASC;


-- ============================================================
-- 5. Sort the employee name in descending order.
-- ============================================================

SELECT NAME
FROM employee
ORDER BY NAME DESC;


-- ============================================================
-- 6. Display the name of employees who was working as manager.
-- ============================================================

SELECT NAME
FROM employee
WHERE DESIGNATION = 'Manager';


-- ============================================================
-- 7. Display employee name who not working in department number 3.
-- ============================================================

SELECT e.NAME
FROM employee e
JOIN department d ON e.ID = d.EMPLOYEE_ID
WHERE d.DEPARTMENT_NO <> 3;


-- ============================================================
-- 8. Display employee name and salary whose salary is more than 30,000.
-- ============================================================

SELECT NAME, SALARY
FROM employee
WHERE SALARY > 30000;


-- ============================================================
-- 9. List employee name, department number, who are working
-- at department number 4.
-- ============================================================

SELECT e.NAME, d.DEPARTMENT_NO
FROM employee e
JOIN department d ON e.ID = d.EMPLOYEE_ID
WHERE d.DEPARTMENT_NO = 4;


-- ============================================================
-- 10. List all employees name with salary is greater than 20,000
-- and working in department 5.
-- ============================================================

SELECT e.NAME
FROM employee e
JOIN department d ON e.ID = d.EMPLOYEE_ID
WHERE e.SALARY > 20000
AND d.DEPARTMENT_NO = 5;


-- ============================================================
-- 11. List employee name who are living either in Mandya or Mysore.
-- ============================================================

SELECT NAME
FROM employee
WHERE DESTINATION IN ('Mandya', 'Mysore');


-- ============================================================
-- 12. Display employee data, who does not belong to department 5 and 6.
-- ============================================================

SELECT e.*
FROM employee e
JOIN department d ON e.ID = d.EMPLOYEE_ID
WHERE d.DEPARTMENT_NO NOT IN (5, 6);


-- ============================================================
-- 13. List employee details through IDs 111 and 333.
-- ============================================================

SELECT *
FROM employee
WHERE ID IN (111, 333);


-- ============================================================
-- 14. List different destination available in Employee table.
-- ============================================================

SELECT DISTINCT DESTINATION
FROM employee;


-- ============================================================
-- 15. Count the number of records in the employee table.
-- ============================================================

SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM employee;


-- ============================================================
-- 16. Find the average salary in the employee table.
-- ============================================================

SELECT AVG(SALARY) AS AVERAGE_SALARY
FROM employee;


-- ============================================================
-- 17. Find the total salary in employee table.
-- ============================================================

SELECT SUM(SALARY) AS TOTAL_SALARY
FROM employee;


-- ============================================================
-- 18. Find the matching sales in employee table.
-- ============================================================

SELECT e.NAME
FROM employee e
JOIN department d ON e.ID = d.EMPLOYEE_ID
WHERE d.DEPARTMENT_NAME = 'Sales';


-- ============================================================
-- 19. Find the minimum salary in employee table.
-- ============================================================

SELECT MIN(SALARY) AS MINIMUM_SALARY
FROM employee;


-- ============================================================
-- 20. Add a new attribute in the table, change address
-- Bangalore to Hassan.
-- ============================================================

ALTER TABLE employee
ADD ADDRESS VARCHAR(30);

UPDATE employee
SET ADDRESS = DESTINATION;

UPDATE employee
SET ADDRESS = 'Hassan'
WHERE ADDRESS = 'Bangalore';


-- ============================================================
-- 21. Display name of all employees who work for research department.
-- ============================================================

SELECT e.NAME
FROM employee e
JOIN department d ON e.ID = d.EMPLOYEE_ID
WHERE d.DEPARTMENT_NAME = 'Research';


-- ============================================================
-- 22. Display all employees details whose salary is in between
-- 30,000 and 40,000.
-- ============================================================

SELECT *
FROM employee
WHERE SALARY BETWEEN 30000 AND 40000;


-- ============================================================
-- 23. Display the name of the person who do not have supervisor.
-- ============================================================

SELECT NAME
FROM employee
WHERE SUPERVISOR_ID IS NULL;