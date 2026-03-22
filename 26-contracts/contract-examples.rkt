#lang racket

;; === Simple contract — input must be positive ===
(define/contract (deposit amount)
  (-> positive? any) ; Input must be positive, returns anything
  (printf "Depositing ~a\n" amount))

(deposit 100) ; OK
; (deposit -50) ; Contract Violation!

;; === Higher-order contract ===
(define/contract (apply-twice f x)
  (-> (-> number? number?) number? number?)
  (f (f x)))

(displayln (apply-twice add1 5)) ; 7

;; === Dependent contract — output depends on input ===
(define/contract (increment x)
  (->i ([arg number?]) [result (arg) (>/c arg)])
  (+ x 1))

(displayln (increment 10)) ; 11
