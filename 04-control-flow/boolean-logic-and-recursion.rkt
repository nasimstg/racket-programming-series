#lang racket

;; === Boolean operators ===
(displayln (and (> 5 2) (< 5 10))) ; #t
(displayln (or (= 1 1) (= 2 3)))  ; #t
(displayln (not #t))               ; #f

;; === Tail-recursive loop using an accumulator ===
(define (sum-list lst acc)
  (if (empty? lst)
      acc
      (sum-list (rest lst) (+ (first lst) acc))))

(displayln (sum-list '(1 2 3 4) 0)) ; 10
