-- ============================================================
-- CREATE DATABASE
-- Create a database for person details and generate the following queries.
-- ============================================================
DROP DATABASE IF EXISTS person_details;
CREATE DATABASE person_details;
USE person_details;


-- ============================================================
-- CREATE TABLE
-- Create table person.
-- Fill person name, person ID, person address and phone number, DOB.
-- ============================================================

CREATE TABLE person (
    PERSON_ID INT PRIMARY KEY,
    NAME VARCHAR(30),
    ADDRESS VARCHAR(30),
    PHONE BIGINT,
    DOB DATE
);


-- ============================================================
-- INSERT RECORDS
-- Insert 10 records into the person table.
-- ============================================================

INSERT INTO person VALUES
(111, 'Adarsh',  'Mangalore', 9000000001, '2000-01-15'),
(112, 'Sahana',  'Bangalore', 9000000002, '2001-02-20'),
(222, 'Ravi',    'Mysore',    9000000003, '2000-03-10'),
(333, 'Kiran',   'Mandya',    9000000004, '2001-04-25'),
(444, 'Sneha',   'Bangalore', 8431265981, '2000-05-12'),
(555, 'Meena',   'Mysore',    9000000006, '2001-06-18'),
(666, 'Arun',    'Hassan',    9000000007, '2000-07-22'),
(777, 'Priya',   'Mysore',    9000000008, '2001-08-14'),
(888, 'Vijay',   'Mandya',    9000000009, '2000-09-30'),
(999, 'Suresh',  'Mangalore', 9000000010, '2001-10-05');


-- ============================================================
-- 1. Retrieve ID, name and address from the person table.
-- ============================================================

SELECT PERSON_ID, NAME, ADDRESS
FROM person;


-- ============================================================
-- 2. Retrieve all columns in different sequence.
-- ============================================================

SELECT NAME, DOB, PERSON_ID, PHONE, ADDRESS
FROM person;


-- ============================================================
-- 3. Display person name in alphabetical order.
-- ============================================================

SELECT NAME
FROM person
ORDER BY NAME ASC;


-- ============================================================
-- 4. Sort the name in descending order.
-- ============================================================

SELECT NAME
FROM person
ORDER BY NAME DESC;


-- ============================================================
-- 5. List all distinct name in person table.
-- ============================================================

SELECT DISTINCT NAME
FROM person;


-- ============================================================
-- 6. List who are living in Bangalore.
-- ============================================================

SELECT NAME
FROM person
WHERE ADDRESS = 'Bangalore';


-- ============================================================
-- 7. List person name, ID, address, where phone number = 8431265981.
-- ============================================================

SELECT NAME, PERSON_ID, ADDRESS
FROM person
WHERE PHONE = 8431265981;


-- ============================================================
-- 8. List who are living in Mysore.
-- ============================================================

SELECT NAME
FROM person
WHERE ADDRESS = 'Mysore';


-- ============================================================
-- 9. List person name who are living either Mysore or in Mandya.
-- ============================================================

SELECT NAME
FROM person
WHERE ADDRESS IN ('Mysore', 'Mandya');


-- ============================================================
-- 10. List person details whose ID is 444 and 888.
-- ============================================================

SELECT *
FROM person
WHERE PERSON_ID IN (444, 888);


-- ============================================================
-- 11. List all person names whose name starts with letter S.
-- ============================================================

SELECT NAME
FROM person
WHERE NAME LIKE 'S%';


-- ============================================================
-- 12. List all person names whose name ends with A.
-- ============================================================

SELECT NAME
FROM person
WHERE NAME LIKE '%a';


-- ============================================================
-- 13. Count the number of records in the person table.
-- ============================================================

SELECT COUNT(*) AS TOTAL_PERSONS
FROM person;


-- ============================================================
-- 14. Write query to change the person name from Adarsh to Adarsha.
-- ============================================================

UPDATE person
SET NAME = 'Adarsha'
WHERE NAME = 'Adarsh';


-- ============================================================
-- 15. Write a query to delete one particular row.
-- ============================================================

DELETE FROM person
WHERE PERSON_ID = 999;


-- ============================================================
-- 16. Write a query to add new field into the table (email).
-- ============================================================

ALTER TABLE person
ADD EMAIL VARCHAR(50);


-- ============================================================
-- 17. Display name, date of birth, phone number, whose ID is 112.
-- ============================================================

SELECT NAME, DOB, PHONE
FROM person
WHERE PERSON_ID = 112;


-- ============================================================
-- 18. List person ID whose name consists of five letters.
-- ============================================================

SELECT PERSON_ID
FROM person
WHERE NAME LIKE '_____';


-- ============================================================
-- 19. Write query to change address from Mangalore to Hassan.
-- ============================================================

UPDATE person
SET ADDRESS = 'Hassan'
WHERE ADDRESS = 'Mangalore';