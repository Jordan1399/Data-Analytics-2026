-- Session 1: SQL Basic Queries Practice
-- Dataset: Indian Food dataset (Kaggle)
-- https://www.kaggle.com/datasets/nehaprabhavalkar/indian-food-101

create database db_august;

-- ================================
-- SELECT basics
-- ================================
select * from indian_food;

select name, prep_time, cook_time from indian_food;
select name, diet, state from indian_food;

-- ================================
-- WHERE clause
-- ================================
select * from indian_food where state = "Telangana";
select * from indian_food where state = "karnataka";

select * from indian_food where diet not in ("vegetarian");
-- OR
select * from indian_food where diet = "non vegetarian";

select * from indian_food where prep_time < 30;
select * from indian_food where state = "rajasthan" and cook_time > 20;

-- ================================
-- LIKE (wildcard pattern matching)
-- ================================
select * from indian_food where name like "b%";   -- starts with 'b'
select * from indian_food where name like "%u";   -- ends with 'u'
select * from indian_food where name like "%dd%"; -- contains 'dd'

-- ================================
-- IN operator
-- ================================
select * from indian_food where state = "Telangana";
select * from indian_food where state = "andhra pradesh";
select * from indian_food where state in ("telangana", "andhra pradesh");
select * from indian_food where region in ("south", "east");

-- Combined query: region = east, state = west bengal,
-- diet = vegetarian or non vegetarian, cook_time > 30
select * from indian_food
where region = "east"
  and state = "west bengal"
  and diet in ("vegetarian", "non vegetarian")
  and cook_time > 30;
