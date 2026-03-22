#lang racket

;; === lambda — anonymous functions ===
(displayln (map (lambda (x) (* x x)) '(1 2 3 4)))
; Result: '(1 4 9 16)

;; === Closures — functions that capture their environment ===
(define (make-adder n)
  (lambda (x) (+ x n)))

(define add5 (make-adder 5))
(displayln (add5 10)) ; 15

;; === Composing higher-order functions ===
(define (square-even-numbers lst)
  (map (lambda (x) (* x x))
       (filter even? lst)))

(displayln (square-even-numbers '(1 2 3 4 5)))
; Result: '(4 16)
