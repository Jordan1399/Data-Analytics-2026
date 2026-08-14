-- Order of Execution: 
/*
SELECT 
FROM 
WHERE
GROUP BY 
HAVING 
ORDER BY 
LIMIT
OFFSET 
*/
-- What are aggregate functions?
-- A function is understood as anything that the developer already wrote a code for and for the entire code is assigned a function name (you can use wherever you want to apply a specific action) 
-- Just as you can calculate it in Excel, you can find this in SQL. 
-- You expect only 1 value. 

-- There are different functions for different types of tasks:
-- These are SUM, MIN, MAX, AVG, COUNT // If you apply any aggregate function, your result will be only one data point value. 
-- Examples: 
-- Select MIN (cook_time) as minimum_cook_time from Indian-food; 
-- Select AVG (cook_time) as average_cook_time from Indian-food;
-- Select COUNT (cook_time) as no_of_dishes from Indian-food;

-- What is Group By?
-- The action refers to grouping similar data that needs to be categorised or segmented together 
-- When working with aggregate functions, you do not need to work with GROUP BY 
-- When working with GROUP BY, aggregate functions are mandatory 

SELECT * from Indian_food; 
-- Eg. Find the average cook_time for dessert from indian_food
-- DISTINCT: Is used to filter unique data points Eg.
select distinct (course) from indian_food; 

-- To find the no. of dishes & distinct diet types with 2 columns & 2 rows. 
Select diet, count (diet) as no_of_dishes from indian_food 
Group by diet; 

-- To check the data: 
Select * from indian_food where diet = “vegetarian”; 
Select * from indian_food where diet = “nonvegetarian”;

select state, count(*) as no_of_dishes from indian_food
group by 1;
-- "1" refers to the first column & * can be used to apply count to all columns
-- count can be applied for both numeric & non-numeric data

-- Q: Top 3 states based on highest count no_of_dishes 
select state, count(state) as no_of_dishes from indian_food group by state order by no_of_dishes desc limit 3;
-- Decode the question: state-wise "no_of_dishes" & search for top 3 (desc)  // use order by & limit 

-- Q: Which Region has the highest no_of_dishes?
select region, count(region) as no_of_dishes from indian_food group by region order by no_of_dishes desc limit 1; 
-- To compare with other regions, just remove the limit clause. 

-- Q: How many rows are there where the dish name ends with "a" (Wildcard) 
select * from indian_food where name like "%a"; 
-- A: 72






