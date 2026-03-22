#lang racket

;; === Writing to a file ===
(with-output-to-file "output.txt"
  (lambda ()
    (printf "Line 1\n")
    (printf "Line 2\n"))
  #:exists 'replace) ; Overwrite if exists

;; === Reading from a file ===
(define content
  (with-input-from-file "output.txt"
    (lambda ()
      (port->string)))) ; Read entire file into string

(display content)

;; === Listing directory contents ===
(for ([path (in-directory)])
  (displayln path))
