-- Wildcard Concept: A keyword used to achieve pattern matching results 
-- Eg. In Indian Food dataset:
-- Q1: All dishes that start with the letter "B"
select * from indian_food; 
select * from indian_food where name like "b%"; 
-- A: 19 dishes 
-- Q2: All dishes where diet starts with "n"
select * from indian_food where diet like "n%"; 
-- A: 29 dishes 

-- Q3: Dish name ends with letter "I"
select * from indian_food where name like "%i"; 
-- A: 70 dishes

-- Q4: Filter Dishes where Name starts with "a", prep_time <20, cook_time <30, flavor profile spicy, state = Rajasthan & Punjab
select * from indian_food where name like "a%" and prep_time < 20 and cook_time < 30 and flavor_profile = "spicy" and state in ("Rajasthan", "Punjab"); 
-- A: 2 dishes 

-- Case WHEN statements: is SQL's way of writing conditional logic — the SQL equivalent of an if/else statement. It lets you evaluate conditions and return different values depending on which condition is true, right inside a query.
-- Similar to “if” and “else” and is conditional statement that categories the data and assigns a name for each category based on certain conditions. 

select * from indian_food; 

Select *, case when cook_time < 10 then “instant_dish” 
               when cook_time between 10 and 30 then “moderate_dish” 
               when cook_time > 30 then “time_taking_dish” end as category
               from indian_food; 

select * from indian_food; 

select *, case when cook_time < 10 then "instant"
               when cook_time between 10 and 20 then "semi-quick"
               when cook_time between 20 and 30 then "moderate"
               when cook_time between 30 and 40 then "long_time"
               when cook_time between 40 and 50 then "high time"
               when cook_time between 50 and 60 then "extra high time" end as duration
               from indian_food; 

-- Using ORDER BY: add asc (low to high order) or desc (high to low order) to filter the data 
select * from indian_food order by prep_time asc;
select * from indian_food order by prep_time desc;

-- Using LIMIT to filter data to top 5
select * from indian_food limit 5; 
-- Limit pulls the data instantly 

-- Q: Find the Top 3 dishes with the highest cook time
select * from indian_food order by cook_time desc limit 3; 
-- A: Shrikhand, Biryani & Malapua

-- Q: Top 5 'dish names only' based on prep time (highest) 
select name from indian_food order by prep_time desc limit 5; 
-- A: Pindi chana, puttu, Misti doi, Dosa, Masala Dosa
-- Offset: starts from zero (the first row is always considered 0) & used to filter specific rows 
Select * from Indian_food limit 3 offset 1; 
Select * from Indian_food limit 2 offset 3; 
Select * from Indian_food limit 1 offset 2; 
-- NOTE: You CAN use limit without offset but you cannot use offset without limit clause. LIMIT is mandatory. 

-- Q: Name starts with "s" , prep time < 30 , cook time > 12, flavor profile sweet, region west & north 
select * from indian_food where name like "s%" and prep_time < 30 and cook_time > 12 and flavor_profile = "sweet" and region in ("West", "North"); 
-- A: 8 dishes 

 







 


               




