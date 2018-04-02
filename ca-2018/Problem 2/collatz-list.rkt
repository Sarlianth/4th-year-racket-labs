#lang racket

;Write, from scratch, a function in Racket that takes a positive integer n0 as input
;and returns a list by recursively applying the following operation, starting with the
;input number

;Take any natural number n. If n is even, divide it by 2 to get n / 2.
;If n is odd, multiply it by 3 and add 1 to obtain 3n + 1.
;Repeat the process indefinitely.
;The Collatz conjecture is that no matter what number you start with,
;you shall always eventually reach 1.



(define (collatz-list n)
  (cond
    ((= n 1) '(1))
    ((even? n)
     (cons n (collatz-list (/ n 2))))
    (else
     (cons n (collatz-list (+ (* 3 n) 1))))))

(collatz-list 5)

(collatz-list 12)

(collatz-list 6)