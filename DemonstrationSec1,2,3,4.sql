/*
Section 1. Querying data
This section helps you learn how to query data from the SQL Server database. We will start with a simple query that allows you to retrieve data from a single table.

SELECT – show you how to query data against a single table.

--

Section 2. Sorting data
ORDER BY – sort the result set based on values in a specified list of columns

--

Section 3. Limiting rows
OFFSET FETCH – limit the number of rows returned by a query.
SELECT TOP – limit the number of rows or percentage of rows returned in a query’s result set.

--

Section 4. Filtering data
DISTINCT  – select distinct values in one or more columns of a table.
WHERE – filter rows in the output of a query based on one or more conditions.
AND – combine two Boolean expressions and return true if all expressions are true.
OR–  combine two Boolean expressions and return true if either of conditions is true.
IN – check whether a value matches any value in a list or a subquery.
BETWEEN – test if a value is between a range of values.
LIKE  –  check if a character string matches a specified pattern.
Column & table aliases – show you how to use column aliases to change the heading of the query output and table alias to improve the readability of a query.
*/

CREATE DATABASE DEMO2;

USE DEMO2;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    ManufactureDate DATE
);

INSERT INTO Products (ProductID, ProductName, Price, Category, ManufactureDate) VALUES
(1, 'Laptop', 1000.00, 'Electronics', '2023-01-01'),
(2, 'Chair', 50.00, 'Furniture', '2022-06-15'),
(3, 'Table', 150.00, 'Furniture', '2022-05-10'),
(4, 'iPhone', 1200.00, 'Electronics', '2023-02-10'),
(5, 'Keyboard', 25.00, 'Electronics', '2023-01-20');

SELECT * FROM Products;


/*Section 1. -SELECT */
SELECT ProductID, ProductName, Price, Category FROM Products;


/*Section 2. -ORDER BY*/
SELECT ProductID, ProductName, Price FROM Products ORDER BY Price DESC;


/*Section 3. Limiting rows*/
SELECT ProductID, ProductName, Price FROM Products ORDER BY Price DESC OFFSET 1 ROWS FETCH NEXT 3 ROWS ONLY;

SELECT TOP 3 ProductID, ProductName, Price FROM Products ORDER BY Price DESC;


/*Section 4. Filtering data*/
SELECT DISTINCT Category FROM Products;

SELECT ProductID, ProductName, Price FROM Products WHERE Category = 'Electronics';

SELECT ProductID, ProductName, Price FROM Products WHERE Category = 'Electronics' AND Price > 100;

SELECT ProductID, ProductName, Price FROM Products WHERE Category = 'Electronics' OR Price < 100;

SELECT ProductID, ProductName, Price FROM Products WHERE ProductName IN ('Laptop', 'Table');

SELECT ProductID, ProductName, Price FROM Products WHERE Price BETWEEN 20 AND 100;

SELECT ProductID, ProductName, Price FROM Products WHERE ProductName LIKE '%a%';

SELECT p.ProductID AS ID, p.ProductName AS Name, p.Price FROM Products AS p WHERE p.Price > 100;
