---
layout: problem_set
title:  "Problem Set 2"
date:   2019-08-13 10:28:34 -0500
categories: racket functions images strings
---

### Expectations

Please test all your programs carefully and include all the test cases
(i.e., `check-expect` expressions) with your program.
You must have at least 3 `check-expect` tests for each function, but
more are often a Very Good Thing. You don't need to go crazy and have
a bazillion of them, but you do want to be thoughtful about possible
cases that should be checked.

- If there's a numeric argument, have you checked zero as well
  as both positive and negative values?
- If there's a string argument, did you try empty strings? Fairly
 long strings?
- If there's a boolean argument, did you try both `#true` and `#false`?
- Etc., etc., etc.

### Problem 1 (5 points)

Write a function `first-letter-A-or-a?` that takes a string and
returns `#true` if the first character is either `A` or `a` (an
upper or lower case 'a').

It should pass all these tests (which you should copy/paste into
your Racket file and include in what you turn in). You can add tests to this,
but definitely include at least these tests.

```racket
(check-expect (first-letter-A-or-a? "AbC") #true)
(check-expect (first-letter-A-or-a? "abC") #true)
(check-expect (first-letter-A-or-a? "bcde") #false)
(check-expect (first-letter-A-or-a? "aaAAaaaa") #true)
(check-expect (first-letter-A-or-a? "a") #true)
(check-expect (first-letter-A-or-a? "A") #true)
(check-expect (first-letter-A-or-a? "w") #false)
(check-expect (first-letter-A-or-a? "&") #false)
```

Some tips:

- You'll need an [`if`](https://docs.racket-lang.org/htdp-langs/beginner.html?q=string-append#%28form._%28%28lib._lang%2Fhtdp-beginner..rkt%29._if%29%29) here, and maybe nested `if`s.
- You might find [`or`](https://docs.racket-lang.org/htdp-langs/beginner.html?q=string-append#%28form._%28%28lib._lang%2Fhtdp-beginner..rkt%29._or%29%29) useful, but you can solve it without it (at the
  expense of more `if`s).
- Both [`string-ith`](https://docs.racket-lang.org/htdp-langs/beginner.html?q=string-append#%28def._htdp-beginner._%28%28lib._lang%2Fhtdp-beginner..rkt%29._string-ith%29%29) and [`string=?`](https://docs.racket-lang.org/htdp-langs/beginner.html?q=string-append#%28def._htdp-beginner._%28%28lib._lang%2Fhtdp-beginner..rkt%29._string~3d~3f%29%29) are likely to be useful here.

Now extend your solution so that it returns `#false` if the input
string is empty (`""`). That should pass this new test as well:

```racket
(check-expect (first-letter-A-or-a? "") #false)
```

### Problem 2 (3 exercises – 15 points)

Read the step-by-step design process in [Section
3.1](https://htdp.org/2019-02-24/part_one.html#%28part._sec~3adesign-func%29).
Note that we write our examples as check-expects rather than in
comments. Also note that for now we will skip writing a stub for simple
functions, but you would want to do it for more complex ones when you are
less certain about what may go into the expression in the function.

Using this structure, develop solutions to the following three exercises:

- [Exercise 36 (5
points)](https://htdp.org/2019-02-24/part_one.html#%28counter._%28exercise._design3%29%29)
- [Exercise 37 (5
points)](https://htdp.org/2019-02-24/part_one.html#%28counter._%28exercise._design4%29%29)
- [Exercise 38 (5
points)](https://htdp.org/2019-02-24/part_one.html#%28counter._%28exercise._design5%29%29)

Make sure to follow all steps of the design recipe, and phrase your
"expected cases" as `check-expect` tests.

Don't worry about an empty
string for exercises 37 and 38, but make sure that your signature is
clear about expected data.
