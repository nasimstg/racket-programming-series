#lang racket

;; Importing our custom module
(require "math-utils.rkt")

(displayln (add-five 10)) ; 15
(displayln (square 4))    ; 16
; (secret 10) ; Error: unbound identifier — it's not exported!

;; Importing with a prefix to avoid name collisions
(require (prefix-in math: "math-utils.rkt"))

(displayln (math:square 4)) ; 16

;; Importing from Racket's standard library
(require racket/math)
(require racket/list)

(displayln pi) ; 3.141592653589793
