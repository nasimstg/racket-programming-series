#lang racket

;; === if — two-branch conditional ===
(define x 10)

(displayln
 (if (> x 5)
     "Greater than 5"
     "Less or equal to 5"))

;; === cond — multi-branch conditional ===
(define (classify-number n)
  (cond
    [(< n 0) "Negative"]
    [(= n 0) "Zero"]
    [(> n 0) "Positive"]))

(displayln (classify-number -3)) ; "Negative"
(displayln (classify-number 0))  ; "Zero"
(displayln (classify-number 7))  ; "Positive"

;; === when — single-branch (no else) ===
(when (> x 0)
  (display "x is positive!")
  (newline))
