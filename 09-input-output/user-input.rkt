#lang racket

;; Reading user input from the console
(display "What is your name? ")
(define name (read-line))
(printf "Hello, ~a!\n" name)
