#lang racket
(require rackunit)

;; === Contracts — automatic argument checking ===
(define/contract (multiply-positive x y)
  (-> positive? positive? positive?)
  (* x y))

(displayln (multiply-positive 5 10)) ; 50
; (multiply-positive -5 10) ; Would raise a contract violation!

;; === Debug printing ===
(define x 42)
(printf "Current value of x: ~a\n" x)

;; === Basic testing with rackunit ===
(check-equal? (+ 2 2) 4 "Simple addition")
(displayln "All checks passed!")
