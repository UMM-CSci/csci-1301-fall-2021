---
layout: problem_set
title:  "Game of Life 0: Overview"
date:   2021-11-29 10:28:34 -0500
---

## Game of Life overview <!-- omit in toc -->

We're going to wrap up the semester with a project
consisting of a set of steps that
collectively build a Racket implementation of
Conway's Game of Life
([the Wikipedia entry](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) is good and recommended).

Life is an example of a _cellular automata_, a simple model of
computation that nicely illustrates how some very simple rules can
lead to quite complex behavior. There is evidence, for example,
that some chemical processes may behave in ways similar
to cellular automata, and that these may play an important role
in the evolution of
[color patterns in plants and animals](https://phys.org/news/2017-04-lizard-biology-mathematics.html).

- [The rules](#the-rules)
- [Some sample behaviors](#some-sample-behaviors)
- [Implementing this in Racket](#implementing-this-in-racket)
  - [The world state: A list of `posn`](#the-world-state-a-list-of-posn)
  - [Don't forget what you've learned](#dont-forget-what-youve-learned)
  - [Learn new stuff](#learn-new-stuff)
  - [The structure of the solution](#the-structure-of-the-solution)

## The rules

The short version is that we have a grid of cells, where each
cell is on/off (true/false, black/white, zero/one, alive/dead). At
each timestep every cell is updated according to these
simple rules:

- Any live cell with two or three neighbors survives.
- Any dead cell with three live neighbors becomes a live
  cell.
- All other live cells die in the next generation.
  Similarly, all other dead cells stay dead.

Here "neighbor" is any of the eight cells that are
adjacent horizontally, vertically, or diagonally.

## Some sample behaviors

From these simple rules quite remarkable complexity can
develop. There are _stable_ configurations that just stay
exactly as they are, assuming some other patterns don't come in and
interfere. For example the _block pattern_ will, on its own just
persist forever. (You probably want to confirm that by applying the
rules above).

![The block configuration, which remains stable over time](https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Game_of_life_block_with_border.svg/66px-Game_of_life_block_with_border.svg.png)

There are also oscilating configurations such as the _blinker_:

![The blinker configuration, which oscilates back and forth between two states indefinitely](https://upload.wikimedia.org/wikipedia/commons/9/95/Game_of_life_blinker.gif)

And configurations that move forever like the _glider_, which
(in this example) moves down
and to the right forever, or until it runs into some other live cells
which alter or disrupt its behavior.

![The glider configuration, which moves forever down and to the right](https://upload.wikimedia.org/wikipedia/commons/f/f2/Game_of_life_animated_glider.gif)

In fact you can build entire computational systems in
Life, where things like gliders can be used as "signals" that travel
from one part of the system to another, triggering other events upon
their arrival.

## Implementing this in Racket

So let's implement this in Racket!

To implement the whole thing isn't actually that complicated, but I
think it would be a bit much in our timeframe, so I'll provide parts
and you'll provide parts. I'll also break this up into several pieces
that will be due at different stages so we have a structured path for
getting this done.

### The world state: A list of `posn`

We'll use Racket `big-bang` to run the simulation. To do that we need
to design the "world state" that we're going to use. I'm going to
structure our solution around a world state that will be a list of
the "live" cells in the world, where each cell is just going to be
a `posn` holding the the x- and y-coordinates of that cell on the
grid. So a world is a list of `posn`s, where each `posn` contains two numbers:

```racket
;   live-cell: posn
;   world: [posn]
```

Note that here it's crucial that we have lists to hold the state since
we don't know how many live cells there will be at any particular
moment in time. So we simply _couldn't_ have done this before we had
gone over `cons`, `lists`, and the like. A lot of our implementation
will require processing lists of cells (`posn`s), either through explicit
recursion or through the use of list processing tools like `map`,
`filter`, or `foldl`/`foldr`.

### Don't forget what you've learned

Throughout the process remember to use the design
steps to help you work through the different parts of
project:

- Include descriptions
- Include signatures
- Write tests (except for places where there are lots of random elements, like drawing randomly generated world states)
- If you're using explicit recursion, sketch out the
  framework of your recursion, i.e., a `cond` with cases for:
  - The empty list `'()`
  - A non-empty list, so `(... (first xs) ... (f (rest xs)) ...)`

There's a fair bit here, so…

- Start early
- Stay focussed
- Ask lots of questions.
- Don't beat your head against any wall for terribly long.

You'll have *some* class time to work on this, but you'll
probably also need time outside of class to get this
done.

### Learn new stuff

There's a lot here that we haven't covered, or we've covered only
briefly. For better or worse, this is the reality of computer
science. Things move _very_ quickly, and even experienced professionals
spend a _lot_ of their time reading up on things that they've never
seen before, have heard of but never used, or used a while ago but
have forgotten the details of.

If you come across something you've not seen before, look it up.
Lots of the higher-order function ideas and tools (things like
`lambda`, `filter`, `map`, and `fold`) are covered in
[Part III of the textbook](http://htdp.org/2021-11-15/Book/part_three.html), and [the start of Chapter 16](http://htdp.org/2021-11-15/Book/part_three.html#%28part._ch~3a3use%29)
has a nice summary table.

Also remember that the specific functions are documented in
["Intermediate Student with Lambda"](https://docs.racket-lang.org/htdp-langs/intermediate-lam.html). Use the index along the left side
or the "Find" function in your browser to search for a specific
function like [`filter`](https://docs.racket-lang.org/htdp-langs/intermediate-lam.html#%28def._htdp-intermediate-lambda._%28%28lib._lang%2Fhtdp-intermediate-lambda..rkt%29._filter%29%29).

If all that sounds intimidating, keep in mind that being able to
do this kind of research is a highly valuable skill that you'll
use your whole life regardless of whether you end up working
in computing. Also remember that I'm here to help, so if you
wander into a swamp and get stuck, just send up a flare and I'll
come find you and help guide you back onto solid ground.

### The structure of the solution

The pieces will be:

- [Implement the basic display](game-of-life-display.html). Here you'll implement a simple "render"
  function that will draw the game "world".
- [Generate a list of the neighbors of a cell, and a world](game-of-life-neighbors.html).
  Here you'll implement the logic necessary to determine which cells
  are neighbors of living cells in the current world. This will be
  a key step in deciding who will be alive in the next "generation".
- [Determine who is alive in the next generation](game-of-life-alive.html).
  Now you'll build on the work on neighbors from he previous part
  to determine who will be alive in the next generation.
- [Pull it all together for `big-bang`](game-of-life-big-bang.html)
  At this point we have everything we need to bring it all together
  and call `big-bang` to see the game actually run.
