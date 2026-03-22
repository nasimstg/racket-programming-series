#lang racket
(require rackunit rackunit/text-ui)

;; === Organized test suites ===
(define-test-suite math-suite
  (test-case
   "Addition tests"
   (check-equal? (+ 2 2) 4)
   (check-equal? (+ 0 0) 0))

  (test-case
   "Multiplication tests"
   (check-equal? (* 2 3) 6)))

(run-tests math-suite)
