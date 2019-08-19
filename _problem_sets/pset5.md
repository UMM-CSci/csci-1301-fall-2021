---
layout: problem_set
title:  "CSci 1301: Problem Set XXX"
date:   2019-08-13 10:28:34 -0500
categories: racket problem_set
---

CSci 1301: Problem Set 5
------------------------

#### Due: Wednesday, Decemeber 5th at 11:59pm

Please make sure that every function has a signature, description, and
test cases (as needed).

### Problem 1 (10 points)

[Exercise
250](https://htdp.org/2018-01-06/Book/part_three.html#%28counter._%28exercise._ex~3aabs-tabulate%29%29).
Before you write the function, copy `tab-sin` and `tab-sqrt` into your
Racket file. Then:

1.  Write check-expect (or check-within, due to inexact results) tests
    for `tab-sin` and `tab-sqrt`. Don\'t forget tests for the base
    cases.
2.  Write check expect (or check-within) tests for `tabulate` to show
    how it can be used to work as both of the above functions (what
    functions do you pass to it?)
3.  Write the abstract function `tabulate` and test it.
4.  Write its signature (use the format that we used in class or the one
    the book uses - both are fine).
5.  Write one more example of what it can be used for (use
    check-expects).

Note that this function is similar to a predefined Racket function
`build-list`.

### Problem 2: Using predefined functions (14 points).

In this task you will be using `map` and `filter` general functions
given
[here](https://htdp.org/2018-01-06/Book/part_three.html#%28part._ch~3a3use%29)
and [foldl,
foldr](https://htdp.org/2018-01-06/Book/part_three.html#%28counter._%28figure._fig~3aisl-ho-list2%29%29)
to perform different tasks. You can use helper functions when the
functions that you need you need to pass to `map` or `filter` aren\'t
defined in Racket. Alternatively you may use `lambda` if you would like
(see [section
17.1](https://htdp.org/2018-01-06/Book/part_three.html#%28part._sec~3aint-lambda%29)
in the book).

You may use a combination of function for each problem.

1.  Add all of the x coordinates in a list of `posn` structures.
2.  Create a list of 20 squares (images), in which the first one is
    1-by-1 pixel, the second one is 2-by-2, and so on (hint: use
    build-list)
3.  Create a list of all even numbers from 0 to 100 (use build-list and
    possibly other functions, although you can also just do it with
    build-list)
4.  Sort a list of strings by length (shortest first)
5.  Sort a list of positions by their distance from (0,0). Note that you
    need to use `sort` function and the result must be a list of
    positions (not of numbers).
6.  Count the number of elements in a list (do not write your own
    recursive function!)
7.  Count the number of odd numbers in a list.

------------------------------------------------------------------------

[CSci 1301 course web site](../index.html).
