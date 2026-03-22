#lang racket

;; Simple TCP server — welcomes each client in a new thread
(define listener (tcp-listen 12345))
(displayln "Server listening on port 12345...")

(let loop ()
  (define-values (in out) (tcp-accept listener))

  (thread
   (lambda ()
     (fprintf out "Welcome to Racket Chat!\n")
     (close-output-port out)
     (close-input-port in)))

  (loop))
