#lang racket
(require rackunit)

;; === Basic checks ===
(define (add x y) (+ x y))

(check-equal? (add 1 1) 2 "Simple math should work")
(check-equal? (add -1 1) 0 "Negative numbers work")

;; === Testing for exceptions ===
(check-exn exn:fail?
           (lambda () (/ 1 0)))

(displayln "All basic checks passed!")
