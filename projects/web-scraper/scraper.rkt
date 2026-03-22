#lang racket
(require net/url)
(require html-parsing)
(require sxml/sxpath)

;; === Fetch a web page and parse it ===
(define (fetch-page url)
  (call/input-url (string->url url)
                  get-pure-port
                  html->xexp))

;; === Extract all h2 headlines ===
(define (get-headlines url)
  (define content (fetch-page url))
  (define extract-h2 (sxpath "//h2/text()"))
  (extract-h2 content))

;; === Main: scrape and save to file ===
(define (main)
  (define url "https://news.ycombinator.com")
  (printf "Fetching headlines from ~a...\n" url)

  (define news (get-headlines url))

  (with-output-to-file "headlines.txt"
    (lambda ()
      (for ([item news])
        (displayln item)))
    #:exists 'replace)

  (printf "Saved ~a headlines to headlines.txt\n" (length news)))

(main)
