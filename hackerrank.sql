-- <!-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

-- The CITY table is described as follows:

-- CITY.jpg

-- select * from CITY where CountryCode = 'USA' and Population > 100000  --

-- Revising the Select Query II
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

-- The CITY table is described as follows:
-- select Name from City where CountryCode = 'USA' and Population > 120000

-- SELECT ALL
-- Query all columns(attributes) for every row in the CITY table
-- select * from city

-- SELECT BY ID
-- query all columns for a city in CITY with the ID 1661
-- select * from city where ID = 1661

-- JAPANESE CITIES ATTRIBUTE
-- query all alltgributes of every japanese city in the CITY table. the countgrycode for Japan is JPN.
-- select * from city where CountryCode = 'JPN'

-- JAPANESE CITIES NAMES
-- query the names of all the japanese cities in the city table. the countrycode for japan is JPN
-- select NAME from CITY where COUNTRYCODE = 'JPN'


-- WEATHER OBSERVATION STATION 1
-- Query a list of CITY and STATE from the STATIOn table
-- select city, state from station

-- WEATHER OBSERVATION STATION 3
-- query a lsit of city names from stations for cities that have an even ID number. print the results in any order, but exclude duplicates from the answer
-- select distinct(city) from station where id%2 = 0

-- WEATHER OBSERVATION 4
-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- The STATION table is described as follows:

-- Station.jpg

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. The query returns , because .
-- select count(city) - count(distinct(city)) as city from station

-- WEATHER OBSERVATION STATION 5
-- query the two cities in station wtih the shortest and longest city names as well as their respective lengths. if there is more than one smallest or largest city choose the one that comes first when ordered alpahebtically

-- SELECT City, LENGTH(City) FROM (SELECT City FROM Station ORDER BY LENGTH(City), City) WHERE ROWNUM = 1;

-- SELECT City, LENGTH(City) FROM (SELECT City FROM Station ORDER BY LENGTH(City) DESC, City) WHERE ROWNUM = 1;

-- WEATHER OBSERVATION 6
-- Query the list of city names starting with vowels from stations. your result cannot contain dupliates.
-- select distinct(CITY) from station where CITY like 'A%' or CITY like 'E%' or CITY like 'I%' or CITY like'O%' or CITY like 'U%';



-- weather observation station 7
-- query the list of CITY names ending with vowels(a,e,i,o,u) from station. your result cannot contain duplicates
-- select distinct(city) from station where city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u';

