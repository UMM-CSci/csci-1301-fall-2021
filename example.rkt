;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname example) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;;; A simple function that doubles its input
;;; double: number -> number
(check-expect (double 0) 0)
(check-expect (double 4) 8)
(check-expect (double -8) -16)

(define (double x) (* 2 x))

;;; A function that quadruples its input
;;; quadruple: number -> number
(check-expect (quadruple 0) 0)
(check-expect (quadruple 5) 20)
(check-expect (quadruple -12) -48)

(define (quadruple x) (double (double x)))
