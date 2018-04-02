#lang racket

; Write, from scratch, a function in Racket that uses brute-force algorithm that
; takes a single positive integer and return true if the number is a prime and false
; otherwise. Call the function decide-prime

(define (decide-prime? p)
  (define (non-divisible-by n d)
    (cond
     ((= d 1) #t)
     (else (if(= (remainder n d) 0)
          #f
          (non-divisible-by n (- d 1))))))
  (if (= p 1)
      #f
      (non-divisible-by p (- p 1))))

(decide-prime? 5)