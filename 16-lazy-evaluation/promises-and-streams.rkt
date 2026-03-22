#lang racket

;; === Promises — delay/force ===
(define p (delay (begin (display "Running...") (+ 1 1))))

;; Nothing happens yet...
(displayln "Before forcing:")

(displayln (force p))
; Output: Running...
; Returns: 2

(displayln (force p))
; Output: (none — result is cached!)
; Returns: 2

;; === Infinite streams ===
(define (integers-from n)
  (stream-cons n (integers-from (+ n 1))))

(define nats (integers-from 0))

(displayln (stream-ref nats 5))    ; 5
(displayln (stream-ref nats 1000)) ; 1000
