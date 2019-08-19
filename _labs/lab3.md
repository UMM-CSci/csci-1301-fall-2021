---
layout: lab
title:  "CSci 1301: Lab XXX"
date:   2019-08-13 10:28:34 -0500
categories: racket lab
---

CSci 1301: Lab 3
----------------

#### Due: Monday, October 8th at 11:59pm

#### About this lab

Work in groups of 2 or 3.

Your task is to explore and world programs. Use the examples we used in
class (on the [resources page](../resources.html)) for reference; there
is also a link to the book chapter there. Make sure to ask questions
when you are stuck.

#### Lab tasks (25 points): a world with a falling object

For this task you start with the following world example:
[humpty-dumpty.rkt](../examples/humpty-dumpty.rkt). Your task are as
follows:

1.  Read the description of the world above `main` to see what the world
    program is supposed to do and what the world state is.
2.  Change `render` to place the glass ball at the x coordinate
    specified in the constant `ball-x-coord` and the y coordinate given
    by the world state (it starts at the top of the canvas). Note that
    check-expects give the correct behavior and provide a hint for the
    expression in `render`. You don\'t need to implement the ball
    breaking as it reaches the ground.
3.  Once you added rendering of the ball, you need to change the `fall`
    function to make the ball falling at the number of pixels per clock
    tick that\'s given in the variable `speed`. Uncomment the
    check-expects, fill in the right expression, and run the program to
    test. The ball doesn\'t need to stop at the bottom of the canvas.
4.  Now you need to make it so that when one clicks on the ball, it
    returns back to the top. In order to implement it, write two helper
    functions, `distance` and `within-radius?`. Make sure to read the
    signatures, the descriptions and the check-expects. Note that the
    `within-radius?` helper function uses the `distance`. You might want
    to look up the formula for distance between two points.
5.  Using the `within-radius?` function, write the `move-to-start`
    function according to its comments and tests. Uncomment the line in
    big-bang that uses it as a mouse handler. Test your program.
6.  Change the `fall` function so that once the ball reaches the ground
    (see `ground-size` constant), it stops falling and remains at the
    same position. That would require making `fall` into an `if` or a
    `cond`. Add tests to check for this case.
7.  **Extra credit (4 points):** change rendering so that once the ball
    is on the ground, it breaks into several triangles. Just show the
    triangles on the ground, you don\'t need to show the breaking
    process.

#### How to submit

Make sure that your file is named correctly:\
Name your file with the combination of your last names, no spaces,
followed by the word \"Lab\" and the lab number. For instance, if your
last names are Smith and Lee, the file name should be `SmithLeeLab3.rkt`
If there are others in the class with the same name as yours, you your
initial in addition to your last name: `MSmithJLeeLab3.rkt`

At least one person in the group must submit it via canvas as a file
upload (make sure it\'s that `.rkt` file). Make a comment indicating who
you worked with. The other person (or people) in the group may submit
the same file and also indicate who was in the group or just make a
comment listing all your group members (note: if you don\'t submit a
note listing your group members, your work may not be counted, even if
your group partners list you as the group member).

------------------------------------------------------------------------

[CSci 1301 course web site](../index.html).
