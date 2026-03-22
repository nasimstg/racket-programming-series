#lang racket
(require 2htdp/universe 2htdp/image)

;; Animate a growing circle
(define (draw-world t)
  (overlay (circle t "solid" "red")
           (empty-scene 300 300)))

(animate draw-world)
