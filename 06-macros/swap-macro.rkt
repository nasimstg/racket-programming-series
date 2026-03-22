#lang racket

;; A simple swap macro using define-syntax-rule
(define-syntax-rule (swap x y)
  (let ([tmp x])
    (set! x y)
    (set! y tmp)))

;; Usage
(define a 10)
(define b 20)
(printf "Before: a=~a, b=~a\n" a b)
(swap a b)
(printf "After:  a=~a, b=~a\n" a b)
; Before: a=10, b=20
; After:  a=20, b=10
