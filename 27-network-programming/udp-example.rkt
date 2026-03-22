#lang racket

;; UDP — connectionless messaging
(define udp (udp-open-socket))
(udp-bind! udp #f 5000)
(udp-send-to udp "localhost" 6000 #"Hello UDP")
(displayln "UDP message sent!")
