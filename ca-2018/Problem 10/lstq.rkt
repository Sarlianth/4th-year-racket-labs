#lang racket

;Write a function lstq in Racket that takes as arguments two lists l and m of equal
;length and containing numbers. It should return d, the distance given by the sum of
;the square residuals between the numbers in the lists

;take the ith element of m from the ith element of l and square the result
;for all i. Then add all of those to get d. For example:


;(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
; expected result > 54.61

; simple function to calculate the square that will be used within lstq later
(define (square x)
  (* x x ))

; test if square function works
(square 3)

;define function lstq that will take 2 lists as parameters
(define (lstq l m)
  ;check if l list is empty or not
  (if(null? l)
     ;if l list is empty, return nothing 
     0
     ;else add the result of squaring the first element of each list
     ;then make recursion call of lstq of cdr of both lists l and m (rest of the list)
     (+ (square(- (car l) (car m))) (lstq (cdr l) (cdr m)))))

(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))