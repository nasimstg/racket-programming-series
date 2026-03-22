#lang typed/racket

;; === Type annotations ===
(: add (-> Number Number Number))
(define (add x y)
  (+ x y))

(displayln (add 5 10)) ; 15
; (add "hello" 5) ; Compile-time Type Error!

;; === Polymorphic (generic) functions ===
(: my-map (All (A B) (-> (-> A B) (Listof A) (Listof B))))
(define (my-map f L)
  (if (null? L)
      '()
      (cons (f (first L)) (my-map f (rest L)))))

(displayln (my-map add1 '(1 2 3))) ; '(2 3 4)
