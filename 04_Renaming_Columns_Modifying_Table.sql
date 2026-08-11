-- Exercise #2: Home Activity// Rename the Columns in the 'Customers' table to "customers_ID" AND "customer_name". Hint: Use "MODIFY" AND "RENAME" to modify the data type from CHAR to VARCHAR & adjust the no. of digits included. 
select * from customers_data;
alter table customers_data
rename column c_id to Customer_ID,
rename column c_name to Customer_Name
select * from customers_data; 
alter table customers_data
modify column c_age CHAR (15);
select * from customers_data;
alter table customers_data
rename column c_age to Customer_Age;
select * from customers_data;
alter table customers_data
rename column customer_no to Customer_No;
select * from customers_data; 
insert into customers_data values (6, "FFF", 23, "6989898990", "JAPAN");
select * from customers_data; 
alter table customers_data
modify column Customer_No CHAR (13); 
select * from customers_data; 



