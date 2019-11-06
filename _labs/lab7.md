---
layout: lab
title:  "Lab 7"
date:   2019-12-10 10:28:34 -0500
categories: racket lab
status: draft
---

The lab is done in groups of 2 or 3.
Your goal is to explore abstraction by starting with two or three
examples and generalizing to a function that takes another function as a
parameter. Use examples on the [resources page](../resources.html) for
similar tasks that we did in class.

Make sure to switch DrRacket language to **Intermediate student with
lambda** (even if you are not using `lambda`.

Since we haven\'t spent much time on writing general signatures, you are
not required to write them. However, correct signatures for the general
functions in tasks 1 and 2 would give you **2 points of extra credit
each** (and a good attempt would give you partial credit).
Signatures for specific functions (for instance, functions that take a
list of numbers) are **required**.

#### Task 1: All elements satisfy a condition (10 points).

1.  Write a function takes a list of numbers and returns `#true` if all
    elements of the list are odd and `#false` otherwise. Make sure to
    test the function well.
2.  Write a helper function take takes a string and returns `#true` if
    the string has length of 5 characters or less and `#false`
    otherwise.\
    Once it\'s written and passes the tests, write a function that takes
    a list of strings and returns `#true` if all elements of the list
    are of length 5 or less and `#false` otherwise. You must use your
    helper function.
3.  Generalize the functions in the previous 2 questions to write the
    function `all?` that takes a list and a predicate and returns
    `#true` if all the elements on the list satisfy the predicate and
    `#false` otherwise.\
    Before you start, write check-expects to use `all?` to perform the
    tasks in the first two questions. In the first case the predicate
    that you pass to it is `odd?`. In the second case it\'s the helper
    function in question 2.
4.  Use the general function in question 3 to return `#true` if all
    numbers on a list of numbers are negative. Hint: use the predicate
    `negative?`.

Note: do not use `andmap` for this problem. Write your own recursive
functions.

#### Task 2: First element that satisfies a condition (10 points).

1.  Write a function that finds and returns the first odd element in a
    list of numbers. If there are no odd elements, `#false` is returned.
2.  Write another function that follows the same pattern (returns the
    first element that satisfies a condition, or `#false` if there is no
    such element), but works on a different data type (such as a list of
    strings, or images, or structures).
3.  Generalize from the previous two examples, just like you did in Task
    1. Write the tests first, then the description, and then function
    (the signature is optional).
4.  Add two more examples of using the general function with predicates
    that are different from what\'s used in questions 1 and 2.

#### Task 3: Using predefined functions (10 points).

In this task you will be using `map` and `filter` general functions
given
[here](https://htdp.org/2019-02-24/part_three.html#%28part._ch~3a3use%29)
to perform different tasks. You can use helper functions when the
functions that you need you need to pass to `map` or `filter` aren\'t
defined in Racket. You may use `lambda` if you would like (see [section
17.1](https://htdp.org/2019-02-24/part_three.html#%28part._sec~3aint-lambda%29)
in the book), but this is by no means required.

Below are a couple of examples for using the predefined functions
(without a lambda):

    ;; using map to produce square roots of a list of numbers:
    (map sqrt (list 0 1 2 4 5))

    ;; legal? : posn -> boolean
    ;; The function takes a position structure and returns
    ;; #true if it's within 400-by-400 scene, and #false
    ;; otherwise
    (define (legal? p)
      (and (>= (posn-x p) 0) (<= (posn-x p) 400)
           (>= (posn-y p) 0) (<= (posn-y p) 400)))

    ;; using filter and a helper function legal? to select only legal
    ;; positions in a list of position structures
    (filter legal? (list (make-posn 200 0) (make-posn 401 50) (make-posn -10 200) (make-posn 100 300)))

Your task is to use `map` and `filter` to do the following:

1.  Given a list of numbers, create a list of red circles of the
    radiuses given in the list.
2.  Given a list of numbers, create a list of their absolute values.
3.  Given a list of position structures, create a list of positions in
    which the x and the y coordinates are switched (so a position with x
    = 10, y = 20 in the given list becomes a position with x = 20, y =
    10 in the returned list)
4.  Given a list of colors, return a list of all of the same colors
    except yellow.
5.  Given a list of numbers, return a list of only exact numbers on the
    list. For instance, (sqrt 2) is not an exact number.

#### How to submit

Name your file with the combination of your last names, no spaces,
followed by the word \"Lab\" and the lab number. For instance, if your
last names are Smith and Lee, the file name should be `SmithLeeLab7.rkt`
If there are others in the class with the same name as yours, you your
initial in addition to your last name: `MSmithJLeeLab7.rkt`

At least one person in the group must submit it via canvas as a file
upload (make sure it\'s that `.rkt` file). Make a comment indicating who
you worked with. The other person (or people) in the group may submit
the same file and also indicate who was in the group or just make a
comment listing all your group members (note: if you don\'t submit a
note listing your group members, your work may not be counted, even if
your group partners list you as the group member).

------------------------------------------------------------------------

[CSci 1301 course web site](../index.html).
