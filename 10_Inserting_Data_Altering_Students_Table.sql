-- Session #6 DML Activities - Data Manipulation Language: Insert, Update, Delete 
-- VAR & VARCHAR: VAR for numerical and VARCHAR for string /non-numeric data 
create database db11; 
create table students (S_ID INT, S_NAME VARCHAR (30), S_AGE TINYINT);

select * from students; 

insert into students values (1, "Raj", 20);
insert into students values (2, "Kim", 19);
insert into students values (3, "Isha", 21);
insert into students values (4, "Vijay", 22);
insert into students values (5, "Shanice", 21);
insert into students values (6, "Zarah", 20);
insert into students values (7, "Veer", 23);
insert into students values (8, "Akash", 18);
insert into students values (9, "Tiana", 22);
insert into students values (10, "Ravi", 24);
insert into students values (11, "Hannah", 24);
insert into students values (12, "Loujane", 23);

alter table students add column course varchar (30) not null; 
alter table students rename column course to Course_Name;
alter table students rename column S_ID to Student_ID; 
alter table students rename column S_NAME to Student_Name; 
alter table students rename column S_AGE to Student_Age; 
Update students set course_name = "English Language" where student_id = 1;
Update students set course_name = "English Language" where student_id = 3; 
Update students set course_name = "English Language" where student_id = 5;
Update students set course_name = "English Language" where student_id = 7;
Update students set course_name = "English Language" where student_id = 9; 
Update students set course_name = "English Language" where student_id = 12;  

Update students set course_name = "Portuguese Language & Culture" where student_id = 2; 
Update students set course_name = "Portuguese Language & Culture" where student_id = 8; 

Update students set course_name = "Italian Language & Culture" where student_id = 4;
Update students set course_name = "Italian Language & Culture" where student_id = 6;
Update students set course_name = "Italian Language & Culture" where student_id = 10;
Update students set course_name = "Italian Language & Culture" where student_id = 11;
