## Session 2 — Stored Procedures, Triggers, Indexing, Joins & Views

**Date:** week of 20 August 2026 (exact per-topic dates weren't tracked individually)

**What I covered:**
- **Stored procedures & subqueries**: writing reusable SQL logic with parameters instead of repeating near-identical queries; using subqueries (nested queries) so filters like "greater than the average" stay accurate as the underlying data changes
- **Triggers**: automatic procedures that fire on `INSERT`/`UPDATE`/`DELETE` without being called manually, used to keep two related tables in sync (e.g. logging a sale in `book_sales` whenever `books` is updated)
- **Indexing**: creating indexes on frequently filtered columns to speed up data retrieval, and measuring the before/after query time difference as homework
- **Joins & Unions**: the four core joins (inner, left, right, full), plus cross join, self join, and natural join; simulating a full join in MySQL (which doesn't support `FULL JOIN` directly) using `LEFT JOIN` + `RIGHT JOIN` combined with `UNION`
- **Views**: creating virtual tables (simple views over one table, complex views joining multiple tables) to share filtered or shaped data without duplicating it, plus revisiting indexing concepts (clustered vs non-clustered)

**Files:**
- [`sql/session-02-stored-procedures-subqueries.sql`](sql/session-02-stored-procedures-subqueries.sql)
- [`sql/session-02-triggers.sql`](sql/session-02-triggers.sql)
- [`sql/session-02-indexing-homework.sql`](sql/session-02-indexing-homework.sql)
- [`sql/session-02-joins-and-unions.sql`](sql/session-02-joins-and-unions.sql)
- [`sql/session-02-views-and-indexes.sql`](sql/session-02-views-and-indexes.sql)

**Notes to self:**
- MySQL doesn't support `FULL JOIN` natively — simulate it with `LEFT JOIN UNION RIGHT JOIN` on the same two tables.
- Plain `JOIN` (inner join) silently drops rows with `NULL` on the matching column (e.g. a manager with no manager of their own in a self join) — use `LEFT JOIN` when those rows need to stay visible.
- `NATURAL JOIN` only works cleanly when both tables share the exact same column name for the join key; rename columns first if they don't match.
- Index the columns you filter on frequently in read-heavy (DQL) or actively updated (DML) tables; skip indexing on small datasets or write-only workloads.
