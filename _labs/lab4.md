---
layout: lab
title:  "Lab XXX"
date:   2019-08-13 10:28:34 -0500
categories: racket lab
---

#### About this lab

Work in groups of 2 or 3.

The lab asks you to build upon examples of Racket \"worlds\". Racket
\"worlds\" allow you to create programs similar to animations, but
worlds are interactive, i.e. they can react to mouse movements, pressed
keys, and the like. Functions for worlds are given in the
[universe.rkt](http://docs.racket-lang.org/teachpack/2htdpuniverse.html)
teachpack.

Examples we have considered in class: [moving
dot](../examples/moving-dot-solution.rkt) (with the changes that we made
in class), and [recording positions of
clicks](../examples/show-clicks.rkt).

### Task 1 (3 points): Changing the clicks example

Study the example of showing the position of clicks: [recording
positions of clicks](../examples/show-clicks.rkt). Change it so that it
shows empty canvas before the first click (hint: what is the world state
before the first click? Add a special case to `show` for it that just
shows a blank scene).

### Task 1 (22 points): Improving the moving dot example

Start from the [moving dot](../examples/moving-dot-solution.rkt) example
that we did in class. Your tasks are as follows:

-   Finish changing the example so that the dot never moves off the
    screen. We have implemented it for the \"up\" arrow: if the dot is
    touching the upper border and I press the \"up\" arrow, it stays in
    the same position. Implement this functionality for all four sides.
    Make sure that your code works correctly if the width and height are
    changed (not necessarily to the same number).\
    Use helper functions to move long computations out of the top-level
    functions. Make sure to add check-expects for the new functionality.
-   Add handling for the key \"c\" so that when it\'s pressed, the dot
    moves to the center of the canvas.
-   Add handling a key \"r\" (for \"random\"): when it is pressed, the
    dot jumps to a random position within the canvas. Here is [the
    description of the function
    `random`](http://docs.racket-lang.org/htdp-langs/beginner.html#%28def._htdp-beginner._%28%28lib._lang%2Fhtdp-beginner..rkt%29._random%29%29).
    Try changing the width and height to see if it\'s always on the
    screen.
-   Implement handling clicks (\"button-up\" mouse event) so that a
    click on the canvas moves the dot to the position that was clicked.
    Don\'t forget to include the \'else\' part of the condition to leave
    the dot position unchanged fro any other mouse event.

### Extra credit, 10 points: add key handling to change the color of the dot

Copy your current moving dot solution into a separate file: you will be
making changes in multiple places.

The only way to keep track of the color of the dot is to incorporate it
into the world state. This means expanding the structure that you
currently have. You can do it in two different ways: use a nested
structure that contains the `posn` structure and the color, or define
your own structure that contains x, y, and a color. Discuss which of
these approaches you would like to take and change the world state
accordngly. This means changing all the current functions that consume
the state (you don\'t have to copy over all the functionality that you
have implemented earlier, just a couple of key events and the mouse
event). Use the color part of the structure in `show` (instead of the
current magenta) to display the color.

Test your changes carefully, use a color different from magenta when you
provide the initial world state to the big bang.

Pick some letter keys to denote color, for instance \"y\" for yellow,
\"g\" for green, etc. Make sure they are different from the keys that
you use to move the dot. Add these cases to your key event handling
functions to change the world state to the color determined by the key.
If your `show` function uses the color in the world state then this
should be sufficient to see the color changes. Test your world to see if
all events are working as expected.

#### How to submit

Make sure that your file is named correctly:\
Name your file with the combination of your last names, no spaces,
followed by the word \"Lab\" and the lab number. For instance, if your
last names are Smith and Lee, the file name should be `SmithLeeLab4.rkt`
If there are others in the class with the same name as yours, you your
initial in addition to your last name: `MSmithJLeeLab4.rkt`

At least one person in the group must submit it via canvas as a file
upload (make sure it\'s that `.rkt` file). Make a comment indicating who
you worked with. The other person (or people) in the group may submit
the same file and also indicate who was in the group or just make a
comment listing all your group members (note: if you don\'t submit a
note listing your group members, your work may not be counted, even if
your group partners list you as the group member).

------------------------------------------------------------------------

[CSci 1301 course web site](../index.html).
