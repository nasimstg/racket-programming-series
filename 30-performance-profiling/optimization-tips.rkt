#lang racket
(require racket/fixnum)

;; === Fixnum arithmetic — faster for known-small integers ===
(displayln (fx+ 10 20)) ; 30, faster than (+ 10 20)

;; === Vectors — O(1) random access (vs O(n) for lists) ===
(define v (vector 1 2 3))
(displayln (vector-ref v 2)) ; 3, instant access
