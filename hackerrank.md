<!-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

The CITY table is described as follows:

CITY.jpg

select * from CITY where CountryCode = 'USA' and Population > 100000  --

Revising the Select Query II
Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

The CITY table is described as follows:
select Name from City where CountryCode = 'USA' and Population > 120000

SELECT ALL
Query all columns(attributes) for every row in the CITY table
select * from city

SELECT BY ID
query all columns for a city in CITY with the ID 1661
select * from city where ID = 1661

JAPANESE CITIES ATTRIBUTE
query all alltgributes of every japanese city in the CITY table. the countgrycode for Japan is JPN.
select * from city where CountryCode = 'JPN'

JAPANESE CITIES NAMES
query the names of all the japanese cities in the city table. the countrycode for japan is JPN
select NAME from CITY where COUNTRYCODE = 'JPN'


WEATHER OBSERVATION STATION 1
Query a list of CITY and STATE from the STATIOn table
select city, state from station

WEATHER OBSERVATION STATION 3
query a lsit of city names from stations for cities that have an even ID number. print the results in any order, but exclude duplicates from the answer
select distinct(city) from station where id%2 = 0

WEATHER OBSERVATION 4
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
The STATION table is described as follows:

Station.jpg

where LAT_N is the northern latitude and LONG_W is the western longitude.

For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. The query returns , because .
select count(city) - count(distinct(city)) as city from station