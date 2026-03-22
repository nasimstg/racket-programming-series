#lang racket/gui

;; Drawing on a canvas
(define frame (new frame% [label "Canvas Demo"]
                          [width 400]
                          [height 300]))

(define my-canvas
  (new canvas% [parent frame]
               [paint-callback
                (lambda (canvas dc)
                  (send dc set-scale 3 3)
                  (send dc set-text-foreground "blue")
                  (send dc draw-text "Hello GUI!" 0 0))]))

(send frame show #t)
