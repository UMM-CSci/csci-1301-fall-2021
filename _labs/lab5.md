---
layout: lab
title:  "CSci 1301: Lab XXX"
date:   2019-08-13 10:28:34 -0500
categories: racket lab
---

CSci 1301: Lab 5
----------------

#### Due: Friday, November 2 at 11:59pm

#### About this lab

Work in groups of 2 or 3.

The lab explores lists and recursion.

Examples we have considered in class, with solutions: [introduction to
lists](../examples/lists-solutions.rkt) and [list and recursion
exercises](../examples/lists-exercises-solutions.rkt).

#### Task 1 (8 points)

Problems in this task do not require recursion. **You may not use any
list functions other than `first, rest, cons, empty?, list`.** All
functions must have signatures, descriptions, and check-expects.

**Question 1** Write a function `has-one-element?` that, given a list,
returns `#true` if the list has exactly one element and `#false`
otherwise:

          (check-expect (has-one-element? (list 2 3 5 6)) #false)
          (check-expect (has-one-element? empty) #false)
          (check-expect (has-one-element? (list 2)) #true)
      

**Question 2** Write a function `has-more-than-one-element?` that, given
a list, returns `#true` if the list has more than one element, and
`#false` otherwise:

          (check-expect (has-more-than-one-element? (list 2 3 5 6)) #true)
          (check-expect (has-more-than-one-element? empty) #false)
          (check-expect (has-more-than-one-element? (list 2)) #false)
      

#### Task 2 (22 points)

These problems use recursion. Use the examples we did in class as sample
code. All functions must have signatures, descriptions, and
check-expects (add check-expects as needed).\
Note that `list` function (used in check-expects below) is an easy way
to create a list of several elements without having to repeat `cons`
many times. As an example of how it works, `(list 2 3)` creates a list
`(cons 2 (cons 3 empty))`.

**Question 1 (4 points)** Write a function `product` that consumes a
list of numbers and returns their product. It returns 1 for an empty
list.

        (check-expect (product (list 2 3 -1)) -6)
        (check-expect (product (list 4 6 0 8)) 0)
        (check-expect (product empty) 1)

**Question 2 (4 points)** Write a function `sum-non-negative` that adds
up all non-negative numbers in a list.

        (check-expect (sum-non-negative (list -2 3 0 -1 5)) 8)
        (check-expect (sum-non-negative (list 4 8)) 12)
        (check-expect (sum-non-negative (list -1 -2)) 0)

**Question 3 (4 points)** Write a function `count-odd` that consumes a
list of numbers and returns the number of odd numbers in the list.

        (check-expect (count-odds (list 2 3 1 5 0)) 3)
        (check-expect (count-odds (list 4 6 8)) 0)
        (check-expect (count-odds empty) 0)

**Question 4 (5 points)** Write a function `sum-x-coords` that consumes
a list of positions and returns the sum of their x coordinates.

        (check-expect (sum-x-coords (list (make-posn 10 20) (make-posn 20 50))) 30)
        (check-expect (sum-x-coords (list (make-posn 10 -20) (make-posn 10 0))) 20)
        (check-expect (sum-x-coords empty) 0)

**Question 5 (5 points)** Write a function `first-odd` that consumes a
list of numbers and returns the first odd number. Use the predefined
function `odd?` to determine if a number is odd. If no number in the
list is odd, return \#false.

        (check-expect (first-odd (list 2 3 1 5 0)) 3)
        (check-expect (first-odd (list 4 6 8)) #false)
        (check-expect (first-odd empty) #false)

#### How to submit

Make sure that your file is named correctly:\
Name your file with the combination of your last names, no spaces,
followed by the word \"Lab\" and the lab number. For instance, if your
last names are Smith and Lee, the file name should be `SmithLeeLab5.rkt`
If there are others in the class with the same name as yours, you your
initial in addition to your last name: `MSmithJLeeLab5.rkt`

At least one person in the group must submit it via canvas as a file
upload (make sure it\'s that `.rkt` file). Make a comment indicating who
you worked with. The other person (or people) in the group may submit
the same file and also indicate who was in the group or just make a
comment listing all your group members (note: if you don\'t submit a
note listing your group members, your work may not be counted, even if
your group partners list you as the group member).

------------------------------------------------------------------------

[CSci 1301 course web site](../index.html).
