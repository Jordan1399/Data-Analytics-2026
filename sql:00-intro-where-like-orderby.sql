-- Course Introduction / Demo Session: WHERE, LIKE, and ORDER BY practice
-- Dataset: Indian Food dataset (Kaggle)
-- https://www.kaggle.com/datasets/nehaprabhavalkar/indian-food-101

-- ================================
-- WHERE / IN recap
-- ================================
select * from indian_food where course in ("dessert", "starter");

-- Exercise: diet = vegetarian, prep_time < 30, cook_time < 60,
-- flavor_profile = sweet, course = dessert, region in (central, north, west)
select * from indian_food
where diet = "vegetarian"
  and cook_time < 60
  and flavor_profile = "sweet"
  and course = "dessert"
  and region in ("central", "north", "west");

-- ================================
-- Wildcard concept (LIKE)
-- ================================
-- Used for pattern matching — retrieving results with a similar pattern,
-- not an exact match. E.g. names starting with the same letter, same year
-- of birth, etc. Uses the "LIKE" keyword with "%" as a wildcard.

-- All dishes starting with "G"
select * from indian_food where name like "g%";

-- All dishes where state starts with "A"
select * from indian_food where state like "a%";

-- All dishes where name ends with "m" — "%" goes before the letter
-- when matching the end of a string
select * from indian_food where name like "%m";

-- All dishes where name contains "oo" anywhere — "%" on both sides
select * from indian_food where name like "%oo%";

-- Combined exercise: name starts with "A", diet ends with "n",
-- prep_time < 40, cook_time < 80, flavor_profile in (spicy, bitter, sweet),
-- course = main course, state = punjab
select * from indian_food
where name like "a%"
  and diet like "%n"
  and prep_time < 40
  and cook_time < 80
  and flavor_profile in ("spicy", "bitter", "sweet")
  and course = "main course"
  and state = "punjab";

-- ================================
-- ORDER BY clause
-- ================================
-- SQL execution order: SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY,
-- LIMIT, OFFSET. Deviating from this order causes an error.
-- Not every clause is mandatory — only use what the problem calls for.
--
-- ORDER BY sorts results ascending or descending. Works with numeric
-- columns, text (a-z), and dates. ASC = ascending, DESC = descending.

-- Sort all dishes by prep_time, descending then ascending
select * from indian_food order by prep_time desc;
select * from indian_food order by prep_time asc;

-- Top 5 dishes by highest cook_time
select * from indian_food order by cook_time desc limit 5;
