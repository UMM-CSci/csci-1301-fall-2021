---
layout: problem_set
title:  "Problem Set 5"
date:   2019-11-20 10:28:34 -0500
categories: racket problem_set
---

For all these, make sure that every function has a
signature, description, and test cases (as needed).

## Abstracting away duplication

[Exercise 250](https://htdp.org/2019-02-24/part_three.html#%28counter._%28exercise._ex~3aabs-tabulate%29%29).
Before you write the function, copy `tab-sin` and `tab-sqrt` into your
Racket file. Then:

1. Write check-expect (or check-within, due to inexact results) tests
   for `tab-sin` and `tab-sqrt`. Don\'t forget tests for the base
   cases.
2. Write check expect (or check-within) tests for `tabulate` to show
   how it can be used to work as both of the above functions (what
   functions do you pass to it?)
3. Write the abstract function `tabulate` and test it.
4. Write its signature (use the format that we used in class or the one
   the book uses - both are fine).
5. Write one more example of what it can be used for (use
   check-expects).

Note that this function is similar to a predefined Racket function
`build-list`.

## Using pre-defined functions instead of explicit recursion

In this task you will be using [the pre-defined higher-order
functions provided by Racket](https://docs.racket-lang.org/htdp-langs/intermediate-lam.html#%28part._htdp-intermediate-lambda._.Higher-.Order_.Functions%29)
to perform different tasks.
Each of these _could_ be done with explicit
recursion, but your task here is to use these pre-defined
higher-order functions instead.

You can use any of the functions in [the "Higher-Order Functions" section
of the Intermediate Student with Lambda language](https://docs.racket-lang.org/htdp-langs/intermediate-lam.html#%28part._htdp-intermediate-lambda._.Higher-.Order_.Functions%29).
This includes things we've discussed in class, like `map`, `filter`,
and the `foldl` and `foldr` functions, as well as potentially useful things
we haven't necessarily covered (like `build-list`).

You can (and should!) use helper functions when the
function that you need you need to pass to one of these isn't already
defined in Racket. Alternatively you may use `lambda` if you would like
(see [section
17.1](https://htdp.org/2019-02-24/part_three.html#%28part._sec~3aint-lambda%29)
in the book).

Some of these can be done with a single call to one of these nifty
tools, e.g., a single call to `map`. Others may require combinations
of functions. If, for example, we wanted to add up the lengths of a list
of strings, we could do that with a combination of `map` (to convert
the strings to their lengths, i.e., numbers) and `foldl` (to add all
the numbers up):

```racket
(define (sum-of-lengths strs)
  (foldl + 0 (map string-length strs)))
```

For several of these you might find the function [`range`](https://docs.racket-lang.org/htdp-langs/intermediate-lam.html#%28def._htdp-intermediate-lambda._%28%28lib._lang%2Fhtdp-intermediate-lambda..rkt%29._range%29%29) useful, so you might want to have a look at that.

⚠️ You are _not_ likely to solve these by guessing and flailing.

- Write tests to make sure you know what the function should do.
- Think carefully about the types; they can provide valuable hints as
  to what tool(s) you should use, and how to use them.
- Try working out some examples on paper or on a white board. That might
  help suggest what the pattern is that you want to capture in your use
  of higher-order functions.
- Start early and ask lots of questions!

Here are the problems:

1. Add all of the x coordinates in a list of `posn` structures.
2. Create a list of 20 images, each of which is a square. The first
   should be a 1-by-1 pixel square, the second 2-by-2, and so on.
   (Hint: You could use `map` and [`range`](https://docs.racket-lang.org/htdp-langs/intermediate-lam.html#%28def._htdp-intermediate-lambda._%28%28lib._lang%2Fhtdp-intermediate-lambda..rkt%29._range%29%29). Alternatively you could use `build-list`.)
3. Create a list of all the even numbers from 0 to 100 (i.e., 0, 2, 4, 6, …, 100). There
   are numerous ways to do this; you might think about how you could do it with
   `filter`, as well as how you could do it with `map` or `build-list`.
4. Count the number of elements in a list (do not write your own
   recursive function!)
5. Count the number of odd numbers in a list. (You might want to use your
   solution to the previous problem to help out here.)
