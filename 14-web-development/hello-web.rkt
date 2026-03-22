#lang racket
(require web-server/servlet
         web-server/servlet-env)

;; A minimal Racket web server
(define (start request)
  (response/xexpr
   '(html
     (head (title "My Racket Blog"))
     (body (h1 "Hello World")))))

(serve/servlet start)
