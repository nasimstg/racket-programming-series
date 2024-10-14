#lang racket

; This is a comment
#| This is a
   block
   comment |#

; Self evaluating expressions
1
"Hello, World!"

; simple expressions
(+ 1 2)
(+ 1 2 3 4 5)
(- 5 3)
(* 2 3)
(/ 6 2)

; nested expressions
(+ 1 (* 2 3))
(+ 1 (* 2 (- 5 3)))
