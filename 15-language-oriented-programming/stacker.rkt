#lang racket

;; A simple stack-based language implemented in Racket
(provide (all-defined-out))

(define stack empty)

(define (push x)
  (set! stack (cons x stack)))

(define (pop)
  (define top (first stack))
  (set! stack (rest stack))
  top)

;; Reader hook — this allows: #lang stacker
(module reader syntax/module-reader
  stacker)

;; Demo usage (without #lang):
(push 10)
(push 20)
(printf "Stack: ~a\n" stack)       ; '(20 10)
(printf "Popped: ~a\n" (pop))      ; 20
(printf "Stack after pop: ~a\n" stack) ; '(10)
