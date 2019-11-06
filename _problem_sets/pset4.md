---
layout: problem_set
title:  "Problem Set 4"
date:   2019-08-13 10:28:34 -0500
categories: racket problem_set
status: draft
---

## Background

Read [Chapter 9 of the book,](https://htdp.org/2019-02-24/part_two.html#%28part._ch~3adesign-lists%29)
paying attention to the [design recipe for lists](https://htdp.org/2019-02-24/part_two.html#%28counter._%28figure._fig~3atemplate-q%29%29)
which summarizes and rephrases the same thing we were discussing in
class.

Make sure that every function has a signature, description, and test cases (as needed).

## Essentially `and` and `or` for lists

1. Start with [Exercise 140](https://htdp.org/2019-02-24/part_two.html#%28counter._%28exercise._list-and%29%29)
from the course text. There are two functions to define here –
`all-true` and `one-true` – make sure you do them both.

## Filtering lists

A common activing is _filtering_, where we take a list and
return a subset of that list, only keeping the elements that
satisfy some property. Here we'll have two problems that
are examples of filtering.

2. [Exercise 169](https://htdp.org/2019-02-24/part_two.html#%28counter._%28exercise._work3%29%29), where you
  keep `posn`s that match a criteria.
3. Write a function that takes a list of strings and returns a list
  containing the *non-empty* strings.



### Problem 3

Read [Section
11.3](https://htdp.org/2019-02-24/part_two.html#%28part._sec~3asort.I%29)
in the textbook and do the following exercises:

1.  [Exercise
    187](https://htdp.org/2019-02-24/part_two.html#%28counter._%28exercise._ex~3asort1-b%29%29)
    (4 points)
2.  [Exercise
    188](https://htdp.org/2019-02-24/part_two.html#%28counter._%28exercise._ex~3asort1%29%29)
    (4 points)
3.  [Exercise
    190](https://htdp.org/2019-02-24/part_two.html#%28counter._%28exercise._ex~3aprefix-bsl%29%29)
    (write both `prefixes` and `suffixes` functions) (9 points). Make
    sure to start with check-expects and a signature. Note that the
    function **needs a recursive helper function**. Don\'t forget to
    write signatures before you write the any code!\
    \
    **Clarification of the problem:** There are two possible
    interpretations of \"all prefixes\":
    -   An empty list of letters is a prefix of every list of letters.
        Then the base case is an empty list of letters, and your
        check-expects would include:

                    (check-expect (prefixes (list "a" "b" "c")) (list empty (list "a") (list "a" "b") (list "a" "b" "c")))
                    (check-expect (prefixes (list "a")) (list empty (list "a")))
                    ;; base case:
                    (check-expect (prefixes empty) (list empty))


    -   The smallest list of letters (and the smallest prefix) is a
        one-letter list. Then your base case is when the list of letters
        has exactly one element, and your check-expects include:

                    (check-expect (prefixes (list "a" "b" "c")) (list (list "a") (list "a" "b") (list "a" "b" "c")))
                    ;; base case:
                    (check-expect (prefixes (list "a")) (list (list "a")))


    Both approaches have their challenges, but can be solved by
    carefully thinking of a solution in terms of the recursive case and
    the first element.

### How to submit

Submit your file(s) via canvas, make sure to name them as required.

------------------------------------------------------------------------

[CSci 1301 course web site](../index.html).
