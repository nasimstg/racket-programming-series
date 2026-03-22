#lang racket

;; === Early exit with call/cc ===
(define (search-for-zero lst)
  (call/cc
   (lambda (return)
     (for ([x lst])
       (when (zero? x)
         (return "Found zero!"))) ; Jumps out immediately
     "No zero found")))

(displayln (search-for-zero '(1 2 0 4 5))) ; "Found zero!"
(displayln (search-for-zero '(1 2 3 4 5))) ; "No zero found"

;; === Saving a continuation for later ===
(define saved-k #f)

(define (save-point)
  (call/cc
   (lambda (k)
     (set! saved-k k) ; Save the continuation
     "Saved!")))

(displayln (+ 100 (save-point)))
; First call: prints 100 + "Saved!" context