-- WEATHER OBSERVATION STATION 8
-- quyery the list of city names from station which have vowesl as both their first and last characters
-- select distinct city from station where (CITY like 'A%' or CITY like 'E%' or CITY like 'I%' or CITY like'O%' or CITY like 'U%') and (city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u');

-- WEATHER OBSERVATION STATION 9
-- query the lsit of city names from station that do not start with vowels, no duplicates
-- select distinct city from station where not (CITY like 'A%' or CITY like 'E%' or CITY like 'I%' or CITY like'O%' or CITY like 'U%');

-- WEATHER OBSERVATION STATION 10
-- query the list of city names from station that do not end with vowels. no duplicates
-- select distinct city from station where not(city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u');

-- WEATHER OBSERVATION STATION 11
-- query the list of city names from station that either do not start with vowels or do not end with vowels
-- select distinct city from station where not((city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%') and (city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u'));

-- WEATHER OBSERVATION STATION 12
-- query the list of city names from station and do not start with vowels and do not end with vowels
-- select distinct city from station where not (CITY like 'A%' or CITY like 'E%' or CITY like 'I%' or CITY like'O%' or CITY like 'U%') and not(city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u');

-- HIGHER THAN 75 MARKS
-- query the name of any student in STUDENTS who scored higher than 75 marks
-- order your output by the last three characters of each name
-- if two or more students both have names ending int he same last three characters(ex: bobby, robby, etc) secondary sort them by ascending ID

select Name from STUDENTS where Marks > 75 order by substr(Name,-3),ID asc;


-- EMPLOYEE NAMES
-- write a query that prints a list of employee names from the Employee table in alphabetical order
select name from employee order by name asc

-- EMPLOYEE SALARIES
-- write a query that prints a list of employee names from the employee table 
-- for employees with a salary greater than $2000 per month who and been employees for less than 10 months
-- sort your results by ascending employee_id
select name from employee where salary > 2000 and months < 10 order by employee_id asc

-- AVERAGE POULATION 
-- query the average population for all cities in city. round down to the nearest integer
select floor(avg(population)) from city

-- JAPAN POPULATION 
-- query the sum of the populations for all japanese cities in city. country code for japan is JPN
select sum(population)from city where countrycode = 'JPN'

-- POPULATTION DENSITY DIFFERENCE 
-- query the difference between the maximum and minimum populations in city
select (max(population) - min(population)) from city

-- THE BLUNDER
-- samantha wwas tasked with calculatin the average monthl salaries for all employees in the EMPLOYEES table
-- she did not realzie her keaayboard's 0 key was broken until after completing the calculation.
-- she wants your help finding the difference between heer miscalculation(using salaries with any zeros removed) and the actual average salary and round it up to the next integer
select ceiling((avg(salary) - avg(replace(salary,0,'')))) from employees


-- TOP EARNER
-- we define an employee's total earningss to be their monthly salary * months worked and the max total earnings to be  the max total earnings for any mployee in the employee table

-- write a query to find the max total earnings for all employees as well as the total number of emplyees who have max total earnings.then print these values as space separated integers

--total earnings = salary * months
--max total earnings is the top total earninngs or the ceiling
--first find max earning value

SELECT (months*salary) as earnings, COUNT(*) FROM Employee GROUP BY earnings ORDER BY earnings DESC LIMIT 1;


-- write a query identifying the types of each record in the triangles tabe using its three side length
-- equiliateral = 3 sides of equal lengt
-- isoceles = 2 sides of equal length
--scalene = all sides are different
-- noi a triangle = the given values of a, b and c don't form a triangle
SELECT CASE 
WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle' 
WHEN A = B AND B = C THEN 'Equilateral' 
WHEN A = B OR B = C OR A = C THEN 'Isosceles' 
ELSE 'Scalene' 
END 
FROM TRIANGLES;

-- REVISING AGGREGATION - THE COUNT FUNCTION
-- query a count of the number of cities in the CITY having a population larger than 100,00
SELECT COUNT(*) FROM CITY WHERE POPULATION > 100000;

--REVISING AGGREGATION - THE SUM FUNCTION
-- query the total population of all cities in city where district is California
SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT = 'California';

-- REVISING AGGREGATIONS - AVERAGES
-- query the average of all cities in city where district in California
select avg(population) from city where district = 'California';

--TOP EARNER
--we define an employee's total earnings to be their monthly salary x months worked and the maximum total earnings to be the maximum total earnings for any employee in the employee table
--write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. then print these values as 2 spaced separated integers
--GOAL
    --find maximum total earnings
    --find out how many people have are making that much
select salary * months as earning, count(*) from employee group by earning order by earning desc limit 1;

--Weather Observation Station 2
--Query the following two values from the station table:
--The sum of all values in LAT_N rounded to a scale of 2 decimal places
--The sum of all values in LONG_W rounded to a scale of 2 decimal places
select round(sum(LAT_N),2), round(sum(LONG_W),2) from station;

--WEATHER OBSERVATION STATION 13
--Query the sum of LAT_N from station having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places
select round(sum(LAT_N),4) from STATION where LAT_N > 38.7880 and LAT_N < 137.2345;

--WEATHER OBSERVATION STATION 14
--query the greatest  value of LAT_N from station that is less than 137.2345. truncate your answer to 4 decimal places
select round(max(LAT_N),4) from station where LAT_N < 137.2345;

--WEATHER OBSERVATION STATION 15
--query LONG_W for the largest LAT_N that is less than 137.2345. round your number to 4 decimal places
select round(long_w,4) from (select * from station where lat_n < 137.2345 order by lat_n desc) where rownum <2;

--WEATHER OBSERVATION STATION 16
--query the smallest lat_n from station that is greater than 38.7780. round your answer to 4 decimals.
select min(round(lat_n)) from station where lat_n > 38.7780;

--WEATHER OBSERVATION STATION 17
--query the long w where the smallest lat_n is greater than 38.7780. round your ansewr to 4 decimal places.
select round(long_w,4) from (select * from station where lat_n > 38.7780 order by lat_n asc) where rownum <2;


--weather observation station 18
select round((max(lat_n) - min(lat_n)) + (max(long_w) - min(long_w)),4) from station

-- THE PADS --
--1)Quuery an alpahebtically ordered list of all names in OCCUPATIONS. Immediately followed by the first leter of each profession as a parenthical.
--2) Query the numer of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format
    --There a toal of [occupation_count] [occupation]s.

--first query
select name || '(' || substr(occupation,0,1) || ')' from occupations order by name;
select 'There are a total of ' || count(*) ||' '|| lower(occupation) ||'s.' from occupations group by occupation order by count(*), occupation;

--OCCPUATIONS ---
--pivot the occupation column in OCCUPATIONS so that each name is sorted alphabetically and displayed underneath its corresponding occupation. the output column headers should be Doctor, Professor, Singer, and Actor respectively.
--NOTE: Print NULL when there are no more names corresponding to an occupation.
--QUICK EXPLANATION:


-- THE PADS --
-- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
-- Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

-- There are a total of [occupation_count] [occupation]s.
-- where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

-- Note: There will be at least two entries in the table for each type of occupation.

--first query is name(first letter of occupation)
select name || '(' || substr(occupation,1,1) || ')' from occupations order by name;
select 'There are a total of '||count(*)||' '||lower(occupation)||'s.' from occupations group by occupation order by count(*),occupation;


--OCCUPATIONS--
-- pivot hte occupatuion column in occupations so that each name is sorted alphabetically and displayed undernearth its corresponding occupation.
--The output column headers should be doctor, professor, singer, and actor respectively
--NOTE: print NULL when there are no more names corresponding to an occupatio
-- select occupation, [doctor],[professor],[singer],[actor]
-- from 
-- (select *
-- from occupations) as source_table
-- pivot(max(name)
-- for
-- occupation in ([doctor],[professor],[singer],[actor])
-- ) as pivot_table
/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
--wtf is a with clause
with subquery as (
    -- subquery i guess is him creating a table? and in it contains the case
    --below 
select  case when o.occupation = 'Doctor' then o.name else null end as doc,
        case when o.occupation = 'Professor' then o.name else null end prof,
        case when o.occupation = 'Singer' then o.name else null end singr,
        case when o.occupation = 'Actor' then o.name else null end actr
from Occupations o --he set the occupations table as o probably to just make it easier to reference
) 
select d.doc, p.prof, s.singr, a.actr
from
-- I don't get this part. I'm assuming he's using this in order to create the columns along with the appropriate naming and order of the clumns, but I don't understand the code as to how it works to make it happen
(select row_number() over (order by x.doc asc) col, x.doc from subquery x) d,
(select row_number() over (order by x.prof asc) col, x.prof from subquery x) p,
(select row_number() over (order by x.singr asc) col, x.singr from subquery x) s,
(select row_number() over (order by x.actr asc) col, x.actr from subquery x) a
--I don't get this last bit at all
where d.col = p.col
and p.col = s.col
and s.col = a.col
and not (d.doc is null and p.prof is null and s.singr is null and a.actr is null)
;
--below is another solution, alot simpler most of it makes more sense off the bat
select
--here he is selecting the columns being created from the subtable below
    Doctor
    ,Professor
    ,Singer
    ,Actor
from (
select
    NameOrder
    ,max(case Occupation when 'Doctor' then Name end) as Doctor
    ,max(case Occupation when 'Professor' then Name end) as Professor
    ,max(case Occupation when 'Singer' then Name end) as Singer
    ,max(case Occupation when 'Actor' then Name end) as Actor
from (
    -- #This was probably his starting point and he worked his way backwards
    select
        Occupation
        ,Name
        --wtf is this row number function and partition by
        ,row_number() over(partition by Occupation order by Name ASC) as NameOrder
    from Occupations
    ) as NameLists
    --did group by nameorder to create the actual pivot
    group by NameOrder
) as Names

--BINARY TREE NODES
--You are given a table, BST, containing 2 columns: N & P, where N represents the value of a node in Binary Tree and P is the parent of N.
--Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:
--root: if node is root node
--leaf: if node is leaf node
--Inner: if node is neither root nor leaf node
--MY ANALYSIS
    --based on the sample data and the sample
    --If values are only in N, then they are a leaf
    --if values are in both N and P and they have a corresponding P value they are an inner
    --if value is in both N and P and their corresponding P value is null then they are the root
--I couldn't figure out how to go about writing the code
select *,
case
    when N not exists in P then 'Leaf'
    when N exist in P and 

from BST order by P asc;
--BELOW IS A SOLUTION
select n,
case 
    when p is null then 'Root'
    when n in (select p from bst) then 'Inner' --I kept thinking I had to do some crazy comparison with the same tbale when I could've just compared it to a subquery pulling the entire p column so that I can compare the current n value to all of the p values
    else 'Leaf'
end
from bst
order by n;
-- I FAILED BECAUSE I WAS OVER THINKING HOW TO RIGHT IT

--NEW COMPANIES --
-- Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: 
-- founder -> lead manager -> senior Manager -> employee

-- write a query to print the 
-- company_code, 
-- founder name, 
-- total number of lead managers, count function
-- total number ofsenior managers, count function
-- total number of managers,count function
-- total number of employees count function
-- order output by ascending company code order by company_code asc;

--We're gonna have to join the tables below and then query
--Company Table
    -- company_code
    --founder NEED IT
--Lead_manager Table
    -- lead_manger_code
    -- company_code
--Senior_Manger Table
    --senior_manger_code
    --lead_manager_code
    --company_code
--Manger Table
    --manager_code NEED IT
    --senior_manager_code NEED IT
    --lead_mangaer_code NEED IT
    --company_code - NEED IT
-- Employee Table
    --employee_code NEED IT
    --manager_code
    --senior_manager_code
    --lead_manager_code
    --COMPANY CODE

--Step 1 Join tables(COMPANY TABLE,  EMPLOYEE TABLE)
    --COMPANY TABLE = FOUNDER COLUMN
    --EMPLOYEE TABLE = EMPLOYEE CODE

    --CONNECT COMPANY TABLE TO MANAGER TABLE ON COMPANY CODE
--Step 2
-- write a query to print the 
-- company_code, 
-- founder name, 
-- total number of lead managers, count function for lead_manager_code
-- total number ofsenior managers, count function
-- total number of managers,count function
-- total number of employees count function

--Below is the code I came up with by the time limit and failed the challenge
select cc, f, count(lc),count(sc),count(mc),count(ec)
from(
SELECT employee.employee_code as ec, employee.manager_code as mc,employee.senior_manager_code as smc,employee.lead_manager_code as lmc,employee.company_code as cc, company.founder as f
from employee
inner join company on company.company_code = employee.company_code
)
order by company_code asc;

--below is the error 
ERROR 1248 (42000) at line 1: Every derived table must have its own alias

--below is a correct answer
SELECT c.company_code,c.founder,
count(distinct lm.lead_manager_code),
count(distinct sm.senior_manager_code),
count(distinct m.manager_code), 
count(distinct e.employee_code)
--Is it because we are pulling individual columns from separate tables that we do not need to join them into one table first
--Here he's doing a "simpler join" along with using the where function to determine the columns that match to line up the data
--if this was the case then can't we just still use company table and employee table?
FROM Company c, Lead_Manager lm, Senior_Manager sm, Manager m, Employee e
WHERE
c.company_code=lm.company_code AND
lm.lead_manager_code=sm.lead_manager_code AND
sm.senior_manager_code=m.senior_manager_code AND
m.manager_code=e.manager_code
--assuming we need group by in order to get the data organized by company code and founder
GROUP BY c.company_code,c.founder
ORDER BY c.company_code ASC



--Revising the Select Query 1--
--Query all columns for all American cities in the CITY table with populations larger than 100,000. The CountryCode for America is USA

select * from CITY where CountryCode = 'USA' and Population > 100000;

--Revising the Select Query 2--
--Query the NAME field for all American cities in the CITY table with populations larger than 120,000.
select NAME from CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION >120000;

--SELECT ALL--
--Query all olumns(attributes) for every row in the city table
select * from city

--SELECT BY ID--
--Query all columns fora city in the CITY with the ID 1661;
select * from city where ID = 1661;

--Japanese Cities' Attributes' --
--Query all attributes of every Japanese City in the CITY table. The COUNTRY CODE for japan is JPN
select * from CITY where COUNTRYCODE='JPN';

--Japanese Cities Names'--
--Query the names of all the jaapnese cities in the city table
select name from city where countrycode='JPN';

--weather observation station 1--
--query a list of city and state from the station table
select city, state from station;

--weather observation station 3 --
--query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer
select distinct(city) from station where MOD(ID,2)=0;

--weather observation station 4--
--find the difference between the totla number of city entries in the table and the number of distinct city entries in the table
select (count(city) - count(distinct(city))) from station;

--weather observation station 6 --
--query the list of city names starting with vowels from station
select distinct city  from station 
where lower(substr(city,1,1)) = 'a' or
lower(substr(city,1,1)) = 'e' or
lower(substr(city,1,1)) = 'i' or
lower(substr(city,1,1)) = 'o' or
lower(substr(city,1,1)) = 'u';

--weather observation station 7 --
--Query the list of city names ending with vowels (a,e,i,o,u) from station. your result cannot contain duplicates
select distinct city  from station 
where lower(substr(city,-1,1)) = 'a' or
lower(substr(city,-1,1)) = 'e' or
lower(substr(city,-1,1)) = 'i' or
lower(substr(city,-1,1)) = 'o' or
lower(substr(city,-1,1)) = 'u' ;

--weather observation station 8--
--query the listof city names from station which have vowels as both their first and last characters. your result cannot contain duplicates
select distinct city from station 
where (CITY like 'A%' or CITY like 'E%' or CITY like 'I%' or CITY like'O%' or CITY like 'U%') 
and (city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u');

--weather observation station 9--
--query the list of city names from station that do not start with vowels. your result cannot contain duplicates
select distinct city from station 
where NOT(CITY like 'A%' or CITY like 'E%' or CITY like 'I%' or CITY like'O%' or CITY like 'U%');

--weather observation station 10--
--query the list of city names from station that do not wend with voweles. your result cannot contain duplicates
select distinct city from station
where not (city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u');

--weather observation station 11--
--query the list of city names from station that either do not start with vowels or do not end with vowels. your results cannot contain duplicates.
--Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
select distinct city from station
where not(city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%') or
not(city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u');

--weather observation station 12 --
--query the list of city names from station that do not start with vowels and do not end with vowels. your result cannot contain duplicates
select distinct city from station
where not(city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%') and
not(city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u');

--higher than 75 marks--
--query the name of any stduent in STUDENTS who scared higher than 75 marks. 
--order your output by the last three characters of each name. 
--If two or more students have both the same names ending in the same last three characters, secondary sort them by ascending ID.
select Name from students
where Marks > 75
order by substr(Name,-3), ID asc;

--Employee Names
--Write a function that prints a list of employee names from the employee table in alpahebtical order.
select name from employee order by name asc;

--Employee salaries 
--write a query that prints a list of meployee names for employees in Employee having a salary greater than $2000/month, been employed for less than 10 months. sort results by ascending employee_id
select name from employee
where salary > 2000 and months <10
order by employee_id asc;

--TYPE OF TRIANGLE
--Write a query identifying the type of each record in the TRIANGLES Table using its three side length
--Equilaeral: with 3 sides of equal length
--Isosceles: 2 sides of equal length
-- Scalene: 3 sides with differnet length
--Not a Triangle: The given values of A, B and C don't form a triangle(combined value of two sides must not be larger than a single side)
SELECT CASE 
WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle' 
WHEN A = B AND B = C THEN 'Equilateral' 
WHEN A = B OR B = C OR A = C THEN 'Isosceles' 
ELSE 'Scalene' 
END 
FROM TRIANGLES;


--Revising Aggregations - The Count Function
--Query a count of the number of cities in the CITY having a population larger than 100,00-0
SELECT count (*) FROM City
where population > 100000;