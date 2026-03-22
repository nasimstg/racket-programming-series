#lang racket
(require db)

;; Create an in-memory SQLite database
(define pgc (sqlite3-connect #:database 'memory))

;; Create a table
(query-exec pgc
 "CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, age INTEGER)")

;; Insert data (parameterized queries prevent SQL injection)
(query-exec pgc
 "INSERT INTO users (name, age) VALUES ($1, $2)"
 "Alice" 30)

(query-exec pgc
 "INSERT INTO users (name, age) VALUES ($1, $2)"
 "Bob" 25)

;; Query data
(define results
  (query-rows pgc "SELECT * FROM users WHERE age > $1" 20))

(for ([row results])
  (printf "User: ~a, Age: ~a\n" (vector-ref row 1) (vector-ref row 2)))
