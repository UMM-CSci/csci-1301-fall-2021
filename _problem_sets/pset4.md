---
layout: problem_set
title:  "Problem Set XXX"
date:   2019-08-13 10:28:34 -0500
categories: racket problem_set
---

Please make sure that every function has a signature, description, and
test cases (as needed).

### Problem 1

Read [Chapter 9 of the
book,](https://htdp.org/2018-01-06/Book/part_two.html#%28part._ch~3adesign-lists%29)
paying attention to the [design recipe for
lists](https://htdp.org/2018-01-06/Book/part_two.html#%28counter._%28figure._fig~3atemplate-q%29%29)
(it summarizes and rephrases the same thing we were discussing in
class).\
Then do the following problems, including the check-expect tests,
signatures, descriptions, and then the implementation:

1.  [Exercise
    140](https://htdp.org/2018-01-06/Book/part_two.html#%28counter._%28exercise._list-and%29%29)
    (5 points).
2.  A function that takes a list of strings and produces the sum of
    their lengths (5 points).
3.  A function that takes a list of positions and another position
    (let\'s call it X) and produces the sum of distances from each of
    the positions on the list to X (5 points). Hint: write and use a
    helper `distance` function (think of what its signature would be).

### Problem 2

1.  [Exercise
    169](https://htdp.org/2018-01-06/Book/part_two.html#%28counter._%28exercise._work3%29%29)
    (5 points)
2.  [Exercise
    170](https://htdp.org/2018-01-06/Book/part_two.html#%28counter._%28exercise._work4%29%29)
    (5 points)
3.  Write a function that takes a list of strings and returns a list of
    their length (3 points).
4.  Write a function that takes a list of strings and returns a list of
    all strings on that list that don\'t start with a lower-case or
    upper-case \"a\" (3 points).

### Problem 3

Read [Section
11.3](https://htdp.org/2018-01-06/Book/part_two.html#%28part._sec~3asort.I%29)
in the textbook and do the following exercises:

1.  [Exercise
    187](https://htdp.org/2018-01-06/Book/part_two.html#%28counter._%28exercise._ex~3asort1-b%29%29)
    (4 points)
2.  [Exercise
    188](https://htdp.org/2018-01-06/Book/part_two.html#%28counter._%28exercise._ex~3asort1%29%29)
    (4 points)
3.  [Exercise
    190](https://htdp.org/2018-01-06/Book/part_two.html#%28counter._%28exercise._ex~3aprefix-bsl%29%29)
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
