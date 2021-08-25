---
layout: problem_set
title:  "Game of Life 4: Big-bang"
date:   2021-11-30 12:28:34 -0500
---

## Game of Life: `big-bang`

Now we have everything we need to run `big-bang`!

- [Game of Life: `big-bang`](#game-of-life-big-bang)
  - [Exercise 1: `run-life`](#exercise-1-run-life)
- [Ways we could fancy this up](#ways-we-could-fancy-this-up)
  - [Add control buttons](#add-control-buttons)
  - [Add the ability to turn cells on or off](#add-the-ability-to-turn-cells-on-or-off)
  - [Handle large numbers of cells more efficiently](#handle-large-numbers-of-cells-more-efficiently)

### Exercise 1: `run-life`

![The Racket icon](../favicon-32x32.png)
Write a function `run-life` that takes an initial world state and calls
`big-bang` with the appropriate configuration that it runs Conway's
Game of Life. All you need to specify are `on-tick` and `to-draw`, and
you've (hopefully) already written the functions you need for both
of those functions.

You should be able to try it out with commands like:

```racket
; (run-life blinker)
; (run-life glider)
; (run-life (shift-cell-list (random-world 10 10) (make-posn 40 40)))
```

The first should just give you a blinker in the upper left corner that
oscillates back and forth until you stop it. The second should give you
a single glider that starts in the upper left corner and "walks" down and
to the right.

The last creates a block of random cells roughly in the middle of the
window, which then go forward in time in whatever direction that random
configuration and the rules leads. You can change `(random-world 10 10)`
to `(random 20 20)` and you'll perhaps get a more interesting result,
although it's likely to run more slowly, perhaps _much_ more slowly,
especially if there are a substantial number of living cells.

Play around and have some fun!

## Ways we could fancy this up

If you've got `run-life` working, you're done! There are ways we could
make this cooler, though, and you should feel free to explore some if you
want.

### Add control buttons

It would be cool, for example, to have play, pause, step forward,
step backward, etc. buttons, maybe at the bottow of the window underneath
the "world". This wouldn't be _hard_, but it would require some drawing and
implementing the click logic in an `on-mouse` function.

You'd also probably need to extend the world state to be a `struct
that included a boolean that indicated whether the simulation was running
or paused, and the list of live cells in the current generation.

Stepping forward would be no problem, but stepping _backward_ would
be a bit of work. What would you need to do to make that happen?

### Add the ability to turn cells on or off

It would be nice if you had some `on-mouse` functionality that would
allow the user to click on cells to flip their state, i.e., turn live
cells to dead, and bring dead cells to life.

This wouldn't be too bad, although you'd have to map from the location of
the mouse click in pixel space back to the correct cell location in cell
space.

### Handle large numbers of cells more efficiently

The solution outlined in these exercises works and is pretty fast as
long as you don't have too many live cells spread out across the world.
If you get a lot of cells scattered about, though, it begins to bog down
pretty badly.

- Can you figure out why? Which part of all this code is the bottleneck?
- Once you identify the bottleneck, how could you make that go faster?

It turns out that this isn't trivial given the tools we have at the moment.
If you next Data Structures, though, you'll learn about some neat data
structures like hash tables and binary search trees that might be useful
in attempting to speed this up. In "full" Racket (i.e., past the student
languages) there are additional tools that we could use to make things
go faster, but they often use features we haven't covered.
