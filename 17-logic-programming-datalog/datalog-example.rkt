#lang racket
(require datalog)

;; Using Datalog from within Racket
(define dl (make-theory))

;; Add facts
(datalog! dl "parent(john, douglas).")
(datalog! dl "parent(john, bob).")
(datalog! dl "parent(douglas, anna).")

;; Add rules
(datalog! dl "ancestor(A, B) :- parent(A, B).")
(datalog! dl "ancestor(A, B) :- parent(A, X), ancestor(X, B).")

;; Query
(displayln (datalog dl "parent(john, X)?"))
(displayln (datalog dl "ancestor(john, X)?"))
