CREATE DATABASE MyDatabase_Test;

USE MyDatabase_Test;

CREATE TABLE Employees (
EmpID INT PRIMARY KEY,
FirstName NVARCHAR(50),
LastName NVARCHAR(50),
);

Select * FROM Employees;

INSERT INTO Employees(EmpID, FirstName, LastName ) VALUES (1, 'Shri', 'Raj');
INSERT INTO Employees(EmpID, FirstName, LastName ) VALUES (2, 'Rajendra', 'Rana');
INSERT INTO Employees(EmpID, FirstName, LastName ) VALUES (3, 'Mark', 'Ahuja');

Select * FROM Employees;

UPDATE Employees
SET LastName = 'Smith'
WHERE EmpID = 3;

DELETE FROM Employees
WHERE EmpID = 3 ;


