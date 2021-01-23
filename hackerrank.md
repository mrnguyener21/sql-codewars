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