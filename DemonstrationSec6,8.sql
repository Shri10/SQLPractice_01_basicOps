/*
Section 6. Grouping data

GROUP BY– group the query result based on the values in a specified list of column expressions.
HAVING – specify a search condition for a group or an aggregate.
GROUPING SETS – generates multiple grouping sets.
CUBE – generate grouping sets with all combinations of the dimension columns.
ROLLUP – generate grouping sets with an assumption of the hierarchy between input columns.

--

Section 8. Set Operators
This section walks you through of using the set operators including union, intersect, and except to combine multiple result sets from the input queries.

UNION – combine the result sets of two or more queries into a single result set.
INTERSECT – return the intersection of the result sets of two or more queries.
EXCEPT – find the difference between the two result sets of two input queries.
*/

CREATE TABLE Products2 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50)
);

INSERT INTO Products2 (ProductID, ProductName, Category) VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Chair', 'Furniture'),
(3, 'Table', 'Furniture'),
(4, 'iPhone', 'Electronics'),
(5, 'Keyboard', 'Electronics');

SELECT * FROM Products2;


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT
);

INSERT INTO Orders (OrderID, ProductID, Quantity) VALUES
(1, 1, 3),
(2, 2, 5),
(3, 2, 10),
(4, 3, 2),
(5, 4, 7);

SELECT * FROM Orders;

/*Section 6.*/

SELECT Category, COUNT(ProductID) AS NumberOfProducts FROM Products2 GROUP BY Category;

SELECT Category, COUNT(ProductID) AS NumberOfProducts FROM Products2 GROUP BY Category HAVING COUNT(ProductID) > 1;

SELECT Category, ProductName, COUNT(ProductID) AS NumberOfProducts FROM Products2 GROUP BY GROUPING SETS ((Category, ProductName), (Category), ());

SELECT Category, ProductName, COUNT(ProductID) AS NumberOfProducts FROM Products2 GROUP BY CUBE (Category, ProductName);

SELECT Category, ProductName, COUNT(ProductID) AS NumberOfProducts FROM Products2 GROUP BY ROLLUP (Category, ProductName);


/*Section 8.*/
SELECT p.ProductName 
FROM Products p
WHERE p.Category = 'Electronics';



SELECT p.ProductName 
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE o.Quantity > 5;



SELECT p.ProductName 
FROM Products p
WHERE p.Category = 'Electronics'
UNION
SELECT p.ProductName 
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE o.Quantity > 5;



SELECT p.ProductName 
FROM Products p
WHERE p.Category = 'Electronics'
INTERSECT
SELECT p.ProductName 
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE o.Quantity > 5;



SELECT p.ProductName 
FROM Products p
WHERE p.Category = 'Electronics'
EXCEPT
SELECT p.ProductName 
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE o.Quantity > 5;
