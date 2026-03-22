#lang racket

;; === Running shell commands ===
(system "ls -F") ; Returns #t if successful

;; === Capturing output from a process ===
(match-define (list stdout stdin pid stderr control)
              (process "ls"))

(display (port->string stdout))
(close-input-port stdout)
(close-output-port stdin)
(close-input-port stderr)
