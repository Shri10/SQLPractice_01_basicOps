# SQL Server Demonstrations (Basic)

This repository contains SQL Server scripts demonstrating various SQL concepts.


## 📝 Instructions / Guidelines

1. This repository is solely for demonstration purposes.
	While you're encouraged to peruse the content, there's no need for you to implement or run any scripts.
	This repository primarily showcases my implementations and expertise.

2. If you wish to delve deeper, just open the relevant `.sql` file using SQL Server Management Studio or any SQL client of your choice.

3. **DO AT YOUR OWN RISK**.


## 📁 Files

Below is a brief overview of the SQL scripts available in this repository:

- **[DemonstrationSec1,2,3,4.sql](./DemonstrationSec1,2,3,4.sql)** - Covers querying, sorting, limiting rows, and filtering data.
- **[DemonstrationSec6,8.sql](./DemonstrationSec6,8.sql)** - Demonstrates grouping data and set operators.
- **[DemonstrationSec11.sql](./DemonstrationSec11.sql)** - Showcases various SQL operations.
- **[DemonstrationSec12.sql](./DemonstrationSec12.sql)** - Focuses on data definition.
- **[DemonstrationSec13.sql](./DemonstrationSec13.sql)** - Explores different SQL Server data types.
- **[DemonstrationSec14.sql](./DemonstrationSec14.sql)** - Illustrates SQL constraints.


## 🚀 Getting Started

Preferably, check the following files for a guided experience:

- [DemonstrationSec1,2,3,4.sql](./DemonstrationSec1,2,3,4.sql)
- [DemonstrationSec6,8.sql](./DemonstrationSec6,8.sql)
- [DemonstrationSec11.sql](./DemonstrationSec11.sql)
- [DemonstrationSec12.sql](./DemonstrationSec12.sql)
- [DemonstrationSec13.sql](./DemonstrationSec13.sql)
- [DemonstrationSec14.sql](./DemonstrationSec14.sql)


## 📚 What's Inside?

This repository houses a collection of SQL scripts, each tailored to highlight specific database operations and concepts. Here's a brief overview of what you can expect from some of the primary files:

### **DemonstrationSec1,2,3,4.sql**
- **Basic Querying and Data Manipulation**:
  - **Database and Table Creation**: Demonstrates the initiation of the `DEMO2` database and the creation of the `Products` table.
  - **Data Insertion**: Populates the `Products` table with various items and their details.
  - **Data Retrieval**: Introduces the `SELECT` statement for fetching data from tables.
  - **Sorting**: Uses the `ORDER BY` clause to organize data based on specified columns.
  - **Limiting Rows**: Implements the `OFFSET` and `FETCH` clauses to restrict the number of rows returned.
  - **Filtering Data**: Showcases various filtering techniques using the `WHERE` clause, operators like `IN`, `BETWEEN`, and string functions such as `LIKE`.

### **DemonstrationSec6,8.sql**
- **Grouping and Join Operations**:
  - **Table Creation**: Introduces the `Products2` and `Orders` tables.
  - **Grouping**: Demonstrates the use of `GROUP BY` for aggregating data and `HAVING` for filtering aggregated results.
  - **Advanced Grouping**: Introduces `GROUPING SETS`, `CUBE`, and `ROLLUP` for more intricate aggregation scenarios.
  - **Joins**: Showcases the `JOIN` operation to combine rows from two or more tables based on related columns.
  - **Set Operations**: Introduces set operators like `UNION`, `INTERSECT`, and `EXCEPT` to perform set-based operations between query results.

### **DemonstrationSec11.sql**
- **Data Insertion and Table Manipulation**:
  - **Table Creation and Data Insertion**: Initiates tables like `categories`, `brands`, and `discounts`.
  - **Data Manipulation**: Features the use of the `UPDATE` statement to modify existing data.
  - **Data Merging**: Highlights the `MERGE` statement, which allows the merging of two tables based on specified conditions.
  - **Transactions**: Introduces the concept of transactions to ensure database integrity.

### **DemonstrationSec12.sql**
- **Database and Schema Operations**:
  - **Database Creation and Deletion**: Demonstrates creating and deleting a database (`ShopDB`).
  - **Schema Operations**: Showcases the creation, transfer, and deletion of schemas (`production`, `sales`, etc.).
  - **Column Operations**: Explores adding, altering, and dropping columns from tables.
  - **Sequences**: Introduces the concept of sequences for generating numeric values.
  - **Data Copying**: Highlights the technique of copying data from one table to another using the `SELECT INTO` statement.

### **DemonstrationSec13.sql**
- **Exploring Data Types**:
  - **Table Creation with Various Data Types**: Initiates the `DataTypeDemo` table that encompasses a wide range of SQL data types.
  - **Data Insertion**: Demonstrates how to insert data respecting the data types.

### **DemonstrationSec14.sql**
- **Table Creation, Indexing, and Constraints**:
  - **Table Initialization**: Sets up tables like `Customers`, `Users_Se2`, and `Orders`.
  - **Foreign Key Constraints**: Introduces the concept of foreign key constraints to ensure referential integrity between tables.
  - **Check Constraints**: Demonstrates the use of constraints to ensure valid data insertion.
  - **Default Constraints**: Showcases the usage of default values for columns.
  - **Indexing**: Highlights the importance and creation of indexes to speed up data retrieval operations.

This repository provides a comprehensive exploration of the above SQL concepts, ensuring a well-rounded understanding for anyone reviewing the files.


