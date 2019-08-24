;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname mystery) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; The definition of `mystery`

(define (mystery s i)(cond[(not (string? s))(error (string-append"mystery: expected a string for the first argument, but received " (format "~a" s)))][(not (integer? i)) (error (string-append "mystery: expected a natural number for the second argument, but received \"" (format "~a" i) "\""))][(or (not (integer? i)) (negative? i) (>= i (string-length s)))(error (string-append "mystery: expected an exact integer in [0, " (number->string (string-length s)) ") (i.e., less than the length of the given string) for the second argument, but received " (format "~a" i)))] [else (string (string-ref s i))]))

; Our "lab notes"

; (mystery)
; mystery: expects 2 arguments, but found none

; This tells us that mystery takes two arguments.

; (mystery 3 5)
; mystery: expected a string for the first argument, but received 3

; This tells us that the first argument needs to be a string,
; but we still don't know the type of the second argument.

; (mystery "Morris" "Minnesota")
; mystery: expected a natural number for the second argument, but received "Minnesota"

; This tells us that the first argument is a string, and the second is a
; natural number.

(check-expect (mystery "Morris" 3) "r")
; Returned "r"

; (mystery "Morris" 10)
; mystery: expected an exact integer in [0, 6) (i.e., less than the length
; of the given string) for the second argument, but received 10

; (mystery "Minnesota" 50)
; mystery: expected an exact integer in [0, 9) (i.e., less than the length
; of the given string) for the second argument, but received 50

(check-expect (mystery "Morris" 0) "M")
(check-expect (mystery "Morris" 1) "o")
(check-expect (mystery "Morris" 2) "r")
(check-expect (mystery "Morris" 3) "r")
(check-expect (mystery "Morris" 4) "i")
(check-expect (mystery "Morris" 5) "s")
; Returns "M", "o", "r", "r", "i", "s" respectively.

; This strongly suggests that `mystery` returns the ith character
; in the given string.

; (mystery "" 0)
; mystery: expected an exact integer in [0, 0) (i.e., less than the
; length of the given string) for the second argument, but received 0

; Because there are no integers in the range [0, 0) (i.e., no integers
; x such that 0<=x<0), we can't call `mystery` with the empty string
; as the first argument.

; (mystery "Morris" -5)
; mystery: expected an exact integer in [0, 6) (i.e., less than the
; length of the given string) for the second argument, but received -5

; This confirms that we can't call `mystery` with negative values for
; the second argument.

; `mystery` is in fact a reimplementation of the Beginning Student function
; `string-ith`.