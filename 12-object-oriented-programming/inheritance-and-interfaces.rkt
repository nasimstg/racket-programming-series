#lang racket
(require racket/class)

;; === Base class ===
(define fish%
  (class object%
    (super-new)
    (init-field size)
    (define/public (eat amount)
      (set! size (+ size amount))
      (printf "I ate ~a. Now size is ~a.\n" amount size))))

;; === Inheritance with method override ===
(define shark%
  (class fish%
    (super-new)
    (define/override (eat amount)
      (printf "Chomp! ")
      (super eat amount))))

(define jaws (new shark% [size 50]))
(send jaws eat 10)
; Output: Chomp! I ate 10. Now size is 60.

;; === Interfaces ===
(define swimmable<%> (interface () swim))

(define duck%
  (class* object% (swimmable<%>)
    (super-new)
    (define/public (swim) (displayln "Paddle paddle"))))

(define daffy (new duck%))
(send daffy swim) ; "Paddle paddle"
