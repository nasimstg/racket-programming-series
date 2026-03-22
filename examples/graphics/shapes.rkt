#lang racket
(require 2htdp/image)

;; === Basic shapes ===
(circle 30 "solid" "red")
(rectangle 100 50 "outline" "blue")
(text "Hello Racket" 24 "green")

;; === Overlaying images ===
(overlay (circle 20 "solid" "yellow")
         (rectangle 100 100 "solid" "black"))

;; === Placing images side by side ===
(beside (circle 30 "solid" "red")
        (circle 30 "solid" "blue")
        (circle 30 "solid" "green"))

;; === Stacking images vertically ===
(above (triangle 40 "solid" "red")
       (rectangle 40 40 "solid" "blue"))
