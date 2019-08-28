---
layout: page
title: Syllabus
permalink: /syllabus/
---

This is the course syllabus for Nic McPhee\'s Fall 2019 Problem solving
and algorithm development (CSci 1301) course at the [University of
Minnesota, Morris](http://www.morris.umn.edu). For additional
information (e.g., events and assignments) see [the course Canvas
site](https://canvas.umn.edu).

This is a 4 credit course which meets MWF 10:30-11:35am, in Sci 2200.
There are no pre-requisites for this course and we will not assume any
prior experience with computer programming.

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Course description](#course-description)
- [Course goals and learning objectives](#course-goals-and-learning-objectives)
- [Nic's Fall, 2019, office hours](#nics-fall-2019-office-hours)
- [Nic's contact info](#nics-contact-info)
- [Texts and other materials](#texts-and-other-materials)
- [Course outline](#course-outline)
- [Course work and grading](#course-work-and-grading)
	- [Grading standards (definition of grades)](#grading-standards-definition-of-grades)
	- [Senate academic workload policy](#senate-academic-workload-policy)
- [General policies and information](#general-policies-and-information)
	- [Accessibility and institutional support](#accessibility-and-institutional-support)
	- [Harassment](#harassment)
	- [Equity, diversity, equal opportunity, and affirmative action](#equity-diversity-equal-opportunity-and-affirmative-action)
	- [Academic Integrity](#academic-integrity)

<!-- /TOC -->

# Course description

The course description from the catalog:

> Introduction to different problem solving approaches, major
> programming paradigms, hardware, software, and data representation.
> Study of the functional programming paradigm, concentrating on
> recursion and inductively-defined data structures. Simple searching
> and sorting algorithms.

We\'re all used to what we might call informal problem solving. A
problem presents itself, and we work out a rough idea of a solution
that\'s sufficient for our understanding; we know what we mean, and we
don\'t bother to work out the details in advance. If we\'re working on a
team we sometimes need to provide a little more detail to ensure that
all the team members are on the same page, but there\'s typically still
an awful lot that we don\'t spell out, as we (often implicitly) assume
that the shared
experiences of the team will allow people to fill in the blanks.

When working with computers, however, we\'re no longer able to skip over
\"little\" details and assume the computer will \"fill in the blanks\".
Computers have never walked, eaten cereal, or knit a sock. They\'ve not
read *Harry Potter* or watched *Lawrence of Arabia*. People and
computers have effectively *no* shared experience, and consequently you
have to spell out pretty much every step in the solution to a problem.

This course will provide an introduction to the concept of algorithms,
which are essentially just a type of formalized solution that\'s still
human readable, but much closer to something that could be run on a
computer. Algorithm development, however, turns out to be a quite
powerful problem solving tool in a variety of contexts, not just in
computer programming; ancient Babylonians developed a host of practical,
important algorithms, and Euclid\'s algorithm for computing the greatest
common divisor of a pair of numbers is still widely used today even
though he developed it thousands of years before the invention of
electronic computers.

Given this framework, programming is that final
step, where we express an algorithm in a formal notation (known as a
*programming language*) that can be executed by a computer. Note,
however, that (as the example of Euclid suggests) the concept of
algorithms is important and interesting even without computers to run
them; the existence of computers, on the other hand, is key to the
economic value of much of programming and the reason that companies like
Google make money hand over fist.

# Course goals and learning objectives

Some of the key learning goals in this course include:

-   You will learn about algorithms - what an algorithm is, some classic
    algorithms, etc.
-   You will learn about the importance of formal syntax in computing
    and how to recognize and generate legal text in one or more formal
    syntaxes.
-   You will learn some useful problem solving techniques including
    defining cases, using conditional statements, and functional
    decomposition (divide and conquer)
-   You will learn about recursion
-   You will learn about scope
-   You will learn about higher-order functions (procedural
    abstraction - passing procedures as parameters)
-   You will learn not only to program, but also why we write programs,
    how to communicate with the computer, and some basic things about
    how a computer works

We should be able to cover significant ports of [the
course text](https://htdp.org/2019-02-24/). There is no expectation in this course that you\'ve had any
prior programming experience. We\'ll do most of the programming in this
class using the Racket programming language.

# Nic's Fall, 2019, office hours

My office hours for Fall, 2015, are:

-   Monday, 3:30-5pm
-   Tuesday, 1-2pm
-   Friday, 9-10am

I\'ll typically start my office hours in my office (Sci 1315), but I may
well move to the Computer Science labs (Sci 2610, 2630, and 2650) if, for example, a group has a question about a
project they\'re working on.
If I leave the office during office hours I\'ll try to leave a note on
my door telling you where I am, but you should always feel free to check
the labs if you\'re looking for me.

Those times almost certainly won\'t work for everyone. You\'re always
welcome to just drop by (see my [complete
schedule](http://www.google.com/calendar/hosted/morris.umn.edu/embed?src=mcphee%40morris.umn.edu&ctz=America/Chicago&mode=WEEK)),
and I\'m happy to make appointments anytime I\'m free.

If these times work very badly for you (e.g., you have class conflicts
all of these hours) then please let me know. If it turns out that a lot
of folks have major conflicts then I\'ll want to reconsider my choices.

# Nic's contact info

Email (mcphee@…) is my preferred method of contact, but be warned that I get a
*lot* of e-mail and bits get dropped now and then. Phone (office: 320-589-6320)
or a text is often better if it\'s critical or you need immediate feedback.

My office is Sci 1315, downstairs at the east end of the Science office wing.

I use [the U\'s Google
calendar](http://www.google.com/calendar/hosted/morris.umn.edu/embed?src=mcphee%40morris.umn.edu&ctz=America/Chicago&mode=WEEK)
to manage my calendar. Google may be the Evil Empire of the next decade,
but they make a fine on-line calendar tool. If you\'re using Google
calendar, feel free to use that to invite me to events/appointments.

# Texts and other materials

This course has 1 required text:

-   *How to design programs, SECOND EDITION* (often abbreviated HtDP2e) by Felleisen, Findler, Flatt, and Krishnamurthi
    -   This is available freely on-line, and this edition is *only*
        available on-line: <https://htdp.org/2019-02-24/>
    -   :warning: **Don\'t buy a printed copy of the first edition
        unless you really want to.** The second edition is *very*
        different, and the course really won\'t make a lot of sense is
        you\'ve got an old copy of the book.

There will be various other on-line materials, mostly shared via Canvas
or on [the resources page](https://umm-csci.github.io/csci-1301-fall-2019/resources/).

Since this course is ultimately about problem solving, having other
sources of problems to play with can be helpful. A few that support Racket
(the language we'll be focusing on here) include:

-   [CodeWars](https://www.codewars.com/) is, despite the unfortunately
    competitive name, an excellent place to practice your programming
    and problem solving skills. They support a *lot* of different programming
    languages, including Racket.
-   [Project Euler](http://projecteuler.net/) is an excellent, if
    perhaps a bit math-y, set of practice problems that only checks your
    answer and so doesn\'t care what language you use.
-   [Python Challenge](http://www.pythonchallenge.com/) is quite cool
    and, despite the name, doesn\'t require the use of Python or any
    other specific language. That said, it tends to be pretty heavy on
    text processing, which is something Racket can do just fine, but
    isn\'t something our text emphasizes.
-   [Google Code Jam](http://code.google.com/codejam/contests.html) is
    an excellent set of programming-contest-style problems, and they\'re
    language agnostic.

# Course outline

See the [course Canvas
site](https://canvas.umn.edu) for the calendar
and outline of the course.

# Course work and grading

The components of the course grade are:

-   Homework and labs: 35%
-   2 Mid-terms: 20% each
-   Final: 20%
-   Quizzes: 5%

There will be a combination of labs and problem sets throughout the semester,
roughly one per week. The there will be a handful of
short quizzes; these will not be announced in advanced. The lowest quiz grade
will be dropped (i.e. not counted towards the quiz total). A missed quiz
will receive a grade of zero and thus will be counted as the lowest grade,
unless it was missed due to an illness or other circumstances beyond your
control. If you missed a quiz or a lab because of an illness or
similar circumstances, it is your responsibility to communicate these reasons
to me as soon as possible and arrange for a make-up work.

There will be two exams (which may be a combination of
in-class and take-home), and a final exam (which
may also combine in-class and take-home). The in-class part of the first exam
will be on Monday, 22 September. The in-class part of the second exam will be
on Monday, 27 October. The in-class finals period is scheduled for Friday,
19 December, from 8:30-10:30am.

Key elements for any work in this course (and arguably any work in most
any area of computing) include:

-   Correctness
-   Readability
-   Clarity
-   Organization

Many of the assignments and test questions will come with a set of
instructor (or TA) generated test cases that you can use as a
self-assessment tool before you turn in your work. If your programs
don\'t pass our tests, then you should assume something\'s broken and
seek assistance. Note, however, that simply *passing* all of the given
tests is no guarantee of full marks. It\'s possible, e.g., that the
given tests don\'t cover all possible cases (either accidentally or
deliberately). Also readability, clarity, and
organization are all key properties we want all programs to have since
you\'re communicating with other people as much as you\'re communicating
with the computer, and none of these properties can easily be assessed
via tests.

Grades will be entered on the [course Canvas
site](https://canvas.umn.edu) and can be
checked there throughout the semester. If you have any questions or
concerns, please bring them up right away when it\'s much easier to
address them.

**Late work** will receive a penalty of 10% for every day that it is late. This
can be overwritten in case of illness and other unavoidable delays, but you'll
need to contact me promptly to address such cases.

## Grading standards (definition of grades)

[According to University of Minnesota policy](https://policy.umn.edu/education/gradingtranscripts):

-   A: Represents achievement that significantly exceeds expectations
    in the course.
-   B: Represents achievement that is above the minimum expectations in
    the  course.
-   C: Represents achievement that meets the minimum expectations in the course.
-   D: Represents achievement that partially meets the minimum expectations
    in the course. Credit is earned but it may not fulfill major or program
    requirements.

-   S: Satisfactory (equivalent to a C- or better)

-   F: Represents failure in the course and no credit is earned.

By default I will use the University Minnesota Letter Grade Scheme:

*   A: 100% to 93%
*   A-: <93% to 90%
*   B+: <90% to 87%
*   B: <87% to 83%
*   B-: <83% to 80%
*   C+: <80% to 77%
*   C: <77% to 73%
*   C-: <73% to 70%
*   D+: <70% to 67%
*   D: <67% to 60%
*   F: <60% to 0%

I will never be *less* generous than this, but I may be *more* generous
depending on the clustering and gaps in the grades. If, for example,
there's a dense cluster
from 88.5% to 86% followed by a gap, I *might* extend the B+ range down to 86%.
I make no promises that I will make such shifts, but it could happen.

## Senate academic workload policy

For undergraduate courses, one credit is defined as equivalent to an
average of three hours of learning effort per week (over a full
semester) necessary for an average student to achieve an average grade
(a C) in the course. For example, an average student taking a four
credit course that meets for four hours a week should expect to spend an
additional eight hours a week on course work outside the classroom in
order to get a C in that course.

------------------------------------------------------------------------

# General policies and information

## Accessibility and institutional support

The University of Minnesota views disability as an important aspect of diversity, and is committed to providing equitable access to learning opportunities for all students. The Disability Resource Center (DRC) is the campus office that collaborates with students who have disabilities to provide and/or arrange reasonable accommodations.

   * If you have, or think you have, a disability in any area such as, mental health, attention, learning, chronic health, sensory, or physical, please contact the DRC office on your campus (UM Morris 320.589.6178) to arrange a confidential discussion regarding equitable access and reasonable accommodations.
   * Students with short-term disabilities, such as a broken arm, should be able to work with instructors to remove classroom barriers. In situations where additional assistance is needed, students should contact the DRC as noted above.
   * If you are registered with the DRC and have a disability accommodation letter dated for this semester or this year, please contact your instructor early in the semester to review how the accommodations will be applied in the course.
   * If you are registered with the DRC and have questions or concerns about your accommodations please contact the Coordinator of the Disability Resource Center.

Additional information and contact information is available on the DRC website: <https://academics.morris.umn.edu/office-academic-success/disability-resource-center>, or you can go visit then in the Library.

## Harassment

University policy prohibits sexual harassment as defined by the University of Minnesota Regents' policy. In general, harassment or intimidation of others in the class for whatever reason is unacceptable (and hardly conducive to a successful learning environment).

## Equity, diversity, equal opportunity, and affirmative action

The University provides equal access to and opportunity in its programs and facilities, without regard to race, color, creed, religion, national origin, gender, age, marital status, disability, public assistance status, veteran status, sexual orientation, gender identity, or gender expression. For more information, please consult Board of Regents Policy.

## Academic Integrity

Academic integrity is essential to a positive teaching and learning environment. All students enrolled in University courses are expected to complete coursework responsibilities with fairness and honesty. Failure to do so by seeking unfair advantage over others or misrepresenting someone else's work as your own, can result in disciplinary action. The University Student Conduct Code defines scholastic dishonesty as follows:

> Scholastic dishonesty means plagiarism; cheating on assignments or examinations; engaging in unauthorized collaboration on academic work; taking, acquiring, or using test materials without faculty permission; submitting false or incomplete records of academic achievement; acting alone or in cooperation with another to falsify records or to obtain dishonestly grades, honors, awards, or professional endorsement; altering, forging, misrepresenting, or misusing a University academic record; or fabricating or falsifying data, research procedures, or data analysis.

Within this course, a student responsible for scholastic dishonesty can be assigned a penalty up to and including an "F" or "N" for the course. If you have any questions regarding the expectations for a specific assignment or exam, ask.
