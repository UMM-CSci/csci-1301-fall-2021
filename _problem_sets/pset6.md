---
layout: post
title:  "CSci 1301: Problem Set XXX"
date:   2019-08-13 10:28:34 -0500
categories: racket problem_set
---

CSci 1301: Problem Set 6
------------------------

#### Due: Wednesday, December 12 at 11:59pm

You are required to write signatures and descriptions for all functions,
and also descriptions of all your structures. Additionally, functions,
except the world problems, must be tested using check-expect. Write your
tests before you write a function (but feel free to add more after it\'s
been writen).

The quality of your tests will be graded. Make sure to have enough test
cases to demonstrate that the function is correct. I may take points off
for a lack of testing (in addition to those taken off for incorrect
behavior) if your function doesn\'t work on particular expected data and
there is no test for it. It\'s much better to leave a test that fails
(perhaps in comments) that shows that the function doesn\'t work on
given data and you don\'t know how to fix it.

### Self-referential structure (16 points total)

1.  Given the `family tree` structure in defined in [Section
    19.1](https://htdp.org/2018-01-06/Book/part_four.html#%28part._sec~3abtrees%29),
    write a function `ft-has-color?` that takes a family tree and a
    color and returns true if that family tree has a person with that
    color of eyes, and false otherwise.
2.  Write a function that takes a family tree and returns the number of
    generations in that tree. For instance, the tree rooted in \"Eva\"
    would return 2, and the tree rooted in \"Gustav\" would return 3. A
    no-parent structure returns 0.
3.  Define a function that consumes a family tree and returns the child
    stucture corresponding to the oldest person in the tree.\
    Note: Here you would need to handle a comparison of age very
    carefully: if one of the structures is no-parent, it should not be
    older than a real person. Write a helper function that takes two
    structures (each can be a child or no-parent) and returns the older
    of the two. Given a child and a no-parent, it returns the child.

------------------------------------------------------------------------

[CSci 1301 course web site](../index.html).
