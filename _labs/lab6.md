---
layout: lab
title:  "Lab 6"
date:   2019-11-26 10:28:34 -0500
categories: racket lab
status: draft
---

#### What to submit

The lab is done in groups of 2 or 3.

### Balloon problem (30 points)

Start with the [balloon exercise](../examples/balloons.rkt) and
implement the world functionality as described below. The \"world\" is a
multitude of randomly generated balloons that start at the botom of the
screen and float up. The world state is a list of balloon structures.
The structure is already defined in the file:


        (define-struct balloon [x y size color])

        ;; example:
        (make-balloon 100 200 2.5 "blue")


The x and y are the coordinates of the balloon, size is its size
relative to the example given in the file, and the color is its color.\
You need to implement the following, step by step:

1.  The function `balloon-picture` that takes a ballon structure and
    returns the picture of the balloon of the given size and color. It
    doesn\'t use the coordinates. the function must work according to
    the two given check-expects.
2.  Add at least one check-expect for the function `draw-balloons`. The
    function takes a list of balloon structures and returns a scene
    width-by-height in which all baloons are placed one-by-one on top of
    the empty scene.\
    After you have added the check-expect for an empty list and perhaps
    more, implement the function accordingly.\
    When you run your program, you should see the two starting balloons
    on the scene. They don\'t move yet.
3.  Write tests for the function `move-balloons` according to its
    description. Think of how the balloon positions change on every
    clock tick, then write the list of balloon structures with the new
    positions. Note that there is a `speed` constant defined.\
    Once you have written the tests, implement the function. You should
    see the two balloons floating up.
4.  Once you get this to work, change the initial state to generate a
    list of two balloons at the random x poistion at the bottom of the
    screen with a random size (i.e. the scaling factor) between 0.5 and
    1.5 and of a random color that you can get by passing a random
    number to the color chooser. Watch your new balloons float up.
5.  Change your `move-balloons` function so that when a balloon
    disappears from the screen, it is removed from the list. You should
    write a predicate `is-visible?` that checks if a balloon is still
    visible on the scene. **This feature is very important for writing
    games:** if you don\'t remove invisible objects, you get too many of
    them and your game starts slowing down.\
    In order to check if it worked, click to exit the program once the
    balloons are off the screen, and check the world state printed by
    the program to see if they are still in the list. Study the
    filtering example in [the solutions for making
    lists](../examples/making-lists-solutions.rkt) to help you implement
    this feature.
6.  Further change the `move-balloons` function to add a new balloon at
    the bottom of the screen at a random x coordinate and of a random
    color and size (use color-chooser, feel free to add more colors) on
    every clock tick. Add it to the end of the list (the base case for
    the empty list). Think carefully of what kind of thing the function
    needs to return (hint - look at the signature!). **Important: your
    check-expects will fail at this point; comment them out or switch to
    check-random**.
7.  Change your solution by adding an additional feature of your own
    idea and design (you may change your solution to the previous
    question; comment out the old code, but don\'t delete it). You can
    add features such as: adding a new balloon with some probability
    rather than on every clock tick (to avoid filling up the screen too
    quickly). You can add \"wind\" that makes balloons shift
    horizontally, in addition to vertically. You can have a balloon pop
    at random, or when it hits a tree branch.\
    Your world state must still be a list of balloons.\
    Especially interesting solutions may get an extra credit.\
    Clearly document the features that you are adding. Make sure that
    your functions have good names and signatures and descriptions.

#### How to submit

Name your file with the combination of your last names, no spaces,
followed by the word \"Lab\" and the lab number. For instance, if your
last names are Smith and Lee, the file name should be `SmithLeeLab6.rkt`
If there are others in the class with the same name as yours, you your
initial in addition to your last name: `MSmithJLeeLab6.rkt`

At least one person in the group must submit it via canvas as a file
upload (make sure it\'s that `.rkt` file). Make a comment indicating who
you worked with. The other person (or people) in the group may submit
the same file and also indicate who was in the group or just make a
comment listing all your group members (note: if you don\'t submit a
note listing your group members, your work may not be counted, even if
your group partners list you as the group member).

------------------------------------------------------------------------

[CSci 1301 course web site](../index.html).
