#lang racket

;; match — structural pattern matching
(define (describe-list lst)
  (match lst
    ['() "Empty list"]
    [(list x) (format "List with one element: ~a" x)]
    [(list x y) (format "List with two elements: ~a and ~a" x y)]
    [_ "A longer list"]))

(displayln (describe-list '()))        ; "Empty list"
(displayln (describe-list '(42)))      ; "List with one element: 42"
(displayln (describe-list '(1 2)))     ; "List with two elements: 1 and 2"
(displayln (describe-list '(1 2 3)))   ; "A longer list"
