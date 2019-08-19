---
layout: problem_set
title:  "Problem Set XXX"
date:   2019-08-13 10:28:34 -0500
categories: racket problem_set
---

Please make sure that every function has a signature, description, and
test cases (as needed).

### Problems

-   Exercise [51 (12
    points)](https://htdp.org/2018-01-06/Book/part_one.html#%28counter._%28exercise._cond3%29%29).
    The world state for this problem is the enumeration \"green\",
    \"yellow\", \"red\".
-   Exercise [108 (12
    points)](https://htdp.org/2018-01-06/Book/part_one.html#%28counter._%28exercise._pedestrian%29%29)
    . There are different possibilities for the world state here. A
    convenient one is a number between 0 and 20 (think carefully about
    why it can\'t be just a number between 0 and 9).
-   **World problem with 4 coordinates (12 points).** Design and
    implement the world that contains a player and an apple. The player
    can be moved by the four arrow keys: \"up\", \"down\", \"left\",
    \"right\". The apple starts at the top of the canvas at a random x
    coordinate and keeps falling at a constant speed. The goal of the
    game is to make the player catch the apple before it hits the
    ground.\
    The world state is a structure with four fields: the x,y coordinates
    of the player and x,y coordinates of the apple.\
    Use `stop-when` to stop the game when the apple touches the ground
    or when the player catches the apple (so that the coordinates of the
    center of the apple and the center of the player are close enough to
    each other).\
    You may use just dots of different colors for the player and the
    apple. You may also use images.\
    Implement the functionality one step at a time: first the apple
    movement on clock tick, then the player movement by arrows, and
    finally the stop-when condition (with helper functions, as needed)
    to stop the game. Write tests for the functions that you are
    implementing.

------------------------------------------------------------------------

[CSci 1301 course web site](../index.html).
