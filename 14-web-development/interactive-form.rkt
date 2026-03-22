#lang racket
(require web-server/servlet
         web-server/servlet-env)

;; Web app with form input using send/suspend (continuations!)
(define (start request)
  (define name (get-user-input))
  (response/xexpr `(html (body (h1 ,(string-append "Hello " name))))))

(define (get-user-input)
  (define req
    (send/suspend
     (lambda (k-url)
       (response/xexpr
        `(html (body (form ([action ,k-url])
                           (input ([name "user"]))
                           (input ([type "submit"])))))))))
  (extract-binding/single 'user (request-bindings req)))

(serve/servlet start)
