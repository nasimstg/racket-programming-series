#lang racket

;; A module that exports some utility functions
(provide add-five
         square)

(define (add-five x) (+ x 5))
(define (square x) (* x x))
(define (secret x) "I am hidden") ; Not exported
