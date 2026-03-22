#lang racket

;; Functions to test
(define (my-func x) (* x x))

;; Test submodule — runs with: raco test module-test-example.rkt
(module+ test
  (require rackunit)
  (check-equal? (my-func 10) 100))
