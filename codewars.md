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

<!-- even or odd 
my solution
select 
case 
  when number % 2 = 0 then 'Even' 
  else 'Odd' 
end as is_even 
from numbers -->

<!-- opposite number
select -number as res from opposite -->


<!-- is divisible by x and y?
Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero digits.

Examples:
1) n =   3, x = 1, y = 3 =>  true because   3 is divisible by 1 and 3
2) n =  12, x = 2, y = 6 =>  true because  12 is divisible by 2 and 6
3) n = 100, x = 5, y = 3 => false because 100 is not divisible by 3
4) n =  12, x = 7, y = 5 => false because  12 is neither divisible by 7 nor 5

-- you will be given a table 'kata' with columns 'n', 'x', and 'y'. Return the 'id' and your result in a column named 'res'

select id,
case
  when n%x = 0 and n%y =0
  then 'true'
  else 'false'
end as res
from kata -->
<!-- 
#century from year
Introduction
The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including the year 200, etc.

Task :
Given a year, return the century it is in.

Input , Output Examples ::
centuryFromYear(1705)  returns (18)
centuryFromYear(1900)  returns (19)
centuryFromYear(1601)  returns (17)
centuryFromYear(2000)  returns (20)
In SQL, you will be given a table years with a column yr for the year. Return a table with a column century.

Hope you enjoy it .. Awaiting for Best P

select ceiling(yr/100) as century from yeears -->

<!-- keep hydrated
Nathan loves cycling.

Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling.

You get given the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value.

For example:

<!-- time = 3 ----> 
<!--litres = 1

time = 6.7 litres = 3

time = 11.8 litres = 5

You have to return 3 columns: id, hours and liters (not litres, it's a difference from the kata description) 

select id, hours, floor(hours*0.5) as liters from cycling -->

<!-- beginner series #2 clock -->
<!-- Clock shows h hours, m minutes and s seconds after midnight.

Your task is to write a function which returns the time since midnight in milliseconds.

Example:
h = 0
m = 1
s = 1

result = 61000
Input constraints:

0 <= h <= 23
0 <= m <= 59
0 <= s <= 59 -->
<!-- select ((s * 1000) + (m * 60000) + (h *3600000)) as res from past -->

<!-- Expression matters
Given three integers a ,b ,c, return the largest number obtained after inserting the following operators and brackets: +, *, ()
In other words , *_try every combination of a,b,c with [+()] , and return the Maximum Obtained_** -->
<!-- SELECT GREATEST( a+b+c, (a+b)*c, a*(b+c), a*b*c )  AS res FROM expression_matter;
 -->


<!-- beginner series #2 clock
select ((s * 1000) + (m * 60000) + (h* 3600000)) as res from past -->

<!-- expression matters
Task
Given three integers a ,b ,c, return the largest number obtained after inserting the following operators and brackets: +, *, ()
In other words , *_try every combination of a,b,c with [+()] , and return the Maximum Obtained_**
Consider an Example :
With the numbers are 1, 2 and 3 , here are some ways of placing signs and brackets:

1 * (2 + 3) = 5
1 * 2 * 3 = 6
1 + 2 * 3 = 7
(1 + 2) * 3 = 9
So the maximum value that you can obtain is 9.

Notes
The numbers are always positive.
The numbers are in the range (1  ≤  a, b, c  ≤  10).
You can use the same operation more than once.
It's not necessary to place all the signs and brackets.
Repetition in numbers may occur .
You cannot swap the operands. For instance, in the given example you cannot get expression (1 + 3) * 2 = 8. -->

<!-- select greatest(a * (b + c), a * b * c, a + b * c, (a + b) * c ) as res from expression_matter -->

<!-- returning strings
Make a function that will return a greeting statement that uses an input; your program should return, "Hello, <name> how are you doing today?".

SQL: return results in a column named greeting

[Make sure you type the exact thing I wrote or the program may not execute properly] -->

<!-- select 'Hello,' || name || ' how are you doing today?' as greeting from person -->

<!-- sum of odd numbers
Given the triangle of consecutive odd numbers:

             1
          3     5
       7     9    11
   13    15    17    19
21    23    25    27    29
...
Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:

rowSumOddNumbers(1); // 1
rowSumOddNumbers(2); // 3 + 5 = 8 -->

<!-- the table "nums" contains an integer "n", the number
return your result in a column "res" -->
<!-- SELECT POWER(n, 3)::int as res from nums;
or
select n*n*n as res from nums
or 
select(n^3)::int as res from nums; -->


<!-- maximum multiple
Conditions :
N is divisible by divisor

N is less than or equal to bound

N is greater than 0.

Notes
The parameters (divisor, bound) passed to the function are only positive values .
It's guaranteed that a divisor is Found .
Input >> Output Examples
maxMultiple (2,7) ==> return (6)
Explanation:
(6) is divisible by (2) , (6) is less than or equal to bound (7) , and (6) is > 0 .

maxMultiple (10,50)  ==> return (50)
Explanation:
(50) is divisible by (10) , (50) is less than or equal to bound (50) , and (50) is > 0 .*

maxMultiple (37,200) ==> return (185)
Explanation:
(185) is divisible by (37) , (185) is less than or equal to bound (200) , and (185) is > 0 .
 -->
 <!-- below is my incorrect answer
select when n % divisor = 0 and n <= bound and n > 0 then as res from max_multiple
below is best practice answer
select bound - bound % divisor as res from max_multiple -->

