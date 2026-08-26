# SQL Practice — Data Analytics Course

Practice exercises and class activities from my Data Analytics course, covering table creation, DDL/DML operations, constraints, transaction control, querying, and data visualization in MySQL.

> **Note:** all files in this repo currently sit in the root directory (no subfolders). Links below point directly to filenames accordingly.

## Files

| # | File | Topics Covered |
|---|------|-----------------|
| 08 | [`08_Creating_Zipto_Orders_Table.sql`](08_Creating_Zipto_Orders_Table.sql) | Designing and populating a multi-column table (`Zipto_Orders`) from scratch |
| 09 | [`09_TCL_Transaction_Control_Language.sql`](09_TCL_Transaction_Control_Language.sql) | `START TRANSACTION`, `COMMIT`, `ROLLBACK`, `SQL_SAFE_UPDATES`, and how autocommit behavior affects whether a rollback is possible |
| 10 | [`10_Inserting_Data_Altering_Students_Table.sql`](10_Inserting_Data_Altering_Students_Table.sql) | Creating a database, `INSERT`, `ALTER TABLE ADD COLUMN`, renaming multiple columns, bulk `UPDATE`s to populate a `course_name` column |
| 11 | [`11_Creating_Customers_Table.sql`](11_Creating_Customers_Table.sql) | Creating a table, `INSERT`, `UPDATE` with `WHERE`, duplicate handling, `DELETE` vs `DROP` vs `TRUNCATE`, `ALTER TABLE ADD COLUMN`, `RENAME TABLE` |
| 12 | [`12_Constraints.sql`](12_Constraints.sql) | `PRIMARY KEY`, `NOT NULL` constraints on a new table (`Joy_Orders`) |
| 13 | [`13_Renaming_Columns_Modifying_Table.sql`](13_Renaming_Columns_Modifying_Table.sql) | `ALTER TABLE ... RENAME COLUMN`, `ALTER TABLE ... MODIFY COLUMN`, changing `CHAR` → `VARCHAR` and adjusting column length |
| 14 | [`14_Students_Info_Table.sql`](14_Students_Info_Table.sql) | `PRIMARY KEY`, `CHECK`, `UNIQUE`, `DEFAULT` constraints |
| 15 | [`15_DQL_Data_Query_Language.sql`](15_DQL_Data_Query_Language.sql) | `SELECT` with `WHERE`, comparison operators, logical operators (`AND`, `OR`, `IN`, `NOT IN`, `BETWEEN`), filtering across single and multiple conditions on the `indian_food` dataset |
| 16 | [`16_Wildcards_CaseWhen_OrderBy_Limit_Offset.sql`](16_Wildcards_CaseWhen_OrderBy_Limit_Offset.sql) | `LIKE` wildcard pattern matching, `CASE WHEN` conditional logic, `ORDER BY` (`ASC`/`DESC`), `LIMIT`, and `OFFSET` |
| 17 | [`17_Aggregate_Functions_GroupBy.sql`](17_Aggregate_Functions_GroupBy.sql) | Aggregate functions (`SUM`, `MIN`, `MAX`, `AVG`, `COUNT`), `DISTINCT`, `GROUP BY`, combining `GROUP BY` with `ORDER BY` and `LIMIT` |
| 18 | [`18_Date_Functions_Null_Handling.sql`](18_Date_Functions_Null_Handling.sql) | Date functions (`YEAR()`, `MONTH()`, `DAY()`), handling `NULL` values with `IS NULL` / `IS NOT NULL`, replacing missing data with `IFNULL()` |
| 19 | [`19_joins-and-unions.sql`](19_joins-and-unions.sql) | The four core joins (`INNER`, `LEFT`, `RIGHT`, `FULL`), plus `CROSS JOIN`, `SELF JOIN`, and `NATURAL JOIN`; simulating `FULL JOIN` (unsupported in MySQL) using `LEFT JOIN` + `RIGHT JOIN` combined with `UNION` |
| 20 | [`20_stored-procedures-subqueries.sql`](20_stored-procedures-subqueries.sql) | Writing reusable, parameterized stored procedures instead of repeating near-identical queries; using subqueries (nested queries) so filters like "greater than the average" stay accurate as underlying data changes |
| 21 | [`21_views-and-indexes.sql`](21_views-and-indexes.sql) | Creating simple views (one table) and complex views (joining multiple tables) as virtual tables; replacing `NULL` values with `IFNULL()` inside a view; revisiting indexing concepts including clustered vs non-clustered indexes |
| 22 | [`22_indexing-homework.sql`](22_indexing-homework.sql) | Creating indexes on frequently filtered columns, converting a misimported `TEXT` column to `DATE` before indexing it, and measuring query execution time before vs after indexing |
| 23 | [`23_triggers.sql`](23_triggers.sql) | Automatic `BEFORE`/`AFTER` `INSERT`/`UPDATE`/`DELETE` triggers used to keep two related tables in sync (e.g. logging a sale in `book_sales` whenever `books` is updated) |
| A | [`A_sql:00-intro-where-like-orderby.sql`](A_sql%3A00-intro-where-like-orderby.sql) | Course intro/demo session: `WHERE` with `IN`, `LIKE` wildcard patterns (start/end/contains matching), `ORDER BY` (`ASC`/`DESC`), combining multiple filters, on the `indian_food` dataset |
| B | [`B_sql:session-01-basic-queries.sql`](B_sql%3Asession-01-basic-queries.sql) | Session 1 basics: `CREATE DATABASE`, `SELECT` (full table and specific columns), `WHERE`, `LIKE`, `IN`/`NOT IN`, combining conditions across `region`, `state`, `diet`, and `cook_time` |
| C | [`C_dashboards:session-01-indian-cuisine-dashboard.pdf`](C_dashboards%3Asession-01-indian-cuisine-dashboard.pdf) | Dashboard summarizing analysis of the `indian_food` dataset |

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

