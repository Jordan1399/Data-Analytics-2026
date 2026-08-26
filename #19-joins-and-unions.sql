-- 20 August 2026 - Class Notes 

/*Joining Techniques in SQL 

>These techniques will be used everyday “JOINS”
>There are 2 Joining Techniques: Joins & Union 

JOINS & UNION:

Joins: Connects 2 tables Horizontally 
Union: Connecting 2 tables Vertically 

JOINS is used when working with multiple tables. 
Eg. E-commerce use case: Amazon and Flipcart (tables will include shipment, customers, delivery details, orders) If you want to analyse the customers data, you can refer to customers table but IF there is a table called products and if you want all product details, you can refer to products table and fetch data. If you want to analyse data based on payments data, you refer to payments table separately. These can be done individually; With JOINS, you work with more than 1 table. 
Scenario: Customer A ; you want to find out what product they ordered, their expected delivery date, what payment mode they used? You will pull the customer name from the customer table, their order, the payment mode, and expected delivery date. This means you will be working with groups of tables (you need to have a connector for the tables) 
JOINS is used to build this connection to the different table. 
If you are trying to join 2 tables, you need a common COLUMN. If there is no common column, you cannot use JOINS. 
> JOINS is used when joining the foreign key and primary key from two different tables. 
>This is a “common” column (foreign key & primary key in the other table is the same) 

There are 4 JOINS: 

Inner Join - retrieves only common data from both tables 
Left Join - retrieves data from left table (everything) and common data from right table 
Right Join - retrieves data from right table (everything) and common data from left table 
Full Join - Fetches data from both the tables 
*/
-- Using JOINS: 
select * from movies;
select * from members;
-- these tables both share 'movie_id' column although named different// primary key in movies table is 'id' & memid is primary key in members table. Foreign key is movieid in members. 
-- Members have NULL values but movies has data for those rows
-- You need to fetch 3 verticals (columns) and 5 rows
Select * from movies inner join members
On movies.id = members.movieid;

-- Applying left Join: 
-- 10 rows in movies & 8 rows in members
-- left join pulls everything from movies and common elements from members
-- This means the rows will stay the same from movies and common data (from id) will be populated from members
Select * from movies left join members
On movies.id = members.movieid;

select * from movies right join members
on movies.id = members.movieid;

-- "use movies.id, members.id" when selecting specific columns - this will avoid confusion with SQL (which table to pick these columns from) 
select movies.id, movies.title, members.first_name, members.last_name, members.movieid from movies right join members on movies.id = members.movieid;
-- This retrieved the necessary columns with the shared column 'id' from movies (the right table).
-- 'ON' refers to "on which bases" you will join the tables 

/* There are 3 other joins types: 
A. Cross Join 
B. Self Join 
C. Natural Join - if you have same column name, then the join works // if both columns have different names, then you'll get a different result 
*/

-- Cross Join 
select * from meals; 
select * from drinks;
-- there are 3 rows & 2 columns each 
select * from meals cross join drinks;
-- you now get 9 rows & 4 columns meaning the tables connected (each row from the first table connects with all rows from the second table) 
-- Cartition product of 9 rows 
-- The majority of the time, one would not use CROSS JOIN. 
-- The most frequently used JOINS include INNER JOIN & LEFT JOIN
-- With LEFT JOIN, you can also execute RIGHT JOIN 
-- Full Join is also not frequently used// as it pulls everything & most problem statements require filtered data 

-- Natural Join: is similar to inner join (both function the same in fetching common data) In NATURAL JOIN, the common column header needs to be the same. 
-- Eg. in Movies, the common column name is 'id' and members, the header is 'movieid' - here, natural join will get confused since the common column name is different. 
-- With natural Join, you don't need to use ON condition because the columns already have the same name

select * from movies natural join members;

-- HW: In Members table, rename the column to MOVIE_ID & join THE TWO using natural join 
-- SELF JOIN (Research) 

-- In INNER JOIN, you need to use ON condition & Natural Join does not require it
-- Common column name can be different in INNER JOIN & Natural Join Requires the same column name 

