---
layout: lab
title:  "Lab 3"
date:   2019-10-09 10:28:34 -0500
categories: racket lab
---

# About this lab

Your task is to explore and develop world programs. Use the 
examples we used in class (in "Files -> In-class examples" on Canvas) 
for reference; [the documentation on the Universe Teachpack](https://docs.racket-lang.org/teachpack/2htdpuniverse.html) 
is also likely to be useful.
is also a link to the book chapter there. Make sure to ask questions
when you are stuck.

# Lab tasks: a world with a falling object

For this task you start with the following world example:
[humpty-dumpty.rkt](../humpty-dumpty.rkt). This provides a
skeleton for a simple world/`big-bang` program that you need to 
complete.

Your tasks are as follows:

1.  Read the description of the world above `main` to see what the world
    program is supposed to do and what the world state is.
2.  Change `render` to place the marble ball at the x coordinate
    specified in the constant `ball-x-coord` and the y coordinate given
    by the world state (it starts at the top of the canvas). Note that
    the `check-expect` tests indicate the correct behavior 
    and provide a significant hint for the
    expression in `render`; make sure you uncomment them so you 
    get the benefit of those tests when you run your file.
    You don't need to implement the ball
    breaking as it reaches the ground.
3.  Once you added rendering of the ball, you need to change the `fall`
    function to make the ball falling at the number of pixels per clock
    tick that's given in the variable `speed`. Uncomment the
    `check-expect` tests, fill in the right expression, and run the program to
    test. The ball doesn't (for now) need to stop at the bottom of the canvas.
4.  Change the `fall` function so that once the ball reaches the ground
    (the `ground-size` constant might be useful), it stops falling and remains at the
    same position. That requires making `fall` into an `if` or a
    `cond`. Add one or two new `check-expect` tests for `fall` that
    check for appropriate behavior in this case.
5.  Now you need to make it so that when one clicks on the ball, it
    returns back to the top. In order to implement it, write two helper
    functions, `distance` and `within-radius?`. Make sure to read the
    signatures, the descriptions and the check-expects. Note that the
    `within-radius?` helper function uses the `distance`. You 
    might want to look up [the formula for distance between 
    two points](https://www.wikihow.com/Find-the-Distance-Between-Two-Points).
    See the figure below for examples.
6.  Write the `move-to-start` function using `within-radius?` 
    as a helper function. Use the comments and tests for 
    `move-to-start` as a guide for what needs to be done. Make sure 
    you uncomment the `check-expect` tests. Also make sure you
    uncomment the line in
    the definition of `main` (where `big-bang` is called) that uses 
    registers `move-to-start` as a mouse handler. Test your program.
7.  Change the rendering so that once the ball
    is on the ground, it displays the `broken-ball` image instead of the `ball` image; 
    this will also require a conditional. You should also add at least one new 
    `check-expect` test to `render` that tests this new functionality.

The following figure illustrates the ideas behind both `distance` and
`withing-radius?`:

![Illustration of `distance` and `within-radius?`](../assets/images/Lab_3.png)