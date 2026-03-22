#lang racket
(require profile)

;; A classic (intentionally slow) recursive fibonacci
(define (fib n)
  (if (< n 2) n (+ (fib (- n 1)) (fib (- n 2)))))

;; Profile it to see where time is spent
(profile (fib 30))
