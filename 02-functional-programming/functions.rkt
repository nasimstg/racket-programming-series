#lang racket

;; Defining a simple function
(define (square x)
  (* x x))

(displayln (square 5)) ; 25

;; Immutability — define binds a name, it doesn't create a mutable variable
(define my-var 42)
(displayln my-var)

;; Recursion — the natural loop in functional programming
(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

(displayln (factorial 5)) ; 120

;; Functions as values — passing a function to another function
(define (apply-twice f x)
  (f (f x)))

(displayln (apply-twice square 3)) ; 81 = (square (square 3))
