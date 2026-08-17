# SQL Practice — Data Analytics Course

Practice exercises and class activities from my Data Analytics course, covering table creation, DDL/DML operations, constraints, transaction control, querying, and data visualization in MySQL.

## Files

| # | File | Topics Covered |
|---|------|-----------------|
| 08 | `08_Creating_Zipto_Orders_Table.sql` | Designing and populating a multi-column table (`Zipto_Orders`) from scratch |
| 09 | `09_TCL_Transaction_Control_Language.sql` | `START TRANSACTION`, `COMMIT`, `ROLLBACK`, `SQL_SAFE_UPDATES`, and how autocommit behavior affects whether a rollback is possible |
| 10 | `10_Inserting_Data_Altering_Students_Table.sql` | Creating a database, `INSERT`, `ALTER TABLE ADD COLUMN`, renaming multiple columns, bulk `UPDATE`s to populate a `course_name` column |
| 11 | `11_Creating_Customers_Table.sql` | Creating a table, `INSERT`, `UPDATE` with `WHERE`, duplicate handling, `DELETE` vs `DROP` vs `TRUNCATE`, `ALTER TABLE ADD COLUMN`, `RENAME TABLE` |
| 12 | `12_Constraints.sql` | `PRIMARY KEY`, `NOT NULL` constraints on a new table (`Joy_Orders`) |
| 13 | `13_Renaming_Columns_Modifying_Table.sql` | `ALTER TABLE ... RENAME COLUMN`, `ALTER TABLE ... MODIFY COLUMN`, changing `CHAR` → `VARCHAR` and adjusting column length |
| 14 | `14_Students_Info_Table.sql` | `PRIMARY KEY`, `CHECK`, `UNIQUE`, `DEFAULT` constraints |
| 15 | `15_DQL_Data_Query_Language.sql` | `SELECT` with `WHERE`, comparison operators, logical operators (`AND`, `OR`, `IN`, `NOT IN`, `BETWEEN`), filtering across single and multiple conditions on the `indian_food` dataset |
| 16 | `16_Wildcards_CaseWhen_OrderBy_Limit_Offset.sql` | `LIKE` wildcard pattern matching, `CASE WHEN` conditional logic, `ORDER BY` (`ASC`/`DESC`), `LIMIT`, and `OFFSET` |
| 17 | `17_Aggregate_Functions_GroupBy.sql` | Aggregate functions (`SUM`, `MIN`, `MAX`, `AVG`, `COUNT`), `DISTINCT`, `GROUP BY`, combining `GROUP BY` with `ORDER BY` and `LIMIT` |
| 18 | `18_Date_Functions_Null_Handling.sql` | Date functions (`YEAR()`, `MONTH()`, `DAY()`), handling `NULL` values with `IS NULL` / `IS NOT NULL`, replacing missing data with `IFNULL()` |
| A | `A_sql:00-intro-where-like-orderby.sql` | Course intro/demo session: `WHERE` with `IN`, `LIKE` wildcard patterns (start/end/contains matching), `ORDER BY` (`ASC`/`DESC`), combining multiple filters, on the `indian_food` dataset |
| B | `B_sql:session-01-basic-queries.sql` | Session 1 basics: `CREATE DATABASE`, `SELECT` (full table and specific columns), `WHERE`, `LIKE`, `IN`/`NOT IN`, combining conditions across `region`, `state`, `diet`, and `cook_time` |
| C | `C_dashboards:session-01-indian-cuisine-dashboard.pdf` | Dashboard summarizing analysis of the `indian_food` dataset |

## Data Visualizations

A set of exported chart images (`01` through `07`) accompany the dashboard work, covering:
- Sales by geography (USA-focused map, full-extent map, single-color map)
- Sales trends over time (monthly 2023-2026, quarterly, yearly)
- Sales by region (bar chart)

## Key concepts practiced

