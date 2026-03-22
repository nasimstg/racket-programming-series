#lang racket

;; Simple TCP client — fetch a web page
(define-values (in out) (tcp-connect "google.com" 80))

(fprintf out "GET / HTTP/1.0\r\n\r\n")
(flush-output out)

(display (port->string in))

(close-input-port in)
(close-output-port out)
