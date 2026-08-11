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

**ACID Properties**
- Atomicity, Consistency, Isolation, Durability — the guarantees that make transactions safe

## Notes

- `DELETE` is recoverable via `ROLLBACK` (within a transaction); `TRUNCATE` and `DROP` are not.
- `TRUNCATE` clears all rows but keeps the table structure; `DROP` removes the table structure entirely.
- `SET SQL_SAFE_UPDATES = 0;` is needed before running `UPDATE`/`DELETE` without a key-based `WHERE` clause in MySQL Workbench's safe mode.

---
*Course: Data Analytics | Tool: MySQL Workbench*
