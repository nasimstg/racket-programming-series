#lang racket/gui

;; Using panels for layout
(define frame (new frame% [label "Panel Layout"]
                          [width 300]
                          [height 100]))

(define panel (new horizontal-panel% [parent frame]))
(new button% [parent panel] [label "Left"]
     [callback (lambda (b e) (displayln "Left clicked"))])
(new button% [parent panel] [label "Right"]
     [callback (lambda (b e) (displayln "Right clicked"))])

(send frame show #t)
