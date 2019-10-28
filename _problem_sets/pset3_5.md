---
layout: problem_set
title:  "Problem Set 3.5"
date:   2019-10-27 10:28:34 -0500
categories: racket problem_set
---

This is a small set of problems to help solidify our understanding of structs
before the upcoming exam. There is nothing new here; everything is just about
Racket structures and some string manipulation work that's similar to what we've
done in the past.

**Please make sure that every function you write has a 
signature, description, and test cases.**

There are a few `check-expects` illustrating the intent
for each of the desired functions. You should not consider
these complete, however, and you should add at least a few
more tests for each function that handles cases not covered
by the given tests.

## A simple student record

These problems are all based on the idea of a (highly 
simplified) student record, defined by this struct:

```racket
(define-struct
  student-record
  [id first-name last-name area-code phone-number zip])
```

A student in this simple example has 

- An student ID, as an integer
- A first and last name, both of which are strings
  - Note that we're not allowing for middle names or names 
    from other cultures with different structures. <sniff>
- An area code, which is an integer
- A phone number (without the area code), which is also an 
  integer.
  - You'll need to combine the previous two components to
    yield the full phone number.
- A ZIP code, as an integer

Given that structure, you should define the following 
functions that act on student records.

## Full name

Define a function `full-name` that takes a student record and
returns the full name, i.e., a string containing the first 
name and the last name separated by a single space. It
should, for example, pass this test:

```racket
(check-expect
 (full-name
  (make-student-record 123 "Nic" "McPhee" 320 5896320 56267))
 "Nic McPhee")
```

Don't take this as the only test you need – you should still
add additional tests.

## Same ZIP?

Define a function `same-zip?` that is given two student
records and returns `#true` if these two students have the 
same ZIP code, and `#false` otherwise. For example:

```racket
(check-expect
 (same-zip?
  (make-student-record 123 "Sally" "Smith" 320 5896320 56267)
  (make-student-record 456 "John" "Green" 320 5896320 56267))
 #true)
```

## Format phone number

Define a function `format-phone` that takes a student record
and returns the phone number as a string formatted like
`(xxx) yyy-zzzz`. It's necessary that you add the 
parentheses, the space, and the dash. For example:

```racket
(check-expect
 (format-phone
  (make-student-record 123 "Nic" "McPhee" 320 5896320 56267))
 "(320) 589-6320")
```

## Are students the same?

Define a function `student=?` that takes two student
records and returns `#true` if they have the same ID and
`#false` otherwise. This might not be the smartest way to 
implement this (see the third test below), but it's what
you're being asked to do here.

```racket
(check-expect
 (student=?
  (make-student-record 123 "Nic" "McPhee" 320 5896320 56267)
  (make-student-record 123 "Nic" "McPhee" 320 5896320 56267))
 #true)

(check-expect
 (student=?
  (make-student-record 123 "Nic" "McPhee" 320 5896320 56267)
  (make-student-record 456 "Nic" "McPhee" 320 5896320 56267))
 #false)

(check-expect
 (student=?
  (make-student-record 123 "Nic" "McPhee" 320 5896320 56267)
  (make-student-record 123 "Nic" "McPhee" 320 5896320 12345))
 #true)
```