#lang racket
(require redex)

;; Define the grammar of the lambda calculus
(define-language L
  (e ::= (lambda (x) e)
         (e e)
         x)
  (x ::= variable-not-otherwise-mentioned))

;; Define beta-reduction
(define R
  (reduction-relation
   L
   (--> ((lambda (x) e_1) e_2)
        (subst e_1 x e_2)
        "beta")))

;; Visualize reduction steps (opens a GUI window)
;; (traces R (term ((lambda (x) x) (lambda (y) y))))
