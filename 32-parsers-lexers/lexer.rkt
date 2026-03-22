#lang racket
(require parser-tools/lex
         (prefix-in : parser-tools/lex-sre))

;; Define token patterns
(define-lex-abbrevs
  [digit (:/ "0" "9")]
  [identifier (:: alphabetic (:* (:or alphabetic digit)))])

;; Build a lexer
(define my-lexer
  (lexer
   [digit (token-NUM (string->number lexeme))]
   [identifier (token-ID lexeme)]
   [whitespace (my-lexer input-port)]))
