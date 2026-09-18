-- ============================================================
-- ELECTRICITY BILL DATABASE
-- ============================================================

-- CREATE DATABASE

CREATE DATABASE electricity_info;

USE electricity_info;


-- CREATE TABLE

CREATE TABLE electricitybill (
    RR_no VARCHAR(5),
    Customer_name VARCHAR(5),
    Billing_date DATE,
    Units INT(5)
);


-- 1. CHECK TABLE STRUCTURE

DESC electricitybill;


-- 2. INSERT 5 RECORDS

INSERT INTO electricitybill
VALUES
('RR001', 'Arun', '2026-09-01', 50),
('RR002', 'Ravi', '2026-09-02', 100),
('RR003', 'Kiran', '2026-09-03', 150),
('RR004', 'Priya', '2026-09-04', 200),
('RR005', 'Sneha', '2026-09-05', 300);

SELECT * FROM electricitybill;

-- 3. ADD TWO FIELDS

ALTER TABLE electricitybill
ADD Bill_amount DECIMAL(10,2),
ADD Due_date DATE;

SELECT * FROM electricitybill;
-- 4. COMPUTE BILL AMOUNT
-- Minimum amount = 250
-- First 100 units = ₹4.50 per unit
-- Above 100 units = ₹5.50 per unit

UPDATE electricitybill
SET Bill_amount =
    CASE
        WHEN Units <= 100 AND Units * 4.50 < 250
            THEN 250
        WHEN Units <= 100
            THEN Units * 4.50
        ELSE
            100 * 4.50 + (Units - 100) * 5.50
    END;


-- 5. COMPUTE DUE DATE (BILLING DATE + 15 DAYS)

UPDATE electricitybill
SET Due_date = DATE_ADD(Billing_date, INTERVAL 15 DAY);

SELECT * FROM electricitybill;


-- 6. LIST ALL BILLS GENERATED

SELECT * FROM electricitybill;