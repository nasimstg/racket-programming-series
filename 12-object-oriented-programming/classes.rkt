#lang racket
(require racket/class)

;; === Defining a class ===
(define fish%
  (class object%
    (super-new) ; Initialize parent class
    (init-field size) ; Constructor arg + field

    ;; Define a method
    (define/public (eat amount)
      (set! size (+ size amount))
      (printf "I ate ~a. Now size is ~a.\n" amount size))))

;; Creating an instance
(define charlie (new fish% [size 10]))

;; Calling a method
(send charlie eat 5)
; Output: I ate 5. Now size is 15.
