# SQL Basics Assignment

Solution for the **Route SQL Basics Assignment**: building a database, creating a table, inserting data, and writing queries from basic to advanced.

## Files

| File | Description |
|---|---|
| `SQL_Basics_Assignment_Solution.sql` | Full solution in **SQL Server (T-SQL)** |
| `SQL_Basics_Assignment_MySQL.sql` | Same solution for **MySQL** (runs online on onecompiler.com) |

## What's Inside

### 1. Database & Table Creation
- Database: `SQL Practice`
- Table: `Orders` with 12 columns:
  `OrderID`, `CustomerID`, `ProductName`, `Category`, `Country`, `OrderDate`, `ShipDate`, `Quantity`, `UnitPrice`, `Sales`, `Discount`, `Profit`
- Suitable data types and constraints: `PRIMARY KEY`, `NOT NULL`, `CHECK`

### 2. Data Insertion
- 20 rows added using `INSERT INTO`
- Includes `NULL` values in `ShipDate` and `Discount`

### 3. Queries (20 total)

| Level | Count | Concepts |
|---|---|---|
| Basic | 10 | `SELECT`, `WHERE`, `DISTINCT`, `IS NULL`, comparison operators |
| Intermediate | 5 | `AND`, `OR`, `LIKE`, `BETWEEN`, `IN`, `ORDER BY` |
| Advanced | 5 | Combined conditions, `IS NOT NULL`, calculated expressions, `DISTINCT` with `ORDER BY` |

## How to Run

**SQL Server:** open the `.sql` file in SSMS and press `F5`.

**MySQL (online):** copy the content of `SQL_Basics_Assignment_MySQL.sql` into [onecompiler.com/mysql](https://onecompiler.com/mysql) and click **Run**.

## Notes

- Text values in the data are lowercase (`'usa'`, `'furniture'`). The queries use `'USA'` and `'Furniture'`, which works because the default collation is case-insensitive.
- `Sales = Quantity * UnitPrice` holds for all 20 rows.

## Author

**Rozalinda**
Data Science Student, Horus University Egypt (HUE)
