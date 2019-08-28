---
layout: lab
title:  "Lab 2"
date:   2019-08-13 10:28:34 -0500
categories: racket lab
status: draft
---

#### What to submit

The lab is done in groups of 2 (preferred) or 3. In the beginning of
each file please write (in comments) the names of all group members.
Also make sure to name your file as a combination of your last names
followed by the lab number, such as `SmithLeeLab2.rkt`.

#### The lab task

Your task is to write a simple animation, something similar to (and
building upon) the rocket landing example from
[Prologue](https://htdp.org/2019-02-24/part_prologue.html) which is
also posted on our [resources page](../resources.html). Also see an
[example of an animation.](../examples/simple-animation.rkt)\
Your animation may be constructed out of shapes, pictures, or a
combination of those. Use your imagination, and then build your
animation step by step, running it after each modification. Focus on
good code style (use variables, helper functions, meaningful names,
comments to clarify your code). Browse the image.rkt teachpack to see
what\'s there, use various elements (you can write text using strings,
too!). Feel free to experiment with randomness.

All animations will be posted anonymously on the class web page and will
be voted on based on the functionality and creativity and, separately,
code style. The top solutions will get extra credit.

Your animation must satisfy the following requirements:

1.  It has to have a background that stays the same for all or most of
    the animation (it can be just a rectangular color shape, or it can
    be more involved).
2.  It must have at least four moving basic shapes. A basic shape is
    either an image that you insert or a shape given by a pre-defined
    function such as a circle, a rectangle, a triangle, a line, etc. The
    shapes can move together (e.g. an airplane) or separately.
3.  The size of the scene must be given as constants and should be
    adjustable, i.e. if I change the size of the scene your animation
    should adjust: it doesn\'t have to scale every image, but at least
    the background and the position of the objects (centering, etc
    should be reasonable).
4.  It has to follow good programming style. Make sure to use constants
    and helper functions to avoid code repetition. Use good names. Make
    sure all functions have signatures and good descriptions. Indent and
    format your code properly and use comments. Don\'t postpone cleaning
    up the code until the end: any time you see an opportunity to
    imporove your code, do it. Code style will be a significant part of
    your grade.

#### How to submit

Make sure that your file is named correctly:\
Name your file with the combination of your last names, no spaces,
followed by the word \"Lab\" and the lab number. For instance, if your
last names are Smith and Lee, the file name should be `SmithLeeLab2.rkt`
If there are others in the class with the same name as yours, you your
initial in addition to your last name: `MSmithJLeeLab1.rkt`

At least one person in the group must submit it via canvas as a file
upload (make sure it\'s that `.rkt` file). Make a comment indicating who
you worked with. The other person (or people) in the group may submit
the same file and also indicate who was in the group or just make a
comment listing all your group members (note: if you don\'t submit a
note listing your group members, your work may not be counted, even if
your group partners list you as the group member).

------------------------------------------------------------------------

[CSci 1301 course web site](../index.html).
