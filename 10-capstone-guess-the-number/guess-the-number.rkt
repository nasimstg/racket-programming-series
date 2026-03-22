#lang racket

;; Capstone Project: Guess the Number Game
;; Combines: I/O, recursion, conditionals, pattern matching

(define (start-game)
  (displayln "Welcome to the Guess the Number Game!")
  (displayln "I'm thinking of a number between 1 and 100.")
  (game-loop (random 1 101) 1))

(define (game-loop target guesses)
  (printf "\nGuess #~a: " guesses)
  (define input (read))

  (cond
    [(not (number? input))
     (displayln "Please enter a valid number.")
     (game-loop target guesses)]

    [(= input target)
     (printf "Correct! You won in ~a guesses.\n" guesses)]

    [(< input target)
     (displayln "Too low!")
     (game-loop target (add1 guesses))]

    [(> input target)
     (displayln "Too high!")
     (game-loop target (add1 guesses))]))

; Start!
(start-game)
