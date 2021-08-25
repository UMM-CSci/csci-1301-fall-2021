---
layout: page
title: Syllabus
permalink: /syllabus/
---

![Racket logo](favicon-32x32.png)
**Welcome to the Fall 2021 edition of Problem solving
and algorithm development** (CSci 1301)  at the [University of
Minnesota, Morris](http://www.morris.umn.edu)! For additional
information (e.g., events and assignments) see [the course Canvas
site](https://canvas.umn.edu).

This is a 4 credit course which meets MWF 10:30-11:35am, in Sci 2190.
There are no pre-requisites for this course and **we will not assume any
prior experience with computer programming**.

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Course description](#course-description)
- [Who am I, and why am I here?](#who-am-i-and-why-am-i-here)
- [Land acknowledgement](#land-acknowledgement)
- [Course goals and learning objectives](#course-goals-and-learning-objectives)
- [Office hours](#office-hours)
- [Nic's contact info](#nics-contact-info)
- [Texts and other materials](#texts-and-other-materials)
- [Course outline, rhythm and pacing](#course-outline-rhythm-and-pacing)
- [Course work and grading](#course-work-and-grading)
  - [Grading standards (definition of grades)](#grading-standards-definition-of-grades)
  - [Senate academic workload policy](#senate-academic-workload-policy)
- [Student learning outcomes and assessment](#student-learning-outcomes-and-assessment)
  - [Assessment](#assessment)
  - [Student learning outcomes](#student-learning-outcomes)
- [General policies and information](#general-policies-and-information)
  - [COVID](#covid)
  - [Use of Personal Electronic Devices in the Classroom](#use-of-personal-electronic-devices-in-the-classroom)
  - [Disability Accommodations](#disability-accommodations)
  - [Student Conduct Code](#student-conduct-code)
  - [Scholastic Dishonesty](#scholastic-dishonesty)
  - [Appropriate Student Use of Class Notes and Course Materials](#appropriate-student-use-of-class-notes-and-course-materials)
  - [The Writing Center](#the-writing-center)
  - [Sexual harassment, sexual assault, stalking and relationship violence](#sexual-harassment-sexual-assault-stalking-and-relationship-violence)
  - [Equity, Diversity, Equal Opportunity, and Affirmative Action](#equity-diversity-equal-opportunity-and-affirmative-action)
  - [Academic Freedom and Responsibility:](#academic-freedom-and-responsibility)

<!-- /TOC -->

## Course description

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
an awful lot that we don\'t spell out, as **we (often implicitly) assume
that the shared
experiences of the team will allow people to fill in the blanks**.

Recipes are a great example of this, as they often assume quite a lot
of prior cooking experience, and maybe even experience with this particular
recipe. **What in the world does "Cook until golden brown" actually mean?**

When working with computers we\'re no longer able to skip over
\"little\" details and assume the computer will \"fill in the blanks\".
Computers have never walked, eaten cereal, or knit a sock. They\'ve not
read *Harry Potter* or watched *Lawrence of Arabia*. **People and
computers have effectively *no* shared experience, and consequently you
have to spell out pretty much every step in the solution to a problem.**

This course will provide an introduction to the concept of algorithms,
which are essentially just a type of formalized solution that\'s still
human readable, but much closer to something that could be run on a
computer. **Algorithm development, however, turns out to be a quite
powerful problem solving tool in a variety of contexts**, not just in
computer programming; ancient Babylonians developed a host of practical,
important algorithms, and Euclid\'s algorithm for computing the greatest
common divisor of a pair of numbers is still widely used today even
though he developed it thousands of years before the invention of
electronic computers.

Given this framework, programming is that final
step, where we express an algorithm in a formal notation (known as a
*programming language*) that can be executed by a computer. Note,
however, that (as the example of Euclid suggests) **the concept of
algorithms is important and interesting even without computers to run
them**; the existence of computers, on the other hand, is key to the
economic value of much of programming and the reason that companies like
Google make money hand over fist.

## Who am I, and why am I here?

**I've been teaching here at UMM since 1991.** (I could tell you a long story
about that, but we'll save it for another day.) Most of my work is in computer
science, but I've also taught numerous first-year seminar style courses
(what is currently called Intellectual Community) in areas such as roots
music and the science of climate change. I've also co-taught honors courses
with a member of the Economics faculty on open source software and network
economics. I've published a few photos, and sung (perhaps with more enthusiasm
than skill) at UMM's Open Mic Nights. My wife and I have a weekly radio show
on the campus station (KUMM); I've done college radio since 1981, and have
been KUMM's faculty advisor since the mid-90s.

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Kumm_logo.jpg/240px-Kumm_logo.jpg" alt="KUMM logo" width="100"/>

All that said, I am actually a computer science faculty most of the time.
**I've taught most of the courses in our curriculum at one point or another,
but probably focus primarily on software development and software engineering.**
My research is in an area called _evolutionary computation_, where we use a
simulated evolution to try to discover (through evolution) solutions to
problems.

One of the highlights of my career was getting to work as a "summer intern"
in 2013 for a pair of my former Morris students that were getting what
has become a very successful startup off the ground. It was a hoot to
get introduced at meet-ups as the 50-year old intern, who had had had both
my "bosses" in a number of classes when they were students. The work was
exciting and challenging, the people were awesome, I learned a ton, and I
believed in the value of the product. A great summer all around.

<img src="https://www.logolynx.com/images/logolynx/2f/2f54568bb33d8f38856105189a064056.jpeg" alt="Kidblog logo" width="100"/>

**I really enjoy teaching CSci 1301 because it is, for many, the first
serious exposure to programming and algorithm development**, which I think is
a pretty amazing area of human endeavor. CSci 1301 also uses programming
languages (what are known as _functional_ programming languages) that really
help highlight many of the tools and ideas that I love the most in programming.
It's also a neat opportunity to get to know a wide variety of people,
including new CSci majors just getting started, and neat folks from other majors
that I might not otherwise ever meet.

## Land acknowledgement

By offering this land acknowledgment, we affirm tribal sovereignty and express respect for Native peoples and nations.
 
The University of Minnesota Morris is located along Owobopte Wakpa—a place from which Dakota turnips have been dug river—on the edge of mashkode akiing—prairie land. This land has been cared for and called home by the Dakota people, and later the Ojibwe people and other Native peoples from time immemorial. Our state’s name, Minnesota, comes from the Dakota name for this region, Mni Sota Makoce – the land where the waters reflect the skies. 
 
Acknowledging the land and our history in this place is an offering of solidarity with and respect for Native nations and peoples. In doing so, we – The University of Minnesota Morris – reaffirm our commitment to our responsibilities rooted in the history of our campus site as a Native American boarding school, our distinctive mission as a public liberal arts college within Minnesota’s land-grant university, and our federal recognition as a Native American-Serving Nontribal Institution.

## Course goals and learning objectives

Some of the key learning goals in this course include:

- **You will learn about algorithms** - what an algorithm is, some classic
    algorithms, etc.
- You will learn about the importance of formal syntax in computing
    and how to recognize and generate legal text in one or more formal
    syntaxes.
- You will learn some useful problem solving techniques including
    defining cases, using conditional statements, and functional
    decomposition (divide and conquer)
- **You will learn about recursion**
- You will learn about scope
- You will learn about higher-order functions (procedural
    abstraction - passing procedures as parameters)
- **You will learn not only to program, but also why we write programs**,
    how to communicate with the computer, and some basic things about
    how a computer works

We should be able to cover significant parts of [the
course text](https://htdp.org/2021-5-4/Book/), especially
parts I, II, and III.
**There is no expectation in this course that you\'ve had any
prior programming experience.** We\'ll do most of the programming in this
class using the Racket programming language.

## Office hours

I have historically had "set" office hours, but in teaching online due to
COVID I typically had a more "sign up when you want to" approach to office
hours. I'm kinda thinking that might be one of the things that I should
carry forward after the pandemic, but I have completely convinced myself
yet. So **I yet again have set of "official" office hours for this semester**:

- Tuesday, 3-4pm
- Thursday, 2-3pm
- Friday, noon-2pm

Those times almost certainly won\'t work for everyone. You\'re always
welcome to just drop by (see my [complete
schedule](http://www.google.com/calendar/hosted/morris.umn.edu/embed?src=mcphee%40morris.umn.edu&ctz=America/Chicago&mode=WEEK)). **You can also
just create events on your Google Calendar and invite me to them.** That
will add the event to my calendar and send me an email letting me know
you've "made an appointment". Don't be shy about doing this; I'm definitely
capable of letting you know if that time doesn't work for me for some
reason.

I\'ll typically start my office hours in my office (Sci 1315), but **I may
well move to the Computer Science labs** (Sci 2610, 2630, and 2650) if, for example, a group has a question about a
project they\'re working on.
If I leave the office during office hours I\'ll try to leave a note on
my door telling you where I am, but you should always feel free to check
the labs if you\'re looking for me.

## Nic's contact info

Email (mcphee@…) is my preferred method of contact, but be warned that I get a
*lot* of e-mail and bits get dropped now and then. Phone (office: 320-589-6320)
or a text is often better if it\'s critical or you need immediate feedback.

My office is Sci 1315, downstairs at the east end of the Science office wing.

I use [the U\'s Google
calendar](http://www.google.com/calendar/hosted/morris.umn.edu/embed?src=mcphee%40morris.umn.edu&ctz=America/Chicago&mode=WEEK)
to manage my calendar. Google may be the Evil Empire of the next decade,
but they make a fine on-line calendar tool. If you\'re using Google
calendar, feel free to use that to invite me to events/appointments.

## Texts and other materials

This course has 1 required text:

- *How to design programs, SECOND EDITION* (often abbreviated HtDP2e) by Felleisen, Findler, Flatt, and Krishnamurthi
  - This is available freely on-line, and this edition is *only*
        available on-line: <https://htdp.org/2021-5-4/Book/>
  - :warning: **Don\'t buy a printed copy of the first edition
        unless you really want to.** The second edition is *very*
        different, and the course really won\'t make a lot of sense is
        you\'ve got an old copy of the book.

There will be various other on-line materials, mostly shared via Canvas
or on [the resources page](https://umm-csci.github.io/csci-1301-fall-2021/resources/).

Since this course is ultimately about problem solving, **having other
sources of problems to play with can be helpful**. A few that support Racket
(the language we'll be focusing on here) include:

- [CodeWars](https://www.codewars.com/) is, despite the unfortunately
    competitive name, an excellent place to practice your programming
    and problem solving skills. They support a *lot* of different programming
    languages, including Racket.
- [Project Euler](http://projecteuler.net/) is an excellent, if
    perhaps a bit math-y, set of practice problems that only checks your
    answer and so doesn\'t care what language you use.
- [Python Challenge](http://www.pythonchallenge.com/) is quite cool
    and, despite the name, doesn\'t require the use of Python or any
    other specific language. That said, it tends to be pretty heavy on
    text processing, which is something Racket can do just fine, but
    isn\'t something our textbook or I will emphasize.

## Course outline, rhythm and pacing

See the [course Canvas site](https://canvas.umn.edu) for the calendar
and outline of the course.

My general plan is:

- Folks read the relevant bits of the text before class both for understanding
  and as a source of questions
- We take as much class time as makes sense answering questions
- We use the remainder of class time working on examples and exercises (mostly
  from the book) and sharing, discussing, and improving our solutions.

I'll regularly use:

- Perusall comments/questions as a source of questions in class
- The ChimeIn polling tool to see what kinds of exercises folks would like
  to see worked through as examples
- ChimeIn to see if folks are ready to move on, or would like more time/help
  with the current topic

## Course work and grading

!["If you don't turn in at least one homework assignment, you'll fail this class." "Yeah. but if I can fail this class, the grades on my report card will be in alphabetical order!" XKCD comic 336](https://imgs.xkcd.com/comics/priorities.png)

**I'm definitely not a fan of grades or grading**; there's a lot of evidence
that they do little help help learning, and often hinder it. See, for
example, the collection [_Ungrading_ edited by Susan Blum](https://wvupressonline.com/ungrading),
for a lot of powerful thoughts and evidence on this. Or just think about
this [the weirdness of rating on scales](https://xkcd.com/2329/).

My plan is to experiment this semester with **less "formally" graded work
and more time in class working on examples and projects, with opportunities
for feedback and revision. You'll also have several key opportunities to
share your thoughts on your own learning**.

All that said, the wider world expects us to play along, and
I'll need to assign you all grades at the end of the semester. Sigh.
My plan is to **construct that final grade out of a combination of some
more "traditionally graded" material and your own self-assessment of your
work on larger projects**.

The key components here are:

- A handful of "self-test" quizzes. You'll have multiple attempts at these
  and can ask questions between attempts, so hopefully you'll typically get
  full marks on these.
- Quite a lot of reading on Perusall. We'll need to talk about this in
  more detail in class, but these readings will be essentially marked as
  "complete/incomplete", i.e., you'll get credit if you do them and provide
  thoughtful comments in Perusall.
- A variety of "homework" exercises. We'll usually start (and perhaps even
  finish) these in class. My current plan is that these will mostly be
  marked as "sufficient/insufficient", i.e., you made a reasonable attempt
  or you didn't. My hope is that **the TA and I will be able to give you
  feedback on these so that you can revise and improve them**, but not wade
  into the swamp of specific grades.
- Probably two intermediate projects, one at the end of Part I of the text,
  and one at the end of Part II of the text. These can be done individually
  or in small groups. **You'll have a number of options to choose from, and
  the ability to propose alternative projects**. Each person will provide
  a write-up when the project is finished that summarizes what was accomplished,
  your many wonderful contributions to the work, and a sense of what *you*
  think your grade and the grade of the group (if you're in a group) should
  be on the project. I reserve the right to raise or lower your actual
  grade, but **I'll stick with your self-assessment if that seems reasonable
  and appropriate**.
- **A final project at the end of the semester**. I'm not sure if this will be
  individual or in groups; we'll discuss that when we get closer to that
  time. I'll have a project laid out, but again you can propose alternative
  projects if you wish. Everyone will again provide a final reflection on
  that project which will be used as a starting point for the grade on that
  project.

There will be a small number of extra credits points for participating
in a variety of "live" polls in class using a web-based polling tool called
ChimeIn that you can access using your phone, a tablet, or a computer. I'll
use these to assess the state of the class and what you'd collectively find
most useful.

**This is likely to seem a bit unusual, and perhaps even unsettling**. Most
of you got here because you're really good at navigating graded work (that's
certainly an important part of how I got into college), and this is going
to be fairly different from those experiences. It may seem that all you know
is grades and grading, but **the vast majority of your future (and thus your
life) will be grade free**. You'll get feedback and assessment, but it will
almost never take the form of grades like you're used to in school. It will
instead be much more driven by your self-assessment and the assessment of your
peers. Hopefully we can create a collaborative space where we can all focus
on learning and perhaps be a little surprised by how cool the work can be.

The tentative weighting of these components below, but I'm more then willing
to discuss alternatives [if folks think I've got this all wrong](https://www.mcsweeneys.net/articles/i-would-rather-do-anything-else-than-write-the-syllabus-for-your-class). :grinning:

- Readings: 15%
- Homework and labs: 15%
- 2 intermediate projects: 20% each
- The final project: 20%
- Quizzes: 10%

Key elements for any work in this course (and arguably any work in most
any area of computing) include:

- Correctness
- Readability
- Clarity
- Organization

Many of the assignments and test questions will come with a set of
test cases that you can use as a
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

**Late work** I've set Canvas up so you will lose 2% for every day that
an assignment is late, but that's capped so you can always earn at 75%
on any assignment. These can always be overwritten in case of illness and
other unavoidable delays, but you'll need to contact me promptly to address
such cases. Late work may not be graded promptly; in the worst case it might
not be dealt with until the end of the semester.

### Grading standards (definition of grades)

[According to University of Minnesota policy](https://policy.umn.edu/education/gradingtranscripts):

- A: Represents achievement that significantly exceeds expectations
    in the course.
- B: Represents achievement that is above the minimum expectations in
    the  course.
- C: Represents achievement that meets the minimum expectations in the course.
- D: Represents achievement that partially meets the minimum expectations
    in the course. Credit is earned but it may not fulfill major or program
    requirements.

- S: Satisfactory (equivalent to a C- or better)

- F: Represents failure in the course and no credit is earned.

By default I will use the University Minnesota Letter Grade Scheme:

- A: 100% to 93%
- A-: <93% to 90%
- B+: <90% to 87%
- B: <87% to 83%
- B-: <83% to 80%
- C+: <80% to 77%
- C: <77% to 73%
- C-: <73% to 70%
- D+: <70% to 67%
- D: <67% to 60%
- F: <60% to 0%

I will never be *less* generous than this, but I may be *more* generous
depending on the clustering and gaps in the grades. If, for example,
there's a dense cluster
from 88.5% to 86% followed by a gap, I *might* extend the B+ range down to 86%.
I make no promises that I will make such shifts, but it could happen.

### Senate academic workload policy

For undergraduate courses, one credit is defined as equivalent to an
average of three hours of learning effort per week (over a full
semester) necessary for an average student to achieve an average grade
(a C) in the course. For example, an average student taking a four
credit course that meets for four hours a week should expect to spend an
additional eight hours a week on course work outside the classroom in
order to get a C in that course.

--------------------

## Student learning outcomes and assessment

### Assessment

Student work from this class may be anonymously used by the program or UMN Morris to assess achievement of student learning outcomes. If you do not wish your work to contribute to learning assessment, please inform the professor.
Course Student Learning Outcomes

This course's student learning outcomes define the goals of the class, and articulate with UMN Morris's Campus Student Learning Outcomes (CSLOs), General Education learning outcomes (where relevant) and discipline Program Student Learning Outcomes (PSLOs) for Computer Science

### Student learning outcomes

**Student Learning Outcome #1**: Students will be able to understand what an algorithm is and learn some classic algorithms

This learning outcome will help students achieve:

- UM Morris CSLO: Creative Problem-Solver;
- Discipline PSLO: Students will be able to apply fundamental principles of computer science to solve problems in all core areas of computer science;
- GenEd Outcome: Students will be able to select and implement effective problem-solving processes, such as constructing a truth table; constructing syntactic trees; calculating set theory solutions; using a venn diagram for categorical logic; constructing a proof, etc.

**Student Learning Outcome #2**: Students will be able to understand the importance of formal syntax in computing and learn how to recognize and generate legal text in formal syntax

This learning outcome will help students achieve:

- UM Morris CSLO: Creative Problem Solver;
- Discipline PSLO: Students will demonstrate technological flexibility through the ability to employ new sets of tools effectively;
- GenEd Outcome: Students will be able to appropriately translate problems to symbolic systems by accurately converting information to solvable mathematical expressions.

**Student Learning Outcome #3**: Students will be able to use a variety of problem solving techniques including defining cases, using conditional statements, functional decomposition (divide and conquer), and recursion

This learning outcome will help students achieve:

- UM Morris CSLO: Creative Problem solver;
- Discipline PSLO: Students will demonstrate technological flexibility through the ability to employ new sets of tools effectively;
- GenEd Outcome: Students will be able to apply mathematical or logical reasoning to identify potential solutions by using simple and directed equations to accurately compute a solution.

**Student Learning Outcome #4**: Students will be able to understand procedural abstraction (passing procedures as parameters) and develop and use higher-order functions.

This learning outcome will help students achieve:

- UM Morris CSLO: Creative Problem solver;
- Discipline PSLO: Students will demonstrate technological flexibility through the ability to employ new sets of tools effectively;
- GenEd Outcome: Students will be able to appropriately translate problems to symbolic systems by accurately converting information to solvable mathematical expressions.

**Student Learning Outcome #5**: Students will be able to understand why we write programs and how to write programs that are understandable to humans and to a computer.

This learning outcome will help students achieve:

- UM Morris CSLO: Creative Problem solver;
- Discipline PSLO: Students will be able to communicate technical ideas effectively both orally and in written form;
- GenEd Outcome: Students will be able to appropriately translate a claim in a natural language and accurately interpret its meaning within a formal symbolic system.

------------------------------------------------------------------------

## General policies and information

### COVID

[The U's policies](https://morris.umn.edu/covid-19) and and the world's
responses to the on-going pandemic are clearly highly fluid, and any attempt
to pin down those policies here would be fruitless.

Please be smart and safe, protecting yourself and all of us around you.
At a minimum, please get a vaccination if it's safe for you to do so,
and practice any other behaviors (e.g., masks, tests, distancing, etc.)
as recommended.

### Use of Personal Electronic Devices in the Classroom

While I some faculty might object to having electronic devices in the
classroom, I will actively encourage it in this class. If you can bring
a phone, tablet, laptop, etc., to class, I would highly recommend it so
you can participate in regular electronic polls in class. If you have
a laptop that can run DrRacket, I would encourage you to bring that as
well so you can experiment with ideas "live" in class.
### Disability Accommodations

The University of Minnesota views disability as an important aspect of diversity, and is committed to providing equitable access to learning opportunities for all students. The Disability Resource Center (DRC) is the campus office that collaborates with students who have disabilities to provide and/or arrange reasonable accommodations.

- If you have, or think you have, a disability in any area such as, mental health, attention, learning, chronic health, sensory, or physical, please contact the DRC office on your campus (UM Morris 320.589.6178) to arrange a confidential discussion regarding equitable access and reasonable accommodations. 
- Students with short-term disabilities, such as a broken arm, should be able to work with instructors to remove classroom barriers. In situations where additional assistance is needed, students should contact the DRC as noted above.
- If you are registered with the DRC and have a disability accommodation letter dated for this semester or this year, please contact your instructor early in the semester to review how the accommodations will be applied in the course. 
- If you are registered with the DRC and have questions or concerns about your accommodations please contact the Disability Resource Center.

Additional information is available on the DRC website: UM Morris -https://academics.morris.umn.edu/office-academic-success/disability-resource-center/, or e-mail hoekstra@morris.umn.edu with questions.
 
### Student Conduct Code

The University seeks an environment that promotes academic achievement and integrity, that is protective of free inquiry, and that serves the educational mission of the University. Similarly, the University seeks a community that is free from violence, threats, and intimidation; that is respectful of the rights, opportunities, and welfare of students, faculty, staff, and guests of the University; and that does not threaten the physical or mental health or safety of members of the University community.
 
As a student at the University you are expected to adhere to Board of Regents Policy: Student Conduct Code. To review the Student Conduct Code, please see: https://regents.umn.edu/sites/regents.umn.edu/files/2019-09/policy_student_conduct_code.pdf
 
Note that the conduct code specifically addresses disruptive classroom conduct, which means "engaging in behavior that substantially or repeatedly interrupts either the instructor's ability to teach;and/or a student's ability to learn. The classroom extends to any setting where a student is engaged in work toward academic credit or satisfaction of program-based requirements or related activities.
 
### Scholastic Dishonesty

You are expected to do your own academic work and cite sources as necessary. Failing to do so is scholastic dishonesty. Scholastic dishonesty means plagiarizing; cheating on assignments or examinations; engaging in unauthorized collaboration on academic work; taking, acquiring, or using test materials without faculty permission; submitting false or incomplete records of academic achievement; acting alone or in cooperation with another to falsify records or to obtain dishonestly grades, honors, awards, or professional endorsement; altering, forging, or misusing a University academic record; or fabricating or falsifying data, research procedures, or data analysis. (Student Conduct Code: https://regents.umn.edu/sites/regents.umn.edu/files/2019-09/policy_student_conduct_code.pdf) If it is determined that a student has cheated, the student may be given an "F" or an "N" for the course, and may face additional sanctions from the University. For additional information, please see: https://policy.umn.edu/education/instructorresp
 
The Office for Community Standards has compiled a useful list of Frequently Asked Questions pertaining to scholastic dishonesty: https://communitystandards.umn.edu/avoid-violations/avoiding-scholastic-dishonesty. If you have additional questions, please clarify with your instructor for the course. Your instructor can respond to your specific questions regarding what would constitute scholastic dishonesty in the context of a particular class, e.g., whether collaboration on assignments is permitted, requirements and methods for citing sources, if electronic aids are permitted or prohibited during an exam.
Makeup Work for Legitimate Absences
Students will not be penalized for absence during the semester due to unavoidable or legitimate circumstances. Such circumstances include verified illness, participation in intercollegiate athletic events, subpoenas, jury duty, military service, bereavement, and religious observances. Such circumstances do not include voting in local, state, or national elections. For complete information, please see: https://policy.umn.edu/education/makeupwork

### Appropriate Student Use of Class Notes and Course Materials

Taking notes is a means of recording information but more importantly of personally absorbing and integrating the educational experience. However, broadly disseminating class notes beyond the classroom community or accepting compensation for taking and distributing classroom notes undermines instructor interests in their intellectual work product while not substantially furthering instructor and student interests in effective learning. Such actions violate shared norms and standards of the academic community. For additional information, please see: https://policy.umn.edu/education/studentresp

### The Writing Center

The Writing Center, located in Briggs 252, offers students the opportunity to discuss their writing with a trained peer writing consultant. Writing Center consultants work with student writers at all stages of the writing process, including brainstorming, drafting, organizing, and revising; they can offer feedback on strengthening an argument, choosing and analyzing evidence, focusing paragraphs, writing introductions and conclusions, and more. Consultants do not proofread papers, but they can help writers learn to edit their own work. They can't, however, perform miracles; be sure to schedule appointments well before a paper is due in order to have time for revision. To see this semester's schedule and make an appointment, visit. http://umm.mywconline.com/

### Sexual harassment, sexual assault, stalking and relationship violence

The University prohibits sexual misconduct, and encourages anyone experiencing sexual misconduct to access resources for personal support and reporting. If you want to speak confidentially with someone about an experience of sexual misconduct, please contact your campus resources including Student Counseling and Health Services, as well as Someplace Safe
If you want to report sexual misconduct, or have questions about the University’s policies and procedures related to sexual misconduct, please contact your campus Title IX office or relevant policy contacts.
Instructors are required to share information they learn about possible sexual misconduct with the campus Title IX office that addresses these concerns. This allows a Title IX staff member to reach out to those who have experienced sexual misconduct to provide information about personal support resources and options for investigation. You may talk to instructors about concerns related to sexual misconduct, and they will provide support and keep the information you share private to the extent possible given their University role.
https://regents.umn.edu/sites/regents.umn.edu/files/2019-09/policy_sexual_harassment_sexual_assault_stalking_and_relationship_violence.pdf

### Equity, Diversity, Equal Opportunity, and Affirmative Action

The University provides equal access to and opportunity in its programs and facilities, without regard to race, color, creed, religion, national origin, gender, age, marital status, disability, public assistance status, membership or activity in a local commission created for the purpose of dealing with discrimination, veteran status, sexual orientation, gender identity, or gender expression. For more information, please consult Board of Regents Policy: https://regents.umn.edu/sites/regents.umn.edu/files/2019-09/policy_equity_diversity_equal_opportunity_and_affirmative_action.pdf
Mental Health and Stress Management
As a student you may experience a range of issues that can cause barriers to learning, such as strained relationships, increased anxiety, alcohol/drug problems, feeling down, difficulty concentrating and/or lack of motivation. These mental health concerns or stressful events may lead to diminished academic performance and may reduce your ability to participate in daily activities. University services are available to assist you. You can learn more about the broad range of confidential mental health services available including Student Counseling Services, and Crisis Consultation.

### Academic Freedom and Responsibility: 

Academic freedom is a cornerstone of the University. Within the scope and content of the course as defined by the instructor, it includes the freedom to discuss relevant matters in the classroom. Along with this freedom comes responsibility. Students are encouraged to develop the capacity for critical judgment and to engage in a sustained and independent search for truth. Students are free to take reasoned exception to the views offered in any course of study and to reserve judgment about matters of opinion, but they are responsible for learning the content of any course of study for which they are enrolled.*
Reports of concerns about academic freedom are taken seriously, and there are individuals and offices available for help. Contact the instructor, the Division Chair, your adviser, or the Vice Chancellor for Academic Affairs.

- Language adapted from the American Association of University Professors
  "Joint Statement on Rights and Freedoms of Students".
