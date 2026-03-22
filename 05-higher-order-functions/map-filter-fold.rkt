#lang racket

;; === map — apply a function to every element ===
(define (square x) (* x x))

(displayln (map square '(1 2 3 4)))
; Result: '(1 4 9 16)

;; === filter — keep elements that satisfy a predicate ===
(define (is-even? x) (= (remainder x 2) 0))

(displayln (filter is-even? '(1 2 3 4 5)))
; Result: '(2 4)

;; === foldl — reduce a list to a single value ===
(displayln (foldl + 0 '(1 2 3 4)))
; Result: 10
