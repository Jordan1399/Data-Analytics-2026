select * from myemp; 
select hire_date, year (hire_date) as YR from myemp; 
-- this extracts the Year as "YR"
select hire_date, month (hire_date) as MTH from myemp; 
-- This extracts only the month as "MTH"
select hire_date, day (hire_date) as D from myemp; 
-- This extracts only the "day" as "D"

select hire_date, year (hire_date) as YR, month (hire_date) as MTH, day (hire_date) as D from myemp; 
-- This is a command to select the YEAR, MONTH, and DAY as separate columns with each containing the correctly parsed information. 

select * from members;
select * from members where movieid is Null; 
-- This query pulls the rows where data is missing only 
select * from members where movieid is not null; 
-- This query only pulls the rows where data is fully populated. 

-- If you want to replace the NULL values, use "If NULL", use an average, and replace the data 
-- For Members table, you can replace the missing movie_id values with 0 using "ifnull" followed by the column name, replacement digit (average or zero) 
-- In some cases, you will replace data with the mode or use the text "unknown"
select memid, first_name, last_name, ifnull (movieid, 0) as mid from members; 



