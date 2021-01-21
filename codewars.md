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
<!-- select "number" as is_even from numbers where "number" % 2 == 0
below is the correct solutions
select case when numer % 2 = 0 then 'Even' else 'Odd' as is_even from numbers; -->

<!-- Opposite Number
Very simple, given a number, find its opposite.

Examples:

1: -1
14: -14
-34: 34
You will be given a table: opposite, with a column: number. Return a table with a column: res. -->
<!-- below is my code incorrect
select case where "number" * -1 as res from opposite 
below is the correct code
select -number as res from opposite -->

<!-- Is n divisible by x and y?
 -->
 <!-- Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero digits.

Examples:
1) n =   3, x = 1, y = 3 =>  true because   3 is divisible by 1 and 3
2) n =  12, x = 2, y = 6 =>  true because  12 is divisible by 2 and 6
3) n = 100, x = 5, y = 3 => false because 100 is not divisible by 3
4) n =  12, x = 7, y = 5 => false because  12 is neither divisible by 7 nor 5 -->

<!-- -- you will be given a table 'kata' with columns 'n', 'x', and 'y'. Return the 'id' and your result in a column named 'res'. -->
<!-- below is my solution
select id,(case when n % x = 0 and n % y = 0 then 'true' else 'false') as res from kata
below is the correct solution
select id, n%x = 0 and n % y =  as res from kata -->