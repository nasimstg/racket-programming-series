#lang racket

;; Basic expressions use prefix notation
(+ 1 2)           ; => 3
(* 3 (+ 1 2))     ; => 9 (nested expression)

;; Defining variables
(define x 10)       ; Define a variable x with value 10
(define y "Hello")  ; Define a variable y with value "Hello"

(printf "x = ~a\n" x)
(printf "y = ~a\n" y)
