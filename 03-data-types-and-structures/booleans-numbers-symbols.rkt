#lang racket

;; === Booleans ===
#t ; True
#f ; False
(displayln (boolean? #t)) ; #t

;; === Numbers ===
(displayln 42)       ; Integer
(displayln 3.14)     ; Real (Inexact)
(displayln 1/2)      ; Rational (Exact)
(displayln 1+2i)     ; Complex

;; === Symbols ===
(displayln 'my-symbol)
(displayln (symbol? 'my-symbol)) ; #t
(displayln (eq? 'a 'a))         ; #t (efficient comparison)

;; === Strings ===
(displayln "Hello, Racket!")
(displayln (string-length "Hello")) ; 5
