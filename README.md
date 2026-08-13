# SQL Practice — Data Analytics Course

Practice exercises and class activities from my Data Analytics course, covering table creation, DDL/DML operations, constraints, and transaction control in MySQL.

## Files

| # | File | Topics Covered |
|---|------|-----------------|
| 01 | `01_Creating_Customers_Table.sql` | Creating a table, `INSERT`, `UPDATE` with `WHERE`, duplicate handling, `DELETE` vs `DROP` vs `TRUNCATE`, `ALTER TABLE ADD COLUMN`, `RENAME TABLE` |
| 02 | `02_Renaming_Columns_Modifying_Table.sql` | `ALTER TABLE ... RENAME COLUMN`, `ALTER TABLE ... MODIFY COLUMN`, changing `CHAR` → `VARCHAR` and adjusting column length |
| 03 | `03_Creating_Zipto_Orders_Table.sql` | Designing and populating a multi-column table (`Zipto_Orders`) from scratch |
| 04 | `04_Constraints.sql` | `PRIMARY KEY`, `NOT NULL` constraints on a new table (`Joy_Orders`) |
| 05 | `05_Students_Info_Table.sql` | `PRIMARY KEY`, `CHECK`, `UNIQUE`, `DEFAULT` constraints |
| 06 | `06_Inserting_Data_Altering_Students_Table.sql` | Creating a database, `INSERT`, `ALTER TABLE ADD COLUMN`, renaming multiple columns, bulk `UPDATE`s to populate a `course_name` column |
| 07 | `07_TCL_Transaction_Control_Language.sql` | `START TRANSACTION`, `COMMIT`, `ROLLBACK`, `SQL_SAFE_UPDATES`, and how autocommit behavior affects whether a rollback is possible |
| 08 | `08_DQL_Data_Query_Language.sql` | `SELECT` with `WHERE`, comparison operators, logical operators (`AND`, `OR`, `IN`, `NOT IN`, `BETWEEN`), filtering across single and multiple conditions on the `indian_food` dataset |
| 09 | `09_Wildcards_CaseWhen_OrderBy_Limit_Offset.sql` | `LIKE` wildcard pattern matching, `CASE WHEN` conditional logic, `ORDER BY` (`ASC`/`DESC`), `LIMIT`, and `OFFSET` |

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

**ACID Properties**
- Atomicity, Consistency, Isolation, Durability — the guarantees that make transactions safe

## Notes

- `DELETE` is recoverable via `ROLLBACK` (within a transaction); `TRUNCATE` and `DROP` are not.
- `TRUNCATE` clears all rows but keeps the table structure; `DROP` removes the table structure entirely.
- `SET SQL_SAFE_UPDATES = 0;` is needed before running `UPDATE`/`DELETE` without a key-based `WHERE` clause in MySQL Workbench's safe mode.

---
*Course: Data Analytics | Tool: MySQL Workbench*
