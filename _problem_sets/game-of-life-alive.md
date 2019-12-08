---
layout: problem_set
title:  "Game of Life 3: Live cells"
date:   2019-11-30 11:28:34 -0500
status: draft
---

## Game of Life live cells <!-- omit in toc -->

In our previous work on our implementation of
[Conway's Game of Life](game-of-life.html) in Racket, we implemented
the idea of neighborhoods and counting neighbors. In this part we'll
use that to decide which cells are going to be alive in the next generation.
Once we have that, it will be quite straightforward to bring it all
together with Racket's `big-bang` and we'll have a full, working version
of Life.

Make sure you write descriptions and signatures for all your functions,
and add more tests as you think it necessary or helpful.

## Counting number of occurrences

Our function `all-neighbors` from
[the previous part](game-of-life-neighbors.html) takes a world
state (a list of cells, or `posn`s) and returns a list of all the
cells that are neighbors of a live cell in the world state. Crucially,
it includes duplicates, so if a cell is a neighbor of multiple live
cells, it will be included multiple times in the result, once for each
live cell it's a neighbor of.

### Exercise 1: `num-occurrences`

![The Racket icon](../favicon-32x32.png)
Our first step in this process is to write a function `num-occurrences` that
takes a list and a value, and returns the number of times that value occurs
in the given list. For example, it should pass these tests:

```racket
(check-expect
 (num-occurrences (list 3 2 0 5 8 9 6 3 2 0) 3)
 2)

(check-expect
 (num-occurrences (list (make-posn 5 9)
                        (make-posn 3 2)
                        (make-posn 3 7)
                        (make-posn 5 9)
                        (make-posn 8 4)
                        (make-posn 5 9))
                  (make-posn 5 9))
 3)
```

You can write this pretty easily using `filter` (with a `lambda`) and `length`.
Or you could use explicit recursion.

The one tricky big is how to check for whether two things are equal here.
Since this should work for objects of essentially any type, we can't use
type-specific equality tests like `=` or `string=?`. What you want to use is
the "generic" equality test `equal?` as that will do the "expected" thing for
most types.

## Frequency counts

Now that we can count how many times a _single_ value occurs in a list, we want
to write a function `frequencies` that takes a list of values and returns a
list of lists that tell us how many times _every_ value in the list occurs.
The output should be a list of pairs, where each pair has a _value_ and a 
_count_ (how many times that value appears in the input list).

We could just use `list`s of two items for these pairs, but defining a `struct`
will make it a little clearer when we're using these pairs. This will especially
help since we'll have lists of these pairs, and if they were lists of
lists there are a variety of ways we could get confused about which kind of
list we were dealing with.

So let's use

```racket
(define-struct count-pair (value count))
```

to store a value and it's associated count. Thus something like

```racket
(make-count-pair (make-posn 7 5) 3)
```

could be used to indicate that the cell (7, 5) appeared three times in the
list returned by `all-neighbors`. That would mean that the cell (7, 5) would
be alive in the next generation, regardless of whether it's alive in the
current generation.

### Exercise 2: `count-pair<`

![The Racket icon](../favicon-32x32.png)
To help out with our tests later, it'll be useful to have a `count-pair<`
function similar to the `posn<` function from earlier. Here `count-pair<`
should take two `count-pair`s and return `#true` if the `value` of the first
pair is less than the `value` of the second pair, and #false otherwise.
(Unlike with `posn<`, we _don't_ need to compare the `count`s if the `value`s
are equal.)

You _do_ need to assume that the `value` is going to be a `posn` since that's
what we're going to be using as values later. It should, for example, pass

```racket
(check-expect
 (count-pair< (make-count-pair (make-posn 3 5) 7)
              (make-count-pair (make-posn 8 4) 2))
 #true)
 ```

 (You should _definitely_ write more tests than just this for `count-pair<`.)

### Exercise 3: `frequencies`

![The Racket icon](../favicon-32x32.png)
Write a function `frequencies` that takes a list of values of any type and returns a list of `count-pair`s that indicate how many times each distinct
value occurred in the input list.

As an examples:

```racket
(check-expect
 (sort (frequencies (list (make-posn 3 5)
                          (make-posn 2 0)
                          (make-posn 8 9)
                          (make-posn 3 5)
                          (make-posn 8 9)))
       count-pair<)
 (sort
  (list (make-count-pair (make-posn 3 5) 2)
        (make-count-pair (make-posn 2 0) 1)
        (make-count-pair (make-posn 8 9) 2))
  count-pair<))
```

After emphasizing the use of higher-order functions like `map`, `filter`
and `fold`, I think your best bet here is explicit recursion. It sort of feels
like we ought to be able to use `fold` here, but there's a little snag.
The issue is that you need to make sure you remove all occurrences of the
first element of the list from the rest of the list before making the
recursive call, and you can't really do that with `fold`.

Consider the example in the `check-expect` above. You essentially want
to do the following:

- Count how many time `(make-posn 3 5)` (the `first` item in the list) appears
  in the list. `num-occurrences` should do this for you quite nicely.
- Recurse on `(list (make-posn 2 0) (make-posn 8 9) (make-posn 8 9))`.
  
Note that we removed the second occurrence of `(make-posn 3 5)` from
our list before recursing. If we didn't do that our result would end up with
_two_ `count-pair`s for `(make-posn 3 5)`; the first would have count 2, and
then the second would have count 1. 

You might find it useful to use the "build-in" function `remove-all` to take
care of removing all occurrences of the first `posn` from the `rest` of the
list.

This solution to this is short, but can be a little tricky. Be careful
about the types of things and that should help a lot.
