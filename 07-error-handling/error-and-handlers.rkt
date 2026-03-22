#lang racket

;; === Raising errors ===
(define (divide a b)
  (if (= b 0)
      (error "Cannot divide by zero!")
      (/ a b)))

;; === Catching errors with with-handlers ===
(define result
  (with-handlers ([exn:fail? (lambda (exn)
                               (display "Oops, something went wrong!")
                               (newline)
                               0)])
    (divide 10 0)))

(printf "Result: ~a\n" result) ; 0
