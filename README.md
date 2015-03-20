Just a little place to keep these Ruby chops chopping.


# Gigasecond

Write a program that will calculate the date that someone turned or will celebrate their 1 Gs anniversary.
A gigasecond is one billion (10**9) seconds.


# Printer

Imagine we're writing some code for a printer and we need to tell the printer how to print the pages for a book by giving it an array with pairs of page numbers to be printed. The book is bound in the middle so the first page is printed on the same sheet of paper as the last page, then the second page is printed on the same sheet of paper as the second to last page and so forth. Write a function that takes in an integer argument n and then returns an array of pairs of integers representing the page numbers to be printed. For simplicity we can assume that n is a multiple of 2.

n = 4 [[1, 4], [2, 3]]


# Pyramid

Pretend your company just hired your friend from college and paid you a referral bonus. To celebrate, you're taking your team next door and using the referral bonus to buy and build the largest three-dimensional soda can pyramid you can.

A soda can pyramid will square the number of cans in each level: 1 can in the top level, 4 in the second, 9 in the next, 16, 25...

Complete the function to return the number of complete levels of a soda can pyramid you can make, given the parameters of:

1) your referral bonus, and
2) the price of a soda can


# RPN Calculator

Create an RPNCalculator class which can evaliate expressions written in Reverse Polish Notation

It should have an evaluate method which takes as its input a valid pdn expression and returns its evaluation. You calculator only needs to handle addition, multiplication and subtraction (not division).

Operators and numbers should be separated by a single space.

For example:

<pre><code>calc = RPNCalculator.new
calc.evaluate('1 2 +')   #=> 3
calc.evaluate('2 5 *')   #=> 10
calc.evaluate('50 20 -') #=> 30

calc.evaluate('70 10 4 + 5 * -') #=> 0</code></pre>
