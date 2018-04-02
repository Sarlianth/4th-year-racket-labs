#lang racket

;Write a function sod2 in Racket that takes three lists x, y and z of equal length and
;containing only 0’s and 1’s. It should return a list containing a 1 where the number of
;1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.

;For example:
;(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
;expected result > '(0 1 1 0 1 0 0 1)

;defining the function sod2 - passing 3 lists
(define (sod2 x y z)
  ;if list x is null return empty list
  (if (null? x)
      '()
      ;else if the reminder of all three lists car sums to 0
      (cond((= 0 (modulo (+(car x) (car y) (car z))2))
            ;add 0 to new list and make recursive call with cdr of all three lists
           (cons 0 (sod2 (cdr x) (cdr y) (cdr z))))
            ;else add 1 to new list and makre recursive call with cdr of all three lists
           (else (cons 1 (sod2 (cdr x) (cdr y) (cdr z)))))))

(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
