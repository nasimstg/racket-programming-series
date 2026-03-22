#lang racket
(require plot)

;; 3D surface plot
(plot3d (surface3d (lambda (x y) (* (sin x) (cos y)))
                   -3 3 -3 3))
