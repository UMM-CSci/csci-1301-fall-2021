---
layout: lab
title:  "Lab 2"
date:   2019-08-13 10:28:34 -0500
categories: racket lab
---

#### What to submit

The lab is done in groups of 2 (mostly) or 3. Include the names of
all your group members (in comments) at the start of your Racket file(s).

#### The lab task

Your task is to write a simple animation, something similar to (and
building upon) the rocket landing example from
[Prologue](https://htdp.org/2019-02-24/part_prologue.html) which is
also posted [here](http://cda.morris.umn.edu/~elenam/1301fall2018/examples/rocket-example.rkt).
We also have [several examples of animations from class](https://canvas.umn.edu/files/8423073/download?download_frd=1) (requires logging in to Canvas).
[Here is another example of an animation.](http://cda.morris.umn.edu/~elenam/1301fall2018/examples/simple-animation.rkt)
from a previous semester in case that's helpful, and you can also look at
[the animations from last year's class](http://cda.morris.umn.edu/~elenam/1301fall2018/cartoons/cartoons.html) for inspiration.

Your animation may be constructed out of shapes, pictures, or a
combination of those. Use your imagination, and then build your
animation step by step, running it after each modification. Focus on
good code style (use variables, helper functions, meaningful names,
comments to clarify your code). Browse [the `image.rkt` teachpack documentation](https://docs.racket-lang.org/teachpack/2htdpimage.html)
to see what's there, and make an effort to combine various elements. You can
also include text using strings if you want.
Feel free to experiment with randomness.

All animations will be posted anonymously and we'll have
an opportunity for people to see and provide feedback on the work of other
groups.

Your animation must satisfy the following requirements:

1.  It has to have a background that stays the same for all or most of
    the animation (it can be just a rectangular block of color, or it can
    be more involved).
2.  It must have at least four moving basic shapes. A basic shape is
    either an image that you insert or a shape given by a pre-defined
    function such as a circle, a rectangle, a triangle, a line, etc. The
    shapes can move together (e.g., several shapes that collectively form an airplane)
    or separately.
3.  The size of the scene must be given as constants and should be
    adjustable, i.e. if I change the size of the scene your animation
    should adjust: it doesn't have to scale every image, but at least
    the background and the position of the objects (centering, etc.)
    should be reasonable.
4.  It has to follow good programming style. Make sure to use constants
    and helper functions to avoid code repetition. Use good names. Make
    sure all functions have signatures and good descriptions. Indent and
    format your code properly and use comments. Don't postpone cleaning
    up the code until the end: any time you see an opportunity to
    imporove your code, do it. Code style will be a significant part of
    your grade.

#### How to submit

Each group should have one person in the team submit your work via canvas as a file
upload (make sure it's that `.rkt` file). Only one person needs to submit; Canvas
will connect that to everyone else in the team.
