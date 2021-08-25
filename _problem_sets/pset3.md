---
layout: problem_set
title:  "Problem Set 3"
date:   2021-10-15 10:28:34 -0500
categories: racket problem_set
---

## Background

This is a pair of problems that will help solidify our understanding
of world/`big-bang` programs in Racket.

:bangbang: Please make sure that every function you write has a 
signature, description, and when appropriate (which is almost 
always) test cases.

## Traffic lights

Do [Exercise 51](https://htdp.org/2021-02-24/part_one.html#%28counter._%28exercise._cond3%29%29).

To be honest, it's not entirely clear what the textbook's authors
intend by the phrase "for a given duration". I'm going to take that
to mean that there is a constant `duration` defined that indicates
how many clock ticks each color should be displayed before we switch
to the next color.

So if, for example, we had:

```racket
(define duration 10)
```

then our traffic light would display a red circle for 10 ticks, then
a green circle for 10 ticks, then a yellow circle for 10 ticks, 
and then back to a red circle, etc., etc.

The question then is what we want the world state to be. There are a
number of reasonable options here, but I recommend a state that is
a structure combining the current light color and how many ticks that color has been displayed. The light color the [enumeration](https://htdp.org/2021-02-24/part_one.html#%28part._sec~3aenums%29) 
"green", "yellow", and "red", and the number of ticks is a number,
so we have a structure like:

```racket
; A light-color is one of these Strings:
; - "green"
; - "yellow"
; - "red"
; time-displayed is a natural number (non-negative integer).
(define-struct light-state [light-color time-displayed])
```

Then your `on-tick` function should see if the `time-displayed`
component of the state is greater than `duration`. If it is, then
`time-displayed` should be reset to 0 and the `light-color` should
be advanced. You might find the `traffic-light-next` function in the book (just above the problem statement) useful for advancing
the color.

## A simple game

Design and implement a simple game that contains a player and an apple. 
The player (displayed as a simple circle)
can be moved by the four arrow keys: "up", "down", "left",
"right". The apple starts at the top of the canvas at a random x
coordinate and keeps falling at a constant speed. The goal of the
game is for the player to catch the apple before it hits the
ground.

The world state is a structure with four fields: the x,y coordinates
of the player and x,y coordinates of the apple. Your `on-tick` 
function will update the position of the apple, but leave the 
position of the player unchanged. Your `on-key` function will (if
the key is one of the arrow keys) update the position of the player,
leaving the position of the apple unchanged.

Use `stop-when` to stop the game when the apple touches the ground
or when the player catches the apple. We'll say that the player 
catches the apple when the coordinates of the center of the apple 
and the player coordinates are "close enough" to each other. We'll
let you decide what "close enough" means in this context, but you
probably want to allow at least 5 to 10 pixels.

You may use just dots of different colors for the player and the
apple. You may also use images such as this one for the apple:

![clip-art apple](../assets/images/apple.png)

:bangbang: 
Implement the functionality one step at a time: 

- First implement the apple movement on clock tick
- Then implement the player movement in response to arrow keys
- Finally implement the `stop-when` condition (with helper 
  functions, as needed) to stop the game. 
  
:bangbang: Write tests for the functions that you are implementing.

