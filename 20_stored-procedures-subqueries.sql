/* Stored procedures
An object in SQL 
Used when you want to reuse a code multiple times, you create a stored procedure.
Whatever logic you use, you try to store the entire code/logic inside a procedure. 
This is called a “stored procedure”.
To execute the procedure, you can directly execute the stored procedure and you will get a replicated output.
Right click on Stored Procedures & write the code in the interface (between the begin & end statements) 
Never remove the Begin & End statements from the stored procedure. Keep the structure of the SP syntax. 
Variable (dynamic & can change from time to time) is considered as a container that holds and stores data. 
To work with variables, you write a code between the begin & end statement. 
You declare a variable: DECLARE VARIABLE *VARIABLE NAME* 
Use X int; assign a data type to the variable 
You store certain data in this variable X (Eg. X = 20) 
Use SET X = 20; 
Now that X is the variable and 20 is the data stored
SELECT X as Header; (give it a name) 
Click Apply & finish

Refresh the Schemas & Expand Stored Procedures
Click the Thunder Button 
*/

-- PARAMETERS
Select * from myemp;
-- If you're looking for employees whose ID is only 90, you'd use this SQL query:
Select * from myemp where dep_id = 90;
-- If you want the employees who worked in dep 100. 
Select * from myemp where dep_id = 100;
-- If you want the employees who worked in dep 50.
Select * from myemp where dep_id = 50;
-- Here, the question is the same but the department only changes - this query becomes repetitive 

-- Parameter is used to automate the process 
-- You use stored procedures: 
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `NP`(did int)
BEGIN
select * from myemp where dep_id = did;
END
*/

describe myemp;
select * from myemp;

-- In Indian_food, create a parameter: diet, state, course, prep_time (<), cook_time (<) 
select * from indian_food;

-- Exercise(inSQL) Create a stored procedure with parameters: DEP ID, JOB ID, SALARY 

-- Sub-Queries
-- Class Exercise: Read only the employees whose salary is greater than the average salary of all employees combined. 
-- Find average first 
select avg(salary) as average_Salary from myemp;
-- 6456.603774
-- employees with salary > 6456.603774
select * from myemp where salary > 6456;
-- There are 50 employees 
-- This might not work if the company hires more employees. Say 6 employees resigned, there will be 200 employees left so this will shift the average. 
-- You can't rely on the same code so you need to use sub queries (nested queries) by using brackets 
select * from myemp where salary > (select avg(salary) as average_Salary from myemp);
-- The query in the brackets is considered an inner query. 
-- The inner query generates an output, which is considered the input for the outer query.

-- Q: Indian food: Find all dishes with a Preptime < the avg prep time 
select * from indian_food where prep_time < (select avg(prep_time) as Average_PT from indian_food);


