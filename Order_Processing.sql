-- ============================================================
-- Create a database for an Order Processing Database Application.
-- ============================================================

DROP DATABASE IF EXISTS order_processing;

CREATE DATABASE order_processing;

USE order_processing;


-- ============================================================
-- Create CUSTOMER table with Customer ID, Customer Name and City.
-- ============================================================

CREATE TABLE CUSTOMER (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(30),
    City VARCHAR(30)
);


-- ============================================================
-- Create ORDERS table with Order ID, Order Date, Customer ID
-- and Order Amount.
-- Customer ID is a foreign key referencing CUSTOMER.
-- ============================================================

CREATE TABLE ORDERS (
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Customer_ID INT,
    Order_Amount DECIMAL(10,2),

    FOREIGN KEY (Customer_ID)
        REFERENCES CUSTOMER(Customer_ID)
);


-- ============================================================
-- Create ORDER_ITEM table with Order ID, Item ID, Quantity,
-- Item Price and Unit Price.
-- Order ID is a foreign key referencing ORDERS.
-- ============================================================

CREATE TABLE ORDER_ITEM (
    Order_ID INT,
    Item_ID INT,
    Quantity INT,
    Item_Price DECIMAL(10,2),
    Unit_Price DECIMAL(10,2),

    PRIMARY KEY (Order_ID, Item_ID),

    FOREIGN KEY (Order_ID)
        REFERENCES ORDERS(Order_ID)
);


-- ============================================================
-- Create WAREHOUSE table with Warehouse ID and City.
-- ============================================================

CREATE TABLE WAREHOUSE (
    Warehouse_ID INT PRIMARY KEY,
    City VARCHAR(30)
);


-- ============================================================
-- Create SHIPMENT table with Order ID, Warehouse ID
-- and Ship Date.
--
-- One order can be shipped from several warehouses.
-- Therefore, Order ID + Warehouse ID form the primary key.
--
-- Order ID is a foreign key referencing ORDERS.
-- Warehouse ID is a foreign key referencing WAREHOUSE.
-- ============================================================

CREATE TABLE SHIPMENT (
    Order_ID INT,
    Warehouse_ID INT,
    Ship_Date DATE,

    PRIMARY KEY (Order_ID, Warehouse_ID),

    FOREIGN KEY (Order_ID)
        REFERENCES ORDERS(Order_ID),

    FOREIGN KEY (Warehouse_ID)
        REFERENCES WAREHOUSE(Warehouse_ID)
);


-- ============================================================
-- Display the structure of all tables.
-- ============================================================

DESC CUSTOMER;

DESC ORDERS;

DESC ORDER_ITEM;

DESC WAREHOUSE;

DESC SHIPMENT;