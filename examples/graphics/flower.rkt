#lang racket
(require 2htdp/image)

;; A procedural flower made from rotated ellipses
(define (petal color)
  (ellipse 20 80 "solid" color))

(define (flower n color)
  (if (= n 0)
      empty-image
      (overlay (rotate (* n 60) (petal color))
               (flower (- n 1) color))))

(flower 6 "purple")
