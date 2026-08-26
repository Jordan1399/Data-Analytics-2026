select * from online_orders;
select * from online_orders where order_status = "Processing";
-- Duration was 0.0071 sec/ Fetch time 0.053 sec

Show indexes from online_orders;
-- There are no indexed listed 
DESCRIBE online_orders;
/* Order status is text
order_date got imported as a TEXT/BLOB type instead of a proper DATE type — 
MySQL won't let you index a TEXT/BLOB column without specifying how many characters to index (called a "key length"), 
since text columns can be huge.
This usually happens if you used the Table Data Import Wizard rather than the CREATE TABLE + LOAD DATA INFILE script, 
since the wizard sometimes auto-detects column types incorrectly.
*/

alter table online_orders
modify column order_date DATE;

CREATE INDEX idx_orderDT ON online_orders(order_date);
show indexes from online_orders;

create index idx_orderST on online_orders(order_status(20));
show indexes from online_orders;
select * from online_orders where order_status = "Processing";
-- duration is 0.0037 sec/ fetch time 0.035 sec

describe online_orders;
create index idx_country on online_orders(country(20));
show indexes from online_orders;
select * from online_orders where country = "Japan";

select * from online_orders where payment_method = "EFT";
-- Time: 0.0037 sec/ 0.048 sec 
-- Applying Index on Payment_Method:
create index idx_PM on online_orders(payment_method(30));
show indexes from online_orders;
-- Test Time difference after Indexing: 
select * from online_orders where payment_method = "EFT";
-- Time: 0.0022 sec / fetch time 0.030 sec 





