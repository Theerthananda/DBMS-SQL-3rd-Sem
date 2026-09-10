CREATE DATABASE employee;

USE employee;

CREATE TABLE employeeinfo (
    ID INT PRIMARY KEY,
    NAME VARCHAR(30),
    SALARY DECIMAL(10,2),
    QUALIFICATION VARCHAR(30),
    DESIGNATION VARCHAR(30),
    NATIVE VARCHAR(30),
    WORKING_CITY VARCHAR(30),
    PROJECT1 VARCHAR(50),
    PROJECT2 VARCHAR(50),
    PROJECT3 VARCHAR(50)
);


INSERT INTO employeeinfo
(ID, NAME, SALARY, QUALIFICATION, DESIGNATION, NATIVE, WORKING_CITY, PROJECT1, PROJECT2, PROJECT3)
VALUES
(1, 'Arun Kumar', 42000, 'BE', 'Software Engineer', 'Mysuru', 'Bengaluru', 'YES', 'NO', 'YES'),
(2, 'Rahul Shetty', 55000, 'MCA', 'Senior Developer', 'Mangaluru', 'Bengaluru', 'YES', 'YES', 'NO'),
(3, 'Kiran Rao', 38000, 'BCA', 'Developer', 'Shivamogga', 'Mysuru', 'NO', 'YES', 'NO'),
(4, 'Ajay Gowda', 62000, 'BE', 'Tech Lead', 'Hassan', 'Bengaluru', 'YES', 'YES', 'YES'),
(5, 'Vijay Kumar', 45000, 'MCA', 'Software Engineer', 'Hassan', 'Bengaluru', 'YES', 'NO', 'NO'),
(6, 'Ravi Shankar', 36000, 'BCA', 'Junior Developer', 'Hassan', 'Hubballi', 'NO', 'YES', 'YES'),
(7, 'Manoj Hegde', 48000, 'BE', 'Software Engineer', 'Udupi', 'Mangaluru', 'YES', 'YES', 'NO'),
(8, 'Suresh Bhat', 70000, 'MTech', 'Project Manager', 'Belagavi', 'Bengaluru', 'YES', 'YES', 'YES'),
(9, 'Akash Patil', 41000, 'BE', 'Developer', 'Belagavi', 'Hubballi', 'NO', 'YES', 'YES'),
(10, 'Rohan Desai', 52000, 'MCA', 'Senior Developer', 'Dharwad', 'Bengaluru', 'YES', 'NO', 'YES');


SELECT * FROM employeeinfo;

SELECT COUNT(*) AS software_engineer_count
FROM employeeinfo
WHERE DESIGNATION = 'Software Engineer';

SELECT ID, NAME
FROM employeeinfo
WHERE NATIVE = 'Mysuru';

SELECT COUNT(*) AS employee_count
FROM employeeinfo
WHERE PROJECT1 = 'YES'
AND PROJECT2 = 'YES';

SELECT *
FROM employeeinfo
WHERE NATIVE = 'Hassan'
AND WORKING_CITY = 'Bengaluru';