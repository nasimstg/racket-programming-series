#lang racket
(require racket/future)

;; === Futures — parallel computation ===
;; Futures run on separate OS threads for CPU-bound work

(define (fib n)
  (if (< n 2) n (+ (fib (- n 1)) (fib (- n 2)))))

(define f (future (lambda () (fib 30))))
(displayln "Main doing work...")
(printf "fib(30) = ~a\n" (touch f)) ; Wait for result

;; === Places — true parallelism with isolated memory ===
;; (Places require a separate module file in practice)
;; Conceptual example:
;;
;; (require racket/place)
;; (define p (place ch
;;   (place-channel-put ch "Work done!")))
;; (displayln (place-channel-get p))
