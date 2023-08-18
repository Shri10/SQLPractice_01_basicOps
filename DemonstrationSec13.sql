/* Section 13.
Section 13. SQL Server Data Types

SQL Server data types – give you an overview of the built-in SQL Server data types.
BIT – store bit data i.e., 0, 1, or NULL in the database with the BIT data type.
INT – learn about various integer types in SQL server including BIGINT, INT, SMALLINT, and TINYINT.
DECIMAL – show you how to store exact numeric values in the database by using DECIMAL or NUMERIC data type.
CHAR – learn how to store fixed-length, non-Unicode character string in the database.
NCHAR –  show you how to store fixed-length, Unicode character strings and explain the differences between CHAR and NCHAR data types
VARCHAR – store variable-length, non-Unicode string data in the database.
NVARCHAR – learn how to store variable-length, Unicode string data in a table and understand the main differences between VARCHAR and NVARCHAR.
DATETIME2 – illustrate how to store both date and time data in a database.
DATE – discuss the date data type and how to store the dates in the table.
TIME – show you how to store time data in the database by using the TIME data type.
DATETIMEOFFSET – show you how to manipulate datetime with the time zone.
GUID – learn about the GUID and how to use the NEWID() function to generate GUID values.
*/


CREATE TABLE DataTypeDemo (
    ID INT PRIMARY KEY IDENTITY(1,1),
    BitColumn BIT,
    IntColumn INT,
    BigIntColumn BIGINT,
    SmallIntColumn SMALLINT,
    TinyIntColumn TINYINT,
    DecimalColumn DECIMAL(10,2),
    CharColumn CHAR(10),
    NCharColumn NCHAR(10),
    VarcharColumn VARCHAR(50),
    NVarcharColumn NVARCHAR(50),
    DateTime2Column DATETIME2,
    DateColumn DATE,
    TimeColumn TIME,
    DateTimeOffsetColumn DATETIMEOFFSET,
    GuidColumn UNIQUEIDENTIFIER
);


SELECT * FROM DataTypeDemo;

INSERT INTO DataTypeDemo (
    BitColumn, IntColumn, BigIntColumn, SmallIntColumn, TinyIntColumn, 
    DecimalColumn, CharColumn, NCharColumn, VarcharColumn, NVarcharColumn, 
    DateTime2Column, DateColumn, TimeColumn, DateTimeOffsetColumn, GuidColumn)
VALUES 
    (1, 12345, 123456789012345, 32767, 255, 
    1234.56, 'CHARTEXT', N'NCHARTEXT', 'Varchar Text', N'NVarchar Text', 
    '2023-08-18T12:34:56', '2023-08-18', '12:34:56', '2023-08-18 12:34:56.1234567 -07:00', NEWID()),
    
    (0, 67890, 987654321098765, 12345, 100, 
    7890.12, 'CHARVAL', N'NCHARVAL', 'Another Varchar Text', N'Another NVarchar Text', 
    '2023-08-19T01:23:45', '2023-08-19', '01:23:45', '2023-08-19 01:23:45.1234567 +05:30', NEWID());
