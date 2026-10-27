# III Semester DBMS Practicals — MySQL

A collection of SQL practical programs for **III Semester Database Management Systems (DBMS)**, written for **MySQL**. The repository includes examples of database and table creation, sample data insertion, filtering, sorting, aggregate functions, conditional logic, table modification, billing calculations, and relational database design.

> **Academic-use notice:** These scripts are study/practice material, not an official or guaranteed answer key. Some questions may have been interpreted from class notes or assignment wording, and SQL choices or sample outputs may differ from your college's expected solution. Please review the questions and queries, test them on your own MySQL installation, and confirm any uncertain requirements with your faculty before submitting or relying on them.

## Repository Contents

| File | Practical | Main topics |
|---|---|---|
| [`students.sql`](students.sql) | Student Marks | Student table, inserting 10 records, `DESC`, `ALTER TABLE`, total marks, percentage, `CASE`, pass/fail results and `COUNT()` |
| [`person.sql`](person.sql) | Person Details | Selecting columns, `DISTINCT`, `ORDER BY`, `WHERE`, `IN`, `LIKE`, `COUNT()`, `UPDATE`, `DELETE` and adding a column |
| [`company.sql`](company.sql) | Company / Employee / Department | Employee and department tables, filtering, sorting, joins, salary aggregates, department queries, updates and supervisor checks |
| [`electricity_info.sql`](electricity_info.sql) | Electricity Billing | Billing records, bill calculation with a minimum charge and tiered unit rates, adding columns and due dates with `DATE_ADD()` |
| [`Order_Processing.sql`](Order_Processing.sql) | Order Processing Schema | Customer, order, order-item, warehouse and shipment tables; primary keys, foreign keys and a composite key |

## Requirements

- MySQL Server (the scripts are written for MySQL 8.x)
- MySQL Command-Line Client, or MySQL Shell switched to SQL mode
- A text editor for viewing or editing `.sql` files

These scripts use **MySQL SQL syntax**. They may need changes to run in Oracle Database, SQL Server, PostgreSQL or other database systems.

## How to Run

### Option 1: Run a script from the MySQL prompt

1. Open MySQL Command-Line Client and connect to your server.
2. Use `SOURCE` with the full path to the SQL file. For example, if the project is extracted to `D:\III SEM DB`:

```sql
SOURCE D:/III SEM DB/students.sql;
```

Run other practicals separately:

```sql
SOURCE D:/III SEM DB/person.sql;
SOURCE D:/III SEM DB/company.sql;
SOURCE D:/III SEM DB/electricity_info.sql;
SOURCE D:/III SEM DB/Order_Processing.sql;
```

Change the paths if your folder is in a different location. Forward slashes work well in `SOURCE` paths on Windows.

### Option 2: Run a script from Windows CMD

If `mysql.exe` is available on your Windows `PATH`, run this from **Windows CMD**, not from the `mysql>` prompt:

```bat
mysql -u root -p < "D:\III SEM DB\students.sql"
```

Enter your MySQL password when prompted. Replace the file path and database account as needed.

## Check the Results

For the student practical, after running `students.sql`:

```sql
USE college;
SHOW TABLES;
DESC studentsinfo;
SELECT * FROM studentsinfo;
```

For the person practical:

```sql
USE person_details;
SHOW TABLES;
DESC person;
SELECT * FROM person;
```

For the company practical:

```sql
USE company;
SHOW TABLES;
DESC employee;
DESC department;
```

For electricity billing:

```sql
USE electricity_info;
DESC electricitybill;
SELECT * FROM electricitybill;
```

For order processing:

```sql
USE order_processing;
SHOW TABLES;
DESC CUSTOMER;
DESC ORDERS;
DESC ORDER_ITEM;
DESC WAREHOUSE;
DESC SHIPMENT;
```

## Concepts Practised

- `CREATE DATABASE`, `CREATE TABLE` and `USE`
- `INSERT INTO`, `SELECT` and selecting specific columns
- `WHERE`, comparison operators, `AND`, `OR`, `IN` and `LIKE`
- `ORDER BY` and `DISTINCT`
- `UPDATE` and `DELETE`
- `ALTER TABLE` and `DESC`
- Aggregate functions such as `COUNT()`, `SUM()`, `AVG()` and `MIN()`
- Conditional expressions using `CASE`
- Date arithmetic using `DATE_ADD()`
- `JOIN` operations between related tables
- Primary keys, foreign keys and composite primary keys

## Important Warnings

- **Read a script before running it.** Several scripts begin with `DROP DATABASE IF EXISTS` and then recreate the database. This permanently deletes any existing database with the same name, including its tables and data.
- Run one practical at a time and check the database name with `SELECT DATABASE();` if you are unsure which database is active.
- The inserted names, marks, employee details and other records are sample data for practice; they should not be treated as real records.
- A script running without a syntax error does not automatically mean that its interpretation of the assignment is correct. Compare each question with your original assignment sheet.
- In `Order_Processing.sql`, the table is named `ORDERS` rather than `ORDER` because `ORDER` is a MySQL keyword. The shipment table uses `(Order_ID, Warehouse_ID)` as a composite primary key to allow one order to be associated with multiple warehouses, with one shipment record per order/warehouse pair.

## Suggested Practice Method

1. Read the question comment above each query.
2. Predict the output before executing it.
3. Run the script and check the results.
4. Change a sample value or condition and run the query again.
5. Practise rewriting the query without looking at the file.

## Disclaimer

This repository is shared for **learning, revision and peer study**. It is not an official college publication, and correctness against a particular university syllabus or marking scheme is not guaranteed. Anyone using these files should independently review, test and adapt them to their own assignment requirements.

If you spot an error or a difference from your assignment sheet, please verify it before using the query.

---

**Database:** MySQL  
**Purpose:** III Semester DBMS practical learning
