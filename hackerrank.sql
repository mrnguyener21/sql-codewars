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

--ASIAN POPULATION
-- Given the city and country table, query the sum of the populations of all cities where the continent is 'Asia'
--note: city.countrycode and country.code are the matching key columns
select sum(city.population) from city join country on city.countrycode = country.code where continent = 'Asia';

--AFRICIAN CITIES
--Given the city and country table query the names of all cities where the continent is 'Africa'
--note city.countrycode and country.code are matching keys
select city.name from city join country on city.countrycode = country.code where continent = 'Africa';

--AVERAGE POPULATION OF EACH CONTINENT
--given the city and country tables, query the names of all the continents(country.continent) and their respective average city populations(city.population) rounded down to the nearest integer.
-- city.countrycode and country.code are matching key columns 
select country.continent, round(avg(city.population)) from country join city on country.code = city.countrycode;