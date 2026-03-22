#lang racket
(require 2htdp/universe 2htdp/image)

;; === Data Definitions ===
(struct posn (x y) #:transparent)
(struct game (snake food dir) #:transparent)

(define SEG-SIZE 20)
(define WIDTH 400)
(define HEIGHT 400)
(define GRID-W (/ WIDTH SEG-SIZE))
(define GRID-H (/ HEIGHT SEG-SIZE))

;; === Movement ===
(define (move p dir)
  (match dir
    ['up    (posn (posn-x p) (sub1 (posn-y p)))]
    ['down  (posn (posn-x p) (add1 (posn-y p)))]
    ['left  (posn (sub1 (posn-x p)) (posn-y p))]
    ['right (posn (add1 (posn-x p)) (posn-y p))]))

(define (drop-last lst)
  (reverse (rest (reverse lst))))

;; === Game Tick ===
(define (next-state g)
  (define head (first (game-snake g)))
  (define new-head (move head (game-dir g)))

  (if (equal? new-head (game-food g))
      ;; Eat! Grow snake, new food.
      (game (cons new-head (game-snake g))
            (posn (random GRID-W) (random GRID-H))
            (game-dir g))
      ;; Move! Advance head, drop tail.
      (game (cons new-head (drop-last (game-snake g)))
            (game-food g)
            (game-dir g))))

;; === Rendering ===
(define (draw-segment p color scene)
  (place-image (square SEG-SIZE "solid" color)
               (+ (* (posn-x p) SEG-SIZE) (/ SEG-SIZE 2))
               (+ (* (posn-y p) SEG-SIZE) (/ SEG-SIZE 2))
               scene))

(define (draw-game g)
  (define scene (empty-scene WIDTH HEIGHT "black"))
  (define with-food (draw-segment (game-food g) "green" scene))
  (foldl (lambda (seg scn) (draw-segment seg "white" scn))
         with-food
         (game-snake g)))

;; === Input ===
(define (handle-key g key)
  (define new-dir
    (match key
      ["up"    'up]
      ["down"  'down]
      ["left"  'left]
      ["right" 'right]
      [_       (game-dir g)]))
  (game (game-snake g) (game-food g) new-dir))

;; === Game Over ===
(define (game-over? g)
  (define head (first (game-snake g)))
  (or (< (posn-x head) 0) (>= (posn-x head) GRID-W)
      (< (posn-y head) 0) (>= (posn-y head) GRID-H)
      (member head (rest (game-snake g)))))

;; === Run! ===
(big-bang (game (list (posn 10 10)) (posn 5 5) 'right)
          (on-tick next-state 0.1)
          (to-draw draw-game)
          (on-key handle-key)
          (stop-when game-over?))
