#lang racket

;; === Cross-platform path building ===
(displayln (build-path "usr" "local" "bin"))
; On Windows: "usr\local\bin"
; On Unix:    "usr/local/bin"

;; === File existence check ===
(displayln (file-exists? "filesystem.rkt")) ; #t (this file!)

;; === List directory contents ===
(for ([f (directory-list)])
  (displayln f))
