---
layout: lab
title:  "Lab 4"
date:   2019-11-13 8:28:34 -0500
categories: racket lab
---

## About this lab

Work in groups of 2 or 3.

The lab explores lists and recursion. Feel free to use examples
posted on Canvas to help illustrate the patterns, especially for
defining recursive functions.

## Making sure we understand `cons`

Problems in this section do not require recursion. **You may not use any
list functions other than `first, rest, cons, empty?, list`.** All
functions must have signatures, descriptions, and check-expects.

### `has-one-element?`

Write a function `has-one-element?` that, given a list,
returns `#true` if the list has exactly one element and `#false`
otherwise:

```racket
(check-expect (has-one-element? (list 2 3 5 6)) #false)
(check-expect (has-one-element? empty) #false)
(check-expect (has-one-element? (list 2)) #true)
```

### `has-more-than-one-element?`

Write a function `has-more-than-one-element?` that, given
a list, returns `#true` if the list has more than one element, and
`#false` otherwise:

```racket
(check-expect (has-more-than-one-element? (list 2 3 5 6)) #true)
(check-expect (has-more-than-one-element? empty) #false)
(check-expect (has-more-than-one-element? (list 2)) #false)
```


## Recursion! (Again and again)

These problems use recursion. Use the examples we did in class as sample
code. **All functions must have signatures, descriptions, and
check-expects.** (We've provided some `check-expect` tests, but you should add additional tests as needed.)

You can use either `cons` or `list` to build lists in your
`check-expect` tests. When in doubt, though, you may want to use
`cons` until you're feeling more comfortable about the the
construction and manipulation of lists.

### `product`

Write a function `product` that consumes a
list of numbers and returns their product. It returns 1 for an empty list.

```racket
(check-expect (product (list 2 3 -1)) -6)
(check-expect (product (list 4 6 0 8)) 0)
(check-expect (product empty) 1)
```

### `sum-non-negative`

Write a function `sum-non-negative` that adds
up all non-negative numbers in a list.

```racket
(check-expect (sum-non-negative (list -2 3 0 -1 5)) 8)
(check-expect (sum-non-negative (list 4 8)) 12)
(check-expect (sum-non-negative (list -1 -2)) 0)
```

### `count-odd`

Write a function `count-odd` that consumes a
list of numbers and returns the number of odd numbers in the list.

```racket
(check-expect (count-odds (list 2 3 1 5 0)) 3)
(check-expect (count-odds (list 4 6 8)) 0)
(check-expect (count-odds empty) 0)
```

### `sum-x-coords`

Write a function `sum-x-coords` that consumes
a list of positions and returns the sum of their x coordinates.

```racket
(check-expect 
  (sum-x-coords (list (make-posn 10 20) 
                      (make-posn 20 50))) 
  30)
(check-expect 
  (sum-x-coords (list (make-posn 10 -20) 
                      (make-posn 10 0))) 
  20)
(check-expect (sum-x-coords empty) 0)
```

### `first-odd`

Write a function `first-odd` that consumes a
list of numbers and returns the first odd number. Use the predefined
function `odd?` to determine if a number is odd. If no number in the
list is odd, return `#false`.

```racket
(check-expect (first-odd (list 2 3 1 5 0)) 3)
(check-expect (first-odd (list 4 6 8)) #false)
(check-expect (first-odd empty) #false)
```

## How to submit

Save your work in a `.rkt` and submit on Canvas. I should have
the groups set up on Canvas so that only one of you will need
to submit your group's work.

Make sure you have a comment at the top of the file that
indicates 

- What lab this is
- Who was in your group
- Any other people or on-line sources that you got material assistance from
