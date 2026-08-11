-- Transaction Control Language 
-- commit, rollback & savepoint 
-- User connects to database management system, which connects to database as a mediator 
-- Without TCL, the status of autocommit is on and if you are already working with TCL, then the autocommit is off. 

start transaction; 
update students set student_name = "Ash" where student_id = 7; 
select * from students; 
rollback; 
-- the data entry is undone with rollback 
start transaction; 
update students set student_name = "Ash" where student_id = 7; 
select * from students; 
commit; 
-- the data entry is permanently saved to database with commit
-- Set SQL_SAFE_UPDATES = 0; - this must be used when using Update, insert & Delete 
 Set SQL_SAFE_UPDATES = 0;
 select * from students; 
 start transaction; 
 update students set student_age = 35 where student_id = 3; 
 -- here the "35" was already committed even if you removed commit from the sql LINE. You cannot rollback after a commit on the same data. 
rollback; 
select * from students; 
start transaction; 
update students set student_age = 30 where student_id = 5; 
rollback; 

Set SQL_SAFE_UPDATES = 0;
start transaction;
delete from students where Student_id = 12; 
select * from students; 
rollback; 




 
 
