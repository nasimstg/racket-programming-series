#lang racket

;; A minimal Lisp interpreter built in Racket
;; Supports: define, if, lambda, and function application

;; Global environment
(define env (make-hash))
(hash-set! env '+ +)
(hash-set! env '- -)
(hash-set! env '* *)
(hash-set! env '/ /)
(hash-set! env '> >)
(hash-set! env '< <)
(hash-set! env '= =)

;; The evaluator
(define (my-eval exp)
  (match exp
    ;; 1. Symbols (Variables) — look up in env
    [(? symbol?) (hash-ref env exp)]

    ;; 2. Numbers (Self-evaluating)
    [(? number?) exp]

    ;; 3. Define — bind a name
    [(list 'define var val)
     (hash-set! env var (my-eval val))]

    ;; 4. If — conditional
    [(list 'if test conseq alt)
     (if (my-eval test)
         (my-eval conseq)
         (my-eval alt))]

    ;; 5. Lambda — create a function
    [(list 'lambda (list param) body)
     (lambda (arg)
       (hash-set! env param arg)
       (my-eval body))]

    ;; 6. Function Application
    [(list f arg)
     ((my-eval f) (my-eval arg))]

    [else (error "Unknown expression" exp)]))

;; === Try it out! ===
(my-eval '(define x 10))
(printf "x = ~a\n" (my-eval 'x))

(printf "(if (> x 5) 100 0) = ~a\n"
        (my-eval '(if (> x 5) 100 0))) ; 100

(my-eval '(define double (lambda (n) (* n 2))))
(printf "(double 21) = ~a\n"
        (my-eval '(double 21))) ; 42
