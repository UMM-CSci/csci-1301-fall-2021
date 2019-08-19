---
layout: example
date:   2018-09-13 13:55 -0500
description: Example for Problem Set 1
---

;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pset1_sample) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;; Writing expressions:

;; Exercise 2 in HTDP2E
(define prefix "hello")
(define suffix "world")

; This is an exprssion that concatenates (glues together)
; two strings, putting _ between them
(string-append prefix "_" suffix)

;; Writing functions:

;; Exercise 13

;; Function tests:
(check-expect (string-first "dog") "d")
(check-expect (string-first "carrots and cabbage") "c")
(check-expect (string-first "I") "I")

;; This is the function signature:
;; string-first: Non-empty string -> 1String

;; The function takes a string and returns the first character in the string

;; The function itself:
(define (string-first str)
  (string-ith str 0))
