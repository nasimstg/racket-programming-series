#lang racket

;; === Threads — lightweight concurrency ===
(thread (lambda ()
          (displayln "Hello from thread!")))
(displayln "Hello from main!")

;; Both messages print (order may vary)
