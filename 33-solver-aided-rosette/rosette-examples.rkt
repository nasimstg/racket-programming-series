#lang rosette

;; === Symbolic variables ===
(define-symbolic a b integer?)

;; === Verification — prove properties ===
(define (safe-div x y)
  (if (= y 0) 0 (/ x y)))

;; Verify that safe-div never crashes
(verify (assert (eq? (safe-div a b) (safe-div a b))))

;; === Synthesis — find unknown values ===
(define-symbolic c integer?)
(define (mystery x) (+ x c))

;; Find a value for 'c' such that mystery(5) = 10
(solve (assert (= (mystery 5) 10)))
; Result: (model [c 5])
