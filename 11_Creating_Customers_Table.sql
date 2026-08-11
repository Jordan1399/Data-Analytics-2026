create table customers
(c_id int, c_name varchar (30), c_age tinyint, customer_no char (10));
select * from customers; 
insert into customers values (1, "AAA", 25 , "9898989898"); 
insert into customers values (2, "BBB", 23, "8989898989");
insert into customers values (3, "CCC", 43, "8989897777");
insert into customers values (4, "DDD", 49, "8989897900");
insert into customers values (5, "EEE", 50, "8922897900");
select * from customers; 
set sql_safe_updates = 0; 
select * from customers; 
-- update customers set age = 34; Using this query, you will reset all ages to "34". You need to mention the WHERE clause to apply changes to a specific area. 
update customers set age = 34 where c_id = 3; 
select * from customers; 
update customers set c_id = 4 where c_name = "DDD";
update customers set c_id = 5 where c_name = "EEE";
update customers set c_age = 34 where c_id = 3; 
select * from customers; 
update customers set customer_no = "7777777777" where c_age = 49; 
select * from customers;

-- The duplicates are c_id 4 & 5

-- adding more rows: 
insert into customers values (6, "FFF", 27, "9845454545"); 
select * from customers;
insert into customers values (7, "GGG", 30, "9845454578"); 
select * from customers;
set sql_safe_updates = 0; 
select * from customers;
-- DELETE (DML) VS DROP (DDL) VS TRUNCATE (DDL) 
-- TRUNCATE TABLE TABLENAME; this deletes all the data in one go. Delete gives you the ability to delete specific rows/multiple rows but truncate clears everything. 
TRUNCATE TABLE CUSTOMERS; 
select * from customers; 
insert into customers values (1, "AAA", 25 , "9898989898"); 
insert into customers values (2, "BBB", 23, "8989898989");
insert into customers values (3, "CCC", 43, "8989897777");
insert into customers values (4, "DDD", 49, "8989897900");
insert into customers values (5, "EEE", 50, "8922897979");
select * from customers;
-- if you delete data using "DELETE"; it is possible to still import the data back BUT if you are working with TRUNCATE, then you cannot retrieve the data back. It is a permanent function. 
-- TCL (Transactional Control Language)// as data is deleted using DELETE, it is saved in the backend. 
-- Using "DROP" will delete the table structure in itself // truncate clears all data in a table; not the table structure itself. 
-- DDL (Data Definition Language) eg. DROP & TRUNCATE
-- Task: Create a New Table and practice inserting data into new table, deleting, truncating, and dropping the data. 
-- In DDL, there is a statement called "ALTER": You can create a new column // 
Alter table customers add column Country VARCHAR(30) DEFAULT "INDIA"; 
select * from customers; 
-- Renaming a Table: RENAME TABLE *OLD TABLE NAME* TO *NEW TABLE NAME*; 
Rename table customers to customers_data; 
select * from customers_data; 
-- Using select * from customers; would not work because the table name no longer exists. 
-- Exercise 1: create a table named 'Zipto Orders' and include columns: Order_ID, Order_Name (Menu Name), Category, Quantity, Price, Delivery Location. Add a column for Time when you added the product (Order_Time) and Delivery_Time. 
-- Exercise 2: Rename the Columns in customers table to "customers_ID" AND "customer_name". 
-- If you need to change data type, you can modify the data type from CHAR to VARCHAR & adjust the no. of digits included - Hint: Use "MODIFY" AND "RENAME". 

set sql_safe_updates = 0;
update customers_data set customer_name = "Ashish" where customer_id = 1;
update customers_data set customer_name = "Cameron" where customer_id = 2;
update customers_data set customer_name = "Himal" where customer_id = 3;
update customers_data set customer_name = "Rajesh" where customer_id = 4;
update customers_data set customer_name = "Kimera" where customer_id = 5;
select * from customers_data;
update customers_data set customer_name = "Hiro" where customer_id = 6;
update customers_data set customer_name = "Anush" where customer_id = 7;
delete from customers_data
where customer_id = 7 
limit 1; 
select * from customers_data; 









