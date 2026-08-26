-- Triggers
/*
- A trigger refers to a type of automatic procedure. It initiates an automatic procedure. 
- When working with stored procedure, if you want to see the output, you need to call a procedure, run it, and execute it. 
- When working with trigger, you don’t need to execute it (you can automatically trigger it to apply a function in another table. 
Eg. You want to insert something in a table and delete something else in another table and join this using TRIGGER

There are 6 triggers available: 
BEFORE INSERT 
AFTER INSERT 
BEFORE DELETE
AFTER DELETE
BEFORE UPDATE 
AFTER UPDATE 

- In short, we will be working with DML. 
- When working with DML statements, you can use it on its own but you cannot use TCL without DML. 
- DML can be used without triggers 
- When working with Triggers, DML is mandatory (the statements are based on DML’s INSERT, UPDATE, DELETE)

*/

select * from books;
-- there are 3 columns (Bookid, Title, Authorid) | 14 books | Author ID 1, 5, 6, 7, 8 | 1 NULL row 
select * from book_sales;
-- Here, there are 5 columns (sale_id, bookid, title, qty_sold, tos) but no data
describe books;
-- get the basic description of the table 
-- Books Table column data types are int, varchar(50), int with primary key on BOOKID (with No null values) 
describe book_sales;
-- Book Sales Table data types include int, int, varchar(100), int, datetime 
-- auto_increment refers to the fact that all values have been provided automatically while incrementing the values 

-- Problem Statement: Eg you open a new bookstore today and you are maintaining 2 tables: books & book sales. 
-- The books table lists books that are available 
-- Customers arrive in the hour and purchase a few books
-- You need to insert that sales data into the book_sales table 
-- create a column for the books table called "Sales". 
alter table books
add column Sales int DEFAULT 0;
SELECT * FROM BOOKS;
-- Because books have been purchases, you will be pushing the same kind of data in both tables (sales) 
-- Connect Books table with book_sales table 
-- To join the tables, you will create a Trigger

-- Customer wants to purchase 10 copies of Half Blood prince so the Total needs to be 12 
set sql_safe_updates = 0;
update books set sales = 2 where bookid = 3;
update books set sales = 10 where bookid = 3;
update books set sales = 5 where bookid = 1;
Select * from books;
select * from book_sales;
