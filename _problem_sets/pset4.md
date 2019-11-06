---
layout: problem_set
title:  "Problem Set 4"
date:   2019-11-04 10:28:34 -0500
categories: racket problem_set
---

## Background <!-- omit in toc -->

Read [Chapter 9 of the book,](https://htdp.org/2019-02-24/part_two.html#%28part._ch~3adesign-lists%29)
paying attention to the [design recipe for lists](https://htdp.org/2019-02-24/part_two.html#%28counter._%28figure._fig~3atemplate-q%29%29)
which summarizes and rephrases the same thing we were discussing in
class.

Make sure that every function has a signature, description, and test cases (as needed).

- [Essentially `and` and `or` for lists](#essentially-and-and-or-for-lists)
  - [Problem 1](#problem-1)
- [Filtering lists](#filtering-lists)
  - [Problem 2](#problem-2)
  - [Problem 3](#problem-3)
- [Mapping over lists](#mapping-over-lists)
  - [Problem 4](#problem-4)
  - [Problem 5](#problem-5)

---

## Essentially `and` and `or` for lists

### Problem 1

Start with [Exercise 140](https://htdp.org/2019-02-24/part_two.html#%28counter._%28exercise._list-and%29%29)
from the course text. There are two functions to define here –
`all-true` and `one-true` – make sure you do them both.

---

## Filtering lists

A common action on lists is _filtering_, where we take a list and
return a subset of that list, only keeping the elements that
satisfy some property. Here we'll have two problems that
are examples of filtering.

### Problem 2

[Exercise 169](https://htdp.org/2019-02-24/part_two.html#%28counter._%28exercise._work3%29%29), where you
  keep `posn`s that match a criteria.

### Problem 3

Write a function `drop-empty-strings` that takes a list of strings and returns a list
containing the *non-empty* strings.

As examples, consider the following tests (which are almost certainly
not sufficient – what about the empty list, for example?):

```racket
(check-expect
  (drop-empty-strings (cons "Morris" (cons "" (cons "Minnesota" (cons "" (cons "USA" '()))))))
  (cons "Morris" (cons "Minnesota" (cons "USA" '()))))

(check-expect
  (drop-empty-strings (cons "a" (cons " " (cons "b" (cons "" (cons "c" '()))))))
  (cons "a" (cons " " (cons "b" (cons "c" '())))))
```

---

## Mapping over lists

Another common action is _mapping_, where we take a list and return a new list that is
the result of applying the same operation to every item in the list.
Here we'll have two problem that are examples of mapping.

### Problem 4

[Exercise 170](https://htdp.org/2019-02-24/part_two.html#%28counter._%28exercise._work4%29%29) from the textbook, where you replace
all the area codes in a list of phone numbers with a new area code. (This is the kind
of thing you'd need to do [when you split an area code](https://en.wikipedia.org/wiki/Area_codes_713,_281,_346,_and_832), 
as you'd need to give roughly half the numbers the new area code.)

### Problem 5

Write a function `map-length` that takes a list of strings and returns a list of
integers that are the lengths of the respective strings. E.g., (& again, these tests
are not comprehansive):

```racket
(check-expect
  (map-length (cons "Morris" (cons "Minnesota" (cons "USA" '()))))
  (cons 6 (cons 9 (cons 3 '()))))
```
