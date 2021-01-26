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