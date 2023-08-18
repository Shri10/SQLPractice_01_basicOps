/* Section 12.
Section 12. Data definition
This section shows you how to manage the most important database objects including databases and tables.

CREATE DATABASE – show you how to create a new database in a SQL Server instance using the CREATE DATABASE statement and SQL Server Management Studio.
DROP DATABASE – learn how to delete existing databases.
CREATE SCHEMA – describe how to create a new schema in a database.
ALTER SCHEMA – show how to transfer a securable from a schema to another within the same database.
DROP SCHEMA – learn how to delete a schema from a database.
CREATE TABLE – walk you through the steps of creating a new table in a specific schema of a  database.
Identity column – learn how to use the IDENTITY property to create the identity column for a table.
Sequence – describe how to generate a sequence of numeric values based on a specification.
ALTER TABLE ADD column – show you how to add one or more columns to an existing table
ALTER TABLE ALTER COLUMN – show you how to change the definition of existing columns in a table.
ALTER TABLE DROP COLUMN – learn how to drop one or more columns from a table.
Computed columns – how to use the computed columns to resue the calculation logic in multiple queries.
DROP TABLE – show you how to delete tables from the database.
TRUNCATE TABLE – delete all data from a table faster and more efficiently.
SELECT INTO – learn how to create a table and insert data from a query into it.
Rename a table –  walk you through the process of renaming a table to a new one.
Temporary tables – introduce you to the temporary tables for storing temporarily immediate data in stored procedures or database session.
Synonym – explain you the synonym and show you how to create synonyms for database objects.
*/

/*01.*/
CREATE DATABASE ShopDB;


USE ShopDB;


/*02.*/
DROP DATABASE ShopDB;

/*03.*/
CREATE SCHEMA production;
GO

CREATE SCHEMA sales;
GO

CREATE SCHEMA test;
GO




CREATE SCHEMA schema_A;
GO

CREATE SCHEMA schema_B;
GO

CREATE TABLE schema_A.sample_table (id INT, name VARCHAR(50));
GO


/*04.*/
ALTER SCHEMA schema_B
TRANSFER schema_A.sample_table;
GO


/*05.*/
DROP SCHEMA test;


/*06.*/
--product_id INT IDENTITY (1, 1) PRIMARY KEY;


/*07.*/
CREATE SEQUENCE sales.OrderSeq
    START WITH 1
    INCREMENT BY 1;




CREATE TABLE products (
    ProdID INT PRIMARY KEY,
    Name VARCHAR(50),
    ManufactureName VARCHAR(50)
);

/*08.*/
ALTER TABLE products
ADD description NVARCHAR(500);

ALTER TABLE products
ADD random NVARCHAR(500);


/*09.*/
ALTER TABLE products
ALTER COLUMN Name VARCHAR(100);


/*10.*/
ALTER TABLE products
DROP COLUMN random;



SELECT * FROM products;



INSERT INTO products (ProdID, Name, ManufactureName) VALUES
(1, 'Laptop', 'Dell'),
(2, 'Smartphone', 'Samsung'),
(3, 'Keyboard', 'Logitech'),
(4, 'Monitor', 'Acer'),
(5, 'Mouse', 'HP'),
(6, 'Tablet', 'Apple'),
(7, 'Printer', 'Canon'),
(8, 'Camera', 'Nikon'),
(9, 'Smartwatch', 'Fitbit'),
(10, 'Speakers', 'Bose');

/*11.*/
ALTER TABLE products
ADD FullName AS (Name + ' - ' + ManufactureName);


ALTER TABLE products
ADD ActualName AS (ManufactureName + ' - ' + Name);



ALTER TABLE products
DROP COLUMN FullName;



CREATE TABLE random (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    ManufactureName VARCHAR(50)
) ;

/*12.*/
DROP TABLE dbo.random;


SELECT * FROM dbo.random;


INSERT INTO random (ID, Name, ManufactureName) VALUES
(1, 'Laptop', 'Dell'),
(2, 'Smartphone', 'Samsung'),
(3, 'Keyboard', 'Logitech'),
(4, 'Monitor', 'Acer'),
(5, 'Mouse', 'HP'),
(6, 'Tablet', 'Apple'),
(7, 'Printer', 'Canon'),
(8, 'Camera', 'Nikon'),
(9, 'Smartwatch', 'Fitbit'),
(10, 'Speakers', 'Bose');


/*13.*/
TRUNCATE TABLE dbo.random;


/*14.*/
SELECT *
INTO products_backup
FROM products;

/*15.*/
EXEC sp_rename 'products_backup', 'old_products';

/*16.*/
SELECT *
INTO #temp_products
FROM products
WHERE ManufactureName = 'Dell';


SELECT * FROM #temp_products;


/*17.*/
CREATE SYNONYM myProducts FOR dbo.products;

SELECT * FROM myProducts;

