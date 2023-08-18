/* Section 11.
Section 11. Modifying data
In this section, you will learn how to change the contents of tables in the SQL Server database. The SQL commands for modifying data such as insert, delete, and update are referred to as data manipulation language (DML).

INSERT – insert a row into a table
INSERT multiple rows – insert multiple rows into a table using a single INSERT statement
INSERT INTO SELECT – insert data into a table from the result of a query.
UPDATE – change the existing values in a table.
UPDATE JOIN – update values in a table based on values from another table using JOIN clauses.
DELETE – delete one or more rows of a table.
MERGE – walk you through the steps of performing a mixture of insertion, update, and deletion using a single statement.
Transaction – show you how to start a transaction explicitly using the BEGIN TRANSACTION, COMMIT, and ROLLBACK statements
*/

/*1.*/
INSERT INTO production.categories (category_name)
VALUES ('Electronics');

/*2.*/
INSERT INTO production.brands (brand_name)
VALUES ('Samsung'), ('Apple'), ('Sony');

CREATE table new_categories (
category_id INT IDENTITY (1, 1) PRIMARY KEY,
category_name VARCHAR (255) NOT NULL
);

SELECT * FROM new_categories;

/*2.*/
INSERT INTO new_categories (category_name)
VALUES ('Electronics'), ('Robotics'), ('Mechatronics'), ('Hardware');

SELECT * FROM production.categories;

/*3.*/
INSERT INTO production.categories (category_name)
SELECT category_name
FROM new_categories;

/*4.*/
UPDATE production.brands
SET brand_name = 'Apple Inc.'
WHERE brand_name = 'Apple';

SELECT * FROM production.brands;


CREATE TABLE production.discounts (
    discount_id INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT NOT NULL,
    discount_percentage DECIMAL(5, 4) NOT NULL, -- Store percentages as decimals (e.g., 0.10 for 10%)
    FOREIGN KEY (product_id) REFERENCES production.products(product_id)
);

SELECT * FROM production.discounts;

INSERT INTO production.discounts (product_id, discount_percentage)
VALUES 
(1, 0.10),
(2, 0.05),
(3, 0.20);

SELECT * FROM production.products;


/*5.*/   --RE LOOK INTO THIS
UPDATE production.products
SET list_price = production.products.list_price * (1 - production.discounts.discount_percentage)
FROM production.products
JOIN production.discounts ON production.products.product_id = production.discounts.product_id;



SELECT * FROM production.categories;

/*6.*/
DELETE FROM production.categories
WHERE category_name = 'Electronics' ;




CREATE TABLE production.new_brands (
    brand_id INT,
    brand_name VARCHAR(255) NOT NULL
);

SELECT * FROM production.new_brands;

INSERT INTO production.new_brands (brand_id, brand_name)
VALUES 
(1, 'Samsung Electronics'),  -- Updated brand name
(2, 'Apple'),                -- Same as the old name, for demonstration
(4, 'LG Electronics');       -- New brand

/*7.*/
MERGE INTO production.brands AS Target
USING production.new_brands AS Source
ON Target.brand_id = Source.brand_id
WHEN MATCHED THEN 
    UPDATE SET Target.brand_name = Source.brand_name
WHEN NOT MATCHED BY TARGET THEN
    INSERT (brand_name) VALUES (Source.brand_name);


SELECT * FROM production.brands;


/*8.*/
BEGIN TRANSACTION;

INSERT INTO sales.orders (customer_id, order_status, order_date, required_date, store_id, staff_id)
VALUES (1, 1, '2023-08-10', '2023-08-15', 1, 1);

INSERT INTO sales.order_items (order_id, item_id, product_id, quantity, list_price, discount)
VALUES (IDENT_CURRENT('sales.orders'), 1, 1, 5, 100, 0.05);

COMMIT;


SELECT * FROM sales.orders;
SELECT * FROM sales.order_items;
