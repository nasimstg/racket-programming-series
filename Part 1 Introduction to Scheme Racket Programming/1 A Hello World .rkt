#lang racket ; #lang racket is the language of the file

; Comments
#| This is a multi
 line comment |#

; Expression
(+ 1 2) ; 3

; Nested expression
(+ 1 ; outer expression
   (* 2 3) ; inner expression returns 6
   ) ; 7

; Hello world program

(display "Hello, World!") ; Hello, World!
(newline) ; new line

(displayln "Hello, World!") ; Hello, World!

(display (string-append "Hello, " "World!")) ; Hello, World!

