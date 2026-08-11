-- Class Exercise: Joy_Orders table with constraints 
create table Joy_Orders
(Order_ID INT primary key, Order_Name VARCHAR (30) NOT NULL, Category VARCHAR (35) NOT NULL, Quantity CHAR (10) NOT NULL, Price CHAR (10) NOT NULL, Delivery_Location VARCHAR (50) NOT NULL, Order_Time VARCHAR (10) NOT NULL, Delivery_Time VARCHAR (10) NOT NULL);
select * from Joy_Orders;
insert into Joy_Orders values (1, "Chicken Dumplings", "Non Veg", 2, 120, "Wells Street", "12:45", "13:05"); 
select * from Joy_Orders;
insert into Joy_Orders values (2, "Veg Dumplings", "Veg", 1, 95, "King Road", "12:56", "13:40");
insert into Joy_Orders values (3, "Braised Shortrib", "Non Veg", 1, 180, "Waterfront Ave", "14:00", "15:01");