/* Union 
> This command has rules
> JOINS connects tables horizontally whereas Union connects tables horizontally ; All columns need to be same (table names can be different) 
> Eg. Sales Data 2023 & you have other files for 2024 and 2025 (they will have same columns) but you will only join the tables of different years because they already have the same columns. 
> JOINS requires a column column

-- HW(1) 
/*Self Join Research: 

- A SQL self join is a regular join that connects a table to itself. 
- It is used to compare rows within the same table or to query hierarchical data (like an employee reporting to a manager)
- Because you are querying the same table twice, you must use table aliases to give the table two different names so SQL can tell them apart. 

sql:
SELECT 
    a.column_name, 
    b.column_name
FROM 
    your_table AS a
JOIN 
    your_table AS b 
ON 
    a.matching_column = b.related_column;
    */
    select * from myemp;
    -- basic slq: 
    
    SELECT 
    a.column_name, 
    b.column_name
FROM 
    your_table AS a
JOIN 
    your_table AS b 
ON 
    a.matching_column = b.related_column;
    
    -- To see each employee next to their manager's name, join the table to itself using LEFT JOIN (so top-level managers like Alice aren't filtered out):
SELECT E.first_name AS employee, M.first_name AS manager
FROM myemp E
JOIN myemp M ON E.mgr_id = M.emp_id;
/* Why plain JOIN would drop your top-level managers
If you use a plain JOIN (which is really INNER JOIN), MySQL only keeps rows where both sides match. 
Your most senior employees (like a CEO or department head) likely have MGR_ID = NULL — they don't report to anyone. 
With INNER JOIN, that NULL can't match anything in the manager copy, so those top-level people get silently dropped from the results entirely.
*/
-- The fix: LEFT JOIN
-- Since you specifically want to keep management visible even when they have no manager themselves, use LEFT JOIN instead:
SELECT 
  e.emp_id, 
  e.first_name AS employee_first, 
  e.last_name AS employee_last,
  m.first_name AS manager_first, 
  m.last_name AS manager_last
FROM myemp e
LEFT JOIN myemp m ON e.mgr_id = m.emp_id;
/*LEFT JOIN keeps every row from the left table (e, your full employee list) regardless of whether a match is found on the right side (m). 
For anyone with no manager, manager_first and manager_last will just show NULL instead of the row disappearing.
*/
-- Check the difference: i.e count the total # of rows 
SELECT COUNT(*) FROM myemp e JOIN myemp m ON e.mgr_id = m.emp_id;
SELECT COUNT(*) FROM myemp e LEFT JOIN myemp m ON e.mgr_id = m.emp_id;   
/* If the LEFT JOIN count is higher, that gap is exactly how many employees have no manager (MGR_ID IS NULL) — 
and those are the rows the plain 'JOIN' was quietly excluding.
*/

-- HW(2): Natural Join: Rename column from either movies or members & apply natural join on ID
select * from movies;
select * from members;

alter table movies
rename column id to movieid;

select * from movies natural join members;

-- Applying FULL JOIN - this pulls data from both tables 
select * from movies full join members;
-- Full Join does not work in SQL as intended 
-- Try to simulate the desired result with Left Join, Right Join, Union (merge result) 

select m.movieid, m.title, m.category, mem.first_name, mem.last_name
from movies m
left join members mem
on m.movieid = mem.movieid

union 

select m.movieid, m.title, m.category, mem.first_name, mem.last_name
from movies m
right join members mem
on m.movieid = mem.movieid;

-- SWAP: 
select mem.memid, mem.first_name, mem.last_name, m.title, m.movieid
from members mem
left join movies m
on mem.memid = m.movieid

Union 

select mem.memid, mem.first_name, mem.last_name, m.title, m.movieid
from members mem
right join movies m 
on mem.memid = m.movieid;

-- Class Revision of HW: 
-- FULL JOIN using UNION 

Select * from movies left join members on movies.id = members.movieid
Union 
Select * from movies right join members on movies.id = members.movieid;






