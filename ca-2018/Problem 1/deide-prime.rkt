#lang racket

(define (prime? p)
  (define (non-divisible-by n d)
    (cond
     ((= d 1) #t)
     (else (if(= (remainder n d) 0)
          #f
          (non-divisible-by n (- d 1))))))
  (if (= p 1)
      #f
      (non-divisible-by p (- p 1))))

(prime? 5)