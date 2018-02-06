#lang racket

(define (collatz-list n)
  (cond
    ((= n 1) '(1))
    ((even? n)
     (cons n (collatz-list (/ n 2))))
    (else
     (cons n (collatz-list (+ (* 3 n) 1))))))

(collatz-list 45)