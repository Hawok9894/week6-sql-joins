-- Week 6 Assignment: SQL Joins and Relationships
-- Database: Classic Models
-- Student: Hawok9894

-- =====================================================
-- Question 1: INNER JOIN - Employees and Offices
-- Retrieve firstName, lastName, email, officeCode
-- for all employees
-- =====================================================
SELECT
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM
    employees AS e
INNER JOIN
    offices AS o
    ON e.officeCode = o.officeCode;

-- =====================================================
-- Question 2: LEFT JOIN - Products and Product Lines
-- Retrieve productName, productVendor, productLine
-- =====================================================
SELECT
    p.productName,
    p.productVendor,
    p.productLine
FROM
    products AS p
LEFT JOIN
    productlines AS pl
    ON p.productLine = pl.productLine;

-- =====================================================
-- Question 3: RIGHT JOIN - Customers and Orders
-- Retrieve orderDate, shippedDate, status, customerNumber
-- for the first 10 orders
-- =====================================================
SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM
    customers AS c
RIGHT JOIN
    orders AS o
    ON c.customerNumber = o.customerNumber
ORDER BY
    o.orderNumber
LIMIT 10;
