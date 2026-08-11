Create table Students_Info
(S_ID int primary key, S_NAME VARCHAR(30) NOT NULL, AGE TINYINT CHECK(AGE > 18), CONTACT_NO CHAR (10) UNIQUE, COURSE VARCHAR (20)DEFAULT "Data Analytics");
select * from students_info; 
insert into students_info values (1, "AAA", 22, "9898989898", "DATA ANALYTICS");
insert into students_info values (2, "BBB", 25, "9898989444", "DATA ANALYTICS");
insert into students_info values (3, "CCC", 23, "9898989844", "DATA ANALYTICS");
insert into students_info values (4, "DDD", 25, "9898989333", "DATA ANALYTICS");
insert into students_info values (5, "EEE", 21, "9898989847", "DATA ANALYTICS");
insert into students_info values (6, "FFF", 22, "9898987744", "DATA ANALYTICS");
select * from students_info;
insert into students_info values (7, "GGG", 22, "9893689333", "DATA ANALYTICS");
insert into students_info values (8, "HHH", 19, "9898789847", "DATA ANALYTICS");
insert into students_info values (9, "III", 20, "9834987744", "DATA ANALYTICS");
insert into students_info values (10, "JJJ", 23, "9896787744", "DATA ANALYTICS");