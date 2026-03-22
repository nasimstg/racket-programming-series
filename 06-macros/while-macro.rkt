#lang racket

;; Define a 'while' loop macro — Racket doesn't have one built-in
(define-syntax while
  (syntax-rules ()
    [(while condition body ...)
     (let loop ()
       (when condition
         body ...
         (loop)))]))

;; Usage
(define x 5)
(while (> x 0)
  (display x)
  (display " ")
  (set! x (- x 1)))
; Output: 5 4 3 2 1
(newline)
