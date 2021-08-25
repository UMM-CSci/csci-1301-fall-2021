---
layout: problem_set
title:  "Problem Set 0"
date:   2021-08-13 10:28:34 -0500
tags: [expressions, numbers, strings]
---

This is a simple set of exercises to give everyone some practice with the
basics of Racket expressions and
[the DrRacket development environment](https://racket-lang.org). These
are crucial building blocks that will form the foundation of everything that
will happen in this course, so start early and ask lots of questions.

**You should have at least one `check-expect` expression for each exercise.**

See the Canvas site for examples of solving similar exercises, and for info on
how to submit your work.

# Exercises

Do these exercises from
[Chapter 1](https://htdp.org/2021-5-4/Book/part_one.html)
of the course text:

   * [Exercise 3 (3
pts)](https://htdp.org/2021-5-4/Book/part_one.html#%28counter._%28exercise._arith-s1%29%29)
   * [Exercise 4 (3
pts)](https://htdp.org/2021-5-4/Book/part_one.html#%28counter._%28exercise._arith-s2%29%29)
   * [Exercise 8 (5
pts)](https://htdp.org/2021-5-4/Book/part_one.html#%28counter._%28exercise._arith-b2%29%29)
      * In exercise 8 it's fine to implement just `tall` and `wide`, and not `square`.

In all three of these the essential idea is to define named expressions, like
`x` and `y` defined by

```racket
(define x 7)
(define y 5)
```

and then use those named expressions to
create other more more complex expressions like

```racket
(* x y)
```

that have the desired properties. The expression `(* x y)` above, for example,
would be a great solution if the task was to write an expression that computes
the product of `x` and `y`.
