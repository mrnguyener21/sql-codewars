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
below is the correct solution
select case when numer % 2 = 0 then 'Even' else 'Odd' as is_even from numbers;
