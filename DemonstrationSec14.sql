/* Section 14.
SQL Constraints
SQL constraints are used to specify rules for the data in a table.

Constraints are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the table. If there is any violation between the constraint and the data action, the action is aborted.

Constraints can be column level or table level. Column level constraints apply to a column, and table level constraints apply to the whole table.

The following constraints are commonly used in SQL:

NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Prevents actions that would destroy links between tables
CHECK - Ensures that the values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column if no value is specified
CREATE INDEX - Used to create and retrieve data from the database very quickly
*/

/*1*/
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL
);

INSERT INTO Customers (CustomerID, FirstName, LastName) VALUES (1, 'John', 'Doe');

SELECT * FROM Customers;


/*2*/
CREATE TABLE Users_Se2 (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50) UNIQUE,
    Password VARCHAR(100)
);

INSERT INTO Users_Se2 (UserID, Username, Password) VALUES (1, 'john_doe', 'password123');

SELECT * FROM Users_Se2;


/*3*/

/*4*/
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductName VARCHAR(100),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, CustomerID, ProductName) VALUES (1, 1, 'Laptop');


/*5*/
CREATE TABLE Products2 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2) CHECK (Price > 0)
);

INSERT INTO Products2 (ProductID, ProductName, Price) VALUES (1, 'Laptop', 1000.00);

/*6*/
CREATE TABLE Feedbacks (
    FeedbackID INT PRIMARY KEY,
    FeedbackText VARCHAR(500),
    Rating INT DEFAULT 5
);

INSERT INTO Feedbacks (FeedbackID, FeedbackText) VALUES (1, 'Great product!');

/*7*/
CREATE INDEX idx_username ON Users_Se2 (Username);
