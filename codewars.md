<!--
EVEN OR ODD
 SQL Notes:
You will be given a table, numbers, with one column number.

Return a table with a column is_even containing "Even" or "Odd" depending on number column values.

numbers table schema
number INT
output table schema
is_even STRING -->

<!-- my solution is below(incorrect) -->
select "number" as is_even from numbers where "number" % 2 == 0
below is the correct solutions
select case when numer % 2 = 0 then 'Even' else 'Odd' as is_even from numbers;

<!-- Opposite Number
Very simple, given a number, find its opposite.

Examples:

1: -1
14: -14
-34: 34
You will be given a table: opposite, with a column: number. Return a table with a column: res. -->
below is my code incorrect
select case where "number" * -1 as res from opposite 
below is the correct code
select -number as res from opposite