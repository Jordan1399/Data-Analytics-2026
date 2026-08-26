-- VIEW & INDEX (As seen in SCHEMAS sections) 

-- A view is a virtual table (table syntax, SQL queries, converting data into a table format, it won't be stored anywhere but whenever you want to view the table, you execute the output) 
-- You use this to share data (accessibility) 
-- Eg. A colleague only wants a small portion of the data from an Excel file (privacy reasons for security)
-- You will only share a portion of the requested data// you will write a query on top of the parent table 
-- In myemp, you want to view employees whose salary is >14000
-- The normal query is: select * from myemp where salary > 14000;

select * from myemp;
select * from myemp where salary > 14000;

-- Add to the normal query "create view tablename" to create a virtual table 
create view emp11 as
select * from myemp where salary > 14000;
-- to see the view output: 
select * from emp11;
-- The table is saved as a view / this is why you can pull the table directly 

-- There are TWO types of VIEWS: (1) Simple View (2) Complex View 
-- <> Simple View: You work with only one table 
-- <> Complex View: You work with more than 1 table (using JOINS indirectly) 

-- Exercise: Create View where Job_id is IT_PROG & SAL: <5000 

create view myemp12 as
select * from myemp where JOB_ID = "IT_PROG" AND SALARY < 5000;
select * from myemp12;
-- The output has not been stored in the database but simply exists as a saved query that you can execute any time. 

-- Q2: Create a complex table: 
-- Join Movies and Members Tables using VIEW / replace NULL VALUES with * or - (small hyphen). 
-- In Movies, retrieve only movie id & title & in Members, only first name & last name 
-- Join using Left Join 
-- Replace NULL values with - 
-- Total 4 columns 

select * from movies;
select * from members;
create view Complex_View as
select m.movieid, m.title, mem.first_name, mem.last_name from movies M left join members MEM on m.movieid = mem.memid;

-- To replace NULL with Dash: 
create view Complex_View as
select id, title, ifnull(first_name, "-") as first_name, ifnull(last_name, "-") as last_name 
from movies
left join members
on movies.movieid = members.movieid;

-- Create a view with condition AuthorId < 10 
select * from authors;

create view Authors02 as
select * from authors where authorid < 10;

select * from Authors02;
insert into authors02 values (9, "Stephen King");
insert into authors02 values (10, "Martha Stewart");
select * from authors;

-- Once you add to the virtual table, it updates in your parent table once 
-- Add a condition (check) if the data does not get inserted 

-- INDEX
/*
> Data retrieval in SQL is documented in the Action Output section with seconds. If you apply index, the retrieval moves quicker. 
>You create an index to help data retrieval 
> you apply index on each column of a table 
> Index is only applied to specific columns 
> With a large data set, always apply index (with many rows) 
> If you work with a small data set, you don’t need to use Index
>Index is an object (it will occupy memory in the backend) 

HW: 
1. Find a random data set with at least 30,000 rows - connect it to sql, pick any column, select * from column where (condition) (note the time) 
2. Apply index on the column (note the time difference) 

>Apply index only on the columns you filter frequently 
>Use DQL (applying select statements) / DML (insert, update, delete) 
> Eg. You are constantly using DML without reading, Index is not the preferred option 
> Go with Index on DQL & DML (when reading & updating the data actively) 
*/
-- Checking for an Index on a table:
Show indexes from myemp;
-- There is no index available in myemp 

-- Creating an Index: 
CREATE INDEX IDX1 on myemp(salary);
show indexes from myemp 
-- BTREE stands for Binary tree (there are 2 types of trees in Index) 
-- Cardinality & Collation are backend information 


select * from myemp where salary = 2800;
select * from myemp;

-- cluster index is applied on primary key column
-- the rest is categorised as non clustered 









