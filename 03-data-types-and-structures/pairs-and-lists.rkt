#lang racket

;; === Pairs (cons cells) ===
(displayln (cons 1 2))
; Result: '(1 . 2) — This is a "dotted pair"

(define p (cons 10 20))
(displayln (car p)) ; 10
(displayln (cdr p)) ; 20

;; === Lists (chains of pairs ending in '()) ===
(displayln (cons 1 (cons 2 (cons 3 '()))))
; Result: '(1 2 3)

(displayln (list 1 2 3)) ; Same as '(1 2 3)

;; === Common list operations ===
(define my-list '(10 20 30))
(displayln (first my-list)) ; 10
(displayln (rest my-list))  ; '(20 30)
(displayln (empty? '()))    ; #t
