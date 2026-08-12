-- TCL summary: (Commit, Rollback, Savepoint) 
-- 12 August 2026: Data Query Language (DQL)
-- Order of execution: SELECT / AND / FROM / WHERE /GROUP BY /HAVING /ORDER BY/ LIMIT /OFFSET
-- WHERE: A filter that applies a query on specific rows. You filter for reading, filtering, or updating.
-- OPERATORS: Comparison Operators (<, >, <=, >=, <>, =) & Logical Operators (and, or, in, not in, between) 
-- SELECT  is the main keyword here - refers to what data you want to read and retrieve from the database.

-- Class Exercise: 
-- Q1. Selecting foods where state = west bengal 
-- A1: Select * from indian_food where state = “West Bengal”; 
-- Q2. Dishes with prep_time under 20 mins
-- A2: select * from indian_food where prep_time < 20; 
-- // including 20 will be “prep_time <= 20;”
select * from indian_food; 

-- Q3: How many non veg dishes are there?
select * from indian_food where diet = "non vegetarian"; 
-- A3: 29 Dishes 

-- Q4: How many dishes are there with a cook_time > 30?
select * from indian_food where cook_time > 30; 
-- A4: 96 dishes 

-- Q5: Find dishes where state = Andhrapradesh 
select * from indian_food where state = "Andhra Pradesh"; 
-- A5: 10 Dishes 

-- Logical Operators 
-- Q6: What are the non veg dishes available in Telengana?
select * from indian_food where diet = "non vegetarian" and state = "Telangana"; 
-- A6: 1 Dish is Biryani 

-- Q7: how many veg dishes are there from West Bengal?
select * from indian_food where diet = "vegetarian" and state = "West Bengal"; 
-- A7: 19 Dishes 

-- Q8: dishes where: Diet = Veg, State = Assam, cook_time = < 40 
select * from indian_food where diet = "vegetarian" and state = "assam" and cook_time < 40;
-- A8: 11 dishes 

-- Q9: dishes where: diet = veg, prep time < 30, cook time < 60, course = dessert, state = rajasthan
select * from indian_food where diet = "vegetarian" and prep_time < 30 and cook_time < 60 and course = "dessert" and state = "Rajasthan"; 
-- A9: 2 dishes 

-- Q10: Dishes where cook_time between 30 - 60 mins. 
select * from indian_food where cook_time between 30 and 60; 
-- A10: 143 Dishes

-- IN and NOT IN (including & excluding data) 
-- Q11: Only Punjab dishes 
select * from indian_food where state = "Punjab"; 
-- A11: 32 dishes 
-- Q12: Only Telangana dishes
select * from indian_food where state = "Telangana"; 
-- A12: 5 dishes 

-- Q13: dishes from both Punjab & Telangana 
select * from indian_food where state in ("Punjab", "Telangana");
-- A13: 37 dishes 

-- Q14: Dishes excluding punjab & telangana
select * from indian_food where state not in ("punjab", "telangana"); 
-- A14: 218 dishes 

-- Q15: Dishes where the course is main course & dessert, cook time < 50, state is Telangana & Karnataka
select * from indian_food where course in ("main course", "dessert") and cook_time < 50 and state in ("Telangana", "Karnataka"); 
-- A15: 7 dishes 


