CREATE DATABASE PracticeDB ;

USE PracticeDB;

CREATE TABLE Students(
StudentID INT PRIMARY KEY IDENTITY(1,1),
FirstName NVARCHAR(50),
LastName NVARCHAR(50),
GreaduationYear INT
);


INSERT INTO Students ( FirstName, LastName)
VALUES ( 'John', 'Doe');


SELECT * FROM  Students


INSERT INTO Students ( FirstName, LastName)
VALUES ( 'Abhishek', 'Dhotre'),
( 'Rajesh', 'Johnson'),
( 'Pratap', 'Rana'),
( 'Dilip', 'Ranganathan')
;
