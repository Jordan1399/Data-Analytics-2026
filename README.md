# Data Analytics Course — Practice Log
 
## About
Practice files from my data analytics course, plus related self-practice, covering SQL fundamentals, dashboard building, and Tableau. Primary dataset used in the SQL/dashboard sessions: [Indian Food 101 dataset (Kaggle)](https://www.kaggle.com/datasets/nehaprabhavalkar/indian-food-101). Tableau practice uses Tableau's built-in Sample - Superstore dataset.
 
## Progress
- [x] Tableau practice: Superstore dataset (self-practice, July 2026)
- [x] Session 1: SQL basics + first dashboard
- [ ] Session 2: TBD
---
 
## Tableau Practice — Superstore Dataset
 
**Date:** 8 July 2026
**Tool:** Tableau Public / Desktop
 
Self-directed practice exploring geographic mapping, time series drill-downs, and categorical comparisons using Tableau's built-in Superstore sample data.
 
**Folder:** [`tableau/superstore-practice/`](tableau/superstore-practice/) — includes 7 annotated screenshots and its own README with details.
 
---
 
## Session 1 — SQL Basics & Dashboard Intro
 
**Date:** 4 August 2026
 
**What I covered:**
- Basic `SELECT` statements and column selection
- Filtering with `WHERE`, including compound conditions (`AND`, `OR`, `NOT IN`)
- Pattern matching with `LIKE` (`%` wildcards)
- Filtering with `IN` across multiple values
- Combining several conditions in a single query
**Files:**
- [`sql/session-01-basic-queries.sql`](sql/session-01-basic-queries.sql) — all queries from today's practice
- [`dashboards/session-01-indian-cuisine-dashboard.pdf`](dashboards/session-01-indian-cuisine-dashboard.pdf) — dashboard built with Bricks AI, summarizing the dataset (diet split, flavor profiles by course, regional prep/cook time patterns, top ingredients, and outlier dishes by prep time)
**Notes to self:**
- Missing values in this dataset are encoded as `-1` (not `NULL`) in columns like `state`, `region`, and `prep_time`/`cook_time` — need to filter these out before aggregating, or averages get skewed.
- Dashboard insights worth remembering: vegetarian dishes dominate the dataset (~88.6%), so non-veg conclusions are based on a small sample; a few extreme prep-time outliers (500+ min) are likely data entry quirks rather than real durations.
