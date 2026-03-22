#lang racket/gui

;; Create a top-level frame (window)
(define frame (new frame% [label "My Racket App"]
                          [width 300]
                          [height 200]))

;; Add a message label
(define msg (new message% [parent frame]
                          [label "Waiting..."]))

;; Add a button with a click handler
(define my-button
  (new button% [parent frame]
               [label "Click Me"]
               [callback (lambda (button event)
                           (send msg set-label "Button Clicked!"))]))

;; Show the window
(send frame show #t)