**Joins & Unions**
- `JOIN` connects tables horizontally (requires a common column, usually a primary key/foreign key pair); `UNION` connects tables vertically (requires matching column structure across tables)
- `INNER JOIN` — retrieves only matching rows from both tables
- `LEFT JOIN` / `RIGHT JOIN` — retrieves everything from one side plus matching rows from the other; rows with no match show `NULL` instead of disappearing
- Plain `JOIN` (inner join) silently drops rows where the join column is `NULL` on either side (e.g. a manager with no manager of their own in a self join) — use `LEFT JOIN` when those rows need to stay visible
- `CROSS JOIN` — returns the cartesian product (every row from table A paired with every row from table B); rarely used in practice
- `SELF JOIN` — joins a table to itself using aliases, useful for hierarchical data like an employee-to-manager relationship
- `NATURAL JOIN` — joins automatically on all identically-named columns without an `ON` clause, but only works cleanly when both tables share the exact same column name for the join key
- MySQL doesn't support `FULL JOIN` natively — simulate it with `LEFT JOIN` combined with `RIGHT JOIN` via `UNION`

**Stored Procedures & Subqueries**
- Stored procedures package reusable SQL logic (optionally parameterized) so the same query shape doesn't need to be rewritten for every new filter value
- Subqueries (nested queries) let a filter reference a computed value (like an average) that stays accurate even as the underlying data changes, rather than hardcoding a number that goes stale

**Views**
- A view is a virtual table built on top of a saved `SELECT` query — nothing is physically stored, but the output can be queried like a real table
- Simple views work with one table; complex views join multiple tables
- Useful for sharing a filtered or reshaped subset of data (e.g. for privacy or simplicity) without duplicating the underlying data

**Indexing**
- An index speeds up data retrieval on a specific column, at the cost of extra memory in the backend
- Indexing matters most on large datasets and columns that are filtered frequently in `SELECT` (DQL) or actively updated (DML) queries; skip it on small datasets or write-only workloads
- Text/BLOB columns can't be indexed without specifying a key length (e.g. `column(20)`), since they could otherwise be arbitrarily large
- Primary key columns get a clustered index automatically; everything else is non-clustered

**Triggers**
- A trigger is an automatic procedure that fires on `INSERT`, `UPDATE`, or `DELETE` without being called manually (unlike a stored procedure, which has to be executed explicitly)
- Six trigger types: `BEFORE INSERT`, `AFTER INSERT`, `BEFORE UPDATE`, `AFTER UPDATE`, `BEFORE DELETE`, `AFTER DELETE`
- Commonly used to keep two related tables in sync automatically (e.g. logging a sale into `book_sales` whenever the `books` table is updated)

**ACID Properties**
- Atomicity, Consistency, Isolation, Durability — the guarantees that make transactions safe

**Data Visualization & Dashboards**
- Translating query results into geographic maps, time-series trend charts, and regional comparisons
- Building a summary dashboard to communicate findings from the `indian_food` / sales datasets

## Notes

- `DELETE` is recoverable via `ROLLBACK` (within a transaction); `TRUNCATE` and `DROP` are not.
- `TRUNCATE` clears all rows but keeps the table structure; `DROP` removes the table structure entirely.
- `SET SQL_SAFE_UPDATES = 0;` is needed before running `UPDATE`/`DELETE` without a key-based `WHERE` clause in MySQL Workbench's safe mode.
- Files `A`, `B`, and `C` have colons in their filenames (a naming quirk from an earlier upload where a folder path was intended but not created) — they still work, but sort and read a little oddly compared to the rest.

---
*Course: Data Analytics | Tool: MySQL Workbench*
