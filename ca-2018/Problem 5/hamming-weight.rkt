#lang racket

;Write a function hamming-weight in Racket that takes a list l as input and returns
;the number of non-zero elements in it

;define the function called hamming-weights and pass a list as an argument
(define (hamming-weight l)
  ;if the list that we have passed is empty, just return zero
  (if (null? l)
     ;do nothing
     0
      ;if car of the list is equal to zero
      (if(= (car l) 0)
         ;recursive call with the cdr of list
         (hamming-weight (cdr l))
         ;add one if car of list is not zero (so if it is 1)
         (+ 1 (hamming-weight (cdr l))))))

(hamming-weight (list 1 0 1 0 0 0 1 1 0 1))

(hamming-weight (list 1 1 1 0 0 0 0 1 0))