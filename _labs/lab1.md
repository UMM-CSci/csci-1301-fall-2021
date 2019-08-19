---
layout: lab
title:  "Lab XXX"
date:   2019-08-13 10:28:34 -0500
tags: [expressions, functions]
---

### Prelude

#### Setup and changing your password

Before you can start on the lab, you need to log in to a lab computer
and change your password:

Log in using your x500 (the usual university) login name and the
password that follows the scheme that I will show in class.

Press the \"Windows\" key on your keyboard or click on Activities in the
left upper corner of your screen.

You can either search through a list of programs, or type in the search
bar, to find the following programs (right-click on them once you found
them, to add them to \"favorites\" in the Activities list):

-   A `terminal` (it serves as a command prompt)
-   DrRacket
-   Chrome (preferred) or another browser

Open the terminal window by double-clicking on it and type a command
`passwd`. You will be prompted to type in your current password and then
the new password twice. *For security reasons nothing shows on the
screen as you are typing your password*. If you make a mistake, press
Ctrl-C to stop the process and start over.

Make sure to remember your new password, otherwise you wouldn\'t be able
to log in next time you use the lab.

If you encounter any problems (such as your login not working), please
let me know right away.

As you are working, open a browser (Chrome would be a good choice) and
open the lab (this page) and Racket documentation linked from it, in
separate tabs. Consult it as needed.

Note that the picture of the file cabinet in Activities gets you to your
file system. Create folders and subfolders as needed, to organize your
files.

Name your file with the combination of your last names, no spaces,
followed by the word \"Lab\" and the lab number. For instance, if your
last names are Smith and Lee, the file name should be `SmithLeeLab1.rkt`
If there are others in the class with the same name as yours, you your
initial in addition to your last name: `MSmithJLeeLab1.rkt`

When you are done with your work, *don\'t forget to log out!* Click on
the \"on\" button in the right upper corner of your main monitor, then
on the arrow by your name, then select \"log out\". If you don\'t log
out, your account will be accessible to others and you may also have
problems when you later try to log in to another machine in the lab.

Even though you will be working in pairs or groups, every person needs
to change their password before starting the lab.

#### Work in groups.

The lab is done in groups of 2 or 3. You will use a pair-programming
approach: one person is a \"driver\", i.e. types in program
instructions, and the other person is a \"navigator\", i.e. guides the
driver as to what to type and what to do next. The roles are switched
every 10-15 minutes. For this lab it will be convenient to switch at the
end of each exercise. If you are working in groups of three, the roles
are: a \"driver\", a \"navigator\", and a \"quality control\" person.
Again, make sure to switch frequently.

#### Starting DrRacket, organizing your files

Start DrRacket from the Activities list. Make sure that the language is
set to \"Beginning student\". If it\'s not, go to \"Language\" menu of
DrRacket and set it. Also, if you have troubles accessing image
functions (in problem 3) then go to \"Language -\> Add Teachpack\" and
add \"2htdp\\image.rkt\" *from the middle column*.

You may also start DrRacket by double-clicking on a downloaded Racket
file, such as [first.rkt](../examples/first.rkt)

If you have accidentally added the teachpack from the first column, you
will be getting error messages when using image functions such as
`rotate`, either that the function definition is not found or that a
module has been imported twice. If this is happening, clear both
`image.rkt` teachpacks and then add the one in the middle column.

Start your lab by typing a comment in the beginning of the file with the
lab number and the names (first and last) of all group members. Recall
that Racket comments are lines that start with ; (a semicolon).

You should create a folder for your work in this class, and possibly a
subfolder for the lab so that you can keep each lab and each problem set
in a separate folder. In order to save a file go to \"File -\> Save
Definitions As\...\" and navigate to your folder. Make sure to save your
file with the extension `.rkt`. After you\'ve done it once you can just
use \"Save\" (or Ctrl-S) to save the file.

#### What to submit

You may do all your work in one file or in separate ones, whichever you
find more convenient. Make sure to submit all your files.

At the end of the lab please send me and your group partner(s) all your
Racket files as e-mail attachments. My e-mail is [elenam at
morris.umn.edu]{.email}. The subject of your e-mail must be \"1301 Lab
1\" followed by \"Final\" or \"Not final\", depending on whether this is
a final submission or you are still working on it. If you need to finish
it, make sure to set up a time with your group partner(s) to finish the
lab.

#### When to submit

Due Wednesday, September 6, at 11:59pm. If you submit the final version
during the lab, you are done.

### Problem 1: Infix to prefix conversion. (8 points)

Write Racket expressions that correspond to the given math expressions.
Check your answers by running the program, or, even better, by using
`check-expect`.

For instance, if are given `3 * (12/4 + 2)`, you rewrite it as a Racket
expression as `(* 3 (+ (/ 12 4) 2))`. Run it to check the answer, or,
better yet, figure out the answer before running the code, and use
`check-expect` to check:

    (check-expect (* 3 (+ (/ 12 4) 2)) 15)

Below are math expressions to write in Racket:

1.  `1.5 * 2 + 21/3`
2.  `(3 + 2 + 7)/(11 - 1 - 4)`
3.  `(3*(-2 +4))/(8/2 + sqrt(4))`
4.  `cos(0) + sin(0)`, where `cos` and `sin` are the cosine and sine
    functions, respectively. Racket uses `cos` and `sin` as function
    names.

### Problem 2: testing Racket functions. (9 points)

Find out what the following Racket functions do by testing them on
different arguments: `<=`, `max`, `gcd`.

For example, what happens if a function is applied to more than two
arguments? Fewer than two?

Please submit all of the tests that you tried in order to determine what
the function does. Explain your findings in comments. You may read the
function descriptions
[here](http://docs.racket-lang.org/htdp-langs/beginner.html) if you
would like, but the descriptions of the functions that you submit for
the lab must be your own.

### Problem 3: creating a shape. (8 points)

Your task is to use functions in
[image.rkt](http://docs.racket-lang.org/teachpack/2htdpimage.html)
teachpack to create a red shape that has a side of 200 pixels and looks
like this:

![](lab1.jpg)

There are different ways of creating this shape. Some functions that you
may find helpful are:
`square`, `triangle`, `right-triangle`, `rectangle`, `rhombus`, `rotate`, `overlay`, `beside`, `above`.

Use variable as you find useful. For example, if you are using an image
more than once, you might want to save it in a variable. Good use of
variables is one of the criteria used for evaluating your work.

Do not use `check-expect` for images here.
`check-expect` can sometimes work for images,
but it tends to be *very* finicky and dependent
on the details of how an image is constructed.
As a consequence it's common for two images that
_look_ the same fail the `check-expect` test
because a few pixels are off by a wee bit.

### Problem 4: explore Racket. (6 points)

Test three \"what if\" questions of your choice in Racket. For example,
you might want to try applying + function to strings. Write down what
you think is going to happen, test it, and write down if that was what
you expected. If an expression that you test results in an error,
comment it out before you move on to the next one.

------------------------------------------------------------------------

#### How to submit

Make sure that your file is named correctly:\
Name your file with the combination of your last names, no spaces,
followed by the word \"Lab\" and the lab number. For instance, if your
last names are Smith and Lee, the file name should be `SmithLeeLab1.rkt`
If there are others in the class with the same name as yours, you your
initial in addition to your last name: `MSmithJLeeLab1.rkt`

At least one person in the group must submit it via canvas as a file
upload (make sure it\'s that `.rkt` file). Make a comment indicating who
you worked with. The other person (or people) in the group may submit
the same file and also indicate who was in the group or just make a
comment listing all your group members (note: if you don\'t submit a
note listing your group members, your work may not be counted, even if
your group partners list you as the group member).

[CSci 1301 course web site](../index.html).
