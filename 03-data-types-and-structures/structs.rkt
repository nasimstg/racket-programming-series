#lang racket

;; Defining a struct — like a lightweight class
(define-struct point (x y))

(define p1 (make-point 5 10))

(displayln (point-x p1)) ; 5
(displayln (point-y p1)) ; 10
(displayln (point? p1))  ; #t
