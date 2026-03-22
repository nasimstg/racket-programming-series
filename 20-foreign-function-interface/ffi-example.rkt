#lang racket
(require ffi/unsafe)

;; Call C's printf directly from Racket via FFI
(define ffi-printf
  (get-ffi-obj "printf" #f (_fun _string -> _int)))

(ffi-printf "Hello from C! Number: %d\n" 42)
