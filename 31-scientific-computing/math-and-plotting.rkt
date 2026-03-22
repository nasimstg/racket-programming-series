#lang racket
(require math plot)

;; === Math library ===
(bf-precision 128)
(displayln (bf "3.141592653589793238462643383279502884"))

;; Statistics
(displayln (mean '(1 2 3 4 5)))
(displayln (stddev '(1 2 3 4 5)))

;; Linear algebra
(displayln (matrix [[1 2] [3 4]]))

;; === 2D Plot ===
(plot (function sin -5 5))
