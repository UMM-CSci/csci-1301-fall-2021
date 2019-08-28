---
layout: assignment
title:  "Final Project"
date:   2019-08-13 10:28:34 -0500
tags: [racket, project, game, big-bang]
---

<div class="draft_notice">
  <h1>THIS IS A DRAFT</h1>
  <p>
    The basics of this are probably correct, but the details could change
    before this "goes live". Definitely ask if you feel
    that there's something that shouldn't be in "draft" status anymore.
  </p>
</div>
<hr>

Here in the final project we'll work in groups to design (very simple)
games in Racket.

#### Total: 50 points + 10 points presentation + possible extra credit based on voting and extra features

#### Intermediate submission

Intermediate submission is counted as 5 points out of the total 50, as
long as it\'s a reasonable start on your game (may have errors, may not
work - that\'s ok).

#### Final submission

#### Presentations

As always, please include a signature and a description for each
function. Functions that are not graphical also require `check-expect`
tests.

#### Work in groups of 2.

### Designing a small game

Your task is to design a small interactive game using the
[world](http://docs.racket-lang.org/teachpack/2htdpuniverse.html)
package in Racket (i.e. the `big-bang` function that we have used in
class). For example, you may use a \"create your own adventure\"
approach or write a small game that tests the user\'s attention and
reaction. The user may be interacting with the game by clicking or by
mouse movements or by pressing keys or choosing options (or any
combination thereof).

Your game should be simple: remember that implementing even simple
features takes time. Be creative: a simple good idea is better than
design that\'s too involved.

#### Requirements for a game

Features:

-   The scene must be updated at least 10 times throughout an average
    run of the game (due to randomness not all runs would be the same).
-   You must use user input (clicking, moving, etc) at least 5 times
    during an average run.
-   You may (and probably should) use randomness.
-   Your game must start by showing the rules.
-   Be creative.

Programming requirements:

-   In comments clearly document what your world state is.
-   You must use at least one list and at least one structure for
    storing information. Since your world state stores all the internals
    of the game, it is likely to have both lists and structures, in some
    combination
-   You may use predefined list functions (map, build-list, etc.) and/or
    write your own recursive functions. At least 5 uses of recursion
    (direct or via predefined functions) are required.
-   Complexity of your game will be graded. Satisfying just the minimum
    requirements may not give you full credit. You should use extra
    features, as appropriate for your game. They may include:
    structures, more recursive functions (direct or indirect), more
    scene updates, randomness, etc. **Make sure to list the extra
    features that you are using for your final submission**.
-   Your program must be well written and easy to read. Avoid code
    duplication: if you find yourself writing very similar code several
    times, you probably need a function for that functionality.

#### Grading criteria

The work will be graded based on satisfying the requirements above, the
quality and level of your work (more challenging projects will get more
credit); creativity and originality of your project; clarity, style, and
documentation of your code; your attendance during project lab time, and
the extra credit based on voting and extra features.

Each group will be presenting their game during the last week of the
class. Each group will have **5-7 minutes** to present their work
(including answering questions) All group members must be presenting.
Presentation requirements:

-   You need to demonstrate how your game works.
-   You need to explain what the world state is.
-   You need to show one or two code fragments that you find the most
    interesting in your code.
-   You have to be able to answer questions about your game.

#### What to submit

See the deadlines above.

------------------------------------------------------------------------

[CSci 1301 course web site](../index.html).