**DDL (Data Definition Language)**
- `CREATE TABLE`, `ALTER TABLE` (`ADD COLUMN`, `RENAME COLUMN`, `MODIFY COLUMN`), `RENAME TABLE`, `DROP`, `TRUNCATE`

**DML (Data Manipulation Language)**
- `INSERT`, `UPDATE` (with `WHERE`), `DELETE` (including using `LIMIT` to remove a single duplicate row)

**Constraints**
- `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `CHECK`, `DEFAULT`

**TCL (Transaction Control Language)**
- `START TRANSACTION`, `COMMIT`, `ROLLBACK`, `SAVEPOINT`
- Understanding `AUTOCOMMIT` — MySQL commits by default unless a transaction is explicitly started, which affects whether `ROLLBACK` will actually work

**DQL (Data Query Language)**
- `SELECT` — retrieving specific data from a table
- `WHERE` — filtering rows based on conditions
- Comparison operators: `<`, `>`, `<=`, `>=`, `<>`, `=`
- Logical operators: `AND`, `OR`, `IN`, `NOT IN`, `BETWEEN`
- Query execution order: `SELECT` → `FROM` → `WHERE` → `GROUP BY` → `HAVING` → `ORDER BY` → `LIMIT` → `OFFSET`
- Combining multiple conditions to narrow results across several columns at once

**Wildcards & Pattern Matching**
- `LIKE` with `%` wildcard — matching values that start with, end with, or contain a given pattern (e.g. `"b%"` for names starting with B, `"%i"` for names ending in I)

**CASE WHEN (Conditional Logic)**
- SQL's if/else equivalent — evaluates conditions in order and returns a label for the first match, with `ELSE` as a fallback
- Used to categorize/bucket raw data (e.g. grouping `cook_time` into "instant", "moderate", "long_time") without needing a separate lookup table

**Sorting & Pagination**
- `ORDER BY` with `ASC` (default, low to high) or `DESC` (high to low)
- `LIMIT` — restricting the number of rows returned (e.g. top 5 results)
- `OFFSET` — skipping a number of rows before returning results (row counting starts at 0); requires `LIMIT` to be used alongside it

**Aggregate Functions & GROUP BY**
- Aggregate functions (`SUM`, `MIN`, `MAX`, `AVG`, `COUNT`) collapse a column of values down to a single result (e.g. average cook time across all dishes)
- `DISTINCT` — filters results down to unique values only
- `GROUP BY` — groups rows that share a value so aggregate functions can be applied per group instead of across the whole table (e.g. dish count per diet type, or per state)
- Aggregate functions can be used without `GROUP BY`, but `GROUP BY` requires an aggregate function alongside it
- Combining `GROUP BY` with `ORDER BY` and `LIMIT` to answer questions like "top 3 states by dish count"

**Date Functions & NULL Handling**
- `YEAR()`, `MONTH()`, `DAY()` — extracting specific parts of a date column into their own fields
- `IS NULL` / `IS NOT NULL` — filtering rows based on whether a field has missing data
- `IFNULL(column, replacement)` — substituting a default value (e.g. `0`, an average, or "unknown") in place of `NULL`, useful for cleaning data before analysis

**ACID Properties**
- Atomicity, Consistency, Isolation, Durability — the guarantees that make transactions safe

**Data Visualization & Dashboards**
- Translating query results into geographic maps, time-series trend charts, and regional comparisons
- Building a summary dashboard to communicate findings from the `indian_food` / sales datasets

## Notes

- `DELETE` is recoverable via `ROLLBACK` (within a transaction); `TRUNCATE` and `DROP` are not.
- `TRUNCATE` clears all rows but keeps the table structure; `DROP` removes the table structure entirely.
- `SET SQL_SAFE_UPDATES = 0;` is needed before running `UPDATE`/`DELETE` without a key-based `WHERE` clause in MySQL Workbench's safe mode.

---
*Course: Data Analytics | Tool: MySQL Workbench*
