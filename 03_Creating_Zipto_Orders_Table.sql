-- Exercise #1 (Final Demo Home Practice) Creating a 'Zipto Orders' Table:
create table Zipto_Orders
(Order_ID INT, Order_Name VARCHAR (35), Category VARCHAR (35), Quantity CHAR (10), Price CHAR (10), Delivery_Location VARCHAR (50), Order_Time VARCHAR (10), Delivery_Time VARCHAR (10));
select * from Zipto_Orders;
insert into Zipto_Orders values (1, "Fried Chicken", "Non Vegetarian", 1, 100, "86 Waltford Street, Dalton View, NH, 8003", "12:30", "13:15");
insert into Zipto_Orders values (2, "Tofu Stirfry", "Vegetarian", 2, 85, "23 Waterfront Drive, Campbell Town, WV, 8003", "12:35", "13:10");
insert into Zipto_Orders values (3, "Apple Fritters", "Vegetarian", 4, 55, "63 Tallton Avenue, Westfax, CH, 8002", "12:45", "13:30");
insert into Zipto_Orders values (4, "Paneer Masala", "Vegetarian", 2, 120, "110 Krestlake Drive, Dalton View, NH, 8003", "12:49", "13:50");
insert into Zipto_Orders values (5, "Lamb Roast", "Non Vegetarian ", 1, 120, "45 Fairmanor Avenue, East County, CH, 8002", "12:56", "13:56");
insert into Zipto_Orders values (6, "Beef Stew", "Non Vegetarian", 1, 110, "67 Berry Cress, Waterfront District, VN, 8001", "13:10", "13:50");
select * from Zipto_Orders;
